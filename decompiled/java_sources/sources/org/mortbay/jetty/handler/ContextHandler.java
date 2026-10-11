package org.mortbay.jetty.handler;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestListener;
import org.mortbay.io.Buffer;
import org.mortbay.jetty.Handler;
import org.mortbay.jetty.HandlerContainer;
import org.mortbay.jetty.MimeTypes;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.webapp.WebAppClassLoader;
import org.mortbay.log.Log;
import org.mortbay.log.Logger;
import org.mortbay.resource.Resource;
import org.mortbay.util.Attributes;
import org.mortbay.util.AttributesMap;
import org.mortbay.util.LazyList;
import org.mortbay.util.Loader;
import org.mortbay.util.QuotedStringTokenizer;
import org.mortbay.util.URIUtil;

/* loaded from: classes13.dex */
public class ContextHandler extends HandlerWrapper implements Attributes, Server.Graceful {
    public static final String MANAGED_ATTRIBUTES = "org.mortbay.jetty.servlet.ManagedAttributes";

    /* renamed from: k0 */
    public static ThreadLocal f114871k0 = new ThreadLocal();

    /* renamed from: q0 */
    public static /* synthetic */ Class f114872q0;

    /* renamed from: t0 */
    public static /* synthetic */ Class f114873t0;

    /* renamed from: u0 */
    public static /* synthetic */ Class f114874u0;

    /* renamed from: J */
    public Object f114875J;

    /* renamed from: O */
    public Object f114876O;

    /* renamed from: Q */
    public Object f114877Q;

    /* renamed from: Z */
    public Set f114878Z;
    protected SContext _scontext;

    /* renamed from: g */
    public AttributesMap f114879g;

    /* renamed from: h */
    public AttributesMap f114880h;

    /* renamed from: i */
    public ClassLoader f114881i;

    /* renamed from: j */
    public String f114882j;

    /* renamed from: k */
    public Map f114883k;

    /* renamed from: l */
    public String f114884l;

    /* renamed from: m */
    public Resource f114885m;

    /* renamed from: n */
    public MimeTypes f114886n;

    /* renamed from: o */
    public Map f114887o;

    /* renamed from: p */
    public String[] f114888p;

    /* renamed from: q */
    public ErrorHandler f114889q;

    /* renamed from: r */
    public String[] f114890r;

    /* renamed from: s */
    public Set f114891s;

    /* renamed from: t */
    public EventListener[] f114892t;

    /* renamed from: u */
    public Logger f114893u;

    /* renamed from: v */
    public boolean f114894v;

    /* renamed from: w */
    public boolean f114895w;

    /* renamed from: x */
    public int f114896x;

    /* renamed from: y */
    public boolean f114897y;

    /* renamed from: z */
    public Object f114898z;

    /* loaded from: classes13.dex */
    public class SContext implements ServletContext {
        public SContext() {
        }

        @Override // javax.servlet.ServletContext
        public synchronized Object getAttribute(String str) {
            Object attribute;
            attribute = ContextHandler.this.getAttribute(str);
            if (attribute == null && ContextHandler.this.f114880h != null) {
                attribute = ContextHandler.this.f114880h.getAttribute(str);
            }
            return attribute;
        }

        @Override // javax.servlet.ServletContext
        public synchronized Enumeration getAttributeNames() {
            HashSet hashSet;
            hashSet = new HashSet();
            if (ContextHandler.this.f114880h != null) {
                Enumeration attributeNames = ContextHandler.this.f114880h.getAttributeNames();
                while (attributeNames.hasMoreElements()) {
                    hashSet.add(attributeNames.nextElement());
                }
            }
            Enumeration attributeNames2 = ContextHandler.this.f114879g.getAttributeNames();
            while (attributeNames2.hasMoreElements()) {
                hashSet.add(attributeNames2.nextElement());
            }
            return Collections.enumeration(hashSet);
        }

