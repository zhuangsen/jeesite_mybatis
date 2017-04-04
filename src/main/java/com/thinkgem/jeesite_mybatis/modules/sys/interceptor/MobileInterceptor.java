/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite_mybatis.modules.sys.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinkgem.jeesite_mybatis.common.config.Global;
import com.thinkgem.jeesite_mybatis.common.utils.StringUtils;
import com.thinkgem.jeesite_mybatis.common.utils.UserAgentUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.thinkgem.jeesite_mybatis.common.service.BaseService;

/**
 * 手机端视图拦截器
 * @author ThinkGem
 * @version 2014-9-1
 */
public class MobileInterceptor extends BaseService implements HandlerInterceptor {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, 
			Object handler) throws Exception {
        logger.debug("==============================执行preHandle==============================");
        String requestRri = request.getRequestURI();
        String uriPrefix = request.getContextPath() + Global.getAdminPath();
        logger.debug("---------requestRri:" + requestRri);
        logger.debug("---------uriPrefix" + uriPrefix);
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, 
			ModelAndView modelAndView) throws Exception {
        logger.debug("==============================执行postHandle==============================");
        String requestRri = request.getRequestURI();
        String uriPrefix = request.getContextPath() + Global.getAdminPath();
        logger.debug("---------requestRri:" + requestRri);
        logger.debug("---------uriPrefix" + uriPrefix);
		if (modelAndView != null){
            logger.debug("modelAndView--"+modelAndView.getViewName());
			// 如果是手机或平板访问的话，则跳转到手机视图页面。
			if(UserAgentUtils.isMobileOrTablet(request) && !StringUtils.startsWithIgnoreCase(modelAndView.getViewName(), "redirect:")){
				modelAndView.setViewName("mobile/" + modelAndView.getViewName());
			}
		}
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, 
			Object handler, Exception ex) throws Exception {
		
	}

}
