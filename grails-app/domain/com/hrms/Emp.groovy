package com.hrms

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode
@ToString(includeNames = true, includeFields = true, excludes = 'dateCreated,lastUpdated,metaClass')
class Emp {

	String num
	String ename
	String aname
	Date dob
	String gender
	String nationality
	String religion
	Date doj
	String mobile
	String email
    Date dateCreated
    Date lastUpdated

    static constraints = {
    	num 		unique:true, blank:false
    	ename 		blank:false
    	aname 		blank:false
    	dob 		blank:false, max:new Date()
    	gender 		blank:false, inList:['Male','Female']
    	nationality blank:false
    	religion 	blank:false
    	doj 		blank:false, max:new Date()
    	mobile		nullable:true, size:0..15, matches: "[0-9]*"
    	email		nullable:true, email:true, notEqual: "bill@microsoft.com"
    }
}
