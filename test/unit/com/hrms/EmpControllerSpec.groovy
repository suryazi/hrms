package com.hrms



import grails.test.mixin.TestFor
import spock.lang.Specification

@TestFor(EmpController)
@Mock(Emp)
class EmpControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        params["num"] = "1"
        params["ename"] = "a"
        params["aname"] = "a"
        params["dob"] = new Date()-1
        params["gender"] = "Male"
        params["nationality"] = "a"
        params["religion"] = "a"
        params["doj"] = new Date()-1
    }

    def populateValues(emp, params){
    	emp.num=params?.num
        emp.ename=params?.ename
        emp.aname=params?.aname
        emp.dob=params?.dob
        emp.gender=params?.gender
        emp.nationality=params?.nationality
        emp.religion=params?.religion
        emp.doj=params?.doj
        emp.mobile=params?.mobile
        emp.email=params?.email
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.empInstanceList
            model.empInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.empInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def emp = new Emp()
            emp.validate()
            controller.save(emp)

        then:"The create view is rendered again with the correct model"
            model.empInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            emp = new Emp()
            populateValues(emp,params)

            controller.save(emp)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/emp/show/1'
            controller.flash.message != null
            Emp.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def emp = new Emp()
            populateValues(emp,params)
            controller.show(emp)

        then:"A model is populated containing the domain instance"
            model.empInstance == emp
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def emp = new Emp()
            populateValues(emp,params)
            controller.edit(emp)

        then:"A model is populated containing the domain instance"
            model.empInstance == emp
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/emp/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def emp = new Emp()
            emp.validate()
            controller.update(emp)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.empInstance == emp

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            emp = new Emp()
            populateValues(emp,params)
            emp.save(flush: true)
            controller.update(emp)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/emp/show/$emp.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/emp/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def emp = new Emp()
            populateValues(emp,params)
            emp.save(flush: true)

        then:"It exists"
            Emp.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(emp)

        then:"The instance is deleted"
            Emp.count() == 0
            response.redirectedUrl == '/emp/index'
            flash.message != null
    }
}
