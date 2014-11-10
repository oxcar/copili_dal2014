package org.dal.copili.configuration;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@EnableScheduling
@ComponentScan( "org.dal.copili" )
public class WebAppConfiguration extends WebMvcConfigurerAdapter {

    private final static Logger log = LoggerFactory.getLogger( WebAppConfiguration.class );

    @Override
    public void addResourceHandlers( ResourceHandlerRegistry resourceHandlerRegistry ) {
        log.info("addResourceHandlers");
        resourceHandlerRegistry.addResourceHandler( "/resources/**" ).addResourceLocations( "/resources/" );
        resourceHandlerRegistry.addResourceHandler( "/views/**" ).addResourceLocations( "/views/" );
        resourceHandlerRegistry.addResourceHandler( "/**" ).addResourceLocations( "/" );
    }

    @Bean
    public ViewResolver internalResourceViewResolver() {
        log.info("internalResourceViewResolver");
        InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
        internalResourceViewResolver.setViewClass( JstlView.class );
        internalResourceViewResolver.setPrefix( "/WEB-INF/views/jsp/" );
        internalResourceViewResolver.setSuffix( ".jsp" );
        return internalResourceViewResolver;
    }

}
