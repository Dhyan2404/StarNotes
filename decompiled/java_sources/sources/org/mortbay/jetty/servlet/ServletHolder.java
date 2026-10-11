package org.mortbay.jetty.servlet;

import java.io.IOException;
import java.security.Principal;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.SingleThreadModel;
import javax.servlet.UnavailableException;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.security.SecurityHandler;
import org.mortbay.jetty.security.UserRealm;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class ServletHolder extends Holder implements Comparable {
    static /* synthetic */ Class class$javax$servlet$Servlet;
    static /* synthetic */ Class class$javax$servlet$SingleThreadModel;
    static /* synthetic */ Class class$org$mortbay$jetty$security$SecurityHandler;
    private transient C20416a _config;
    private String _forcedPath;
    private boolean _initOnStartup;
    private int _initOrder;
    private UserRealm _realm;
    private Map _roleMap;
    private String _runAs;
    private transient Servlet _servlet;
    private transient long _unavailable;
    private transient UnavailableException _unavailableEx;

    /* renamed from: org.mortbay.jetty.servlet.ServletHolder$a */
    /* loaded from: classes13.dex */
    public class C20416a implements ServletConfig {
        public C20416a() {
        }

        @Override // javax.servlet.ServletConfig
        public String getInitParameter(String str) {
            return ServletHolder.this.getInitParameter(str);
        }

        @Override // javax.servlet.ServletConfig
        public Enumeration getInitParameterNames() {
            return ServletHolder.this.getInitParameterNames();
        }

        @Override // javax.servlet.ServletConfig
        public ServletContext getServletContext() {
            return ServletHolder.this._servletHandler.getServletContext();
        }

        @Override // javax.servlet.ServletConfig
        public String getServletName() {
            return ServletHolder.this.getName();
        }
    }

    /* renamed from: org.mortbay.jetty.servlet.ServletHolder$b */
    /* loaded from: classes13.dex */
    public class C20417b implements Servlet {

        /* renamed from: e */
        public Stack f115186e;

        public C20417b() {
            this.f115186e = new Stack();
        }

        @Override // javax.servlet.Servlet
        public void destroy() {
            synchronized (this) {
                while (this.f115186e.size() > 0) {
                    try {
                        ((Servlet) this.f115186e.pop()).destroy();
                    } catch (Exception e) {
                        Log.warn(e);
                    }
                }
            }
        }

        @Override // javax.servlet.Servlet
        public ServletConfig getServletConfig() {
            return ServletHolder.this._config;
        }

        @Override // javax.servlet.Servlet
        public String getServletInfo() {
            return null;
        }

        @Override // javax.servlet.Servlet
        public void init(ServletConfig servletConfig) throws ServletException {
            synchronized (this) {
                if (this.f115186e.size() == 0) {
                    try {
                        Servlet customizeServlet = ServletHolder.this.getServletHandler().customizeServlet((Servlet) ServletHolder.this.newInstance());
                        customizeServlet.init(servletConfig);
                        this.f115186e.push(customizeServlet);
                    } catch (ServletException e) {
                        throw e;
                    } catch (Exception e2) {
                        throw new ServletException(e2);
                    }
                }
            }
        }

        @Override // javax.servlet.Servlet
        public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
            Servlet customizeServlet;
            synchronized (this) {
                if (this.f115186e.size() > 0) {
                    customizeServlet = (Servlet) this.f115186e.pop();
                } else {
                    try {
                        try {
                            try {
                                customizeServlet = ServletHolder.this.getServletHandler().customizeServlet((Servlet) ServletHolder.this.newInstance());
                                customizeServlet.init(ServletHolder.this._config);
                            } catch (Exception e) {
                                throw new ServletException(e);
                            }
                        } catch (IOException e2) {
                            throw e2;
                        }
                    } catch (ServletException e3) {
                        throw e3;
                    }
                }
            }
            try {
                customizeServlet.service(servletRequest, servletResponse);
                synchronized (this) {
                    this.f115186e.push(customizeServlet);
                }
            } catch (Throwable th) {
                synchronized (this) {
                    this.f115186e.push(customizeServlet);
                    throw th;
                }
            }
        }
    }

    public ServletHolder() {
        this._initOnStartup = false;
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0093: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:59:0x0093 */
    private void initServlet() throws ServletException {
        Principal principal;
        UserRealm userRealm;
        Principal pushRole;
        UserRealm userRealm2;
        UserRealm userRealm3;
        Principal principal2 = null;
        try {
            try {
                if (this._servlet == null) {
                    this._servlet = (Servlet) newInstance();
                }
                if (this._config == null) {
                    this._config = new C20416a();
                }
                if (!(this._servlet instanceof C20417b)) {
                    this._servlet = getServletHandler().customizeServlet(this._servlet);
                }
                String str = this._runAs;
                pushRole = (str == null || (userRealm3 = this._realm) == null) ? null : userRealm3.pushRole(null, str);
            } catch (Throwable th) {
                th = th;
                principal2 = principal;
            }
        } catch (UnavailableException e) {
            e = e;
        } catch (ServletException e2) {
            e = e2;
        } catch (Exception e3) {
            e = e3;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this._servlet.init(this._config);
            if (this._runAs == null || (userRealm2 = this._realm) == null || pushRole == null) {
                return;
            }
            userRealm2.popRole(pushRole);
        } catch (UnavailableException e4) {
            e = e4;
            makeUnavailable(e);
            this._servlet = null;
            this._config = null;
            throw e;
        } catch (ServletException e5) {
            e = e5;
            makeUnavailable(e.getCause() == null ? e : e.getCause());
            this._servlet = null;
            this._config = null;
            throw e;
        } catch (Exception e6) {
            e = e6;
            makeUnavailable(e);
            this._servlet = null;
            this._config = null;
            throw new ServletException(e);
        } catch (Throwable th3) {
            Principal principal3 = pushRole;
            th = th3;
            principal2 = principal3;
            if (this._runAs != null && (userRealm = this._realm) != null && principal2 != null) {
                userRealm.popRole(principal2);
            }
            throw th;
        }
    }

    private void makeUnavailable(UnavailableException unavailableException) {
        if (this._unavailableEx != unavailableException || this._unavailable == 0) {
            ServletContext servletContext = this._servletHandler.getServletContext();
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Unavailable ");
            stringBuffer.append(unavailableException);
            servletContext.log(stringBuffer.toString());
            this._unavailableEx = unavailableException;
            this._unavailable = -1L;
            if (unavailableException.isPermanent()) {
                this._unavailable = -1L;
            } else if (this._unavailableEx.getUnavailableSeconds() > 0) {
                this._unavailable = System.currentTimeMillis() + (this._unavailableEx.getUnavailableSeconds() * 1000);
            } else {
                this._unavailable = System.currentTimeMillis() + 5000;
            }
        }
    }

    public void checkServletType() throws UnavailableException {
        Class cls = class$javax$servlet$Servlet;
        if (cls == null) {
            cls = class$("javax.servlet.Servlet");
            class$javax$servlet$Servlet = cls;
        }
        if (cls.isAssignableFrom(this._class)) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Servlet ");
        stringBuffer.append(this._class);
        stringBuffer.append(" is not a javax.servlet.Servlet");
        throw new UnavailableException(stringBuffer.toString());
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        String str;
        if (!(obj instanceof ServletHolder)) {
            return 1;
        }
        ServletHolder servletHolder = (ServletHolder) obj;
        int i = 0;
        if (servletHolder == this) {
            return 0;
        }
        int i2 = servletHolder._initOrder;
        int i3 = this._initOrder;
        if (i2 < i3) {
            return 1;
        }
        if (i2 > i3) {
            return -1;
        }
        String str2 = this._className;
        if (str2 != null && (str = servletHolder._className) != null) {
            i = str2.compareTo(str);
        }
        if (i == 0) {
            i = this._name.compareTo(servletHolder._name);
        }
        if (i == 0) {
            return hashCode() <= obj.hashCode() ? -1 : 1;
        }
        return i;
    }

    @Override // org.mortbay.jetty.servlet.Holder
    public void destroyInstance(Object obj) throws Exception {
        if (obj == null) {
            return;
        }
        Servlet servlet = (Servlet) obj;
        servlet.destroy();
        getServletHandler().customizeServletDestroy(servlet);
    }

    @Override // org.mortbay.jetty.servlet.Holder, org.mortbay.component.AbstractLifeCycle
    public void doStart() throws Exception {
        this._unavailable = 0L;
        try {
            super.doStart();
            checkServletType();
        } catch (UnavailableException e) {
            makeUnavailable(e);
        }
        this._config = new C20416a();
        if (this._runAs != null) {
            ContextHandler contextHandler = ContextHandler.getCurrentContext().getContextHandler();
            Class cls = class$org$mortbay$jetty$security$SecurityHandler;
            if (cls == null) {
                cls = class$("org.mortbay.jetty.security.SecurityHandler");
                class$org$mortbay$jetty$security$SecurityHandler = cls;
            }
            this._realm = ((SecurityHandler) contextHandler.getChildHandlerByClass(cls)).getUserRealm();
        }
        Class cls2 = class$javax$servlet$SingleThreadModel;
        if (cls2 == null) {
            cls2 = class$("javax.servlet.SingleThreadModel");
            class$javax$servlet$SingleThreadModel = cls2;
        }
        if (cls2.isAssignableFrom(this._class)) {
            this._servlet = new C20417b();
        }
        if (this._extInstance || this._initOnStartup) {
            try {
                initServlet();
            } catch (Exception e2) {
                if (!this._servletHandler.isStartWithUnavailable()) {
                    throw e2;
                }
                Log.ignore(e2);
            }
        }
    }

    @Override // org.mortbay.jetty.servlet.Holder, org.mortbay.component.AbstractLifeCycle
    public void doStop() {
        UserRealm userRealm;
        UserRealm userRealm2;
        UserRealm userRealm3;
        Principal principal = null;
        try {
            String str = this._runAs;
            Principal pushRole = (str == null || (userRealm3 = this._realm) == null) ? null : userRealm3.pushRole(null, str);
            try {
                Servlet servlet = this._servlet;
                if (servlet != null) {
                    try {
                        destroyInstance(servlet);
                    } catch (Exception e) {
                        Log.warn(e);
                    }
                }
                if (!this._extInstance) {
                    this._servlet = null;
                }
                this._config = null;
                super.doStop();
                if (this._runAs == null || (userRealm2 = this._realm) == null || pushRole == null) {
                    return;
                }
                userRealm2.popRole(pushRole);
            } catch (Throwable th) {
                Principal principal2 = pushRole;
                th = th;
                principal = principal2;
                super.doStop();
                if (this._runAs != null && (userRealm = this._realm) != null && principal != null) {
                    userRealm.popRole(principal);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public boolean equals(Object obj) {
        return compareTo(obj) == 0;
    }

    public String getForcedPath() {
        return this._forcedPath;
    }

    public int getInitOrder() {
        return this._initOrder;
    }

    public Map getRoleMap() {
        return this._roleMap;
    }

    public String getRunAs() {
        return this._runAs;
    }

    public synchronized Servlet getServlet() throws ServletException {
        long j = this._unavailable;
        if (j != 0) {
            if (j < 0 || (j > 0 && System.currentTimeMillis() < this._unavailable)) {
                throw this._unavailableEx;
            }
            this._unavailable = 0L;
            this._unavailableEx = null;
        }
        if (this._servlet == null) {
            initServlet();
        }
        return this._servlet;
    }

    public Servlet getServletInstance() {
        return this._servlet;
    }

    public UnavailableException getUnavailableException() {
        return this._unavailableEx;
    }

    public String getUserRoleLink(String str) {
        String str2;
        Map map = this._roleMap;
        return (map == null || (str2 = (String) map.get(str)) == null) ? str : str2;
    }

    public void handle(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, UnavailableException, IOException {
        UserRealm userRealm;
        Request request;
        UserRealm userRealm2;
        if (this._class == null) {
            throw new UnavailableException("Servlet Not Initialized");
        }
        Servlet servlet = this._servlet;
        synchronized (this) {
            if (this._unavailable != 0 || !this._initOnStartup) {
                servlet = getServlet();
            }
            if (servlet == null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Could not instantiate ");
                stringBuffer.append(this._class);
                throw new UnavailableException(stringBuffer.toString());
            }
        }
        Principal principal = null;
        Request request2 = null;
        try {
            try {
                String str = this._forcedPath;
                if (str != null) {
                    servletRequest.setAttribute(Dispatcher.__JSP_FILE, str);
                }
                if (this._runAs == null || this._realm == null) {
                    request = null;
                } else {
                    request = HttpConnection.getCurrentConnection().getRequest();
                    try {
                        principal = this._realm.pushRole(request.getUserPrincipal(), this._runAs);
                        request.setUserPrincipal(principal);
                    } catch (UnavailableException e) {
                        e = e;
                        makeUnavailable(e);
                        throw this._unavailableEx;
                    }
                }
                servlet.service(servletRequest, servletResponse);
                if (this._runAs == null || (userRealm2 = this._realm) == null || principal == null || request == null) {
                    return;
                }
                request.setUserPrincipal(userRealm2.popRole(principal));
            } catch (Throwable th) {
                th = th;
                if (this._runAs != null && (userRealm = this._realm) != null && 0 != 0 && 0 != 0) {
                    request2.setUserPrincipal(userRealm.popRole(null));
                }
                servletRequest.setAttribute(ServletHandler.__J_S_ERROR_SERVLET_NAME, getName());
                throw th;
            }
        } catch (UnavailableException e2) {
            e = e2;
        } catch (Throwable th2) {
            th = th2;
            if (this._runAs != null) {
                request2.setUserPrincipal(userRealm.popRole(null));
            }
            servletRequest.setAttribute(ServletHandler.__J_S_ERROR_SERVLET_NAME, getName());
            throw th;
        }
    }

    public int hashCode() {
        String str = this._name;
        return str == null ? System.identityHashCode(this) : str.hashCode();
    }

    public boolean isAvailable() {
        if (isStarted() && this._unavailable == 0) {
            return true;
        }
        try {
            getServlet();
        } catch (Exception e) {
            Log.ignore(e);
        }
        return isStarted() && this._unavailable == 0;
    }

    public void setForcedPath(String str) {
        this._forcedPath = str;
    }

    public void setInitOrder(int i) {
        this._initOnStartup = true;
        this._initOrder = i;
    }

    public void setRunAs(String str) {
        this._runAs = str;
    }

    public synchronized void setServlet(Servlet servlet) {
        if (servlet != null) {
            if (!(servlet instanceof SingleThreadModel)) {
                this._extInstance = true;
                this._servlet = servlet;
                setHeldClass(servlet.getClass());
                if (getName() == null) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(servlet.getClass().getName());
                    stringBuffer.append("-");
                    stringBuffer.append(super.hashCode());
                    setName(stringBuffer.toString());
                }
            }
        }
        throw new IllegalArgumentException();
    }

    public synchronized void setUserRoleLink(String str, String str2) {
        if (this._roleMap == null) {
            this._roleMap = new HashMap();
        }
        this._roleMap.put(str, str2);
    }

    public ServletHolder(Servlet servlet) {
        this._initOnStartup = false;
        setServlet(servlet);
    }

    public ServletHolder(Class cls) {
        super(cls);
        this._initOnStartup = false;
    }

    private void makeUnavailable(Throwable th) {
        if (th instanceof UnavailableException) {
            makeUnavailable((UnavailableException) th);
            return;
        }
        this._servletHandler.getServletContext().log("unavailable", th);
        this._unavailableEx = new UnavailableException(th.toString(), -1);
        this._unavailable = -1L;
    }
}
