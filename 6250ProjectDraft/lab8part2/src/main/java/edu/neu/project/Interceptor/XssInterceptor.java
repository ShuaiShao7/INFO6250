package edu.neu.project.Interceptor;


import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.jboss.logging.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Enumeration;

public class XssInterceptor extends HandlerInterceptorAdapter {
    private static final Logger logger = LoggerFactory.logger(XssInterceptor.class);
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        try {

            Enumeration<String> enumeration = request.getParameterNames();

            while (enumeration.hasMoreElements()){
                String key = enumeration.nextElement();
                String val = request.getParameter(key);

                if (xssCheck(val)){
                    request.setAttribute("unsafe_request","true");
                    break;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return true;       }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
    private boolean xssCheck(String value) {
        if (value != null) {
            return (value.matches("<script>(.*?)</script>") || value.matches("\"<script(.*?)>\"")||value.matches("<script>(.*?)<script>")|| value.matches(""));
        }
        return false;
    }
}
