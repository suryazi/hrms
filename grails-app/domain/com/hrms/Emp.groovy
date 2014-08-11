package com.hrms

import groovy.transform.EqualsAndHashCode

@EqualsAndHashCode
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

    String toString(){
    	"${num} - ${ename}"
    }
}
