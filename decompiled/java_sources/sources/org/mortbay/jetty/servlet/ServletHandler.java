package org.mortbay.jetty.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.handler.AbstractHandler;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;
import org.mortbay.util.MultiException;
import org.mortbay.util.MultiMap;
import org.mortbay.util.URIUtil;

/* loaded from: classes13.dex */
public class ServletHandler extends AbstractHandler {
    public static final String __DEFAULT_SERVLET = "default";
    public static final String __J_S_CONTEXT_TEMPDIR = "javax.servlet.context.tempdir";
    public static final String __J_S_ERROR_EXCEPTION = "javax.servlet.error.exception";
    public static final String __J_S_ERROR_EXCEPTION_TYPE = "javax.servlet.error.exception_type";
    public static final String __J_S_ERROR_MESSAGE = "javax.servlet.error.message";
    public static final String __J_S_ERROR_REQUEST_URI = "javax.servlet.error.request_uri";
    public static final String __J_S_ERROR_SERVLET_NAME = "javax.servlet.error.servlet_name";
    public static final String __J_S_ERROR_STATUS_CODE = "javax.servlet.error.status_code";

    /* renamed from: s */
    public static /* synthetic */ Class f115159s;

    /* renamed from: t */
    public static /* synthetic */ Class f115160t;

    /* renamed from: u */
    public static /* synthetic */ Class f115161u;

    /* renamed from: v */
    public static /* synthetic */ Class f115162v;
    protected transient MruCache[] _chainCache;

    /* renamed from: e */
    public ContextHandler f115163e;

    /* renamed from: f */
    public ContextHandler.SContext f115164f;

    /* renamed from: g */
    public FilterHolder[] f115165g;

    /* renamed from: h */
    public FilterMapping[] f115166h;

    /* renamed from: l */
    public ServletHolder[] f115170l;

    /* renamed from: m */
    public ServletMapping[] f115171m;

    /* renamed from: o */
    public transient List f115173o;

    /* renamed from: p */
    public transient MultiMap f115174p;

    /* renamed from: r */
    public transient PathMap f115176r;

    /* renamed from: i */
    public boolean f115167i = true;

    /* renamed from: j */
    public int f115168j = 1000;

    /* renamed from: k */
    public boolean f115169k = true;

    /* renamed from: n */
    public transient Map f115172n = new HashMap();

    /* renamed from: q */
    public transient Map f115175q = new HashMap();

    /* renamed from: org.mortbay.jetty.servlet.ServletHandler$a */
    /* loaded from: classes13.dex */
    public class C20414a implements FilterChain {

        /* renamed from: a */
        public FilterHolder f115177a;

        /* renamed from: b */
        public C20414a f115178b;

        /* renamed from: c */
        public ServletHolder f115179c;

        public C20414a(Object obj, ServletHolder servletHolder) {
            if (LazyList.size(obj) <= 0) {
                this.f115179c = servletHolder;
            } else {
                this.f115177a = (FilterHolder) LazyList.get(obj, 0);
                this.f115178b = new C20414a(LazyList.remove(obj, 0), servletHolder);
            }
        }

