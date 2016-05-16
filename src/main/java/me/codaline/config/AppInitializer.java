//package me.codaline.config;
//
//import org.springframework.web.WebApplicationInitializer;
//import org.springframework.web.context.ContextLoaderListener;
//import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
//import org.springframework.web.servlet.DispatcherServlet;
//
//import javax.servlet.ServletContext;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRegistration;
//
//public class AppInitializer implements WebApplicationInitializer {
//
//	@Override
//	public void onStartup(ServletContext servletContext) throws ServletException {
//		AnnotationConfigWebApplicationContext rootContext = new AnnotationConfigWebApplicationContext();
//		rootContext.register(WebMvcConfig.class, HibernateConfig.class);
//
//		servletContext.addListener(new ContextLoaderListener(rootContext));
//		rootContext.setServletContext(servletContext);
//
//		ServletRegistration.Dynamic dispatcher = servletContext.addServlet("dispatcher", new DispatcherServlet(rootContext));
//		dispatcher.addMapping("/");
//		dispatcher.setLoadOnStartup(1);
//	}
//}
