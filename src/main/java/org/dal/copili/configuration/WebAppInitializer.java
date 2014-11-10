package org.dal.copili.configuration;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.Filter;

public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

    private final static Logger log = LoggerFactory.getLogger(WebAppInitializer.class);

    @Override
	protected Class<?>[] getRootConfigClasses() {
        log.info("getRootConfigClasses");
		return new Class[]{
				WebAppConfiguration.class
		};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
        log.info("getServletConfigClasses");
		return new Class<?>[0];
	}

	@Override
	protected String[] getServletMappings() {
        log.info("getServletMappings");
		return new String[]{ "/" };
	}

	@Override
	protected Filter[] getServletFilters() {
        log.info("getServletFilters");
		CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
		characterEncodingFilter.setEncoding( "UTF-8" );
		characterEncodingFilter.setForceEncoding( true );
		return new Filter[]{ characterEncodingFilter };
	}


}
