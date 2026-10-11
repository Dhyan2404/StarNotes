package org.mortbay.jetty.servlet;

import java.io.IOException;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.util.Attributes;
import org.mortbay.util.LazyList;
import org.mortbay.util.MultiMap;
import org.mortbay.util.UrlEncoded;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes13.dex */
public class Dispatcher implements RequestDispatcher {
    public static final String __FORWARD_CONTEXT_PATH = "javax.servlet.forward.context_path";
    public static final String __FORWARD_JETTY = "org.mortbay.jetty.forwarded";
    public static final String __FORWARD_PATH_INFO = "javax.servlet.forward.path_info";
    public static final String __FORWARD_PREFIX = "javax.servlet.forward.";
    public static final String __FORWARD_QUERY_STRING = "javax.servlet.forward.query_string";
    public static final String __FORWARD_REQUEST_URI = "javax.servlet.forward.request_uri";
    public static final String __FORWARD_SERVLET_PATH = "javax.servlet.forward.servlet_path";
    public static final String __INCLUDE_CONTEXT_PATH = "javax.servlet.include.context_path";
    public static final String __INCLUDE_JETTY = "org.mortbay.jetty.included";
    public static final String __INCLUDE_PATH_INFO = "javax.servlet.include.path_info";
    public static final String __INCLUDE_PREFIX = "javax.servlet.include.";
    public static final String __INCLUDE_QUERY_STRING = "javax.servlet.include.query_string";
    public static final String __INCLUDE_REQUEST_URI = "javax.servlet.include.request_uri";
    public static final String __INCLUDE_SERVLET_PATH = "javax.servlet.include.servlet_path";
    public static final String __JSP_FILE = "org.apache.catalina.jsp_file";

    /* renamed from: a */
    public ContextHandler f115108a;

    /* renamed from: b */
    public String f115109b;

    /* renamed from: c */
    public String f115110c;

    /* renamed from: d */
    public String f115111d;

    /* renamed from: e */
    public String f115112e;

    /* renamed from: org.mortbay.jetty.servlet.Dispatcher$a */
    /* loaded from: classes13.dex */
    public class C20409a implements Attributes {

        /* renamed from: e */
        public Attributes f115113e;

        /* renamed from: f */
        public String f115114f;

        /* renamed from: g */
        public String f115115g;

        /* renamed from: h */
        public String f115116h;

        /* renamed from: i */
        public String f115117i;

        /* renamed from: j */
        public String f115118j;

        public C20409a(Attributes attributes) {
            this.f115113e = attributes;
        }

        @Override // org.mortbay.util.Attributes
        public void clearAttributes() {
            throw new IllegalStateException();
        }

        @Override // org.mortbay.util.Attributes
        public Object getAttribute(String str) {
            if (Dispatcher.this.f115112e == null) {
                if (str.equals(Dispatcher.__FORWARD_PATH_INFO)) {
                    return this.f115117i;
                }
                if (str.equals(Dispatcher.__FORWARD_REQUEST_URI)) {
                    return this.f115114f;
                }
                if (str.equals(Dispatcher.__FORWARD_SERVLET_PATH)) {
                    return this.f115116h;
                }
                if (str.equals(Dispatcher.__FORWARD_CONTEXT_PATH)) {
                    return this.f115115g;
                }
                if (str.equals(Dispatcher.__FORWARD_QUERY_STRING)) {
                    return this.f115118j;
                }
            }
            if (str.startsWith(Dispatcher.__INCLUDE_PREFIX) || str.equals(Dispatcher.__INCLUDE_JETTY)) {
                return null;
            }
            return str.equals(Dispatcher.__FORWARD_JETTY) ? Boolean.TRUE : this.f115113e.getAttribute(str);
        }

        @Override // org.mortbay.util.Attributes
        public Enumeration getAttributeNames() {
            HashSet hashSet = new HashSet();
            Enumeration attributeNames = this.f115113e.getAttributeNames();
            while (attributeNames.hasMoreElements()) {
                String str = (String) attributeNames.nextElement();
                if (!str.startsWith(Dispatcher.__INCLUDE_PREFIX) && !str.startsWith(Dispatcher.__FORWARD_PREFIX)) {
                    hashSet.add(str);
                }
            }
            if (Dispatcher.this.f115112e == null) {
                if (this.f115117i != null) {
                    hashSet.add(Dispatcher.__FORWARD_PATH_INFO);
                } else {
                    hashSet.remove(Dispatcher.__FORWARD_PATH_INFO);
                }
                hashSet.add(Dispatcher.__FORWARD_REQUEST_URI);
                hashSet.add(Dispatcher.__FORWARD_SERVLET_PATH);
                hashSet.add(Dispatcher.__FORWARD_CONTEXT_PATH);
                if (this.f115118j != null) {
                    hashSet.add(Dispatcher.__FORWARD_QUERY_STRING);
                } else {
                    hashSet.remove(Dispatcher.__FORWARD_QUERY_STRING);
                }
            }
            return Collections.enumeration(hashSet);
        }