        @Override // javax.servlet.ServletContext
        public ServletContext getContext(String str) {
            Server server = ContextHandler.this.getServer();
            Class cls = ContextHandler.f114874u0;
            if (cls == null) {
                cls = ContextHandler.class$("org.mortbay.jetty.handler.ContextHandler");
                ContextHandler.f114874u0 = cls;
            }
            Handler[] childHandlersByClass = server.getChildHandlersByClass(cls);
            ContextHandler contextHandler = null;
            for (int i = 0; i < childHandlersByClass.length; i++) {
                Handler handler = childHandlersByClass[i];
                if (handler != null && handler.isStarted()) {
                    ContextHandler contextHandler2 = (ContextHandler) childHandlersByClass[i];
                    String contextPath = contextHandler2.getContextPath();
                    if ((str.equals(contextPath) || (str.startsWith(contextPath) && str.charAt(contextPath.length()) == '/')) && (contextHandler == null || contextPath.length() > contextHandler.getContextPath().length())) {
                        contextHandler = contextHandler2;
                    }
                }
            }
            if (contextHandler != null) {
                return contextHandler._scontext;
            }
            return null;
        }

        public ContextHandler getContextHandler() {
            return ContextHandler.this;
        }

        @Override // javax.servlet.ServletContext
        public String getContextPath() {
            return (ContextHandler.this.f114882j == null || !ContextHandler.this.f114882j.equals("/")) ? ContextHandler.this.f114882j : "";
        }

        @Override // javax.servlet.ServletContext
        public String getInitParameter(String str) {
            return ContextHandler.this.getInitParameter(str);
        }

        @Override // javax.servlet.ServletContext
        public Enumeration getInitParameterNames() {
            return ContextHandler.this.getInitParameterNames();
        }

        @Override // javax.servlet.ServletContext
        public int getMajorVersion() {
            return 2;
        }

        @Override // javax.servlet.ServletContext
        public String getMimeType(String str) {
            Buffer mimeByExtension;
            if (ContextHandler.this.f114886n == null || (mimeByExtension = ContextHandler.this.f114886n.getMimeByExtension(str)) == null) {
                return null;
            }
            return mimeByExtension.toString();
        }

        @Override // javax.servlet.ServletContext
        public int getMinorVersion() {
            return 5;
        }

        @Override // javax.servlet.ServletContext
        public RequestDispatcher getNamedDispatcher(String str) {
            return null;
        }

        @Override // javax.servlet.ServletContext
        public String getRealPath(String str) {
            File file;
            if (str == null) {
                return null;
            }
            if (str.length() == 0) {
                str = "/";
            } else if (str.charAt(0) != '/') {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("/");
                stringBuffer.append(str);
                str = stringBuffer.toString();
            }
            try {
                Resource resource = ContextHandler.this.getResource(str);
                if (resource != null && (file = resource.getFile()) != null) {
                    return file.getCanonicalPath();
                }
            } catch (Exception e) {
                Log.ignore(e);
            }
            return null;
        }

        @Override // javax.servlet.ServletContext
        public RequestDispatcher getRequestDispatcher(String str) {
            return null;
        }

        @Override // javax.servlet.ServletContext
        public URL getResource(String str) throws MalformedURLException {
            Resource resource = ContextHandler.this.getResource(str);
            if (resource == null || !resource.exists()) {
                return null;
            }
            return resource.getURL();
        }

        @Override // javax.servlet.ServletContext
        public InputStream getResourceAsStream(String str) {
            try {
                URL resource = getResource(str);
                if (resource == null) {
                    return null;
                }
                return resource.openStream();
            } catch (Exception e) {
                Log.ignore(e);
                return null;
            }
        }

        @Override // javax.servlet.ServletContext
        public Set getResourcePaths(String str) {
            return ContextHandler.this.getResourcePaths(str);
        }

        @Override // javax.servlet.ServletContext
        public String getServerInfo() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("jetty/");
            stringBuffer.append(Server.getVersion());
            return stringBuffer.toString();
        }

        @Override // javax.servlet.ServletContext
        public Servlet getServlet(String str) throws ServletException {
            return null;
        }

        @Override // javax.servlet.ServletContext
        public String getServletContextName() {
            String displayName = ContextHandler.this.getDisplayName();
            return displayName == null ? ContextHandler.this.getContextPath() : displayName;
        }

        @Override // javax.servlet.ServletContext
        public Enumeration getServletNames() {
            return Collections.enumeration(Collections.EMPTY_LIST);
        }

        @Override // javax.servlet.ServletContext
        public Enumeration getServlets() {
            return Collections.enumeration(Collections.EMPTY_LIST);
        }

        @Override // javax.servlet.ServletContext
        public void log(Exception exc, String str) {
            ContextHandler.this.f114893u.warn(str, exc);
        }

