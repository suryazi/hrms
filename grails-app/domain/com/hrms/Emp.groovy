package com.hrms

class Emp {

	String num
	String ename
	String aname

    static constraints = {
    	num unique:true, blank:false
    	ename blank:false
    	aname blank:false
    }
}
