/*
package com.nendrasys;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

@Configuration
public class CustomeSuccussHandler implements AuthenticationSuccessHandler {


 @Override
        public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException, IOException {

            Set<String> roles = AuthorityUtils.authorityListToSet(authentication.getAuthorities());

            if (roles.contains("ROLE_USER"))
            {
                httpServletResponse.sendRedirect("http://localhost:8080/springSecuritySample_war_exploded/user");
            } else if(roles.contains("ROLE_ADMIN")){
                httpServletResponse.sendRedirect("http://localhost:8080/springSecuritySample_war_exploded/admin");
            }
            else{
                httpServletResponse.sendRedirect("http://localhost:8080/springSecuritySample_war_exploded/");
            }
            }

        }






*/


package com.nendrasys.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

public class CustomeSuccussHandler implements AuthenticationSuccessHandler {
    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        System.out.println("inside authentication success handler");
        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        for (GrantedAuthority grantedAuthority : authorities) {

            if (grantedAuthority.getAuthority().equals("ROLE_USER")) {
                redirectStrategy.sendRedirect(httpServletRequest, httpServletResponse, "/gunListWithLogin");
            } else if (grantedAuthority.getAuthority().equals("ROLE_USER")) {
                redirectStrategy.sendRedirect(httpServletRequest, httpServletResponse, "/gunListWithLogin");
            } else {
                redirectStrategy.sendRedirect(httpServletRequest, httpServletResponse, "/");
            }
        }
    }
}



