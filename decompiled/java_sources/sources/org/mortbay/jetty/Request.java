package org.mortbay.jetty;

import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.security.Principal;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestWrapper;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferUtil;
import org.mortbay.io.EndPoint;
import org.mortbay.io.Portable;
import org.mortbay.io.nio.DirectNIOBuffer;
import org.mortbay.io.nio.IndirectNIOBuffer;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.security.Authenticator;
import org.mortbay.jetty.security.SecurityHandler;
import org.mortbay.jetty.security.UserRealm;
import org.mortbay.log.Log;
import org.mortbay.util.Attributes;
import org.mortbay.util.AttributesMap;
import org.mortbay.util.LazyList;
import org.mortbay.util.MultiMap;
import org.mortbay.util.StringUtil;
import org.mortbay.util.URIUtil;
import org.mortbay.util.UrlEncoded;
import org.mortbay.util.ajax.Continuation;

/* loaded from: classes13.dex */
public class Request implements HttpServletRequest {

    /* renamed from: T */
    public static final Collection f114729T = Collections.singleton(Locale.getDefault());

    /* renamed from: U */
    public static final int f114730U = 0;

    /* renamed from: V */
    public static final int f114731V = 1;

    /* renamed from: W */
    public static final int f114732W = 2;

    /* renamed from: A */
    public MultiMap f114733A;

    /* renamed from: B */
    public boolean f114734B;

    /* renamed from: C */
    public int f114735C;

    /* renamed from: D */
    public BufferedReader f114736D;

    /* renamed from: E */
    public String f114737E;

    /* renamed from: F */
    public boolean f114738F;

    /* renamed from: G */
    public ContextHandler.SContext f114739G;

    /* renamed from: H */
    public HttpSession f114740H;

    /* renamed from: I */
    public SessionManager f114741I;

    /* renamed from: J */
    public boolean f114742J;

    /* renamed from: K */
    public Cookie[] f114743K;

    /* renamed from: L */
    public String[] f114744L;

    /* renamed from: M */
    public long f114745M;

    /* renamed from: N */
    public Buffer f114746N;

    /* renamed from: O */
    public Continuation f114747O;

    /* renamed from: P */
    public Object f114748P;

    /* renamed from: Q */
    public Object f114749Q;

    /* renamed from: R */
    public Map f114750R;

    /* renamed from: S */
    public UserRealm f114751S;

    /* renamed from: a */
    public boolean f114752a;

    /* renamed from: b */
    public HttpConnection f114753b;

    /* renamed from: c */
    public EndPoint f114754c;

    /* renamed from: d */
    public Map f114755d;

    /* renamed from: e */
    public Attributes f114756e;

    /* renamed from: f */
    public String f114757f;

    /* renamed from: g */
    public String f114758g;

    /* renamed from: h */
    public String f114759h;

    /* renamed from: i */
    public String f114760i;

    /* renamed from: j */
    public String f114761j;

    /* renamed from: k */
    public String f114762k;

    /* renamed from: l */
    public String f114763l;

    /* renamed from: m */
    public String f114764m;

    /* renamed from: n */
    public int f114765n;

    /* renamed from: o */
    public String f114766o;

    /* renamed from: p */
    public String f114767p;

    /* renamed from: q */
    public String f114768q;

    /* renamed from: r */
    public boolean f114769r;

    /* renamed from: s */
    public String f114770s;

    /* renamed from: t */
    public String f114771t;

    /* renamed from: u */
    public String f114772u;

    /* renamed from: v */
    public String f114773v;

    /* renamed from: w */
    public String f114774w;

    /* renamed from: x */
    public HttpURI f114775x;

    /* renamed from: y */
    public Principal f114776y;

    /* renamed from: z */
    public MultiMap f114777z;

    public Request() {
        this.f114752a = false;
        this.f114766o = HttpVersions.HTTP_1_1;
        this.f114769r = false;
        this.f114771t = "http";
        this.f114735C = 0;
        this.f114738F = false;
        this.f114742J = false;
    }

    public static Request getRequest(HttpServletRequest httpServletRequest) {
        boolean z = httpServletRequest instanceof Request;
        Object obj = httpServletRequest;
        if (z) {
            return (Request) httpServletRequest;
        }
        while (obj instanceof ServletRequestWrapper) {
            obj = (HttpServletRequest) ((ServletRequestWrapper) obj).getRequest();
        }
        return obj instanceof Request ? (Request) obj : HttpConnection.getCurrentConnection().getRequest();
    }

