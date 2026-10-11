package org.mortbay.jetty.servlet;

import com.google.common.reflect.ClassPath;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.UnavailableException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Handler;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.handler.HandlerWrapper;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;
import org.mortbay.util.URIUtil;

/* loaded from: classes13.dex */
public class Invoker extends HttpServlet {
    static /* synthetic */ Class class$org$mortbay$jetty$servlet$ServletMapping;
    private ContextHandler _contextHandler;
    private Map.Entry _invokerEntry;
    private boolean _nonContextServlets;
    private Map _parameters;
    private ServletHandler _servletHandler;
    private boolean _verbose;

    /* renamed from: org.mortbay.jetty.servlet.Invoker$a */
    /* loaded from: classes13.dex */
    public class C20413a extends HttpServletRequestWrapper {

        /* renamed from: b */
        public String f115151b;

        /* renamed from: c */
        public String f115152c;

        /* renamed from: d */
        public boolean f115153d;

        public C20413a(HttpServletRequest httpServletRequest, boolean z, String str, String str2, String str3) {
            super(httpServletRequest);
            this.f115153d = z;
            this.f115151b = URIUtil.addPaths(str2, str);
            String substring = str3.substring(str.length() + 1);
            this.f115152c = substring;
            if (substring.length() == 0) {
                this.f115152c = null;
            }
        }

        @Override // javax.servlet.ServletRequestWrapper, javax.servlet.ServletRequest
        public Object getAttribute(String str) {
            if (this.f115153d) {
                if (str.equals(Dispatcher.__INCLUDE_REQUEST_URI)) {
                    return URIUtil.addPaths(URIUtil.addPaths(getContextPath(), this.f115151b), this.f115152c);
                }
                if (str.equals(Dispatcher.__INCLUDE_PATH_INFO)) {
                    return this.f115152c;
                }
                if (str.equals(Dispatcher.__INCLUDE_SERVLET_PATH)) {
                    return this.f115151b;
                }
            }
            return super.getAttribute(str);
        }

        @Override // javax.servlet.http.HttpServletRequestWrapper, javax.servlet.http.HttpServletRequest
        public String getPathInfo() {
            return this.f115153d ? super.getPathInfo() : this.f115152c;
        }

