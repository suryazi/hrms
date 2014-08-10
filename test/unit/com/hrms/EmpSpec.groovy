package com.hrms

import grails.test.mixin.TestFor
//import spock.lang.Specification
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Emp)
class EmpSpec extends ConstraintUnitSpec {

    def setup() {
    	//mock a person with some data (put unique violations in here so they can be tested, the others aren't needed)
        mockForConstraintsTests(Emp, [new Emp(num: '123456789')])
    }

    /*def cleanup() {
    }*/

    @Unroll("test Emp all constraints #field is #error")
    def "test emp all constraints"(){
    	when:
    	def obj=new Emp("$field": val)

    	then:
    	validateConstraints(obj, field, error)

    	where:
    	error			|	field			|	val
    	'nullable'		|	'num'			|	''
    	'nullable'		|	'num'			|	null
    	'unique'		|	'num'			|	'123456789'
    	'valid'			|	'num'			|	'12345678'
    	'nullable'		|	'ename'			|	''
    	'valid'			|	'ename'			|	getLongString(50)
    	'nullable'		|	'ename'			|	null
    	'nullable'		|	'aname'			|	''
    	'nullable'		|	'aname'			|	null
    	'valid'			|	'aname'			|	getLongString(50)
    	'max'			|	'dob'			|	new Date()+1
    	'nullable'		|	'dob'			|	''
    	'nullable'		|	'dob'			|	null
    	'valid'			|	'dob'			|	new Date()
    	'inList'		|	'gender'		|	'Unknown'
    	'nullable'		| 	'gender'		|	''
    	'nullable'		| 	'gender'		|	null
    	'valid'			| 	'gender'		|	'Male'
    	'valid'			| 	'gender'		|	'Female'
    	'nullable'		|	'nationality'	|	''
    	'nullable'		|	'nationality'	|	null
    	'valid'			|	'nationality'	|	getLongString(50)
    	'nullable'		|	'religion'		|	''
    	'nullable'		|	'religion'		|	null
    	'valid'			|	'religion'		|	getLongString(50)
    	'max'			|	'doj'			|	new Date()+1
    	'nullable'		|	'doj'			|	''
    	'nullable'		|	'doj'			|	null
    	'valid'			|	'doj'			|	new Date()
    	'size'			|	'mobile'		|	getLongString(16)
    	'valid'			|	'mobile'		|	null    	
    	'valid'			|	'mobile'		|	'009661234567890'
    	'notEqual'		|	'email'			|	'bill@microsoft.com'
    	'email'			|	'email'			|	getEmail(false)
    	'valid'			|	'email'			|	null
    }

    @Unroll("Emp #field using #val results in #result")
    def "test mobile constraints"(){
        when:
        def obj=new Emp("$field":val)

        then:
        validateResults(obj,field,result)

        where:
        result  |   field           |   val
        false   |   'mobile'        |   getLongString(15)
        true    |   'mobile'        |   '009661234567890'
    }
}