    /* renamed from: a */
    public final void m71526a() {
        int contentLength;
        int intValue;
        if (this.f114733A == null) {
            this.f114733A = new MultiMap(16);
        }
        if (this.f114734B) {
            if (this.f114777z == null) {
                this.f114777z = this.f114733A;
                return;
            }
            return;
        }
        this.f114734B = true;
        HttpURI httpURI = this.f114775x;
        if (httpURI != null && httpURI.hasQuery()) {
            String str = this.f114759h;
            if (str == null) {
                this.f114775x.decodeQueryTo(this.f114733A);
            } else {
                try {
                    this.f114775x.decodeQueryTo(this.f114733A, str);
                } catch (UnsupportedEncodingException e) {
                    if (Log.isDebugEnabled()) {
                        Log.warn(e);
                    } else {
                        Log.warn(e.toString());
                    }
                }
            }
        }
        String characterEncoding = getCharacterEncoding();
        String contentType = getContentType();
        if (contentType != null && contentType.length() > 0 && "application/x-www-form-urlencoded".equalsIgnoreCase(HttpFields.valueParameters(contentType, null)) && this.f114735C == 0 && (("POST".equals(getMethod()) || "PUT".equals(getMethod())) && (contentLength = getContentLength()) != 0)) {
            try {
                ContextHandler.SContext sContext = this.f114739G;
                if (sContext != null) {
                    intValue = sContext.getContextHandler().getMaxFormContentSize();
                } else {
                    Integer num = (Integer) this.f114753b.getConnector().getServer().getAttribute("org.mortbay.jetty.Request.maxFormContentSize");
                    intValue = num != null ? num.intValue() : -1;
                }
                if (contentLength > intValue && intValue > 0) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Form too large");
                    stringBuffer.append(contentLength);
                    stringBuffer.append(">");
                    stringBuffer.append(intValue);
                    throw new IllegalStateException(stringBuffer.toString());
                }
                UrlEncoded.decodeTo(getInputStream(), this.f114733A, characterEncoding, contentLength < 0 ? intValue : -1);
            } catch (IOException e2) {
                if (Log.isDebugEnabled()) {
                    Log.warn(e2);
                } else {
                    Log.warn(e2.toString());
                }
            }
        }
        MultiMap multiMap = this.f114777z;
        if (multiMap == null) {
            this.f114777z = this.f114733A;
            return;
        }
        MultiMap multiMap2 = this.f114733A;
        if (multiMap != multiMap2) {
            Iterator it2 = multiMap2.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                String str2 = (String) entry.getKey();
                Object value = entry.getValue();
                for (int i = 0; i < LazyList.size(value); i++) {
                    this.f114777z.add(str2, LazyList.get(value, i));
                }
            }
        }
    }

    public void addEventListener(EventListener eventListener) {
        if (eventListener instanceof ServletRequestAttributeListener) {
            this.f114748P = LazyList.add(this.f114748P, eventListener);
        }
    }

    /* renamed from: b */
    public void m71527b(Continuation continuation) {
        this.f114747O = continuation;
    }

    @Override // javax.servlet.ServletRequest
    public Object getAttribute(String str) {
        if ("org.mortbay.jetty.ajax.Continuation".equals(str)) {
            return getContinuation(true);
        }
        Attributes attributes = this.f114756e;
        if (attributes == null) {
            return null;
        }
        return attributes.getAttribute(str);
    }

    @Override // javax.servlet.ServletRequest
    public Enumeration getAttributeNames() {
        Attributes attributes = this.f114756e;
        return attributes == null ? Collections.enumeration(Collections.EMPTY_LIST) : AttributesMap.getAttributeNamesCopy(attributes);
    }

    public Attributes getAttributes() {
        if (this.f114756e == null) {
            this.f114756e = new AttributesMap();
        }
        return this.f114756e;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getAuthType() {
        return this.f114757f;
    }

    @Override // javax.servlet.ServletRequest
    public String getCharacterEncoding() {
        return this.f114758g;
    }

    public HttpConnection getConnection() {
        return this.f114753b;
    }

    @Override // javax.servlet.ServletRequest
    public int getContentLength() {
        return (int) this.f114753b.getRequestFields().getLongField(HttpHeaders.CONTENT_LENGTH_BUFFER);
    }

    public long getContentRead() {
        HttpConnection httpConnection = this.f114753b;
        if (httpConnection == null || httpConnection.getParser() == null) {
            return -1L;
        }
        return ((HttpParser) this.f114753b.getParser()).getContentRead();
    }

    @Override // javax.servlet.ServletRequest
    public String getContentType() {
        return this.f114753b.getRequestFields().getStringField(HttpHeaders.CONTENT_TYPE_BUFFER);
    }

    public ContextHandler.SContext getContext() {
        return this.f114739G;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getContextPath() {
        return this.f114772u;
    }

    public Continuation getContinuation() {
        return this.f114747O;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015d A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r12v1, types: [javax.servlet.http.Cookie] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v10 */
    /* JADX WARN: Type inference failed for: r17v11 */
    /* JADX WARN: Type inference failed for: r17v12 */
    /* JADX WARN: Type inference failed for: r17v13, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v8, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v9, types: [java.lang.String] */
    @Override // javax.servlet.http.HttpServletRequest
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public javax.servlet.http.Cookie[] getCookies() {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.Request.getCookies():javax.servlet.http.Cookie[]");
    }

    @Override // javax.servlet.http.HttpServletRequest
    public long getDateHeader(String str) {
        return this.f114753b.getRequestFields().getDateField(str);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getHeader(String str) {
        return this.f114753b.getRequestFields().getStringField(str);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public Enumeration getHeaderNames() {
        return this.f114753b.getRequestFields().getFieldNames();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public Enumeration getHeaders(String str) {
        Enumeration values = this.f114753b.getRequestFields().getValues(str);
        return values == null ? Collections.enumeration(Collections.EMPTY_LIST) : values;
    }

    public int getInputState() {
        return this.f114735C;
    }

    @Override // javax.servlet.ServletRequest
    public ServletInputStream getInputStream() throws IOException {
        int i = this.f114735C;
        if (i != 0 && i != 1) {
            throw new IllegalStateException("READER");
        }
        this.f114735C = 1;
        return this.f114753b.getInputStream();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public int getIntHeader(String str) {
        return (int) this.f114753b.getRequestFields().getLongField(str);
    }

    @Override // javax.servlet.ServletRequest
    public String getLocalAddr() {
        EndPoint endPoint = this.f114754c;
        if (endPoint == null) {
            return null;
        }
        return endPoint.getLocalAddr();
    }

    @Override // javax.servlet.ServletRequest
    public String getLocalName() {
        if (this.f114738F) {
            EndPoint endPoint = this.f114754c;
            if (endPoint == null) {
                return null;
            }
            return endPoint.getLocalHost();
        }
        EndPoint endPoint2 = this.f114754c;
        if (endPoint2 == null) {
            return null;
        }
        return endPoint2.getLocalAddr();
    }

    @Override // javax.servlet.ServletRequest
    public int getLocalPort() {
        EndPoint endPoint = this.f114754c;
        if (endPoint == null) {
            return 0;
        }
        return endPoint.getLocalPort();
    }

    @Override // javax.servlet.ServletRequest
    public Locale getLocale() {
        String str;
        Enumeration values = this.f114753b.getRequestFields().getValues("Accept-Language", HttpFields.__separators);
        if (values == null || !values.hasMoreElements()) {
            return Locale.getDefault();
        }
        List qualityList = HttpFields.qualityList(values);
        if (qualityList.size() != 0 && qualityList.size() > 0) {
            String valueParameters = HttpFields.valueParameters((String) qualityList.get(0), null);
            int indexOf = valueParameters.indexOf(45);
            if (indexOf > -1) {
                str = valueParameters.substring(indexOf + 1).trim();
                valueParameters = valueParameters.substring(0, indexOf).trim();
            } else {
                str = "";
            }
            return new Locale(valueParameters, str);
        }
        return Locale.getDefault();
    }

    @Override // javax.servlet.ServletRequest
    public Enumeration getLocales() {
        String str;
        Enumeration values = this.f114753b.getRequestFields().getValues("Accept-Language", HttpFields.__separators);
        if (values == null || !values.hasMoreElements()) {
            return Collections.enumeration(f114729T);
        }
        List qualityList = HttpFields.qualityList(values);
        if (qualityList.size() == 0) {
            return Collections.enumeration(f114729T);
        }
        int size = qualityList.size();
        Object obj = null;
        for (int i = 0; i < size; i++) {
            String valueParameters = HttpFields.valueParameters((String) qualityList.get(i), null);
            int indexOf = valueParameters.indexOf(45);
            if (indexOf > -1) {
                str = valueParameters.substring(indexOf + 1).trim();
                valueParameters = valueParameters.substring(0, indexOf).trim();
            } else {
                str = "";
            }
            obj = LazyList.add(LazyList.ensureSize(obj, size), new Locale(valueParameters, str));
        }
        return LazyList.size(obj) == 0 ? Collections.enumeration(f114729T) : Collections.enumeration(LazyList.getList(obj));
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getMethod() {
        return this.f114763l;
    }

    @Override // javax.servlet.ServletRequest
    public String getParameter(String str) {
        if (!this.f114734B) {
            m71526a();
        }
        return (String) this.f114777z.getValue(str, 0);
    }

    @Override // javax.servlet.ServletRequest
    public Map getParameterMap() {
        if (!this.f114734B) {
            m71526a();
        }
        return Collections.unmodifiableMap(this.f114777z.toStringArrayMap());
    }

    @Override // javax.servlet.ServletRequest
    public Enumeration getParameterNames() {
        if (!this.f114734B) {
            m71526a();
        }
        return Collections.enumeration(this.f114777z.keySet());
    }

    @Override // javax.servlet.ServletRequest
    public String[] getParameterValues(String str) {
        if (!this.f114734B) {
            m71526a();
        }
        List values = this.f114777z.getValues(str);
        if (values == null) {
            return null;
        }
        return (String[]) values.toArray(new String[values.size()]);
    }

    public MultiMap getParameters() {
        return this.f114777z;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getPathInfo() {
        return this.f114764m;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getPathTranslated() {
        ContextHandler.SContext sContext;
        String str = this.f114764m;
        if (str == null || (sContext = this.f114739G) == null) {
            return null;
        }
        return sContext.getRealPath(str);
    }

    @Override // javax.servlet.ServletRequest
    public String getProtocol() {
        return this.f114766o;
    }

    public String getQueryEncoding() {
        return this.f114759h;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getQueryString() {
        HttpURI httpURI;
        if (this.f114767p == null && (httpURI = this.f114775x) != null) {
            String str = this.f114759h;
            if (str == null) {
                this.f114767p = httpURI.getQuery();
            } else {
                this.f114767p = httpURI.getQuery(str);
            }
        }
        return this.f114767p;
    }

    @Override // javax.servlet.ServletRequest
    public BufferedReader getReader() throws IOException {
        int i = this.f114735C;
        if (i != 0 && i != 2) {
            throw new IllegalStateException("STREAMED");
        }
        if (i == 2) {
            return this.f114736D;
        }
        String characterEncoding = getCharacterEncoding();
        if (characterEncoding == null) {
            characterEncoding = StringUtil.__ISO_8859_1;
        }
        if (this.f114736D == null || !characterEncoding.equalsIgnoreCase(this.f114737E)) {
            ServletInputStream inputStream = getInputStream();
            this.f114737E = characterEncoding;
            this.f114736D = new C20388h(this, new InputStreamReader(inputStream, characterEncoding), inputStream);
        }
        this.f114735C = 2;
        return this.f114736D;
    }

    @Override // javax.servlet.ServletRequest
    public String getRealPath(String str) {
        ContextHandler.SContext sContext = this.f114739G;
        if (sContext == null) {
            return null;
        }
        return sContext.getRealPath(str);
    }

    @Override // javax.servlet.ServletRequest
    public String getRemoteAddr() {
        String str = this.f114761j;
        if (str != null) {
            return str;
        }
        EndPoint endPoint = this.f114754c;
        if (endPoint == null) {
            return null;
        }
        return endPoint.getRemoteAddr();
    }

    @Override // javax.servlet.ServletRequest
    public String getRemoteHost() {
        if (!this.f114738F) {
            return getRemoteAddr();
        }
        String str = this.f114762k;
        if (str != null) {
            return str;
        }
        EndPoint endPoint = this.f114754c;
        if (endPoint == null) {
            return null;
        }
        return endPoint.getRemoteHost();
    }

    @Override // javax.servlet.ServletRequest
    public int getRemotePort() {
        EndPoint endPoint = this.f114754c;
        if (endPoint == null) {
            return 0;
        }
        return endPoint.getRemotePort();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getRemoteUser() {
        Principal userPrincipal = getUserPrincipal();
        if (userPrincipal == null) {
            return null;
        }
        return userPrincipal.getName();
    }

    @Override // javax.servlet.ServletRequest
    public RequestDispatcher getRequestDispatcher(String str) {
        if (str == null || this.f114739G == null) {
            return null;
        }
        if (!str.startsWith("/")) {
            String addPaths = URIUtil.addPaths(this.f114773v, this.f114764m);
            int lastIndexOf = addPaths.lastIndexOf("/");
            str = URIUtil.addPaths(lastIndexOf > 1 ? addPaths.substring(0, lastIndexOf + 1) : "/", str);
        }
        return this.f114739G.getRequestDispatcher(str);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getRequestURI() {
        HttpURI httpURI;
        if (this.f114770s == null && (httpURI = this.f114775x) != null) {
            this.f114770s = httpURI.getPathAndParam();
        }
        return this.f114770s;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public StringBuffer getRequestURL() {
        StringBuffer stringBuffer = new StringBuffer(48);
        synchronized (stringBuffer) {
            String scheme = getScheme();
            int serverPort = getServerPort();
            stringBuffer.append(scheme);
            stringBuffer.append("://");
            stringBuffer.append(getServerName());
            if (this.f114765n > 0 && ((scheme.equalsIgnoreCase("http") && serverPort != 80) || (scheme.equalsIgnoreCase("https") && serverPort != 443))) {
                stringBuffer.append(':');
                stringBuffer.append(this.f114765n);
            }
            stringBuffer.append(getRequestURI());
        }
        return stringBuffer;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getRequestedSessionId() {
        return this.f114768q;
    }

    public Map getRoleMap() {
        return this.f114755d;
    }

    public StringBuffer getRootURL() {
        StringBuffer stringBuffer = new StringBuffer(48);
        synchronized (stringBuffer) {
            String scheme = getScheme();
            int serverPort = getServerPort();
            stringBuffer.append(scheme);
            stringBuffer.append("://");
            stringBuffer.append(getServerName());
            if (serverPort > 0 && ((scheme.equalsIgnoreCase("http") && serverPort != 80) || (scheme.equalsIgnoreCase("https") && serverPort != 443))) {
                stringBuffer.append(':');
                stringBuffer.append(serverPort);
            }
        }
        return stringBuffer;
    }

    @Override // javax.servlet.ServletRequest
    public String getScheme() {
        return this.f114771t;
    }

    @Override // javax.servlet.ServletRequest
    public String getServerName() {
        String str = this.f114760i;
        if (str != null) {
            return str;
        }
        this.f114760i = this.f114775x.getHost();
        this.f114765n = this.f114775x.getPort();
        String str2 = this.f114760i;
        if (str2 != null) {
            return str2;
        }
        Buffer buffer = this.f114753b.getRequestFields().get(HttpHeaders.HOST_BUFFER);
        if (buffer == null) {
            if (this.f114753b != null) {
                this.f114760i = getLocalName();
                this.f114765n = getLocalPort();
                String str3 = this.f114760i;
                if (str3 != null && !Portable.ALL_INTERFACES.equals(str3)) {
                    return this.f114760i;
                }
            }
            try {
                this.f114760i = InetAddress.getLocalHost().getHostAddress();
            } catch (UnknownHostException e) {
                Log.ignore(e);
            }
            return this.f114760i;
        }
        int length = buffer.length();
        while (true) {
            int i = length - 1;
            if (length <= 0) {
                if (this.f114760i == null || this.f114765n < 0) {
                    this.f114760i = BufferUtil.to8859_1_String(buffer);
                    this.f114765n = 0;
                }
                return this.f114760i;
            }
            if (buffer.peek(buffer.getIndex() + i) == 58) {
                this.f114760i = BufferUtil.to8859_1_String(buffer.peek(buffer.getIndex(), i));
                this.f114765n = BufferUtil.toInt(buffer.peek(buffer.getIndex() + i + 1, (buffer.length() - i) - 1));
                return this.f114760i;
            }
            length = i;
        }
    }

    @Override // javax.servlet.ServletRequest
    public int getServerPort() {
        HttpURI httpURI;
        if (this.f114765n <= 0) {
            if (this.f114760i == null) {
                getServerName();
            }
            if (this.f114765n <= 0) {
                if (this.f114760i == null || (httpURI = this.f114775x) == null) {
                    EndPoint endPoint = this.f114754c;
                    this.f114765n = endPoint == null ? 0 : endPoint.getLocalPort();
                } else {
                    this.f114765n = httpURI.getPort();
                }
            }
        }
        int i = this.f114765n;
        if (i > 0) {
            return i;
        }
        if (getScheme().equalsIgnoreCase("https")) {
            return PsExtractor.f24604m;
        }
        return 80;
    }

    public ServletContext getServletContext() {
        return this.f114739G;
    }

    public String getServletName() {
        return this.f114774w;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getServletPath() {
        if (this.f114773v == null) {
            this.f114773v = "";
        }
        return this.f114773v;
    }

    public ServletResponse getServletResponse() {
        return this.f114753b.getResponse();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public HttpSession getSession() {
        return getSession(true);
    }

    public SessionManager getSessionManager() {
        return this.f114741I;
    }

    public long getTimeStamp() {
        return this.f114745M;
    }

    public Buffer getTimeStampBuffer() {
        if (this.f114746N == null) {
            long j = this.f114745M;
            if (j > 0) {
                this.f114746N = HttpFields.__dateCache.formatBuffer(j);
            }
        }
        return this.f114746N;
    }

    public HttpURI getUri() {
        return this.f114775x;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public Principal getUserPrincipal() {
        String stringBuffer;
        Principal principal = this.f114776y;
        if (principal != null && (principal instanceof SecurityHandler.NotChecked)) {
            SecurityHandler.NotChecked notChecked = (SecurityHandler.NotChecked) principal;
            this.f114776y = SecurityHandler.__NO_USER;
            Authenticator authenticator = notChecked.getSecurityHandler().getAuthenticator();
            UserRealm userRealm = notChecked.getSecurityHandler().getUserRealm();
            if (getPathInfo() == null) {
                stringBuffer = getServletPath();
            } else {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(getServletPath());
                stringBuffer2.append(getPathInfo());
                stringBuffer = stringBuffer2.toString();
            }
            if (userRealm != null && authenticator != null) {
                try {
                    authenticator.authenticate(userRealm, stringBuffer, this, null);
                } catch (Exception e) {
                    Log.ignore(e);
                }
            }
        }
        Principal principal2 = this.f114776y;
        if (principal2 == SecurityHandler.__NO_USER) {
            return null;
        }
        return principal2;
    }

    public UserRealm getUserRealm() {
        return this.f114751S;
    }

    public boolean isHandled() {
        return this.f114752a;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isRequestedSessionIdFromCookie() {
        return this.f114768q != null && this.f114769r;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isRequestedSessionIdFromURL() {
        return (this.f114768q == null || this.f114769r) ? false : true;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isRequestedSessionIdFromUrl() {
        return (this.f114768q == null || this.f114769r) ? false : true;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isRequestedSessionIdValid() {
        HttpSession session;
        if (this.f114768q == null || (session = getSession(false)) == null) {
            return false;
        }
        return this.f114741I.getIdManager().getClusterId(this.f114768q).equals(this.f114741I.getClusterId(session));
    }

    @Override // javax.servlet.ServletRequest
    public boolean isSecure() {
        return this.f114753b.isConfidential(this);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isUserInRole(String str) {
        String str2;
        Map map = this.f114755d;
        if (map != null && (str2 = (String) map.get(str)) != null) {
            str = str2;
        }
        Principal userPrincipal = getUserPrincipal();
        UserRealm userRealm = this.f114751S;
        if (userRealm == null || userPrincipal == null) {
            return false;
        }
        return userRealm.isUserInRole(userPrincipal, str);
    }

    public HttpSession recoverNewSession(Object obj) {
        Map map = this.f114750R;
        if (map == null) {
            return null;
        }
        return (HttpSession) map.get(obj);
    }

    public void recycle() {
        if (this.f114735C == 2) {
            try {
                int read = this.f114736D.read();
                while (read != -1) {
                    read = this.f114736D.read();
                }
            } catch (Exception e) {
                Log.ignore(e);
                this.f114736D = null;
            }
        }
        this.f114752a = false;
        if (this.f114739G != null) {
            throw new IllegalStateException("Request in context!");
        }
        Attributes attributes = this.f114756e;
        if (attributes != null) {
            attributes.clearAttributes();
        }
        this.f114757f = null;
        this.f114758g = null;
        this.f114759h = null;
        this.f114739G = null;
        this.f114760i = null;
        this.f114763l = null;
        this.f114764m = null;
        this.f114765n = 0;
        this.f114766o = HttpVersions.HTTP_1_1;
        this.f114767p = null;
        this.f114768q = null;
        this.f114769r = false;
        this.f114740H = null;
        this.f114741I = null;
        this.f114770s = null;
        this.f114771t = "http";
        this.f114773v = null;
        this.f114745M = 0L;
        this.f114746N = null;
        this.f114775x = null;
        this.f114776y = null;
        MultiMap multiMap = this.f114733A;
        if (multiMap != null) {
            multiMap.clear();
        }
        this.f114777z = null;
        this.f114734B = false;
        this.f114735C = 0;
        this.f114742J = false;
        Map map = this.f114750R;
        if (map != null) {
            map.clear();
        }
        this.f114750R = null;
        Continuation continuation = this.f114747O;
        if (continuation == null || !continuation.isPending()) {
            return;
        }
        this.f114747O.reset();
    }

    @Override // javax.servlet.ServletRequest
    public void removeAttribute(String str) {
        Attributes attributes = this.f114756e;
        Object attribute = attributes == null ? null : attributes.getAttribute(str);
        Attributes attributes2 = this.f114756e;
        if (attributes2 != null) {
            attributes2.removeAttribute(str);
        }
        if (attribute == null || this.f114748P == null) {
            return;
        }
        ServletRequestAttributeEvent servletRequestAttributeEvent = new ServletRequestAttributeEvent(this.f114739G, this, str, attribute);
        int size = LazyList.size(this.f114748P);
        for (int i = 0; i < size; i++) {
            ServletRequestAttributeListener servletRequestAttributeListener = (ServletRequestAttributeListener) LazyList.get(this.f114748P, i);
            if (servletRequestAttributeListener instanceof ServletRequestAttributeListener) {
                servletRequestAttributeListener.attributeRemoved(servletRequestAttributeEvent);
            }
        }
    }

    public void removeEventListener(EventListener eventListener) {
        this.f114748P = LazyList.remove(this.f114748P, eventListener);
    }

    public void saveNewSession(Object obj, HttpSession httpSession) {
        if (this.f114750R == null) {
            this.f114750R = new HashMap();
        }
        this.f114750R.put(obj, httpSession);
    }

    @Override // javax.servlet.ServletRequest
    public void setAttribute(String str, Object obj) {
        Attributes attributes = this.f114756e;
        Object attribute = attributes == null ? null : attributes.getAttribute(str);
        if ("org.mortbay.jetty.Request.queryEncoding".equals(str)) {
            setQueryEncoding(obj != null ? obj.toString() : null);
        } else if ("org.mortbay.jetty.ResponseBuffer".equals(str)) {
            try {
                ByteBuffer byteBuffer = (ByteBuffer) obj;
                synchronized (byteBuffer) {
                    ((HttpConnection.Output) getServletResponse().getOutputStream()).sendResponse(byteBuffer.isDirect() ? new DirectNIOBuffer(byteBuffer, true) : new IndirectNIOBuffer(byteBuffer, true));
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        if (this.f114756e == null) {
            this.f114756e = new AttributesMap();
        }
        this.f114756e.setAttribute(str, obj);
        if (this.f114748P != null) {
            ServletRequestAttributeEvent servletRequestAttributeEvent = new ServletRequestAttributeEvent(this.f114739G, this, str, attribute == null ? obj : attribute);
            int size = LazyList.size(this.f114748P);
            for (int i = 0; i < size; i++) {
                ServletRequestAttributeListener servletRequestAttributeListener = (ServletRequestAttributeListener) LazyList.get(this.f114748P, i);
                if (servletRequestAttributeListener instanceof ServletRequestAttributeListener) {
                    if (attribute == null) {
                        servletRequestAttributeListener.attributeAdded(servletRequestAttributeEvent);
                    } else if (obj == null) {
                        servletRequestAttributeListener.attributeRemoved(servletRequestAttributeEvent);
                    } else {
                        servletRequestAttributeListener.attributeReplaced(servletRequestAttributeEvent);
                    }
                }
            }
        }
    }

    public void setAttributes(Attributes attributes) {
        this.f114756e = attributes;
    }

    public void setAuthType(String str) {
        this.f114757f = str;
    }

    @Override // javax.servlet.ServletRequest
    public void setCharacterEncoding(String str) throws UnsupportedEncodingException {
        if (this.f114735C != 0) {
            return;
        }
        this.f114758g = str;
        if (StringUtil.isUTF8(str)) {
            return;
        }
        "".getBytes(str);
    }

    public void setCharacterEncodingUnchecked(String str) {
        this.f114758g = str;
    }

    public void setConnection(HttpConnection httpConnection) {
        this.f114753b = httpConnection;
        this.f114754c = httpConnection.getEndPoint();
        this.f114738F = httpConnection.getResolveNames();
    }

    public void setContentType(String str) {
        this.f114753b.getRequestFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, str);
    }

    public void setContext(ContextHandler.SContext sContext) {
        this.f114739G = sContext;
    }

    public void setContextPath(String str) {
        this.f114772u = str;
    }

    public void setCookies(Cookie[] cookieArr) {
        this.f114743K = cookieArr;
    }

    public void setHandled(boolean z) {
        this.f114752a = z;
    }

    public void setMethod(String str) {
        this.f114763l = str;
    }

    public void setParameters(MultiMap multiMap) {
        if (multiMap == null) {
            multiMap = this.f114733A;
        }
        this.f114777z = multiMap;
        if (this.f114734B && multiMap == null) {
            throw new IllegalStateException();
        }
    }

    public void setPathInfo(String str) {
        this.f114764m = str;
    }

    public void setProtocol(String str) {
        this.f114766o = str;
    }

    public void setQueryEncoding(String str) {
        this.f114759h = str;
        this.f114767p = null;
    }

    public void setQueryString(String str) {
        this.f114767p = str;
    }

    public void setRemoteAddr(String str) {
        this.f114761j = str;
    }

    public void setRemoteHost(String str) {
        this.f114762k = str;
    }

    public void setRequestListeners(Object obj) {
        this.f114749Q = obj;
    }

    public void setRequestURI(String str) {
        this.f114770s = str;
    }

    public void setRequestedSessionId(String str) {
        this.f114768q = str;
    }

    public void setRequestedSessionIdFromCookie(boolean z) {
        this.f114769r = z;
    }

    public void setRoleMap(Map map) {
        this.f114755d = map;
    }

    public void setScheme(String str) {
        this.f114771t = str;
    }

    public void setServerName(String str) {
        this.f114760i = str;
    }

    public void setServerPort(int i) {
        this.f114765n = i;
    }

    public void setServletName(String str) {
        this.f114774w = str;
    }

    public void setServletPath(String str) {
        this.f114773v = str;
    }

    public void setSession(HttpSession httpSession) {
        this.f114740H = httpSession;
    }

    public void setSessionManager(SessionManager sessionManager) {
        this.f114741I = sessionManager;
    }

    public void setTimeStamp(long j) {
        this.f114745M = j;
    }

    public void setUri(HttpURI httpURI) {
        this.f114775x = httpURI;
    }

    public void setUserPrincipal(Principal principal) {
        this.f114776y = principal;
    }

    public void setUserRealm(UserRealm userRealm) {
        this.f114751S = userRealm;
    }

    public Object takeRequestListeners() {
        Object obj = this.f114749Q;
        this.f114749Q = null;
        return obj;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getMethod());
        stringBuffer.append(" ");
        stringBuffer.append(this.f114775x);
        stringBuffer.append(" ");
        stringBuffer.append(getProtocol());
        stringBuffer.append("\n");
        stringBuffer.append(this.f114753b.getRequestFields().toString());
        return stringBuffer.toString();
    }

    public Continuation getContinuation(boolean z) {
        if (this.f114747O == null && z) {
            this.f114747O = getConnection().getConnector().newContinuation();
        }
        return this.f114747O;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public HttpSession getSession(boolean z) {
        SessionManager sessionManager;
        SessionManager sessionManager2;
        SessionManager sessionManager3 = this.f114741I;
        if (sessionManager3 == null && z) {
            throw new IllegalStateException("No SessionHandler or SessionManager");
        }
        HttpSession httpSession = this.f114740H;
        if (httpSession != null && sessionManager3 != null && sessionManager3.isValid(httpSession)) {
            return this.f114740H;
        }
        this.f114740H = null;
        String requestedSessionId = getRequestedSessionId();
        if (requestedSessionId != null && (sessionManager2 = this.f114741I) != null) {
            HttpSession httpSession2 = sessionManager2.getHttpSession(requestedSessionId);
            this.f114740H = httpSession2;
            if (httpSession2 == null && !z) {
                return null;
            }
        }
        if (this.f114740H == null && (sessionManager = this.f114741I) != null && z) {
            HttpSession newHttpSession = sessionManager.newHttpSession(this);
            this.f114740H = newHttpSession;
            Cookie sessionCookie = this.f114741I.getSessionCookie(newHttpSession, getContextPath(), isSecure());
            if (sessionCookie != null) {
                this.f114753b.getResponse().addCookie(sessionCookie);
            }
        }
        return this.f114740H;
    }

    public Request(HttpConnection httpConnection) {
        this.f114752a = false;
        this.f114766o = HttpVersions.HTTP_1_1;
        this.f114769r = false;
        this.f114771t = "http";
        this.f114735C = 0;
        this.f114738F = false;
        this.f114742J = false;
        this.f114753b = httpConnection;
        this.f114754c = httpConnection.getEndPoint();
        this.f114738F = this.f114753b.getResolveNames();
    }
}
