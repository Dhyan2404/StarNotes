package javax.servlet.http;

import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sunia.HTREnginev2.auj;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.text.MessageFormat;
import java.util.Enumeration;
import java.util.ResourceBundle;
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import org.mortbay.jetty.MimeTypes;

/* loaded from: classes5.dex */
public abstract class HttpServlet extends GenericServlet implements Serializable {
    private static final String HEADER_IFMODSINCE = "If-Modified-Since";
    private static final String HEADER_LASTMOD = "Last-Modified";
    private static final String LSTRING_FILE = "javax.servlet.http.LocalStrings";
    private static final String METHOD_DELETE = "DELETE";
    private static final String METHOD_GET = "GET";
    private static final String METHOD_HEAD = "HEAD";
    private static final String METHOD_OPTIONS = "OPTIONS";
    private static final String METHOD_POST = "POST";
    private static final String METHOD_PUT = "PUT";
    private static final String METHOD_TRACE = "TRACE";
    static /* synthetic */ Class class$javax$servlet$http$HttpServlet;
    private static ResourceBundle lStrings = ResourceBundle.getBundle("javax.servlet.http.LocalStrings");

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    private Method[] getAllDeclaredMethods(Class cls) {
        Class cls2 = class$javax$servlet$http$HttpServlet;
        if (cls2 == null) {
            cls2 = class$("javax.servlet.http.HttpServlet");
            class$javax$servlet$http$HttpServlet = cls2;
        }
        if (cls.equals(cls2)) {
            return null;
        }
        Method[] allDeclaredMethods = getAllDeclaredMethods(cls.getSuperclass());
        Method[] declaredMethods = cls.getDeclaredMethods();
        if (allDeclaredMethods == null || allDeclaredMethods.length <= 0) {
            return declaredMethods;
        }
        Method[] methodArr = new Method[allDeclaredMethods.length + declaredMethods.length];
        System.arraycopy(allDeclaredMethods, 0, methodArr, 0, allDeclaredMethods.length);
        System.arraycopy(declaredMethods, 0, methodArr, allDeclaredMethods.length, declaredMethods.length);
        return methodArr;
    }

    private void maybeSetLastModified(HttpServletResponse httpServletResponse, long j) {
        if (!httpServletResponse.containsHeader("Last-Modified") && j >= 0) {
            httpServletResponse.setDateHeader("Last-Modified", j);
        }
    }

