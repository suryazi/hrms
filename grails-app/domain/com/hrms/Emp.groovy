package com.hrms

class Emp {

	String num
	String name
	String aname

    static constraints = {
    	num unique:true, blank:false
    	name blank:false
    	aname blank:false
    }
}
