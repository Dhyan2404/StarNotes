package org.mortbay.jetty;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Locale;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.mortbay.io.BufferCache;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.handler.ErrorHandler;
import org.mortbay.jetty.servlet.ServletHandler;
import org.mortbay.log.Log;
import org.mortbay.util.ByteArrayISO8859Writer;
import org.mortbay.util.C20429IO;
import org.mortbay.util.QuotedStringTokenizer;
import org.mortbay.util.StringUtil;
import org.mortbay.util.URIUtil;
import org.scribe.model.ParameterList;

/* loaded from: classes13.dex */
public class Response implements HttpServletResponse {
    public static final int DISABLED = -1;
    public static final int NONE = 0;
    public static final int STREAM = 1;
    public static final int WRITER = 2;

    /* renamed from: l */
    public static PrintWriter f114787l;

    /* renamed from: m */
    public static ServletOutputStream f114788m;

    /* renamed from: a */
    public HttpConnection f114789a;

    /* renamed from: b */
    public int f114790b = 200;

    /* renamed from: c */
    public String f114791c;

    /* renamed from: d */
    public Locale f114792d;

    /* renamed from: e */
    public String f114793e;

    /* renamed from: f */
    public BufferCache.CachedBuffer f114794f;

    /* renamed from: g */
    public String f114795g;

    /* renamed from: h */
    public boolean f114796h;

    /* renamed from: i */
    public String f114797i;

    /* renamed from: j */
    public int f114798j;

    /* renamed from: k */
    public PrintWriter f114799k;

