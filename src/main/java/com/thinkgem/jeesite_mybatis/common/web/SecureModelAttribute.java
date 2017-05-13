package com.thinkgem.jeesite_mybatis.common.web;

import java.lang.annotation.*;

@Target({ElementType.PARAMETER, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface SecureModelAttribute {

	String value() default "";
	
	String[] allowedField() default "*";
	
	String[] deniedField() default "";
	
	String[] clearFiled() default "";

}
