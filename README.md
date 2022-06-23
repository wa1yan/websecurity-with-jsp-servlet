# WebSecurity with Servlet, Jsp and Tomcat Server
  - This is not production code because it just testing with two member with tomcat's realm.
  - Tomcat Realms is an interface for connecting Catalina to a existing database of usernames, passwords and roles to handle application authentication.

## To run project, need to know the things.
Firstly, add the following code to tomcat-users.xml under config folder of Tomcat server

        <role rolename="Admin"/>
        <role rolename="Member"/>
        <user username="admin" password="welcomeadmin" roles="Admin"/>
        <user username="user1" password="welcome" roles="Member"/>

And, add the following code to web.xml in your project

        <!-- Servlet WebSecurity configuration Start -->

          <!-- security Role -->
          <security-role>
            <role-name>Admin</role-name>
          </security-role>
          <security-role>
            <role-name>Member</role-name>
          </security-role>

          <!-- login configuration -->
          <login-config>
            <auth-method>FORM</auth-method>
            <form-login-config>
              <form-login-page>/login.jsp</form-login-page>
              <form-error-page>/error.jsp</form-error-page>
            </form-login-config>
          </login-config>

          <!-- security constraint -->
          <security-constraint>
            <web-resource-collection>
              <web-resource-name>Admin</web-resource-name>
              <url-pattern>/admin</url-pattern>
            </web-resource-collection>
            <auth-constraint>
              <role-name>Admin</role-name>
            </auth-constraint>
          </security-constraint>
          <security-constraint>
            <web-resource-collection>
              <web-resource-name>Member</web-resource-name>
              <url-pattern>/member</url-pattern>
            </web-resource-collection>
            <auth-constraint>
              <role-name>Member</role-name>
              <role-name>Admin</role-name>
            </auth-constraint>
          </security-constraint>

        <!-- Servlet WebSecurity configuration End -->
