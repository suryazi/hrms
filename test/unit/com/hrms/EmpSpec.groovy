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
    	error			| field			|val
    	'nullable'		| 'num'			|''
    	'unique'		| 'num'			|'123456789'
    	'nullable'		| 'ename'		|''
    	'nullable'		| 'aname'		|''
    }
}