        @Override // org.mortbay.util.Attributes
        public void removeAttribute(String str) {
            setAttribute(str, null);
        }

        @Override // org.mortbay.util.Attributes
        public void setAttribute(String str, Object obj) {
            if (Dispatcher.this.f115112e != null || !str.startsWith("javax.servlet.")) {
                if (obj == null) {
                    this.f115113e.removeAttribute(str);
                    return;
                } else {
                    this.f115113e.setAttribute(str, obj);
                    return;
                }
            }
            if (str.equals(Dispatcher.__FORWARD_PATH_INFO)) {
                this.f115117i = (String) obj;
                return;
            }
            if (str.equals(Dispatcher.__FORWARD_REQUEST_URI)) {
                this.f115114f = (String) obj;
                return;
            }
            if (str.equals(Dispatcher.__FORWARD_SERVLET_PATH)) {
                this.f115116h = (String) obj;
                return;
            }
            if (str.equals(Dispatcher.__FORWARD_CONTEXT_PATH)) {
                this.f115115g = (String) obj;
                return;
            }
            if (str.equals(Dispatcher.__FORWARD_QUERY_STRING)) {
                this.f115118j = (String) obj;
            } else if (obj == null) {
                this.f115113e.removeAttribute(str);
            } else {
                this.f115113e.setAttribute(str, obj);
            }
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("FORWARD+");
            stringBuffer.append(this.f115113e.toString());
            return stringBuffer.toString();
        }
    }

    /* renamed from: org.mortbay.jetty.servlet.Dispatcher$b */
    /* loaded from: classes13.dex */
    public class C20410b implements Attributes {

        /* renamed from: e */
        public Attributes f115120e;

        /* renamed from: f */
        public String f115121f;

        /* renamed from: g */
        public String f115122g;

        /* renamed from: h */
        public String f115123h;

        /* renamed from: i */
        public String f115124i;

        /* renamed from: j */
        public String f115125j;

        public C20410b(Attributes attributes) {
            this.f115120e = attributes;
        }

        @Override // org.mortbay.util.Attributes
        public void clearAttributes() {
            throw new IllegalStateException();
        }

        @Override // org.mortbay.util.Attributes
        public Object getAttribute(String str) {
            if (Dispatcher.this.f115112e == null) {
                if (str.equals(Dispatcher.__INCLUDE_PATH_INFO)) {
                    return this.f115124i;
                }
                if (str.equals(Dispatcher.__INCLUDE_SERVLET_PATH)) {
                    return this.f115123h;
                }
                if (str.equals(Dispatcher.__INCLUDE_CONTEXT_PATH)) {
                    return this.f115122g;
                }
                if (str.equals(Dispatcher.__INCLUDE_QUERY_STRING)) {
                    return this.f115125j;
                }
                if (str.equals(Dispatcher.__INCLUDE_REQUEST_URI)) {
                    return this.f115121f;
                }
            } else if (str.startsWith(Dispatcher.__INCLUDE_PREFIX)) {
                return null;
            }
            return str.equals(Dispatcher.__INCLUDE_JETTY) ? Boolean.TRUE : this.f115120e.getAttribute(str);
        }

        @Override // org.mortbay.util.Attributes
        public Enumeration getAttributeNames() {
            HashSet hashSet = new HashSet();
            Enumeration attributeNames = this.f115120e.getAttributeNames();
            while (attributeNames.hasMoreElements()) {
                String str = (String) attributeNames.nextElement();
                if (!str.startsWith(Dispatcher.__INCLUDE_PREFIX)) {
                    hashSet.add(str);
                }
            }
            if (Dispatcher.this.f115112e == null) {
                if (this.f115124i != null) {
                    hashSet.add(Dispatcher.__INCLUDE_PATH_INFO);
                } else {
                    hashSet.remove(Dispatcher.__INCLUDE_PATH_INFO);
                }
                hashSet.add(Dispatcher.__INCLUDE_REQUEST_URI);
                hashSet.add(Dispatcher.__INCLUDE_SERVLET_PATH);
                hashSet.add(Dispatcher.__INCLUDE_CONTEXT_PATH);
                if (this.f115125j != null) {
                    hashSet.add(Dispatcher.__INCLUDE_QUERY_STRING);
                } else {
                    hashSet.remove(Dispatcher.__INCLUDE_QUERY_STRING);
                }
            }
            return Collections.enumeration(hashSet);
        }