    /* renamed from: org.mortbay.jetty.Response$a */
    /* loaded from: classes13.dex */
    public static class C20378a extends ServletOutputStream {
        public C20378a() {
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    static {
        try {
            f114787l = new PrintWriter(C20429IO.getNullWriter());
            f114788m = new C20378a();
        } catch (Exception e) {
            Log.warn(e);
        }
    }

    public Response(HttpConnection httpConnection) {
        this.f114789a = httpConnection;
    }

    /* renamed from: a */
    public String m71530a() {
        return this.f114795g;
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void addCookie(Cookie cookie) {
        this.f114789a.getResponseFields().addSetCookie(cookie);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void addDateHeader(String str, long j) {
        if (this.f114789a.isIncluding()) {
            return;
        }
        this.f114789a.getResponseFields().addDateField(str, j);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void addHeader(String str, String str2) {
        if (this.f114789a.isIncluding()) {
            return;
        }
        this.f114789a.getResponseFields().add(str, str2);
        if ("Content-Length".equalsIgnoreCase(str)) {
            this.f114789a._generator.setContentLength(Long.parseLong(str2));
        }
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void addIntHeader(String str, int i) {
        if (this.f114789a.isIncluding()) {
            return;
        }
        long j = i;
        this.f114789a.getResponseFields().addLongField(str, j);
        if ("Content-Length".equalsIgnoreCase(str)) {
            this.f114789a._generator.setContentLength(j);
        }
    }

    public void complete() throws IOException {
        this.f114789a.completeResponse();
    }

    @Override // javax.servlet.http.HttpServletResponse
    public boolean containsHeader(String str) {
        return this.f114789a.getResponseFields().containsKey(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public String encodeRedirectURL(String str) {
        return encodeURL(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public String encodeRedirectUrl(String str) {
        return encodeURL(str);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public String encodeURL(String str) {
        String sessionURLPrefix;
        Request request = this.f114789a.getRequest();
        SessionManager sessionManager = request.getSessionManager();
        if (sessionManager == null || (sessionURLPrefix = sessionManager.getSessionURLPrefix()) == null) {
            return str;
        }
        if (str == null || request.isRequestedSessionIdFromCookie()) {
            int indexOf = str.indexOf(sessionURLPrefix);
            if (indexOf == -1) {
                return str;
            }
            int indexOf2 = str.indexOf("?", indexOf);
            if (indexOf2 < 0) {
                indexOf2 = str.indexOf("#", indexOf);
            }
            if (indexOf2 <= indexOf) {
                return str.substring(0, indexOf);
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str.substring(0, indexOf));
            stringBuffer.append(str.substring(indexOf2));
            return stringBuffer.toString();
        }
        HttpSession session = request.getSession(false);
        if (session == null || !sessionManager.isValid(session)) {
            return str;
        }
        String nodeId = sessionManager.getNodeId(session);
        int indexOf3 = str.indexOf(sessionURLPrefix);
        if (indexOf3 != -1) {
            int indexOf4 = str.indexOf("?", indexOf3);
            if (indexOf4 < 0) {
                indexOf4 = str.indexOf("#", indexOf3);
            }
            if (indexOf4 <= indexOf3) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(str.substring(0, indexOf3 + sessionURLPrefix.length()));
                stringBuffer2.append(nodeId);
                return stringBuffer2.toString();
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(str.substring(0, indexOf3 + sessionURLPrefix.length()));
            stringBuffer3.append(nodeId);
            stringBuffer3.append(str.substring(indexOf4));
            return stringBuffer3.toString();
        }
        int indexOf5 = str.indexOf(63);
        if (indexOf5 < 0) {
            indexOf5 = str.indexOf(35);
        }
        if (indexOf5 < 0) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append(str);
            stringBuffer4.append(sessionURLPrefix);
            stringBuffer4.append(nodeId);
            return stringBuffer4.toString();
        }
        StringBuffer stringBuffer5 = new StringBuffer();
        stringBuffer5.append(str.substring(0, indexOf5));
        stringBuffer5.append(sessionURLPrefix);
        stringBuffer5.append(nodeId);
        stringBuffer5.append(str.substring(indexOf5));
        return stringBuffer5.toString();
    }

    @Override // javax.servlet.http.HttpServletResponse
    public String encodeUrl(String str) {
        return encodeURL(str);
    }

    @Override // javax.servlet.ServletResponse
    public void flushBuffer() throws IOException {
        this.f114789a.flushResponse();
    }

    @Override // javax.servlet.ServletResponse
    public int getBufferSize() {
        return this.f114789a.getGenerator().getContentBufferSize();
    }

    @Override // javax.servlet.ServletResponse
    public String getCharacterEncoding() {
        if (this.f114795g == null) {
            this.f114795g = StringUtil.__ISO_8859_1;
        }
        return this.f114795g;
    }

    public long getContentCount() {
        HttpConnection httpConnection = this.f114789a;
        if (httpConnection == null || httpConnection.getGenerator() == null) {
            return -1L;
        }
        return this.f114789a.getGenerator().getContentWritten();
    }

    @Override // javax.servlet.ServletResponse
    public String getContentType() {
        return this.f114797i;
    }

    public String getHeader(String str) {
        return this.f114789a.getResponseFields().getStringField(str);
    }

    public Enumeration getHeaders(String str) {
        Enumeration values = this.f114789a.getResponseFields().getValues(str);
        return values == null ? Collections.enumeration(Collections.EMPTY_LIST) : values;
    }

    public HttpFields getHttpFields() {
        return this.f114789a.getResponseFields();
    }

    @Override // javax.servlet.ServletResponse
    public Locale getLocale() {
        Locale locale = this.f114792d;
        return locale == null ? Locale.getDefault() : locale;
    }

    @Override // javax.servlet.ServletResponse
    public ServletOutputStream getOutputStream() throws IOException {
        int i = this.f114798j;
        if (i == -1) {
            return f114788m;
        }
        if (i != 0 && i != 1) {
            throw new IllegalStateException("WRITER");
        }
        this.f114798j = 1;
        return this.f114789a.getOutputStream();
    }

    public String getReason() {
        return this.f114791c;
    }

    public int getStatus() {
        return this.f114790b;
    }

    @Override // javax.servlet.ServletResponse
    public PrintWriter getWriter() throws IOException {
        int i = this.f114798j;
        if (i == -1) {
            return f114787l;
        }
        if (i != 0 && i != 2) {
            throw new IllegalStateException("STREAM");
        }
        if (this.f114799k == null) {
            String str = this.f114795g;
            if (str == null) {
                if (this.f114793e != null) {
                    str = null;
                }
                if (str == null) {
                    str = StringUtil.__ISO_8859_1;
                }
                setCharacterEncoding(str);
            }
            this.f114799k = this.f114789a.getPrintWriter(str);
        }
        this.f114798j = 2;
        return this.f114799k;
    }

    @Override // javax.servlet.ServletResponse
    public boolean isCommitted() {
        return this.f114789a.isResponseCommitted();
    }

    public boolean isWriting() {
        return this.f114798j == 2;
    }

    public void recycle() {
        this.f114790b = 200;
        this.f114791c = null;
        this.f114792d = null;
        this.f114793e = null;
        this.f114794f = null;
        this.f114795g = null;
        this.f114796h = false;
        this.f114797i = null;
        this.f114798j = 0;
        this.f114799k = null;
    }

    @Override // javax.servlet.ServletResponse
    public void reset() {
        resetBuffer();
        HttpFields responseFields = this.f114789a.getResponseFields();
        responseFields.clear();
        String stringField = this.f114789a.getRequestFields().getStringField(HttpHeaders.CONNECTION_BUFFER);
        if (stringField != null) {
            QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(stringField, ",");
            while (quotedStringTokenizer.hasMoreTokens()) {
                BufferCache.CachedBuffer cachedBuffer = HttpHeaderValues.CACHE.get(quotedStringTokenizer.nextToken().trim());
                if (cachedBuffer != null) {
                    int ordinal = cachedBuffer.getOrdinal();
                    if (ordinal == 1) {
                        responseFields.put(HttpHeaders.CONNECTION_BUFFER, HttpHeaderValues.CLOSE_BUFFER);
                    } else if (ordinal != 5) {
                        if (ordinal == 8) {
                            responseFields.put(HttpHeaders.CONNECTION_BUFFER, "TE");
                        }
                    } else if (HttpVersions.HTTP_1_0.equalsIgnoreCase(this.f114789a.getRequest().getProtocol())) {
                        responseFields.put(HttpHeaders.CONNECTION_BUFFER, "keep-alive");
                    }
                }
            }
        }
        if (this.f114789a.getConnector().getServer().getSendDateHeader()) {
            Request request = this.f114789a.getRequest();
            responseFields.put(HttpHeaders.DATE_BUFFER, request.getTimeStampBuffer(), request.getTimeStamp());
        }
        this.f114790b = 200;
        this.f114791c = null;
        this.f114793e = null;
        this.f114794f = null;
        this.f114797i = null;
        this.f114795g = null;
        this.f114796h = false;
        this.f114792d = null;
        this.f114798j = 0;
        this.f114799k = null;
    }

    @Override // javax.servlet.ServletResponse
    public void resetBuffer() {
        if (isCommitted()) {
            throw new IllegalStateException("Committed");
        }
        this.f114789a.getGenerator().resetBuffer();
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void sendError(int i, String str) throws IOException {
        if (this.f114789a.isIncluding()) {
            return;
        }
        if (isCommitted()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Committed before ");
            stringBuffer.append(i);
            stringBuffer.append(" ");
            stringBuffer.append(str);
            Log.warn(stringBuffer.toString());
        }
        resetBuffer();
        this.f114795g = null;
        setHeader("Expires", null);
        setHeader("Last-Modified", null);
        setHeader("Cache-Control", null);
        setHeader("Content-Type", null);
        setHeader("Content-Length", null);
        this.f114798j = 0;
        setStatus(i, str);
        if (str == null) {
            str = AbstractGenerator.getReason(i);
        }
        if (i != 204 && i != 304 && i != 206 && i >= 200) {
            Request request = this.f114789a.getRequest();
            ContextHandler.SContext context = request.getContext();
            ErrorHandler errorHandler = context != null ? context.getContextHandler().getErrorHandler() : null;
            if (errorHandler != null) {
                request.setAttribute(ServletHandler.__J_S_ERROR_STATUS_CODE, new Integer(i));
                request.setAttribute(ServletHandler.__J_S_ERROR_MESSAGE, str);
                request.setAttribute(ServletHandler.__J_S_ERROR_REQUEST_URI, request.getRequestURI());
                request.setAttribute(ServletHandler.__J_S_ERROR_SERVLET_NAME, request.getServletName());
                errorHandler.handle(null, this.f114789a.getRequest(), this, 8);
            } else {
                setHeader("Cache-Control", "must-revalidate,no-cache,no-store");
                setContentType(MimeTypes.TEXT_HTML_8859_1);
                ByteArrayISO8859Writer byteArrayISO8859Writer = new ByteArrayISO8859Writer(2048);
                if (str != null) {
                    str = StringUtil.replace(StringUtil.replace(StringUtil.replace(str, ParameterList.f115951c, "&amp;"), "<", "&lt;"), ">", "&gt;");
                }
                String requestURI = request.getRequestURI();
                if (requestURI != null) {
                    requestURI = StringUtil.replace(StringUtil.replace(StringUtil.replace(requestURI, ParameterList.f115951c, "&amp;"), "<", "&lt;"), ">", "&gt;");
                }
                byteArrayISO8859Writer.write("<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"/>\n");
                byteArrayISO8859Writer.write("<title>Error ");
                byteArrayISO8859Writer.write(Integer.toString(i));
                byteArrayISO8859Writer.write(' ');
                if (str == null) {
                    str = AbstractGenerator.getReason(i);
                }
                byteArrayISO8859Writer.write(str);
                byteArrayISO8859Writer.write("</title>\n</head>\n<body>\n<h2>HTTP ERROR: ");
                byteArrayISO8859Writer.write(Integer.toString(i));
                byteArrayISO8859Writer.write("</h2>\n<p>Problem accessing ");
                byteArrayISO8859Writer.write(requestURI);
                byteArrayISO8859Writer.write(". Reason:\n<pre>    ");
                byteArrayISO8859Writer.write(str);
                byteArrayISO8859Writer.write("</pre>");
                byteArrayISO8859Writer.write("</p>\n<hr /><i><small>Powered by Jetty://</small></i>");
                for (int i2 = 0; i2 < 20; i2++) {
                    byteArrayISO8859Writer.write("\n                                                ");
                }
                byteArrayISO8859Writer.write("\n</body>\n</html>\n");
                byteArrayISO8859Writer.flush();
                setContentLength(byteArrayISO8859Writer.size());
                byteArrayISO8859Writer.writeTo(getOutputStream());
                byteArrayISO8859Writer.destroy();
            }
        } else if (i != 206) {
            this.f114789a.getRequestFields().remove(HttpHeaders.CONTENT_TYPE_BUFFER);
            this.f114789a.getRequestFields().remove(HttpHeaders.CONTENT_LENGTH_BUFFER);
            this.f114795g = null;
            this.f114793e = null;
            this.f114794f = null;
        }
        complete();
    }

    public void sendProcessing() throws IOException {
        Generator generator = this.f114789a.getGenerator();
        if (generator instanceof HttpGenerator) {
            HttpGenerator httpGenerator = (HttpGenerator) generator;
            String header = this.f114789a.getRequest().getHeader("Expect");
            if (header == null || !header.startsWith("102") || httpGenerator.getVersion() < 11) {
                return;
            }
            boolean isPersistent = httpGenerator.isPersistent();
            httpGenerator.setResponse(102, null);
            httpGenerator.completeHeader(null, true);
            httpGenerator.setPersistent(true);
            httpGenerator.complete();
            httpGenerator.flush();
            httpGenerator.reset(false);
            httpGenerator.setPersistent(isPersistent);
        }
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void sendRedirect(String str) throws IOException {
        if (this.f114789a.isIncluding()) {
            return;
        }
        if (str == null) {
            throw new IllegalArgumentException();
        }
        if (!URIUtil.hasScheme(str)) {
            StringBuffer rootURL = this.f114789a.getRequest().getRootURL();
            if (str.startsWith("/")) {
                rootURL.append(str);
            } else {
                String requestURI = this.f114789a.getRequest().getRequestURI();
                if (!requestURI.endsWith("/")) {
                    requestURI = URIUtil.parentPath(requestURI);
                }
                String addPaths = URIUtil.addPaths(requestURI, str);
                if (addPaths == null) {
                    throw new IllegalStateException("path cannot be above root");
                }
                if (!addPaths.startsWith("/")) {
                    rootURL.append('/');
                }
                rootURL.append(addPaths);
            }
            str = rootURL.toString();
            HttpURI httpURI = new HttpURI(str);
            String decodedPath = httpURI.getDecodedPath();
            String canonicalPath = URIUtil.canonicalPath(decodedPath);
            if (canonicalPath == null) {
                throw new IllegalArgumentException();
            }
            if (!canonicalPath.equals(decodedPath)) {
                StringBuffer rootURL2 = this.f114789a.getRequest().getRootURL();
                rootURL2.append(canonicalPath);
                if (httpURI.getQuery() != null) {
                    rootURL2.append('?');
                    rootURL2.append(httpURI.getQuery());
                }
                if (httpURI.getFragment() != null) {
                    rootURL2.append('#');
                    rootURL2.append(httpURI.getFragment());
                }
                str = rootURL2.toString();
            }
        }
        resetBuffer();
        setHeader("Location", str);
        setStatus(302);
        complete();
    }

    @Override // javax.servlet.ServletResponse
    public void setBufferSize(int i) {
        if (isCommitted() || getContentCount() > 0) {
            throw new IllegalStateException("Committed or content written");
        }
        this.f114789a.getGenerator().increaseContentBufferSize(i);
    }

    @Override // javax.servlet.ServletResponse
    public void setCharacterEncoding(String str) {
        BufferCache.CachedBuffer associate;
        if (this.f114789a.isIncluding() || this.f114798j != 0 || isCommitted()) {
            return;
        }
        this.f114796h = true;
        if (str == null) {
            if (this.f114795g != null) {
                this.f114795g = null;
                if (this.f114794f != null) {
                    this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114794f);
                    return;
                } else {
                    this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114793e);
                    return;
                }
            }
            return;
        }
        this.f114795g = str;
        String str2 = this.f114797i;
        if (str2 != null) {
            int indexOf = str2.indexOf(59);
            if (indexOf < 0) {
                this.f114797i = null;
                BufferCache.CachedBuffer cachedBuffer = this.f114794f;
                if (cachedBuffer != null && (associate = cachedBuffer.getAssociate(this.f114795g)) != null) {
                    this.f114797i = associate.toString();
                    this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, associate);
                }
                if (this.f114797i == null) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(this.f114793e);
                    stringBuffer.append("; charset=");
                    stringBuffer.append(QuotedStringTokenizer.quote(this.f114795g, ";= "));
                    this.f114797i = stringBuffer.toString();
                    this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
                    return;
                }
                return;
            }
            int indexOf2 = this.f114797i.indexOf("charset=", indexOf);
            if (indexOf2 < 0) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(this.f114797i);
                stringBuffer2.append("; charset=");
                stringBuffer2.append(QuotedStringTokenizer.quote(this.f114795g, ";= "));
                this.f114797i = stringBuffer2.toString();
            } else {
                int i = indexOf2 + 8;
                int indexOf3 = this.f114797i.indexOf(" ", i);
                if (indexOf3 < 0) {
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append(this.f114797i.substring(0, i));
                    stringBuffer3.append(QuotedStringTokenizer.quote(this.f114795g, ";= "));
                    this.f114797i = stringBuffer3.toString();
                } else {
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append(this.f114797i.substring(0, i));
                    stringBuffer4.append(QuotedStringTokenizer.quote(this.f114795g, ";= "));
                    stringBuffer4.append(this.f114797i.substring(indexOf3));
                    this.f114797i = stringBuffer4.toString();
                }
            }
            this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
        }
    }

    @Override // javax.servlet.ServletResponse
    public void setContentLength(int i) {
        if (isCommitted() || this.f114789a.isIncluding()) {
            return;
        }
        long j = i;
        this.f114789a._generator.setContentLength(j);
        if (i >= 0) {
            this.f114789a.getResponseFields().putLongField("Content-Length", j);
            if (this.f114789a._generator.isContentWritten()) {
                int i2 = this.f114798j;
                if (i2 == 2) {
                    this.f114799k.close();
                } else if (i2 == 1) {
                    try {
                        getOutputStream().close();
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }
    }

    @Override // javax.servlet.ServletResponse
    public void setContentType(String str) {
        if (isCommitted() || this.f114789a.isIncluding()) {
            return;
        }
        if (str == null) {
            if (this.f114792d == null) {
                this.f114795g = null;
            }
            this.f114793e = null;
            this.f114794f = null;
            this.f114797i = null;
            this.f114789a.getResponseFields().remove(HttpHeaders.CONTENT_TYPE_BUFFER);
            return;
        }
        int indexOf = str.indexOf(59);
        if (indexOf <= 0) {
            this.f114793e = str;
            BufferCache.CachedBuffer cachedBuffer = MimeTypes.CACHE.get(str);
            this.f114794f = cachedBuffer;
            String str2 = this.f114795g;
            if (str2 == null) {
                if (cachedBuffer != null) {
                    this.f114797i = cachedBuffer.toString();
                    this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114794f);
                    return;
                } else {
                    this.f114797i = str;
                    this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
                    return;
                }
            }
            if (cachedBuffer == null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str);
                stringBuffer.append("; charset=");
                stringBuffer.append(QuotedStringTokenizer.quote(this.f114795g, ";= "));
                this.f114797i = stringBuffer.toString();
                this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
                return;
            }
            BufferCache.CachedBuffer associate = cachedBuffer.getAssociate(str2);
            if (associate != null) {
                this.f114797i = associate.toString();
                this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, associate);
                return;
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(this.f114793e);
            stringBuffer2.append("; charset=");
            stringBuffer2.append(QuotedStringTokenizer.quote(this.f114795g, ";= "));
            this.f114797i = stringBuffer2.toString();
            this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
            return;
        }
        String trim = str.substring(0, indexOf).trim();
        this.f114793e = trim;
        BufferCache bufferCache = MimeTypes.CACHE;
        this.f114794f = bufferCache.get(trim);
        int i = indexOf + 1;
        int indexOf2 = str.indexOf("charset=", i);
        if (indexOf2 < 0) {
            this.f114794f = null;
            if (this.f114795g != null) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(str);
                stringBuffer3.append("; charset=");
                stringBuffer3.append(QuotedStringTokenizer.quote(this.f114795g, ";= "));
                str = stringBuffer3.toString();
            }
            this.f114797i = str;
            this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
            return;
        }
        this.f114796h = true;
        int i2 = indexOf2 + 8;
        int indexOf3 = str.indexOf(32, i2);
        if (this.f114798j != 2) {
            if ((indexOf2 != i || indexOf3 >= 0) && !(indexOf2 == indexOf + 2 && indexOf3 < 0 && str.charAt(i) == ' ')) {
                if (indexOf3 > 0) {
                    this.f114795g = QuotedStringTokenizer.unquote(str.substring(i2, indexOf3));
                    this.f114797i = str;
                    this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
                    return;
                } else {
                    this.f114795g = QuotedStringTokenizer.unquote(str.substring(i2));
                    this.f114797i = str;
                    this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
                    return;
                }
            }
            this.f114794f = bufferCache.get(this.f114793e);
            String unquote = QuotedStringTokenizer.unquote(str.substring(i2));
            this.f114795g = unquote;
            BufferCache.CachedBuffer cachedBuffer2 = this.f114794f;
            if (cachedBuffer2 == null) {
                this.f114797i = str;
                this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
                return;
            }
            BufferCache.CachedBuffer associate2 = cachedBuffer2.getAssociate(unquote);
            if (associate2 != null) {
                this.f114797i = associate2.toString();
                this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, associate2);
                return;
            } else {
                this.f114797i = str;
                this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
                return;
            }
        }
        if ((indexOf2 != i || indexOf3 >= 0) && !(indexOf2 == indexOf + 2 && indexOf3 < 0 && str.charAt(i) == ' ')) {
            if (indexOf3 < 0) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append(str.substring(0, indexOf2));
                stringBuffer4.append(" charset=");
                stringBuffer4.append(QuotedStringTokenizer.quote(this.f114795g, ";= "));
                this.f114797i = stringBuffer4.toString();
                this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
                return;
            }
            StringBuffer stringBuffer5 = new StringBuffer();
            stringBuffer5.append(str.substring(0, indexOf2));
            stringBuffer5.append(str.substring(indexOf3));
            stringBuffer5.append(" charset=");
            stringBuffer5.append(QuotedStringTokenizer.quote(this.f114795g, ";= "));
            this.f114797i = stringBuffer5.toString();
            this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
            return;
        }
        BufferCache.CachedBuffer cachedBuffer3 = this.f114794f;
        if (cachedBuffer3 == null) {
            StringBuffer stringBuffer6 = new StringBuffer();
            stringBuffer6.append(this.f114793e);
            stringBuffer6.append("; charset=");
            stringBuffer6.append(this.f114795g);
            this.f114797i = stringBuffer6.toString();
            this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
            return;
        }
        BufferCache.CachedBuffer associate3 = cachedBuffer3.getAssociate(this.f114795g);
        if (associate3 != null) {
            this.f114797i = associate3.toString();
            this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, associate3);
            return;
        }
        StringBuffer stringBuffer7 = new StringBuffer();
        stringBuffer7.append(this.f114793e);
        stringBuffer7.append("; charset=");
        stringBuffer7.append(this.f114795g);
        this.f114797i = stringBuffer7.toString();
        this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setDateHeader(String str, long j) {
        if (this.f114789a.isIncluding()) {
            return;
        }
        this.f114789a.getResponseFields().putDateField(str, j);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setHeader(String str, String str2) {
        if (this.f114789a.isIncluding()) {
            return;
        }
        this.f114789a.getResponseFields().put(str, str2);
        if ("Content-Length".equalsIgnoreCase(str)) {
            if (str2 == null) {
                this.f114789a._generator.setContentLength(-1L);
            } else {
                this.f114789a._generator.setContentLength(Long.parseLong(str2));
            }
        }
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setIntHeader(String str, int i) {
        if (this.f114789a.isIncluding()) {
            return;
        }
        long j = i;
        this.f114789a.getResponseFields().putLongField(str, j);
        if ("Content-Length".equalsIgnoreCase(str)) {
            this.f114789a._generator.setContentLength(j);
        }
    }

    @Override // javax.servlet.ServletResponse
    public void setLocale(Locale locale) {
        String localeEncoding;
        if (locale == null || isCommitted() || this.f114789a.isIncluding()) {
            return;
        }
        this.f114792d = locale;
        this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_LANGUAGE_BUFFER, locale.toString().replace(NameUtil.USCORE, '-'));
        if (this.f114796h || this.f114798j != 0 || this.f114789a.getRequest().getContext() == null || (localeEncoding = this.f114789a.getRequest().getContext().getContextHandler().getLocaleEncoding(locale)) == null || localeEncoding.length() <= 0) {
            return;
        }
        this.f114795g = localeEncoding;
        String contentType = getContentType();
        if (contentType != null) {
            this.f114795g = localeEncoding;
            int indexOf = contentType.indexOf(59);
            if (indexOf < 0) {
                this.f114793e = contentType;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(contentType);
                stringBuffer.append("; charset=");
                stringBuffer.append(localeEncoding);
                this.f114797i = stringBuffer.toString();
            } else {
                this.f114793e = contentType.substring(0, indexOf);
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(this.f114793e);
                stringBuffer2.append("; charset=");
                stringBuffer2.append(localeEncoding);
                String stringBuffer3 = stringBuffer2.toString();
                this.f114793e = stringBuffer3;
                this.f114797i = stringBuffer3;
            }
            this.f114794f = MimeTypes.CACHE.get(this.f114793e);
            this.f114789a.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this.f114797i);
        }
    }

    public void setLongContentLength(long j) {
        if (isCommitted() || this.f114789a.isIncluding()) {
            return;
        }
        this.f114789a._generator.setContentLength(j);
        this.f114789a.getResponseFields().putLongField("Content-Length", j);
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setStatus(int i) {
        setStatus(i, null);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("HTTP/1.1 ");
        stringBuffer.append(this.f114790b);
        stringBuffer.append(" ");
        String str = this.f114791c;
        if (str == null) {
            str = "";
        }
        stringBuffer.append(str);
        stringBuffer.append(System.getProperty("line.separator"));
        stringBuffer.append(this.f114789a.getResponseFields().toString());
        return stringBuffer.toString();
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void setStatus(int i, String str) {
        if (this.f114789a.isIncluding()) {
            return;
        }
        this.f114790b = i;
        this.f114791c = str;
    }

    @Override // javax.servlet.http.HttpServletResponse
    public void sendError(int i) throws IOException {
        if (i == 102) {
            sendProcessing();
        } else {
            sendError(i, null);
        }
    }
}