        @Override // javax.servlet.ServletContext
        public synchronized void removeAttribute(String str) {
            ContextHandler.this.m71556n(str, null);
            if (ContextHandler.this.f114880h == null) {
                ContextHandler.this.f114879g.removeAttribute(str);
                return;
            }
            Object attribute = ContextHandler.this.f114880h.getAttribute(str);
            ContextHandler.this.f114880h.removeAttribute(str);
            if (attribute != null && ContextHandler.this.f114875J != null) {
                ServletContextAttributeEvent servletContextAttributeEvent = new ServletContextAttributeEvent(ContextHandler.this._scontext, str, attribute);
                for (int i = 0; i < LazyList.size(ContextHandler.this.f114875J); i++) {
                    ((ServletContextAttributeListener) LazyList.get(ContextHandler.this.f114875J, i)).attributeRemoved(servletContextAttributeEvent);
                }
            }
        }

        @Override // javax.servlet.ServletContext
        public synchronized void setAttribute(String str, Object obj) {
            if (ContextHandler.this.f114880h == null) {
                ContextHandler.this.setAttribute(str, obj);
                return;
            }
            ContextHandler.this.m71556n(str, obj);
            Object attribute = ContextHandler.this.f114880h.getAttribute(str);
            if (obj == null) {
                ContextHandler.this.f114880h.removeAttribute(str);
            } else {
                ContextHandler.this.f114880h.setAttribute(str, obj);
            }
            if (ContextHandler.this.f114875J != null) {
                ServletContextAttributeEvent servletContextAttributeEvent = new ServletContextAttributeEvent(ContextHandler.this._scontext, str, attribute == null ? obj : attribute);
                for (int i = 0; i < LazyList.size(ContextHandler.this.f114875J); i++) {
                    ServletContextAttributeListener servletContextAttributeListener = (ServletContextAttributeListener) LazyList.get(ContextHandler.this.f114875J, i);
                    if (attribute == null) {
                        servletContextAttributeListener.attributeAdded(servletContextAttributeEvent);
                    } else if (obj == null) {
                        servletContextAttributeListener.attributeRemoved(servletContextAttributeEvent);
                    } else {
                        servletContextAttributeListener.attributeReplaced(servletContextAttributeEvent);
                    }
                }
            }
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("ServletContext@");
            stringBuffer.append(Integer.toHexString(hashCode()));
            stringBuffer.append("{");
            stringBuffer.append(getContextPath().equals("") ? "/" : getContextPath());
            stringBuffer.append(",");
            stringBuffer.append(ContextHandler.this.getBaseResource());
            stringBuffer.append("}");
            return stringBuffer.toString();
        }

        @Override // javax.servlet.ServletContext
        public void log(String str) {
            ContextHandler.this.f114893u.info(str, null, null);
        }

