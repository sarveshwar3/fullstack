package caters.config;


import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import caters.model.Issuetracking;


@Configuration            // says that this is a configuration file
@ComponentScan("caters")  //scans the catering package
@EnableTransactionManagement
public class Configurations {

		@Bean(name = "dataSource")         //this is the database that we use in our program
		public DataSource getH2DataSource() {
			DriverManagerDataSource dataSource = new DriverManagerDataSource();
			dataSource.setDriverClassName("org.h2.Driver");
			dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
			dataSource.setUsername("sa"); 
			dataSource.setPassword("");
			return dataSource;
		} 
		private Properties getHibernateProperties() {                //this is the properties of the database that we use
			Properties properties = new Properties();
			properties.put("hibernate.show_sql", "true");
			properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
			properties.put("hibernate.hbm2ddl.auto", "update");

			return properties;

		}
		@Autowired
		@Bean(name = "sessionFactory")                                //create a sessionfactory for the creation of a session
		public SessionFactory getSessionFactory(DataSource dataSource) {
			LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
			sessionBuilder.addProperties(getHibernateProperties());
//			sessionBuilder.addAnnotatedClasses(RegisterPojo.class);  //add the entity classes for creation of database tables
            sessionBuilder.addAnnotatedClasses(Issuetracking.class);      //add the entity classes for creation of database tables
			return sessionBuilder.buildSessionFactory();
	 }
		@Autowired
		@Bean(name = "transactionManager")                  //used to manage the transactions...Advantage of using hibernate
		public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
			HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
			return transactionManager;

		}
	}