        @Override // javax.servlet.http.HttpServletRequestWrapper, javax.servlet.http.HttpServletRequest
        public String getServletPath() {
            return this.f115153d ? super.getServletPath() : this.f115151b;
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    private ServletHolder getHolder(ServletHolder[] servletHolderArr, String str) {
        ServletHolder servletHolder = null;
        if (servletHolderArr == null) {
            return null;
        }
        for (int i = 0; servletHolder == null && i < servletHolderArr.length; i++) {
            if (servletHolderArr[i].getName().equals(str)) {
                servletHolder = servletHolderArr[i];
            }
        }
        return servletHolder;
    }

    @Override // javax.servlet.GenericServlet
    public void init() {
        ContextHandler contextHandler = ((ContextHandler.SContext) getServletContext()).getContextHandler();
        this._contextHandler = contextHandler;
        Handler handler = contextHandler.getHandler();
        while (handler != null && !(handler instanceof ServletHandler) && (handler instanceof HandlerWrapper)) {
            handler = ((HandlerWrapper) handler).getHandler();
        }
        this._servletHandler = (ServletHandler) handler;
        Enumeration initParameterNames = getInitParameterNames();
        while (initParameterNames.hasMoreElements()) {
            String str = (String) initParameterNames.nextElement();
            String initParameter = getInitParameter(str);
            String lowerCase = initParameter.toLowerCase();
            if ("nonContextServlets".equals(str)) {
                this._nonContextServlets = initParameter.length() > 0 && lowerCase.startsWith("t");
            }
            if ("verbose".equals(str)) {
                this._verbose = initParameter.length() > 0 && lowerCase.startsWith("t");
            } else {
                if (this._parameters == null) {
                    this._parameters = new HashMap();
                }
                this._parameters.put(str, initParameter);
            }
        }
    }

    @Override // javax.servlet.http.HttpServlet
    public void service(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String str;
        boolean z;
        String str2 = (String) httpServletRequest.getAttribute(Dispatcher.__INCLUDE_SERVLET_PATH);
        if (str2 == null) {
            str = httpServletRequest.getServletPath();
            z = false;
        } else {
            str = str2;
            z = true;
        }
        String str3 = (String) httpServletRequest.getAttribute(Dispatcher.__INCLUDE_PATH_INFO);
        if (str3 == null) {
            str3 = httpServletRequest.getPathInfo();
        }
        String str4 = str3;
        if (str4 == null || str4.length() <= 1) {
            httpServletResponse.sendError(404);
            return;
        }
        int i = str4.charAt(0) != '/' ? 0 : 1;
        int indexOf = str4.indexOf(47, i);
        String substring = indexOf < 0 ? str4.substring(i) : str4.substring(i, indexOf);
        ServletHolder holder = getHolder(this._servletHandler.getServlets(), substring);
        if (holder != null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Adding servlet mapping for named servlet:");
            stringBuffer.append(substring);
            stringBuffer.append(":");
            stringBuffer.append(URIUtil.addPaths(str, substring));
            stringBuffer.append("/*");
            Log.debug(stringBuffer.toString());
            ServletMapping servletMapping = new ServletMapping();
            servletMapping.setServletName(substring);
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(URIUtil.addPaths(str, substring));
            stringBuffer2.append("/*");
            servletMapping.setPathSpec(stringBuffer2.toString());
            ServletHandler servletHandler = this._servletHandler;
            ServletMapping[] servletMappings = servletHandler.getServletMappings();
            Class cls = class$org$mortbay$jetty$servlet$ServletMapping;
            if (cls == null) {
                cls = class$("org.mortbay.jetty.servlet.ServletMapping");
                class$org$mortbay$jetty$servlet$ServletMapping = cls;
            }
            servletHandler.setServletMappings((ServletMapping[]) LazyList.addToArray(servletMappings, servletMapping, cls));
        } else {
            if (substring.endsWith(ClassPath.f35080d)) {
                substring = substring.substring(0, substring.length() - 6);
            }
            if (substring == null || substring.length() == 0) {
                httpServletResponse.sendError(404);
                return;
            }
            synchronized (this._servletHandler) {
                this._invokerEntry = this._servletHandler.getHolderEntry(str);
                String addPaths = URIUtil.addPaths(str, substring);
                PathMap.Entry holderEntry = this._servletHandler.getHolderEntry(addPaths);
                if (holderEntry == null || holderEntry.equals(this._invokerEntry)) {
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append("Making new servlet=");
                    stringBuffer3.append(substring);
                    stringBuffer3.append(" with path=");
                    stringBuffer3.append(addPaths);
                    stringBuffer3.append("/*");
                    Log.debug(stringBuffer3.toString());
                    ServletHandler servletHandler2 = this._servletHandler;
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append(addPaths);
                    stringBuffer4.append("/*");
                    ServletHolder addServletWithMapping = servletHandler2.addServletWithMapping(substring, stringBuffer4.toString());
                    Map map = this._parameters;
                    if (map != null) {
                        addServletWithMapping.setInitParameters(map);
                    }
                    try {
                        addServletWithMapping.start();
                        if (!this._nonContextServlets) {
                            Servlet servlet = addServletWithMapping.getServlet();
                            if (this._contextHandler.getClassLoader() != servlet.getClass().getClassLoader()) {
                                try {
                                    addServletWithMapping.stop();
                                } catch (Exception e) {
                                    Log.ignore(e);
                                }
                                StringBuffer stringBuffer5 = new StringBuffer();
                                stringBuffer5.append("Dynamic servlet ");
                                stringBuffer5.append(servlet);
                                stringBuffer5.append(" not loaded from context ");
                                stringBuffer5.append(httpServletRequest.getContextPath());
                                Log.warn(stringBuffer5.toString());
                                throw new UnavailableException("Not in context");
                            }
                        }
                        if (this._verbose) {
                            StringBuffer stringBuffer6 = new StringBuffer();
                            stringBuffer6.append("Dynamic load '");
                            stringBuffer6.append(substring);
                            stringBuffer6.append("' at ");
                            stringBuffer6.append(addPaths);
                            Log.debug(stringBuffer6.toString());
                        }
                        holder = addServletWithMapping;
                    } catch (Exception e2) {
                        Log.debug(e2);
                        throw new UnavailableException(e2.toString());
                    }
                } else {
                    holder = (ServletHolder) holderEntry.getValue();
                }
            }
        }
        String str5 = substring;
        ServletHolder servletHolder = holder;
        if (servletHolder != null) {
            servletHolder.handle(new C20413a(httpServletRequest, z, str5, str, str4), httpServletResponse);
            return;
        }
        StringBuffer stringBuffer7 = new StringBuffer();
        stringBuffer7.append("Can't find holder for servlet: ");
        stringBuffer7.append(str5);
        Log.info(stringBuffer7.toString());
        httpServletResponse.sendError(404);
    }
}