        @Override // javax.servlet.ServletContext
        public void log(String str, Throwable th) {
            ContextHandler.this.f114893u.warn(str, th);
        }
    }

    public ContextHandler() {
        this.f114882j = "/";
        this.f114896x = Integer.getInteger("org.mortbay.jetty.Request.maxFormContentSize", 200000).intValue();
        this.f114897y = false;
        this._scontext = new SContext();
        this.f114879g = new AttributesMap();
        this.f114883k = new HashMap();
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static SContext getCurrentContext() {
        return (SContext) f114871k0.get();
    }

    public void addEventListener(EventListener eventListener) {
        EventListener[] eventListeners = getEventListeners();
        Class cls = f114872q0;
        if (cls == null) {
            cls = class$("java.util.EventListener");
            f114872q0 = cls;
        }
        setEventListeners((EventListener[]) LazyList.addToArray(eventListeners, eventListener, cls));
    }

    public void addLocaleEncoding(String str, String str2) {
        if (this.f114887o == null) {
            this.f114887o = new HashMap();
        }
        this.f114887o.put(str, str2);
    }

    @Override // org.mortbay.util.Attributes
    public void clearAttributes() {
        Enumeration attributeNames = this.f114879g.getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            m71556n((String) attributeNames.nextElement(), null);
        }
        this.f114879g.clearAttributes();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0081  */
    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doStart() throws java.lang.Exception {
        /*
            r6 = this;
            java.lang.String r0 = r6.f114882j
            if (r0 == 0) goto L85
            java.lang.String r0 = r6.getDisplayName()
            if (r0 != 0) goto Lf
            java.lang.String r0 = r6.getContextPath()
            goto L13
        Lf:
            java.lang.String r0 = r6.getDisplayName()
        L13:
            org.mortbay.log.Logger r0 = org.mortbay.log.Log.getLogger(r0)
            r6.f114893u = r0
            org.mortbay.util.AttributesMap r0 = new org.mortbay.util.AttributesMap
            r0.<init>()
            r6.f114880h = r0
            r0 = 0
            java.lang.ClassLoader r1 = r6.f114881i     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L36
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L75
            java.lang.ClassLoader r2 = r1.getContextClassLoader()     // Catch: java.lang.Throwable -> L33
            java.lang.ClassLoader r3 = r6.f114881i     // Catch: java.lang.Throwable -> L73
            r1.setContextClassLoader(r3)     // Catch: java.lang.Throwable -> L73
            goto L38
        L33:
            r3 = move-exception
            r2 = r0
            goto L78
        L36:
            r1 = r0
            r2 = r1
        L38:
            org.mortbay.jetty.MimeTypes r3 = r6.f114886n     // Catch: java.lang.Throwable -> L73
            if (r3 != 0) goto L43
            org.mortbay.jetty.MimeTypes r3 = new org.mortbay.jetty.MimeTypes     // Catch: java.lang.Throwable -> L73
            r3.<init>()     // Catch: java.lang.Throwable -> L73
            r6.f114886n = r3     // Catch: java.lang.Throwable -> L73
        L43:
            java.lang.ThreadLocal r3 = org.mortbay.jetty.handler.ContextHandler.f114871k0     // Catch: java.lang.Throwable -> L73
            java.lang.Object r3 = r3.get()     // Catch: java.lang.Throwable -> L73
            org.mortbay.jetty.handler.ContextHandler$SContext r3 = (org.mortbay.jetty.handler.ContextHandler.SContext) r3     // Catch: java.lang.Throwable -> L73
            java.lang.ThreadLocal r0 = org.mortbay.jetty.handler.ContextHandler.f114871k0     // Catch: java.lang.Throwable -> L6e
            org.mortbay.jetty.handler.ContextHandler$SContext r4 = r6._scontext     // Catch: java.lang.Throwable -> L6e
            r0.set(r4)     // Catch: java.lang.Throwable -> L6e
            org.mortbay.jetty.handler.ErrorHandler r0 = r6.f114889q     // Catch: java.lang.Throwable -> L6e
            if (r0 != 0) goto L5e
            org.mortbay.jetty.handler.ErrorHandler r0 = new org.mortbay.jetty.handler.ErrorHandler     // Catch: java.lang.Throwable -> L6e
            r0.<init>()     // Catch: java.lang.Throwable -> L6e
            r6.setErrorHandler(r0)     // Catch: java.lang.Throwable -> L6e
        L5e:
            r6.startContext()     // Catch: java.lang.Throwable -> L6e
            java.lang.ThreadLocal r0 = org.mortbay.jetty.handler.ContextHandler.f114871k0
            r0.set(r3)
            java.lang.ClassLoader r6 = r6.f114881i
            if (r6 == 0) goto L6d
            r1.setContextClassLoader(r2)
        L6d:
            return
        L6e:
            r0 = move-exception
            r5 = r3
            r3 = r0
            r0 = r5
            goto L78
        L73:
            r3 = move-exception
            goto L78
        L75:
            r3 = move-exception
            r1 = r0
            r2 = r1
        L78:
            java.lang.ThreadLocal r4 = org.mortbay.jetty.handler.ContextHandler.f114871k0
            r4.set(r0)
            java.lang.ClassLoader r6 = r6.f114881i
            if (r6 == 0) goto L84
            r1.setContextClassLoader(r2)
        L84:
            throw r3
        L85:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Null contextPath"
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.handler.ContextHandler.doStart():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0090  */
    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.component.AbstractLifeCycle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doStop() throws java.lang.Exception {
        /*
            r8 = this;
            java.lang.ThreadLocal r0 = org.mortbay.jetty.handler.ContextHandler.f114871k0
            java.lang.Object r0 = r0.get()
            org.mortbay.jetty.handler.ContextHandler$SContext r0 = (org.mortbay.jetty.handler.ContextHandler.SContext) r0
            java.lang.ThreadLocal r1 = org.mortbay.jetty.handler.ContextHandler.f114871k0
            org.mortbay.jetty.handler.ContextHandler$SContext r2 = r8._scontext
            r1.set(r2)
            r1 = 0
            java.lang.ClassLoader r2 = r8.f114881i     // Catch: java.lang.Throwable -> L83
            if (r2 == 0) goto L27
            java.lang.Thread r2 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L83
            java.lang.ClassLoader r3 = r2.getContextClassLoader()     // Catch: java.lang.Throwable -> L22
            java.lang.ClassLoader r4 = r8.f114881i     // Catch: java.lang.Throwable -> L81
            r2.setContextClassLoader(r4)     // Catch: java.lang.Throwable -> L81
            goto L29
        L22:
            r3 = move-exception
            r7 = r3
            r3 = r1
            r1 = r7
            goto L87
        L27:
            r2 = r1
            r3 = r2
        L29:
            super.doStop()     // Catch: java.lang.Throwable -> L81
            java.lang.Object r4 = r8.f114898z     // Catch: java.lang.Throwable -> L81
            if (r4 == 0) goto L4e
            javax.servlet.ServletContextEvent r4 = new javax.servlet.ServletContextEvent     // Catch: java.lang.Throwable -> L81
            org.mortbay.jetty.handler.ContextHandler$SContext r5 = r8._scontext     // Catch: java.lang.Throwable -> L81
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L81
            java.lang.Object r5 = r8.f114898z     // Catch: java.lang.Throwable -> L81
            int r5 = org.mortbay.util.LazyList.size(r5)     // Catch: java.lang.Throwable -> L81
        L3d:
            int r6 = r5 + (-1)
            if (r5 <= 0) goto L4e
            java.lang.Object r5 = r8.f114898z     // Catch: java.lang.Throwable -> L81
            java.lang.Object r5 = org.mortbay.util.LazyList.get(r5, r6)     // Catch: java.lang.Throwable -> L81
            javax.servlet.ServletContextListener r5 = (javax.servlet.ServletContextListener) r5     // Catch: java.lang.Throwable -> L81
            r5.contextDestroyed(r4)     // Catch: java.lang.Throwable -> L81
            r5 = r6
            goto L3d
        L4e:
            org.mortbay.jetty.handler.ErrorHandler r4 = r8.f114889q     // Catch: java.lang.Throwable -> L81
            if (r4 == 0) goto L55
            r4.stop()     // Catch: java.lang.Throwable -> L81
        L55:
            org.mortbay.jetty.handler.ContextHandler$SContext r4 = r8._scontext     // Catch: java.lang.Throwable -> L81
            java.util.Enumeration r4 = r4.getAttributeNames()     // Catch: java.lang.Throwable -> L81
        L5b:
            boolean r5 = r4.hasMoreElements()     // Catch: java.lang.Throwable -> L81
            if (r5 == 0) goto L6b
            java.lang.Object r5 = r4.nextElement()     // Catch: java.lang.Throwable -> L81
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L81
            r8.m71556n(r5, r1)     // Catch: java.lang.Throwable -> L81
            goto L5b
        L6b:
            java.lang.ThreadLocal r4 = org.mortbay.jetty.handler.ContextHandler.f114871k0
            r4.set(r0)
            java.lang.ClassLoader r0 = r8.f114881i
            if (r0 == 0) goto L77
            r2.setContextClassLoader(r3)
        L77:
            org.mortbay.util.AttributesMap r0 = r8.f114880h
            if (r0 == 0) goto L7e
            r0.clearAttributes()
        L7e:
            r8.f114880h = r1
            return
        L81:
            r1 = move-exception
            goto L87
        L83:
            r2 = move-exception
            r3 = r1
            r1 = r2
            r2 = r3
        L87:
            java.lang.ThreadLocal r4 = org.mortbay.jetty.handler.ContextHandler.f114871k0
            r4.set(r0)
            java.lang.ClassLoader r8 = r8.f114881i
            if (r8 == 0) goto L93
            r2.setContextClassLoader(r3)
        L93:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.handler.ContextHandler.doStop():void");
    }

    public boolean getAllowNullPathInfo() {
        return this.f114895w;
    }

    @Override // org.mortbay.util.Attributes
    public Object getAttribute(String str) {
        return this.f114879g.getAttribute(str);
    }

    @Override // org.mortbay.util.Attributes
    public Enumeration getAttributeNames() {
        return AttributesMap.getAttributeNamesCopy(this.f114879g);
    }

    public Attributes getAttributes() {
        return this.f114879g;
    }

    public Resource getBaseResource() {
        Resource resource = this.f114885m;
        if (resource == null) {
            return null;
        }
        return resource;
    }

    public ClassLoader getClassLoader() {
        return this.f114881i;
    }

    public String getClassPath() {
        ClassLoader classLoader = this.f114881i;
        if (classLoader == null || !(classLoader instanceof URLClassLoader)) {
            return null;
        }
        URL[] uRLs = ((URLClassLoader) classLoader).getURLs();
        StringBuffer stringBuffer = new StringBuffer();
        for (URL url : uRLs) {
            try {
                File file = Resource.newResource(url).getFile();
                if (file.exists()) {
                    if (stringBuffer.length() > 0) {
                        stringBuffer.append(File.pathSeparatorChar);
                    }
                    stringBuffer.append(file.getAbsolutePath());
                }
            } catch (IOException e) {
                Log.debug(e);
            }
        }
        if (stringBuffer.length() == 0) {
            return null;
        }
        return stringBuffer.toString();
    }

    public String[] getConnectorNames() {
        Set set = this.f114891s;
        if (set == null || set.size() == 0) {
            return null;
        }
        Set set2 = this.f114891s;
        return (String[]) set2.toArray(new String[set2.size()]);
    }

    public String getContextPath() {
        return this.f114882j;
    }

    public String getDisplayName() {
        return this.f114884l;
    }

    public ErrorHandler getErrorHandler() {
        return this.f114889q;
    }

    public EventListener[] getEventListeners() {
        return this.f114892t;
    }

    public String[] getHosts() {
        return getConnectorNames();
    }

    public String getInitParameter(String str) {
        return (String) this.f114883k.get(str);
    }

    public Enumeration getInitParameterNames() {
        return Collections.enumeration(this.f114883k.keySet());
    }

    public Map getInitParams() {
        return this.f114883k;
    }

    public String getLocaleEncoding(Locale locale) {
        Map map = this.f114887o;
        if (map == null) {
            return null;
        }
        String str = (String) map.get(locale.toString());
        return str == null ? (String) this.f114887o.get(locale.getLanguage()) : str;
    }

    public int getMaxFormContentSize() {
        return this.f114896x;
    }

    public MimeTypes getMimeTypes() {
        return this.f114886n;
    }

    public Resource getResource(String str) throws MalformedURLException {
        if (str == null || !str.startsWith("/")) {
            throw new MalformedURLException(str);
        }
        if (this.f114885m == null) {
            return null;
        }
        try {
            return this.f114885m.addPath(URIUtil.canonicalPath(str));
        } catch (Exception e) {
            Log.ignore(e);
            return null;
        }
    }

    public String getResourceBase() {
        Resource resource = this.f114885m;
        if (resource == null) {
            return null;
        }
        return resource.toString();
    }

    public Set getResourcePaths(String str) {
        try {
            String canonicalPath = URIUtil.canonicalPath(str);
            Resource resource = getResource(canonicalPath);
            if (resource != null && resource.exists()) {
                if (!canonicalPath.endsWith("/")) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(canonicalPath);
                    stringBuffer.append("/");
                    canonicalPath = stringBuffer.toString();
                }
                String[] list = resource.list();
                if (list != null) {
                    HashSet hashSet = new HashSet();
                    for (String str2 : list) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append(canonicalPath);
                        stringBuffer2.append(str2);
                        hashSet.add(stringBuffer2.toString());
                    }
                    return hashSet;
                }
            }
        } catch (Exception e) {
            Log.ignore(e);
        }
        return Collections.EMPTY_SET;
    }

    public SContext getServletContext() {
        return this._scontext;
    }

    public String[] getVirtualHosts() {
        return this.f114890r;
    }

    public String[] getWelcomeFiles() {
        return this.f114888p;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:158:? A[SYNTHETIC] */
    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle(java.lang.String r19, javax.servlet.http.HttpServletRequest r20, javax.servlet.http.HttpServletResponse r21, int r22) throws java.io.IOException, javax.servlet.ServletException {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.handler.ContextHandler.handle(java.lang.String, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, int):void");
    }

    public boolean isCompactPath() {
        return this.f114897y;
    }

    public boolean isProtectedTarget(String str) {
        return false;
    }

    public boolean isShutdown() {
        return !this.f114894v;
    }

    public synchronized Class loadClass(String str) throws ClassNotFoundException {
        if (str == null) {
            return null;
        }
        ClassLoader classLoader = this.f114881i;
        if (classLoader == null) {
            return Loader.loadClass(getClass(), str);
        }
        return classLoader.loadClass(str);
    }

    /* renamed from: m */
    public final String m71555m(String str) {
        if (str == null) {
            return null;
        }
        return str.endsWith(".") ? str.substring(0, str.length() - 1) : str;
    }

    /* renamed from: n */
    public final void m71556n(String str, Object obj) {
        Set set = this.f114878Z;
        if (set == null || !set.contains(str)) {
            return;
        }
        Object attribute = this._scontext.getAttribute(str);
        if (attribute != null) {
            getServer().getContainer().removeBean(attribute);
        }
        if (obj != null) {
            getServer().getContainer().addBean(obj);
        }
    }

    @Override // org.mortbay.util.Attributes
    public void removeAttribute(String str) {
        m71556n(str, null);
        this.f114879g.removeAttribute(str);
    }

    public void setAllowNullPathInfo(boolean z) {
        this.f114895w = z;
    }

    @Override // org.mortbay.util.Attributes
    public void setAttribute(String str, Object obj) {
        m71556n(str, obj);
        this.f114879g.setAttribute(str, obj);
    }

    public void setAttributes(Attributes attributes) {
        if (attributes instanceof AttributesMap) {
            AttributesMap attributesMap = (AttributesMap) attributes;
            this.f114879g = attributesMap;
            Enumeration attributeNames = attributesMap.getAttributeNames();
            while (attributeNames.hasMoreElements()) {
                String str = (String) attributeNames.nextElement();
                m71556n(str, attributes.getAttribute(str));
            }
            return;
        }
        this.f114879g = new AttributesMap();
        Enumeration attributeNames2 = attributes.getAttributeNames();
        while (attributeNames2.hasMoreElements()) {
            String str2 = (String) attributeNames2.nextElement();
            Object attribute = attributes.getAttribute(str2);
            m71556n(str2, attribute);
            this.f114879g.setAttribute(str2, attribute);
        }
    }

    public void setBaseResource(Resource resource) {
        this.f114885m = resource;
    }

    public void setClassLoader(ClassLoader classLoader) {
        this.f114881i = classLoader;
    }

    public void setCompactPath(boolean z) {
        this.f114897y = z;
    }

    public void setConnectorNames(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            this.f114891s = null;
        } else {
            this.f114891s = new HashSet(Arrays.asList(strArr));
        }
    }

    public void setContextPath(String str) {
        if (str != null && str.length() > 1 && str.endsWith("/")) {
            throw new IllegalArgumentException("ends with /");
        }
        this.f114882j = str;
        if (getServer() != null) {
            if (getServer().isStarting() || getServer().isStarted()) {
                Server server = getServer();
                Class cls = f114873t0;
                if (cls == null) {
                    cls = class$("org.mortbay.jetty.handler.ContextHandlerCollection");
                    f114873t0 = cls;
                }
                Handler[] childHandlersByClass = server.getChildHandlersByClass(cls);
                for (int i = 0; childHandlersByClass != null && i < childHandlersByClass.length; i++) {
                    ((ContextHandlerCollection) childHandlersByClass[i]).mapContexts();
                }
            }
        }
    }

    public void setDisplayName(String str) {
        this.f114884l = str;
        ClassLoader classLoader = this.f114881i;
        if (classLoader == null || !(classLoader instanceof WebAppClassLoader)) {
            return;
        }
        ((WebAppClassLoader) classLoader).setName(str);
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        if (errorHandler != null) {
            errorHandler.setServer(getServer());
        }
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object) this.f114889q, (Object) errorHandler, "errorHandler", true);
        }
        this.f114889q = errorHandler;
    }

    public void setEventListeners(EventListener[] eventListenerArr) {
        this.f114898z = null;
        this.f114875J = null;
        this.f114876O = null;
        this.f114877Q = null;
        this.f114892t = eventListenerArr;
        for (int i = 0; eventListenerArr != null && i < eventListenerArr.length; i++) {
            EventListener eventListener = this.f114892t[i];
            if (eventListener instanceof ServletContextListener) {
                this.f114898z = LazyList.add(this.f114898z, eventListener);
            }
            if (eventListener instanceof ServletContextAttributeListener) {
                this.f114875J = LazyList.add(this.f114875J, eventListener);
            }
            if (eventListener instanceof ServletRequestListener) {
                this.f114876O = LazyList.add(this.f114876O, eventListener);
            }
            if (eventListener instanceof ServletRequestAttributeListener) {
                this.f114877Q = LazyList.add(this.f114877Q, eventListener);
            }
        }
    }

    public void setHosts(String[] strArr) {
        setConnectorNames(strArr);
    }

    public void setInitParams(Map map) {
        if (map == null) {
            return;
        }
        this.f114883k = new HashMap(map);
    }

    public void setMaxFormContentSize(int i) {
        this.f114896x = i;
    }

    public void setMimeTypes(MimeTypes mimeTypes) {
        this.f114886n = mimeTypes;
    }

    public void setResourceBase(String str) {
        try {
            setBaseResource(Resource.newResource(str));
        } catch (Exception e) {
            Log.warn(e.toString());
            Log.debug(e);
            throw new IllegalArgumentException(str);
        }
    }

    @Override // org.mortbay.jetty.handler.HandlerWrapper, org.mortbay.jetty.handler.AbstractHandler, org.mortbay.jetty.Handler
    public void setServer(Server server) {
        if (this.f114889q == null) {
            super.setServer(server);
            return;
        }
        Server server2 = getServer();
        if (server2 != null && server2 != server) {
            server2.getContainer().update((Object) this, (Object) this.f114889q, (Object) null, "error", true);
        }
        super.setServer(server);
        if (server != null && server != server2) {
            server.getContainer().update((Object) this, (Object) null, (Object) this.f114889q, "error", true);
        }
        this.f114889q.setServer(server);
    }

    @Override // org.mortbay.jetty.Server.Graceful
    public void setShutdown(boolean z) {
        this.f114894v = z;
    }

    public void setVirtualHosts(String[] strArr) {
        if (strArr == null) {
            this.f114890r = strArr;
            return;
        }
        this.f114890r = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            this.f114890r[i] = m71555m(strArr[i]);
        }
    }

    public void setWelcomeFiles(String[] strArr) {
        this.f114888p = strArr;
    }

    public void startContext() throws Exception {
        super.doStart();
        ErrorHandler errorHandler = this.f114889q;
        if (errorHandler != null) {
            errorHandler.start();
        }
        if (this.f114898z != null) {
            ServletContextEvent servletContextEvent = new ServletContextEvent(this._scontext);
            for (int i = 0; i < LazyList.size(this.f114898z); i++) {
                ((ServletContextListener) LazyList.get(this.f114898z, i)).contextInitialized(servletContextEvent);
            }
        }
        String str = (String) this.f114883k.get(MANAGED_ATTRIBUTES);
        if (str != null) {
            this.f114878Z = new HashSet();
            QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(str, ",");
            while (quotedStringTokenizer.hasMoreTokens()) {
                this.f114878Z.add(quotedStringTokenizer.nextToken().trim());
            }
            Enumeration attributeNames = this._scontext.getAttributeNames();
            while (attributeNames.hasMoreElements()) {
                String str2 = (String) attributeNames.nextElement();
                m71556n(str2, this._scontext.getAttribute(str2));
            }
        }
    }

    @Override // org.mortbay.jetty.handler.AbstractHandler
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getClass().getName());
        stringBuffer.append("@");
        stringBuffer.append(Integer.toHexString(hashCode()));
        stringBuffer.append("{");
        stringBuffer.append(getContextPath());
        stringBuffer.append(",");
        stringBuffer.append(getBaseResource());
        stringBuffer.append("}");
        return stringBuffer.toString();
    }

    public ContextHandler(SContext sContext) {
        this.f114882j = "/";
        this.f114896x = Integer.getInteger("org.mortbay.jetty.Request.maxFormContentSize", 200000).intValue();
        this.f114897y = false;
        this._scontext = sContext;
        this.f114879g = new AttributesMap();
        this.f114883k = new HashMap();
    }

    public ContextHandler(String str) {
        this();
        setContextPath(str);
    }

    public ContextHandler(HandlerContainer handlerContainer, String str) {
        this();
        setContextPath(str);
        handlerContainer.addHandler(this);
    }
}
