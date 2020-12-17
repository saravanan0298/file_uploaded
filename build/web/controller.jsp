<%-- 
    Document   : controller
    Created on : 17 Mar, 2020, 3:02:26 PM
    Author     : sara
--%>

<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            File f;
            int factSize=1024*1024*1024;
            String reqType=request.getContentType();
            out.print("................."+reqType);
            if(reqType.indexOf("multipart/form-data")>=0)
            {
                try
                {
                    DiskFileItemFactory df= new DiskFileItemFactory();
                    df.setSizeThreshold(factSize);
                    df.setRepository(new File("c:\\temp"));
                    ServletFileUpload upload= new ServletFileUpload(df);
                    
            }
                catch(Exception e)
                {
                    out.println(e);
                }
            }

            %>
    </body>
</html>