        @Override // org.mortbay.util.Attributes
        public void removeAttribute(String str) {
            setAttribute(str, null);
        }

        @Override // org.mortbay.util.Attributes
        public void setAttribute(String str, Object obj) {
            if (Dispatcher.this.f115112e != null || !str.startsWith("javax.servlet.")) {
                if (obj == null) {
                    this.f115120e.removeAttribute(str);
                    return;
                } else {
                    this.f115120e.setAttribute(str, obj);
                    return;
                }
            }
            if (str.equals(Dispatcher.__INCLUDE_PATH_INFO)) {
                this.f115124i = (String) obj;
                return;
            }
            if (str.equals(Dispatcher.__INCLUDE_REQUEST_URI)) {
                this.f115121f = (String) obj;
                return;
            }
            if (str.equals(Dispatcher.__INCLUDE_SERVLET_PATH)) {
                this.f115123h = (String) obj;
                return;
            }
            if (str.equals(Dispatcher.__INCLUDE_CONTEXT_PATH)) {
                this.f115122g = (String) obj;
                return;
            }
            if (str.equals(Dispatcher.__INCLUDE_QUERY_STRING)) {
                this.f115125j = (String) obj;
            } else if (obj == null) {
                this.f115120e.removeAttribute(str);
            } else {
                this.f115120e.setAttribute(str, obj);
            }
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("INCLUDE+");
            stringBuffer.append(this.f115120e.toString());
            return stringBuffer.toString();
        }
    }

    public Dispatcher(ContextHandler contextHandler, String str, String str2, String str3) {
        this.f115108a = contextHandler;
        this.f115109b = str;
        this.f115110c = str2;
        this.f115111d = str3;
    }

    public static int type(String str) {
        if (AbstractLogger.REQUEST.equalsIgnoreCase(str)) {
            return 1;
        }
        if ("forward".equalsIgnoreCase(str)) {
            return 2;
        }
        if ("include".equalsIgnoreCase(str)) {
            return 4;
        }
        if ("error".equalsIgnoreCase(str)) {
            return 8;
        }
        throw new IllegalArgumentException(str);
    }

    public void error(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        forward(servletRequest, servletResponse, 8);
    }

    @Override // javax.servlet.RequestDispatcher
    public void forward(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        forward(servletRequest, servletResponse, 2);
    }

    @Override // javax.servlet.RequestDispatcher
    public void include(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        Request request = servletRequest instanceof Request ? (Request) servletRequest : HttpConnection.getCurrentConnection().getRequest();
        servletRequest.removeAttribute(__JSP_FILE);
        Attributes attributes = request.getAttributes();
        MultiMap parameters = request.getParameters();
        try {
            request.getConnection().include();
            String str = this.f115112e;
            if (str != null) {
                this.f115108a.handle(str, (HttpServletRequest) servletRequest, (HttpServletResponse) servletResponse, 4);
            } else {
                String str2 = this.f115111d;
                if (str2 != null) {
                    MultiMap multiMap = new MultiMap();
                    UrlEncoded.decodeTo(str2, multiMap, servletRequest.getCharacterEncoding());
                    if (parameters != null && parameters.size() > 0) {
                        Iterator it2 = parameters.entrySet().iterator();
                        while (it2.hasNext()) {
                            Map.Entry entry = (Map.Entry) it2.next();
                            String str3 = (String) entry.getKey();
                            Object value = entry.getValue();
                            for (int i = 0; i < LazyList.size(value); i++) {
                                multiMap.add(str3, LazyList.get(value, i));
                            }
                        }
                    }
                    request.setParameters(multiMap);
                }
                C20410b c20410b = new C20410b(attributes);
                c20410b.f115121f = this.f115109b;
                c20410b.f115122g = this.f115108a.getContextPath();
                c20410b.f115123h = null;
                c20410b.f115124i = this.f115110c;
                c20410b.f115125j = str2;
                request.setAttributes(c20410b);
                ContextHandler contextHandler = this.f115108a;
                String str4 = this.f115112e;
                if (str4 == null) {
                    str4 = this.f115110c;
                }
                contextHandler.handle(str4, (HttpServletRequest) servletRequest, (HttpServletResponse) servletResponse, 4);
            }
        } finally {
            request.setAttributes(attributes);
            request.getConnection().included();
            request.setParameters(parameters);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void forward(javax.servlet.ServletRequest r22, javax.servlet.ServletResponse r23, int r24) throws javax.servlet.ServletException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.servlet.Dispatcher.forward(javax.servlet.ServletRequest, javax.servlet.ServletResponse, int):void");
    }

    public Dispatcher(ContextHandler contextHandler, String str) throws IllegalStateException {
        this.f115108a = contextHandler;
        this.f115112e = str;
    }
}