    public void doDelete(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String protocol = httpServletRequest.getProtocol();
        String string = lStrings.getString("http.method_delete_not_supported");
        if (protocol.endsWith(SerializerConstants.XMLVERSION11)) {
            httpServletResponse.sendError(405, string);
        } else {
            httpServletResponse.sendError(400, string);
        }
    }

    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String protocol = httpServletRequest.getProtocol();
        String string = lStrings.getString("http.method_get_not_supported");
        if (protocol.endsWith(SerializerConstants.XMLVERSION11)) {
            httpServletResponse.sendError(405, string);
        } else {
            httpServletResponse.sendError(400, string);
        }
    }

    public void doHead(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        auj aujVar = new auj(httpServletResponse);
        doGet(httpServletRequest, aujVar);
        aujVar.m53097a();
    }

    public void doOptions(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String stringBuffer;
        String stringBuffer2;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        for (Method method : getAllDeclaredMethods(getClass())) {
            if (method.getName().equals("doGet")) {
                z = true;
                z2 = true;
            }
            if (method.getName().equals("doPost")) {
                z3 = true;
            }
            if (method.getName().equals("doPut")) {
                z4 = true;
            }
            if (method.getName().equals("doDelete")) {
                z5 = true;
            }
        }
        String str = z ? "GET" : null;
        if (z2) {
            if (str == null) {
                str = "HEAD";
            } else {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(str);
                stringBuffer3.append(", HEAD");
                str = stringBuffer3.toString();
            }
        }
        if (z3) {
            if (str == null) {
                str = "POST";
            } else {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append(str);
                stringBuffer4.append(", POST");
                str = stringBuffer4.toString();
            }
        }
        if (z4) {
            if (str == null) {
                str = "PUT";
            } else {
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append(str);
                stringBuffer5.append(", PUT");
                str = stringBuffer5.toString();
            }
        }
        if (z5) {
            if (str == null) {
                str = "DELETE";
            } else {
                StringBuffer stringBuffer6 = new StringBuffer();
                stringBuffer6.append(str);
                stringBuffer6.append(", DELETE");
                str = stringBuffer6.toString();
            }
        }
        if (str == null) {
            stringBuffer = "TRACE";
        } else {
            StringBuffer stringBuffer7 = new StringBuffer();
            stringBuffer7.append(str);
            stringBuffer7.append(", TRACE");
            stringBuffer = stringBuffer7.toString();
        }
        if (stringBuffer == null) {
            stringBuffer2 = "OPTIONS";
        } else {
            StringBuffer stringBuffer8 = new StringBuffer();
            stringBuffer8.append(stringBuffer);
            stringBuffer8.append(", OPTIONS");
            stringBuffer2 = stringBuffer8.toString();
        }
        httpServletResponse.setHeader("Allow", stringBuffer2);
    }

    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String protocol = httpServletRequest.getProtocol();
        String string = lStrings.getString("http.method_post_not_supported");
        if (protocol.endsWith(SerializerConstants.XMLVERSION11)) {
            httpServletResponse.sendError(405, string);
        } else {
            httpServletResponse.sendError(400, string);
        }
    }

    public void doPut(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String protocol = httpServletRequest.getProtocol();
        String string = lStrings.getString("http.method_put_not_supported");
        if (protocol.endsWith(SerializerConstants.XMLVERSION11)) {
            httpServletResponse.sendError(405, string);
        } else {
            httpServletResponse.sendError(400, string);
        }
    }

    public void doTrace(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("TRACE ");
        stringBuffer.append(httpServletRequest.getRequestURI());
        stringBuffer.append(" ");
        stringBuffer.append(httpServletRequest.getProtocol());
        String stringBuffer2 = stringBuffer.toString();
        Enumeration headerNames = httpServletRequest.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String str = (String) headerNames.nextElement();
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(stringBuffer2);
            stringBuffer3.append("\r\n");
            stringBuffer3.append(str);
            stringBuffer3.append(": ");
            stringBuffer3.append(httpServletRequest.getHeader(str));
            stringBuffer2 = stringBuffer3.toString();
        }
        StringBuffer stringBuffer4 = new StringBuffer();
        stringBuffer4.append(stringBuffer2);
        stringBuffer4.append("\r\n");
        String stringBuffer5 = stringBuffer4.toString();
        int length = stringBuffer5.length();
        httpServletResponse.setContentType(MimeTypes.MESSAGE_HTTP);
        httpServletResponse.setContentLength(length);
        ServletOutputStream outputStream = httpServletResponse.getOutputStream();
        outputStream.print(stringBuffer5);
        outputStream.close();
    }

    public long getLastModified(HttpServletRequest httpServletRequest) {
        return -1L;
    }

    public void service(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String method = httpServletRequest.getMethod();
        if (method.equals("GET")) {
            long lastModified = getLastModified(httpServletRequest);
            if (lastModified == -1) {
                doGet(httpServletRequest, httpServletResponse);
                return;
            } else if (httpServletRequest.getDateHeader("If-Modified-Since") < (lastModified / 1000) * 1000) {
                maybeSetLastModified(httpServletResponse, lastModified);
                doGet(httpServletRequest, httpServletResponse);
                return;
            } else {
                httpServletResponse.setStatus(304);
                return;
            }
        }
        if (method.equals("HEAD")) {
            maybeSetLastModified(httpServletResponse, getLastModified(httpServletRequest));
            doHead(httpServletRequest, httpServletResponse);
            return;
        }
        if (method.equals("POST")) {
            doPost(httpServletRequest, httpServletResponse);
            return;
        }
        if (method.equals("PUT")) {
            doPut(httpServletRequest, httpServletResponse);
            return;
        }
        if (method.equals("DELETE")) {
            doDelete(httpServletRequest, httpServletResponse);
            return;
        }
        if (method.equals("OPTIONS")) {
            doOptions(httpServletRequest, httpServletResponse);
        } else if (method.equals("TRACE")) {
            doTrace(httpServletRequest, httpServletResponse);
        } else {
            httpServletResponse.sendError(501, MessageFormat.format(lStrings.getString("http.method_not_implemented"), method));
        }
    }

    @Override // javax.servlet.GenericServlet, javax.servlet.Servlet
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        try {
            service((HttpServletRequest) servletRequest, (HttpServletResponse) servletResponse);
        } catch (ClassCastException unused) {
            throw new ServletException("non-HTTP request or response");
        }
    }
}
