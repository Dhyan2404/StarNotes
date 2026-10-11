package org.mortbay.servlet;

import com.google.firebase.installations.local.PersistedInstallation;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.http.HttpVersion;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.mortbay.log.Log;
import org.mortbay.util.C20429IO;
import org.mortbay.util.StringUtil;

/* loaded from: classes13.dex */
public class CGI extends HttpServlet {
    private String _cmdPrefix;
    private File _docRoot;
    private C20424a _env;
    private boolean _ignoreExitState;
    private boolean _ok;
    private String _path;

    private void exec(File file, String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException {
        String str2;
        int exitValue;
        int indexOf;
        String absolutePath = file.getAbsolutePath();
        File parentFile = file.getParentFile();
        String substring = httpServletRequest.getRequestURI().substring(0, httpServletRequest.getRequestURI().length() - str.length());
        String realPath = getServletContext().getRealPath(substring);
        String pathTranslated = httpServletRequest.getPathTranslated();
        int contentLength = httpServletRequest.getContentLength();
        if (contentLength < 0) {
            contentLength = 0;
        }
        if (pathTranslated == null || pathTranslated.length() == 0) {
            pathTranslated = absolutePath;
        }
        C20424a c20424a = new C20424a(this._env);
        c20424a.m71630c("AUTH_TYPE", httpServletRequest.getAuthType());
        c20424a.m71630c("CONTENT_LENGTH", Integer.toString(contentLength));
        c20424a.m71630c("CONTENT_TYPE", httpServletRequest.getContentType());
        c20424a.m71630c("GATEWAY_INTERFACE", "CGI/1.1");
        if (str.length() > 0) {
            c20424a.m71630c("PATH_INFO", str);
        }
        c20424a.m71630c("PATH_TRANSLATED", pathTranslated);
        c20424a.m71630c("QUERY_STRING", httpServletRequest.getQueryString());
        c20424a.m71630c("REMOTE_ADDR", httpServletRequest.getRemoteAddr());
        c20424a.m71630c("REMOTE_HOST", httpServletRequest.getRemoteHost());
        c20424a.m71630c("REMOTE_USER", httpServletRequest.getRemoteUser());
        c20424a.m71630c("REQUEST_METHOD", httpServletRequest.getMethod());
        c20424a.m71630c("SCRIPT_NAME", substring);
        c20424a.m71630c("SCRIPT_FILENAME", realPath);
        c20424a.m71630c("SERVER_NAME", httpServletRequest.getServerName());
        c20424a.m71630c("SERVER_PORT", Integer.toString(httpServletRequest.getServerPort()));
        c20424a.m71630c("SERVER_PROTOCOL", httpServletRequest.getProtocol());
        c20424a.m71630c("SERVER_SOFTWARE", getServletContext().getServerInfo());
        Enumeration headerNames = httpServletRequest.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String str3 = (String) headerNames.nextElement();
            String header = httpServletRequest.getHeader(str3);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("HTTP_");
            stringBuffer.append(str3.toUpperCase().replace('-', NameUtil.USCORE));
            c20424a.m71630c(stringBuffer.toString(), header);
        }
        c20424a.m71630c("HTTPS", httpServletRequest.isSecure() ? "ON" : "OFF");
        if (absolutePath.charAt(0) == '\"' || absolutePath.indexOf(" ") < 0) {
            str2 = absolutePath;
        } else {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("\"");
            stringBuffer2.append(absolutePath);
            stringBuffer2.append("\"");
            str2 = stringBuffer2.toString();
        }
        if (this._cmdPrefix != null) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(this._cmdPrefix);
            stringBuffer3.append(" ");
            stringBuffer3.append(str2);
            str2 = stringBuffer3.toString();
        }
        Process exec = parentFile == null ? Runtime.getRuntime().exec(str2, c20424a.m71629b()) : Runtime.getRuntime().exec(str2, c20424a.m71629b(), parentFile);
        ServletInputStream inputStream = httpServletRequest.getInputStream();
        OutputStream outputStream = exec.getOutputStream();
        C20429IO.copyThread(exec.getErrorStream(), System.err);
        new Thread(new RunnableC20426a(this, contentLength, inputStream, outputStream)).start();
        ServletOutputStream servletOutputStream = null;
        try {
            try {
                InputStream inputStream2 = exec.getInputStream();
                while (true) {
                    String textLineFromStream = getTextLineFromStream(inputStream2);
                    if (textLineFromStream.length() <= 0) {
                        break;
                    }
                    if (!textLineFromStream.startsWith(HttpVersion.HTTP) && (indexOf = textLineFromStream.indexOf(58)) > 0) {
                        String trim = textLineFromStream.substring(0, indexOf).trim();
                        String trim2 = textLineFromStream.substring(indexOf + 1).trim();
                        if ("Location".equals(trim)) {
                            httpServletResponse.sendRedirect(trim2);
                        } else if (PersistedInstallation.f35952i.equals(trim)) {
                            httpServletResponse.setStatus(Integer.parseInt(trim2.split(" ")[0]));
                        } else {
                            httpServletResponse.addHeader(trim, trim2);
                        }
                    }
                }
                servletOutputStream = httpServletResponse.getOutputStream();
                C20429IO.copy(inputStream2, servletOutputStream);
                exec.waitFor();
                if (!this._ignoreExitState && (exitValue = exec.exitValue()) != 0) {
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append("Non-zero exit status (");
                    stringBuffer4.append(exitValue);
                    stringBuffer4.append(") from CGI program: ");
                    stringBuffer4.append(absolutePath);
                    Log.warn(stringBuffer4.toString());
                    if (!httpServletResponse.isCommitted()) {
                        httpServletResponse.sendError(500, "Failed to exec CGI");
                    }
                }
                if (servletOutputStream != null) {
                    try {
                        servletOutputStream.close();
                    } catch (Exception e) {
                        e = e;
                        Log.ignore(e);
                        exec.destroy();
                    }
                }
            } catch (Throwable th) {
                if (servletOutputStream != null) {
                    try {
                        servletOutputStream.close();
                    } catch (Exception e2) {
                        Log.ignore(e2);
                    }
                }
                exec.destroy();
                throw th;
            }
        } catch (IOException unused) {
            Log.debug("CGI: Client closed connection!");
            if (servletOutputStream != null) {
                try {
                    servletOutputStream.close();
                } catch (Exception e3) {
                    e = e3;
                    Log.ignore(e);
                    exec.destroy();
                }
            }
        } catch (InterruptedException unused2) {
            Log.debug("CGI: interrupted!");
            if (servletOutputStream != null) {
                try {
                    servletOutputStream.close();
                } catch (Exception e4) {
                    e = e4;
                    Log.ignore(e);
                    exec.destroy();
                }
            }
        }
        exec.destroy();
    }

    private String getTextLineFromStream(InputStream inputStream) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            int read = inputStream.read();
            if (read == -1 || read == 10) {
                break;
            }
            stringBuffer.append((char) read);
        }
        return stringBuffer.toString().trim();
    }

    @Override // javax.servlet.GenericServlet
    public void init() throws ServletException {
        String property;
        this._env = new C20424a();
        this._cmdPrefix = getInitParameter("commandPrefix");
        String initParameter = getInitParameter("cgibinResourceBase");
        if (initParameter == null && (initParameter = getInitParameter("resourceBase")) == null) {
            initParameter = getServletContext().getRealPath("/");
        }
        if (initParameter == null) {
            Log.warn("CGI: no CGI bin !");
            return;
        }
        File file = new File(initParameter);
        if (!file.exists()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("CGI: CGI bin does not exist - ");
            stringBuffer.append(file);
            Log.warn(stringBuffer.toString());
            return;
        }
        if (!file.canRead()) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("CGI: CGI bin is not readable - ");
            stringBuffer2.append(file);
            Log.warn(stringBuffer2.toString());
            return;
        }
        if (!file.isDirectory()) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("CGI: CGI bin is not a directory - ");
            stringBuffer3.append(file);
            Log.warn(stringBuffer3.toString());
            return;
        }
        try {
            this._docRoot = file.getCanonicalFile();
            String initParameter2 = getInitParameter("Path");
            this._path = initParameter2;
            if (initParameter2 != null) {
                this._env.m71630c("PATH", initParameter2);
            }
            this._ignoreExitState = "true".equalsIgnoreCase(getInitParameter("ignoreExitState"));
            Enumeration initParameterNames = getInitParameterNames();
            while (initParameterNames.hasMoreElements()) {
                String str = (String) initParameterNames.nextElement();
                if (str != null && str.startsWith("ENV_")) {
                    this._env.m71630c(str.substring(4), getInitParameter(str));
                }
            }
            if (!this._env.f115234a.containsKey("SystemRoot") && (property = System.getProperty("os.name")) != null && property.toLowerCase().indexOf("windows") != -1) {
                String property2 = System.getProperty("windir");
                C20424a c20424a = this._env;
                if (property2 == null) {
                    property2 = "C:\\WINDOWS";
                }
                c20424a.m71630c("SystemRoot", property2);
            }
            this._ok = true;
        } catch (IOException e) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("CGI: CGI bin failed - ");
            stringBuffer4.append(file);
            Log.warn(stringBuffer4.toString(), (Throwable) e);
        }
    }

    @Override // javax.servlet.http.HttpServlet
    public void service(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        if (!this._ok) {
            httpServletResponse.sendError(503);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(StringUtil.nonNull(httpServletRequest.getServletPath()));
        stringBuffer.append(StringUtil.nonNull(httpServletRequest.getPathInfo()));
        String stringBuffer2 = stringBuffer.toString();
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("CGI: ContextPath : ");
            stringBuffer3.append(httpServletRequest.getContextPath());
            Log.debug(stringBuffer3.toString());
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("CGI: ServletPath : ");
            stringBuffer4.append(httpServletRequest.getServletPath());
            Log.debug(stringBuffer4.toString());
            StringBuffer stringBuffer5 = new StringBuffer();
            stringBuffer5.append("CGI: PathInfo    : ");
            stringBuffer5.append(httpServletRequest.getPathInfo());
            Log.debug(stringBuffer5.toString());
            StringBuffer stringBuffer6 = new StringBuffer();
            stringBuffer6.append("CGI: _docRoot    : ");
            stringBuffer6.append(this._docRoot);
            Log.debug(stringBuffer6.toString());
            StringBuffer stringBuffer7 = new StringBuffer();
            stringBuffer7.append("CGI: _path       : ");
            stringBuffer7.append(this._path);
            Log.debug(stringBuffer7.toString());
            StringBuffer stringBuffer8 = new StringBuffer();
            stringBuffer8.append("CGI: _ignoreExitState: ");
            stringBuffer8.append(this._ignoreExitState);
            Log.debug(stringBuffer8.toString());
        }
        File file = new File(this._docRoot, stringBuffer2);
        String str = "";
        String str2 = stringBuffer2;
        while (true) {
            if ((str2.endsWith("/") || !file.exists()) && str2.length() >= 0) {
                int lastIndexOf = str2.lastIndexOf(47);
                str2 = str2.substring(0, lastIndexOf);
                str = stringBuffer2.substring(lastIndexOf, stringBuffer2.length());
                file = new File(this._docRoot, str2);
            }
        }
        if (str2.length() == 0 || !file.exists() || file.isDirectory() || !file.getCanonicalPath().equals(file.getAbsolutePath())) {
            httpServletResponse.sendError(404);
            return;
        }
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer9 = new StringBuffer();
            stringBuffer9.append("CGI: script is ");
            stringBuffer9.append(file);
            Log.debug(stringBuffer9.toString());
            StringBuffer stringBuffer10 = new StringBuffer();
            stringBuffer10.append("CGI: pathInfo is ");
            stringBuffer10.append(str);
            Log.debug(stringBuffer10.toString());
        }
        exec(file, str, httpServletRequest, httpServletResponse);
    }

    /* renamed from: org.mortbay.servlet.CGI$a */
    /* loaded from: classes13.dex */
    public static class C20424a {

        /* renamed from: a */
        public Map f115234a;

        public C20424a() {
            this.f115234a = new HashMap();
        }

        /* renamed from: b */
        public String[] m71629b() {
            return (String[]) this.f115234a.values().toArray(new String[this.f115234a.size()]);
        }

        /* renamed from: c */
        public void m71630c(String str, String str2) {
            Map map = this.f115234a;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            stringBuffer.append("=");
            stringBuffer.append(StringUtil.nonNull(str2));
            map.put(str, stringBuffer.toString());
        }

        public String toString() {
            return this.f115234a.toString();
        }

        public C20424a(C20424a c20424a) {
            this.f115234a = new HashMap(c20424a.f115234a);
        }
    }
}