        @Override // javax.servlet.FilterChain
        public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse) throws IOException, ServletException {
            if (this.f115177a != null) {
                if (Log.isDebugEnabled()) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("call filter ");
                    stringBuffer.append(this.f115177a);
                    Log.debug(stringBuffer.toString());
                }
                this.f115177a.getFilter().doFilter(servletRequest, servletResponse, this.f115178b);
                return;
            }
            if (this.f115179c == null) {
                ServletHandler.this.notFound((HttpServletRequest) servletRequest, (HttpServletResponse) servletResponse);
                return;
            }
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("call servlet ");
                stringBuffer2.append(this.f115179c);
                Log.debug(stringBuffer2.toString());
            }
            this.f115179c.handle(servletRequest, servletResponse);
        }

        public String toString() {
            if (this.f115177a == null) {
                ServletHolder servletHolder = this.f115179c;
                return servletHolder != null ? servletHolder.toString() : "null";
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.f115177a);
            stringBuffer.append("->");
            stringBuffer.append(this.f115178b.toString());
            return stringBuffer.toString();
        }
    }

    /* renamed from: org.mortbay.jetty.servlet.ServletHandler$b */
    /* loaded from: classes13.dex */
    public class C20415b implements FilterChain {

        /* renamed from: a */
        public int f115181a = 0;

        /* renamed from: b */
        public Object f115182b;

        /* renamed from: c */
        public ServletHolder f115183c;

        public C20415b(Object obj, ServletHolder servletHolder) {
            this.f115182b = obj;
            this.f115183c = servletHolder;
        }

        @Override // javax.servlet.FilterChain
        public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse) throws IOException, ServletException {
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("doFilter ");
                stringBuffer.append(this.f115181a);
                Log.debug(stringBuffer.toString());
            }
            if (this.f115181a >= LazyList.size(this.f115182b)) {
                if (this.f115183c == null) {
                    ServletHandler.this.notFound((HttpServletRequest) servletRequest, (HttpServletResponse) servletResponse);
                    return;
                }
                if (Log.isDebugEnabled()) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("call servlet ");
                    stringBuffer2.append(this.f115183c);
                    Log.debug(stringBuffer2.toString());
                }
                this.f115183c.handle(servletRequest, servletResponse);
                return;
            }
            Object obj = this.f115182b;
            int i = this.f115181a;
            this.f115181a = i + 1;
            FilterHolder filterHolder = (FilterHolder) LazyList.get(obj, i);
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("call filter ");
                stringBuffer3.append(filterHolder);
                Log.debug(stringBuffer3.toString());
            }
            filterHolder.getFilter().doFilter(servletRequest, servletResponse, this);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < LazyList.size(this.f115182b); i++) {
                stringBuffer.append(LazyList.get(this.f115182b, i).toString());
                stringBuffer.append("->");
            }
            stringBuffer.append(this.f115183c);
            return stringBuffer.toString();
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public FilterHolder addFilter(String str, String str2, int i) {
        return addFilterWithMapping(str, str2, i);
    }

    public void addFilterMapping(FilterMapping filterMapping) {
        if (filterMapping != null) {
            FilterMapping[] filterMappings = getFilterMappings();
            Class cls = f115162v;
            if (cls == null) {
                cls = class$("org.mortbay.jetty.servlet.FilterMapping");
                f115162v = cls;
            }
            setFilterMappings((FilterMapping[]) LazyList.addToArray(filterMappings, filterMapping, cls));
        }
    }

    public FilterHolder addFilterWithMapping(Class cls, String str, int i) {
        FilterHolder newFilterHolder = newFilterHolder(cls);
        addFilterWithMapping(newFilterHolder, str, i);
        return newFilterHolder;
    }

    public ServletHolder addServlet(String str, String str2) {
        return addServletWithMapping(str, str2);
    }

    public void addServletMapping(ServletMapping servletMapping) {
        ServletMapping[] servletMappings = getServletMappings();
        Class cls = f115160t;
        if (cls == null) {
            cls = class$("org.mortbay.jetty.servlet.ServletMapping");
            f115160t = cls;
        }
        setServletMappings((ServletMapping[]) LazyList.addToArray(servletMappings, servletMapping, cls));
    }

    public ServletHolder addServletWithMapping(String str, String str2) {
        ServletHolder newServletHolder = newServletHolder(null);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("-");
        stringBuffer.append(newServletHolder.hashCode());
        newServletHolder.setName(stringBuffer.toString());
        newServletHolder.setClassName(str);
        addServletWithMapping(newServletHolder, str2);
        return newServletHolder;
    }

    public Filter customizeFilter(Filter filter) throws Exception {
        return filter;
    }

    public Filter customizeFilterDestroy(Filter filter) throws Exception {
        return filter;
    }

    public Servlet customizeServlet(Servlet servlet) throws Exception {
        return servlet;
    }

    public Servlet customizeServletDestroy(Servlet servlet) throws Exception {
        return servlet;
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public synchronized void doStart() throws Exception {
        ContextHandler.SContext currentContext = ContextHandler.getCurrentContext();
        this.f115164f = currentContext;
        this.f115163e = currentContext == null ? null : currentContext.getContextHandler();
        updateNameMappings();
        updateMappings();
        if (this.f115167i) {
            this._chainCache = new MruCache[]{null, new MruCache(this.f115168j), new MruCache(this.f115168j), null, new MruCache(this.f115168j), null, null, null, new MruCache(this.f115168j)};
        }
        super.doStart();
        ContextHandler contextHandler = this.f115163e;
        if (contextHandler == null || !(contextHandler instanceof Context)) {
            initialize();
        }
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    public synchronized void doStop() throws Exception {
        super.doStop();
        FilterHolder[] filterHolderArr = this.f115165g;
        if (filterHolderArr != null) {
            int length = filterHolderArr.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    break;
                }
                try {
                    this.f115165g[i].stop();
                } catch (Exception e) {
                    Log.warn(Log.EXCEPTION, (Throwable) e);
                }
                length = i;
            }
        }
        ServletHolder[] servletHolderArr = this.f115170l;
        if (servletHolderArr != null) {
            int length2 = servletHolderArr.length;
            while (true) {
                int i2 = length2 - 1;
                if (length2 <= 0) {
                    break;
                }
                try {
                    this.f115170l[i2].stop();
                } catch (Exception e2) {
                    Log.warn(Log.EXCEPTION, (Throwable) e2);
                }
                length2 = i2;
            }
        }
        this.f115173o = null;
        this.f115174p = null;
        this.f115176r = null;
        this._chainCache = null;
    }

    /* renamed from: f */
    public final FilterChain m71619f(int i, String str, ServletHolder servletHolder) {
        Object obj;
        MultiMap multiMap;
        String name = str == null ? servletHolder.getName() : str;
        if (this.f115167i && this._chainCache != null) {
            synchronized (this) {
                if (this._chainCache[i].containsKey(name)) {
                    return (FilterChain) this._chainCache[i].get(name);
                }
            }
        }
        if (str == null || this.f115173o == null) {
            obj = null;
        } else {
            obj = null;
            for (int i2 = 0; i2 < this.f115173o.size(); i2++) {
                FilterMapping filterMapping = (FilterMapping) this.f115173o.get(i2);
                if (filterMapping.m71611b(str, i)) {
                    obj = LazyList.add(obj, filterMapping.m71612c());
                }
            }
        }
        if (servletHolder != null && (multiMap = this.f115174p) != null && multiMap.size() > 0 && this.f115174p.size() > 0) {
            Object obj2 = this.f115174p.get(servletHolder.getName());
            for (int i3 = 0; i3 < LazyList.size(obj2); i3++) {
                FilterMapping filterMapping2 = (FilterMapping) LazyList.get(obj2, i3);
                if (filterMapping2.m71610a(i)) {
                    obj = LazyList.add(obj, filterMapping2.m71612c());
                }
            }
            Object obj3 = this.f115174p.get("*");
            for (int i4 = 0; i4 < LazyList.size(obj3); i4++) {
                FilterMapping filterMapping3 = (FilterMapping) LazyList.get(obj3, i4);
                if (filterMapping3.m71610a(i)) {
                    obj = LazyList.add(obj, filterMapping3.m71612c());
                }
            }
        }
        if (obj == null) {
            return null;
        }
        if (!this.f115167i) {
            if (LazyList.size(obj) > 0) {
                return new C20415b(obj, servletHolder);
            }
            return null;
        }
        C20414a c20414a = LazyList.size(obj) > 0 ? new C20414a(obj, servletHolder) : null;
        synchronized (this) {
            this._chainCache[i].put(name, c20414a);
        }
        return c20414a;
    }

    /* renamed from: g */
    public final void m71620g() {
        this._chainCache = new MruCache[]{null, new MruCache(this.f115168j), new MruCache(this.f115168j), null, new MruCache(this.f115168j), null, null, null, new MruCache(this.f115168j)};
    }

    public Object getContextLog() {
        return null;
    }

    public FilterHolder getFilter(String str) {
        return (FilterHolder) this.f115172n.get(str);
    }

    public FilterMapping[] getFilterMappings() {
        return this.f115166h;
    }

    public FilterHolder[] getFilters() {
        return this.f115165g;
    }

    public PathMap.Entry getHolderEntry(String str) {
        PathMap pathMap = this.f115176r;
        if (pathMap == null) {
            return null;
        }
        return pathMap.getMatch(str);
    }

    public int getMaxFilterChainsCacheSize() {
        return this.f115168j;
    }

    public RequestDispatcher getRequestDispatcher(String str) {
        String str2;
        if (str == null || !str.startsWith("/")) {
            return null;
        }
        try {
            int indexOf = str.indexOf(63);
            if (indexOf > 0) {
                str2 = str.substring(indexOf + 1);
                str = str.substring(0, indexOf);
            } else {
                str2 = null;
            }
            int indexOf2 = str.indexOf(59);
            if (indexOf2 > 0) {
                str = str.substring(0, indexOf2);
            }
            return new Dispatcher(this.f115163e, URIUtil.addPaths(this.f115163e.getContextPath(), str), URIUtil.canonicalPath(URIUtil.decodePath(str)), str2);
        } catch (Exception e) {
            Log.ignore(e);
            return null;
        }
    }

    public ServletHolder getServlet(String str) {
        return (ServletHolder) this.f115175q.get(str);
    }

    public ServletContext getServletContext() {
        return this.f115164f;
    }

    public ServletMapping[] getServletMappings() {
        return this.f115171m;
    }

    public ServletHolder[] getServlets() {
        return this.f115170l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x03b8: MOVE (r1 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY]), block:B:289:0x03b8 */
    /* JADX WARN: Removed duplicated region for block: B:127:0x039b A[Catch: all -> 0x03a2, TryCatch #0 {all -> 0x03a2, blocks: (B:29:0x0229, B:31:0x0247, B:32:0x024e, B:34:0x0254, B:46:0x026a, B:48:0x0270, B:49:0x0295, B:66:0x029c, B:68:0x02a0, B:70:0x02a4, B:73:0x02a9, B:74:0x02ab, B:75:0x02ac, B:76:0x02ae, B:77:0x02af, B:78:0x02b1, B:79:0x02b2, B:81:0x02b6, B:82:0x02cd, B:84:0x02d1, B:86:0x02d5, B:88:0x02d9, B:90:0x02dd, B:92:0x02e3, B:93:0x031e, B:95:0x0324, B:97:0x0332, B:99:0x033b, B:109:0x0345, B:110:0x034f, B:111:0x0359, B:113:0x035f, B:114:0x02f2, B:116:0x02f6, B:119:0x02fb, B:120:0x0303, B:121:0x0392, B:122:0x0394, B:123:0x0395, B:124:0x0397, B:125:0x0398, B:126:0x039a, B:127:0x039b, B:128:0x03a1, B:129:0x02ba, B:131:0x02be), top: B:10:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02ba A[Catch: all -> 0x03a2, TryCatch #0 {all -> 0x03a2, blocks: (B:29:0x0229, B:31:0x0247, B:32:0x024e, B:34:0x0254, B:46:0x026a, B:48:0x0270, B:49:0x0295, B:66:0x029c, B:68:0x02a0, B:70:0x02a4, B:73:0x02a9, B:74:0x02ab, B:75:0x02ac, B:76:0x02ae, B:77:0x02af, B:78:0x02b1, B:79:0x02b2, B:81:0x02b6, B:82:0x02cd, B:84:0x02d1, B:86:0x02d5, B:88:0x02d9, B:90:0x02dd, B:92:0x02e3, B:93:0x031e, B:95:0x0324, B:97:0x0332, B:99:0x033b, B:109:0x0345, B:110:0x034f, B:111:0x0359, B:113:0x035f, B:114:0x02f2, B:116:0x02f6, B:119:0x02fb, B:120:0x0303, B:121:0x0392, B:122:0x0394, B:123:0x0395, B:124:0x0397, B:125:0x0398, B:126:0x039a, B:127:0x039b, B:128:0x03a1, B:129:0x02ba, B:131:0x02be), top: B:10:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0229 A[Catch: all -> 0x03a2, TRY_ENTER, TryCatch #0 {all -> 0x03a2, blocks: (B:29:0x0229, B:31:0x0247, B:32:0x024e, B:34:0x0254, B:46:0x026a, B:48:0x0270, B:49:0x0295, B:66:0x029c, B:68:0x02a0, B:70:0x02a4, B:73:0x02a9, B:74:0x02ab, B:75:0x02ac, B:76:0x02ae, B:77:0x02af, B:78:0x02b1, B:79:0x02b2, B:81:0x02b6, B:82:0x02cd, B:84:0x02d1, B:86:0x02d5, B:88:0x02d9, B:90:0x02dd, B:92:0x02e3, B:93:0x031e, B:95:0x0324, B:97:0x0332, B:99:0x033b, B:109:0x0345, B:110:0x034f, B:111:0x0359, B:113:0x035f, B:114:0x02f2, B:116:0x02f6, B:119:0x02fb, B:120:0x0303, B:121:0x0392, B:122:0x0394, B:123:0x0395, B:124:0x0397, B:125:0x0398, B:126:0x039a, B:127:0x039b, B:128:0x03a1, B:129:0x02ba, B:131:0x02be), top: B:10:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0295 A[Catch: all -> 0x03a2, TRY_ENTER, TryCatch #0 {all -> 0x03a2, blocks: (B:29:0x0229, B:31:0x0247, B:32:0x024e, B:34:0x0254, B:46:0x026a, B:48:0x0270, B:49:0x0295, B:66:0x029c, B:68:0x02a0, B:70:0x02a4, B:73:0x02a9, B:74:0x02ab, B:75:0x02ac, B:76:0x02ae, B:77:0x02af, B:78:0x02b1, B:79:0x02b2, B:81:0x02b6, B:82:0x02cd, B:84:0x02d1, B:86:0x02d5, B:88:0x02d9, B:90:0x02dd, B:92:0x02e3, B:93:0x031e, B:95:0x0324, B:97:0x0332, B:99:0x033b, B:109:0x0345, B:110:0x034f, B:111:0x0359, B:113:0x035f, B:114:0x02f2, B:116:0x02f6, B:119:0x02fb, B:120:0x0303, B:121:0x0392, B:122:0x0394, B:123:0x0395, B:124:0x0397, B:125:0x0398, B:126:0x039a, B:127:0x039b, B:128:0x03a1, B:129:0x02ba, B:131:0x02be), top: B:10:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x029c A[Catch: all -> 0x03a2, TryCatch #0 {all -> 0x03a2, blocks: (B:29:0x0229, B:31:0x0247, B:32:0x024e, B:34:0x0254, B:46:0x026a, B:48:0x0270, B:49:0x0295, B:66:0x029c, B:68:0x02a0, B:70:0x02a4, B:73:0x02a9, B:74:0x02ab, B:75:0x02ac, B:76:0x02ae, B:77:0x02af, B:78:0x02b1, B:79:0x02b2, B:81:0x02b6, B:82:0x02cd, B:84:0x02d1, B:86:0x02d5, B:88:0x02d9, B:90:0x02dd, B:92:0x02e3, B:93:0x031e, B:95:0x0324, B:97:0x0332, B:99:0x033b, B:109:0x0345, B:110:0x034f, B:111:0x0359, B:113:0x035f, B:114:0x02f2, B:116:0x02f6, B:119:0x02fb, B:120:0x0303, B:121:0x0392, B:122:0x0394, B:123:0x0395, B:124:0x0397, B:125:0x0398, B:126:0x039a, B:127:0x039b, B:128:0x03a1, B:129:0x02ba, B:131:0x02be), top: B:10:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02b6 A[Catch: all -> 0x03a2, TryCatch #0 {all -> 0x03a2, blocks: (B:29:0x0229, B:31:0x0247, B:32:0x024e, B:34:0x0254, B:46:0x026a, B:48:0x0270, B:49:0x0295, B:66:0x029c, B:68:0x02a0, B:70:0x02a4, B:73:0x02a9, B:74:0x02ab, B:75:0x02ac, B:76:0x02ae, B:77:0x02af, B:78:0x02b1, B:79:0x02b2, B:81:0x02b6, B:82:0x02cd, B:84:0x02d1, B:86:0x02d5, B:88:0x02d9, B:90:0x02dd, B:92:0x02e3, B:93:0x031e, B:95:0x0324, B:97:0x0332, B:99:0x033b, B:109:0x0345, B:110:0x034f, B:111:0x0359, B:113:0x035f, B:114:0x02f2, B:116:0x02f6, B:119:0x02fb, B:120:0x0303, B:121:0x0392, B:122:0x0394, B:123:0x0395, B:124:0x0397, B:125:0x0398, B:126:0x039a, B:127:0x039b, B:128:0x03a1, B:129:0x02ba, B:131:0x02be), top: B:10:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02d1 A[Catch: all -> 0x03a2, TryCatch #0 {all -> 0x03a2, blocks: (B:29:0x0229, B:31:0x0247, B:32:0x024e, B:34:0x0254, B:46:0x026a, B:48:0x0270, B:49:0x0295, B:66:0x029c, B:68:0x02a0, B:70:0x02a4, B:73:0x02a9, B:74:0x02ab, B:75:0x02ac, B:76:0x02ae, B:77:0x02af, B:78:0x02b1, B:79:0x02b2, B:81:0x02b6, B:82:0x02cd, B:84:0x02d1, B:86:0x02d5, B:88:0x02d9, B:90:0x02dd, B:92:0x02e3, B:93:0x031e, B:95:0x0324, B:97:0x0332, B:99:0x033b, B:109:0x0345, B:110:0x034f, B:111:0x0359, B:113:0x035f, B:114:0x02f2, B:116:0x02f6, B:119:0x02fb, B:120:0x0303, B:121:0x0392, B:122:0x0394, B:123:0x0395, B:124:0x0397, B:125:0x0398, B:126:0x039a, B:127:0x039b, B:128:0x03a1, B:129:0x02ba, B:131:0x02be), top: B:10:0x0037 }] */
    /* JADX WARN: Type inference failed for: r14v5, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [javax.servlet.ServletRequestEvent] */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v53 */
    /* JADX WARN: Type inference failed for: r1v54 */
    /* JADX WARN: Type inference failed for: r1v55 */
    /* JADX WARN: Type inference failed for: r1v56 */
    /* JADX WARN: Type inference failed for: r1v57 */
    /* JADX WARN: Type inference failed for: r1v58 */
    /* JADX WARN: Type inference failed for: r1v62 */
    /* JADX WARN: Type inference failed for: r1v63 */
    /* JADX WARN: Type inference failed for: r1v64 */
    /* JADX WARN: Type inference failed for: r1v65 */
    /* JADX WARN: Type inference failed for: r1v66 */
    /* JADX WARN: Type inference failed for: r1v67 */
    /* JADX WARN: Type inference failed for: r1v68 */
    /* JADX WARN: Type inference failed for: r1v69 */
    /* JADX WARN: Type inference failed for: r20v0, types: [org.mortbay.component.AbstractLifeCycle, org.mortbay.jetty.servlet.ServletHandler] */
    /* JADX WARN: Type inference failed for: r22v0, types: [javax.servlet.http.HttpServletRequest, javax.servlet.ServletRequest, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [javax.servlet.ServletRequestListener] */
    /* JADX WARN: Type inference failed for: r6v20, types: [java.util.Map] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // org.mortbay.jetty.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle(java.lang.String r21, javax.servlet.http.HttpServletRequest r22, javax.servlet.http.HttpServletResponse r23, int r24) throws java.io.IOException, javax.servlet.ServletException {
        /*
            Method dump skipped, instructions count: 991
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.servlet.ServletHandler.handle(java.lang.String, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, int):void");
    }

    public void initialize() throws Exception {
        MultiException multiException = new MultiException();
        if (this.f115165g != null) {
            int i = 0;
            while (true) {
                FilterHolder[] filterHolderArr = this.f115165g;
                if (i >= filterHolderArr.length) {
                    break;
                }
                filterHolderArr[i].start();
                i++;
            }
        }
        ServletHolder[] servletHolderArr = this.f115170l;
        if (servletHolderArr != null) {
            ServletHolder[] servletHolderArr2 = (ServletHolder[]) servletHolderArr.clone();
            Arrays.sort(servletHolderArr2);
            for (int i2 = 0; i2 < servletHolderArr2.length; i2++) {
                try {
                } catch (Throwable th) {
                    Log.debug(Log.EXCEPTION, th);
                    multiException.add(th);
                }
                if (servletHolderArr2[i2].getClassName() == null && servletHolderArr2[i2].getForcedPath() != null) {
                    ServletHolder servletHolder = (ServletHolder) this.f115176r.match(servletHolderArr2[i2].getForcedPath());
                    if (servletHolder != null && servletHolder.getClassName() != null) {
                        servletHolderArr2[i2].setClassName(servletHolder.getClassName());
                    }
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("No forced path servlet for ");
                    stringBuffer.append(servletHolderArr2[i2].getForcedPath());
                    multiException.add(new IllegalStateException(stringBuffer.toString()));
                }
                servletHolderArr2[i2].start();
            }
            multiException.ifExceptionThrow();
        }
    }

    public boolean isAvailable() {
        if (!isStarted()) {
            return false;
        }
        for (ServletHolder servletHolder : getServlets()) {
            if (servletHolder != null && !servletHolder.isAvailable()) {
                return false;
            }
        }
        return true;
    }

    public boolean isFilterChainsCached() {
        return this.f115167i;
    }

    public boolean isInitializeAtStart() {
        return false;
    }

    public boolean isStartWithUnavailable() {
        return this.f115169k;
    }

    public boolean matchesPath(String str) {
        return this.f115176r.containsMatch(str);
    }

    public FilterHolder newFilterHolder(Class cls) {
        return new FilterHolder(cls);
    }

    public ServletHolder newServletHolder() {
        return new ServletHolder();
    }

    public void notFound(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException {
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Not Found ");
            stringBuffer.append(httpServletRequest.getRequestURI());
            Log.debug(stringBuffer.toString());
        }
        httpServletResponse.sendError(404);
    }

    public void setFilterChainsCached(boolean z) {
        this.f115167i = z;
    }

    public void setFilterMappings(FilterMapping[] filterMappingArr) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) this.f115166h, (Object[]) filterMappingArr, "filterMapping", true);
        }
        this.f115166h = filterMappingArr;
        updateMappings();
        m71620g();
    }

    public synchronized void setFilters(FilterHolder[] filterHolderArr) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) this.f115165g, (Object[]) filterHolderArr, "filter", true);
        }
        this.f115165g = filterHolderArr;
        updateNameMappings();
        m71620g();
    }

    public void setInitializeAtStart(boolean z) {
    }

    public void setMaxFilterChainsCacheSize(int i) {
        this.f115168j = i;
        int i2 = 0;
        while (true) {
            MruCache[] mruCacheArr = this._chainCache;
            if (i2 >= mruCacheArr.length) {
                return;
            }
            MruCache mruCache = mruCacheArr[i2];
            if (mruCache != null && (mruCache instanceof MruCache)) {
                mruCache.setMaxEntries(i);
            }
            i2++;
        }
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler, org.mortbay.jetty.Handler
    public void setServer(Server server) {
        if (getServer() != null && getServer() != server) {
            getServer().getContainer().update((Object) this, (Object[]) this.f115165g, (Object[]) null, "filter", true);
            getServer().getContainer().update((Object) this, (Object[]) this.f115166h, (Object[]) null, "filterMapping", true);
            getServer().getContainer().update((Object) this, (Object[]) this.f115170l, (Object[]) null, "servlet", true);
            getServer().getContainer().update((Object) this, (Object[]) this.f115171m, (Object[]) null, "servletMapping", true);
        }
        if (server != null && getServer() != server) {
            server.getContainer().update((Object) this, (Object[]) null, (Object[]) this.f115165g, "filter", true);
            server.getContainer().update((Object) this, (Object[]) null, (Object[]) this.f115166h, "filterMapping", true);
            server.getContainer().update((Object) this, (Object[]) null, (Object[]) this.f115170l, "servlet", true);
            server.getContainer().update((Object) this, (Object[]) null, (Object[]) this.f115171m, "servletMapping", true);
        }
        super.setServer(server);
        m71620g();
    }

    public void setServletMappings(ServletMapping[] servletMappingArr) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) this.f115171m, (Object[]) servletMappingArr, "servletMapping", true);
        }
        this.f115171m = servletMappingArr;
        updateMappings();
        m71620g();
    }

    public synchronized void setServlets(ServletHolder[] servletHolderArr) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) this.f115170l, (Object[]) servletHolderArr, "servlet", true);
        }
        this.f115170l = servletHolderArr;
        updateNameMappings();
        m71620g();
    }

    public void setStartWithUnavailable(boolean z) {
        this.f115169k = z;
    }

    public synchronized void updateMappings() {
        if (this.f115166h != null) {
            this.f115173o = new ArrayList();
            this.f115174p = new MultiMap();
            int i = 0;
            while (true) {
                FilterMapping[] filterMappingArr = this.f115166h;
                if (i >= filterMappingArr.length) {
                    break;
                }
                FilterHolder filterHolder = (FilterHolder) this.f115172n.get(filterMappingArr[i].getFilterName());
                if (filterHolder == null) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("No filter named ");
                    stringBuffer.append(this.f115166h[i].getFilterName());
                    throw new IllegalStateException(stringBuffer.toString());
                }
                this.f115166h[i].m71613d(filterHolder);
                if (this.f115166h[i].getPathSpecs() != null) {
                    this.f115173o.add(this.f115166h[i]);
                }
                if (this.f115166h[i].getServletNames() != null) {
                    for (String str : this.f115166h[i].getServletNames()) {
                        if (str != null) {
                            this.f115174p.add(str, this.f115166h[i]);
                        }
                    }
                }
                i++;
            }
        } else {
            this.f115173o = null;
            this.f115174p = null;
        }
        if (this.f115171m != null && this.f115175q != null) {
            PathMap pathMap = new PathMap();
            int i2 = 0;
            while (true) {
                ServletMapping[] servletMappingArr = this.f115171m;
                if (i2 >= servletMappingArr.length) {
                    this.f115176r = pathMap;
                    break;
                }
                ServletHolder servletHolder = (ServletHolder) this.f115175q.get(servletMappingArr[i2].getServletName());
                if (servletHolder == null) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("No such servlet: ");
                    stringBuffer2.append(this.f115171m[i2].getServletName());
                    throw new IllegalStateException(stringBuffer2.toString());
                }
                if (this.f115171m[i2].getPathSpecs() != null) {
                    for (String str2 : this.f115171m[i2].getPathSpecs()) {
                        if (str2 != null) {
                            pathMap.put(str2, servletHolder);
                        }
                    }
                }
                i2++;
            }
        }
        this.f115176r = null;
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("filterNameMap=");
            stringBuffer3.append(this.f115172n);
            Log.debug(stringBuffer3.toString());
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("pathFilters=");
            stringBuffer4.append(this.f115173o);
            Log.debug(stringBuffer4.toString());
            StringBuffer stringBuffer5 = new StringBuffer();
            stringBuffer5.append("servletFilterMap=");
            stringBuffer5.append(this.f115174p);
            Log.debug(stringBuffer5.toString());
            StringBuffer stringBuffer6 = new StringBuffer();
            stringBuffer6.append("servletPathMap=");
            stringBuffer6.append(this.f115176r);
            Log.debug(stringBuffer6.toString());
            StringBuffer stringBuffer7 = new StringBuffer();
            stringBuffer7.append("servletNameMap=");
            stringBuffer7.append(this.f115175q);
            Log.debug(stringBuffer7.toString());
        }
        try {
            if (isStarted()) {
                initialize();
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public synchronized void updateNameMappings() {
        this.f115172n.clear();
        int i = 0;
        if (this.f115165g != null) {
            int i2 = 0;
            while (true) {
                FilterHolder[] filterHolderArr = this.f115165g;
                if (i2 >= filterHolderArr.length) {
                    break;
                }
                this.f115172n.put(filterHolderArr[i2].getName(), this.f115165g[i2]);
                this.f115165g[i2].setServletHandler(this);
                i2++;
            }
        }
        this.f115175q.clear();
        if (this.f115170l != null) {
            while (true) {
                ServletHolder[] servletHolderArr = this.f115170l;
                if (i >= servletHolderArr.length) {
                    break;
                }
                this.f115175q.put(servletHolderArr[i].getName(), this.f115170l[i]);
                this.f115170l[i].setServletHandler(this);
                i++;
            }
        }
    }

    public void addFilter(FilterHolder filterHolder, FilterMapping filterMapping) {
        if (filterHolder != null) {
            FilterHolder[] filters = getFilters();
            Class cls = f115161u;
            if (cls == null) {
                cls = class$("org.mortbay.jetty.servlet.FilterHolder");
                f115161u = cls;
            }
            setFilters((FilterHolder[]) LazyList.addToArray(filters, filterHolder, cls));
        }
        if (filterMapping != null) {
            FilterMapping[] filterMappings = getFilterMappings();
            Class cls2 = f115162v;
            if (cls2 == null) {
                cls2 = class$("org.mortbay.jetty.servlet.FilterMapping");
                f115162v = cls2;
            }
            setFilterMappings((FilterMapping[]) LazyList.addToArray(filterMappings, filterMapping, cls2));
        }
    }

    public void addServlet(ServletHolder servletHolder) {
        ServletHolder[] servlets = getServlets();
        Class cls = f115159s;
        if (cls == null) {
            cls = class$("org.mortbay.jetty.servlet.ServletHolder");
            f115159s = cls;
        }
        setServlets((ServletHolder[]) LazyList.addToArray(servlets, servletHolder, cls));
    }

    public FilterHolder newFilterHolder() {
        return new FilterHolder();
    }

    public ServletHolder newServletHolder(Class cls) {
        return new ServletHolder(cls);
    }

    /* loaded from: classes13.dex */
    public class MruCache extends LinkedHashMap {
        private int maxEntries = 1000;

        public MruCache() {
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry entry) {
            return size() > this.maxEntries;
        }

        public void setMaxEntries(int i) {
            this.maxEntries = i;
        }

        public MruCache(int i) {
            setMaxEntries(i);
        }
    }

    public FilterHolder addFilterWithMapping(String str, String str2, int i) {
        FilterHolder newFilterHolder = newFilterHolder(null);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("-");
        stringBuffer.append(newFilterHolder.hashCode());
        newFilterHolder.setName(stringBuffer.toString());
        newFilterHolder.setClassName(str);
        addFilterWithMapping(newFilterHolder, str2, i);
        return newFilterHolder;
    }

    public void addFilter(FilterHolder filterHolder) {
        if (filterHolder != null) {
            FilterHolder[] filters = getFilters();
            Class cls = f115161u;
            if (cls == null) {
                cls = class$("org.mortbay.jetty.servlet.FilterHolder");
                f115161u = cls;
            }
            setFilters((FilterHolder[]) LazyList.addToArray(filters, filterHolder, cls));
        }
    }

    public ServletHolder addServletWithMapping(Class cls, String str) {
        ServletHolder newServletHolder = newServletHolder(cls);
        ServletHolder[] servlets = getServlets();
        Class cls2 = f115159s;
        if (cls2 == null) {
            cls2 = class$("org.mortbay.jetty.servlet.ServletHolder");
            f115159s = cls2;
        }
        setServlets((ServletHolder[]) LazyList.addToArray(servlets, newServletHolder, cls2));
        addServletWithMapping(newServletHolder, str);
        return newServletHolder;
    }

    public void addFilterWithMapping(FilterHolder filterHolder, String str, int i) {
        FilterHolder[] filters = getFilters();
        if (filters != null) {
            filters = (FilterHolder[]) filters.clone();
        }
        try {
            Class cls = f115161u;
            if (cls == null) {
                cls = class$("org.mortbay.jetty.servlet.FilterHolder");
                f115161u = cls;
            }
            setFilters((FilterHolder[]) LazyList.addToArray(filters, filterHolder, cls));
            FilterMapping filterMapping = new FilterMapping();
            filterMapping.setFilterName(filterHolder.getName());
            filterMapping.setPathSpec(str);
            filterMapping.setDispatches(i);
            FilterMapping[] filterMappings = getFilterMappings();
            Class cls2 = f115162v;
            if (cls2 == null) {
                cls2 = class$("org.mortbay.jetty.servlet.FilterMapping");
                f115162v = cls2;
            }
            setFilterMappings((FilterMapping[]) LazyList.addToArray(filterMappings, filterMapping, cls2));
        } catch (Error e) {
            setFilters(filters);
            throw e;
        } catch (RuntimeException e2) {
            setFilters(filters);
            throw e2;
        }
    }

    public void addServletWithMapping(ServletHolder servletHolder, String str) {
        ServletHolder[] servlets = getServlets();
        if (servlets != null) {
            servlets = (ServletHolder[]) servlets.clone();
        }
        try {
            Class cls = f115159s;
            if (cls == null) {
                cls = class$("org.mortbay.jetty.servlet.ServletHolder");
                f115159s = cls;
            }
            setServlets((ServletHolder[]) LazyList.addToArray(servlets, servletHolder, cls));
            ServletMapping servletMapping = new ServletMapping();
            servletMapping.setServletName(servletHolder.getName());
            servletMapping.setPathSpec(str);
            ServletMapping[] servletMappings = getServletMappings();
            Class cls2 = f115160t;
            if (cls2 == null) {
                cls2 = class$("org.mortbay.jetty.servlet.ServletMapping");
                f115160t = cls2;
            }
            setServletMappings((ServletMapping[]) LazyList.addToArray(servletMappings, servletMapping, cls2));
        } catch (Exception e) {
            setServlets(servlets);
            if (e instanceof RuntimeException) {
                throw ((RuntimeException) e);
            }
            throw new RuntimeException(e);
        }
    }
}
