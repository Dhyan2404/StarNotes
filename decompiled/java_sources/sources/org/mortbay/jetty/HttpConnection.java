package org.mortbay.jetty;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletOutputStream;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferCache;
import org.mortbay.io.Connection;
import org.mortbay.io.EndPoint;
import org.mortbay.io.nio.SelectChannelEndPoint;
import org.mortbay.jetty.AbstractGenerator;
import org.mortbay.jetty.HttpParser;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.util.QuotedStringTokenizer;
import org.mortbay.util.URIUtil;
import org.mortbay.util.ajax.Continuation;

/* loaded from: classes13.dex */
public class HttpConnection implements Connection {

    /* renamed from: l */
    public static int f114589l = -2;

    /* renamed from: m */
    public static ThreadLocal f114590m = new ThreadLocal();
    protected final Connector _connector;
    protected final EndPoint _endp;
    protected final Generator _generator;
    protected ServletInputStream _in;
    protected Output _out;
    protected final Parser _parser;
    protected PrintWriter _printWriter;
    protected final Request _request;
    protected final HttpFields _requestFields;
    protected final Response _response;
    protected final HttpFields _responseFields;
    protected final Server _server;
    protected final HttpURI _uri;
    protected OutputWriter _writer;

    /* renamed from: a */
    public long f114591a = System.currentTimeMillis();

    /* renamed from: b */
    public int f114592b;

    /* renamed from: c */
    public boolean f114593c;

    /* renamed from: d */
    public boolean f114594d;

    /* renamed from: e */
    public int f114595e;

    /* renamed from: f */
    public Object f114596f;

    /* renamed from: g */
    public transient int f114597g;

    /* renamed from: h */
    public transient int f114598h;

    /* renamed from: i */
    public transient boolean f114599i;

    /* renamed from: j */
    public transient boolean f114600j;

    /* renamed from: k */
    public transient boolean f114601k;

    /* loaded from: classes13.dex */
    public class Output extends AbstractGenerator.Output {
        public Output() {
            super((AbstractGenerator) HttpConnection.this._generator, HttpConnection.this._connector.getMaxIdleTime());
        }

        @Override // org.mortbay.jetty.AbstractGenerator.Output, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this._closed) {
                return;
            }
            if (HttpConnection.this.isIncluding() || this._generator.isCommitted()) {
                HttpConnection.this.flushResponse();
            } else {
                HttpConnection.this.commitResponse(true);
            }
            super.close();
        }

        @Override // org.mortbay.jetty.AbstractGenerator.Output, java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            if (!this._generator.isCommitted()) {
                HttpConnection.this.commitResponse(false);
            }
            super.flush();
        }

        @Override // org.mortbay.jetty.AbstractGenerator.Output, javax.servlet.ServletOutputStream
        public void print(String str) throws IOException {
            if (this._closed) {
                throw new IOException("Closed");
            }
            HttpConnection.this.getPrintWriter(null).print(str);
        }

        public void sendContent(Object obj) throws IOException {
            if (this._closed) {
                throw new IOException("Closed");
            }
            if (this._generator.getContentWritten() > 0) {
                throw new IllegalStateException("!empty");
            }
            Resource resource = null;
            if (obj instanceof HttpContent) {
                HttpContent httpContent = (HttpContent) obj;
                Buffer contentType = httpContent.getContentType();
                if (contentType != null) {
                    HttpFields httpFields = HttpConnection.this._responseFields;
                    Buffer buffer = HttpHeaders.CONTENT_TYPE_BUFFER;
                    if (!httpFields.containsKey(buffer)) {
                        String m71530a = HttpConnection.this._response.m71530a();
                        if (m71530a == null) {
                            HttpConnection.this._responseFields.add(buffer, contentType);
                        } else if (contentType instanceof BufferCache.CachedBuffer) {
                            BufferCache.CachedBuffer associate = ((BufferCache.CachedBuffer) contentType).getAssociate(m71530a);
                            if (associate != null) {
                                HttpConnection.this._responseFields.put(buffer, associate);
                            } else {
                                HttpFields httpFields2 = HttpConnection.this._responseFields;
                                StringBuffer stringBuffer = new StringBuffer();
                                stringBuffer.append(contentType);
                                stringBuffer.append(";charset=");
                                stringBuffer.append(QuotedStringTokenizer.quote(m71530a, ";= "));
                                httpFields2.put(buffer, stringBuffer.toString());
                            }
                        } else {
                            HttpFields httpFields3 = HttpConnection.this._responseFields;
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append(contentType);
                            stringBuffer2.append(";charset=");
                            stringBuffer2.append(QuotedStringTokenizer.quote(m71530a, ";= "));
                            httpFields3.put(buffer, stringBuffer2.toString());
                        }
                    }
                }
                if (httpContent.getContentLength() > 0) {
                    HttpConnection.this._responseFields.putLongField(HttpHeaders.CONTENT_LENGTH_BUFFER, httpContent.getContentLength());
                }
                Buffer lastModified = httpContent.getLastModified();
                long lastModified2 = httpContent.getResource().lastModified();
                if (lastModified != null) {
                    HttpConnection.this._responseFields.put(HttpHeaders.LAST_MODIFIED_BUFFER, lastModified, lastModified2);
                } else if (httpContent.getResource() != null && lastModified2 != -1) {
                    HttpConnection.this._responseFields.putDateField(HttpHeaders.LAST_MODIFIED_BUFFER, lastModified2);
                }
                Buffer buffer2 = httpContent.getBuffer();
                obj = buffer2 == null ? httpContent.getInputStream() : buffer2;
            } else if (obj instanceof Resource) {
                resource = (Resource) obj;
                HttpConnection.this._responseFields.putDateField(HttpHeaders.LAST_MODIFIED_BUFFER, resource.lastModified());
                obj = resource.getInputStream();
            }
            if (obj instanceof Buffer) {
                this._generator.addContent((Buffer) obj, true);
                HttpConnection.this.commitResponse(true);
                return;
            }
            if (!(obj instanceof InputStream)) {
                throw new IllegalArgumentException("unknown content type?");
            }
            InputStream inputStream = (InputStream) obj;
            try {
                int readFrom = this._generator.getUncheckedBuffer().readFrom(inputStream, this._generator.prepareUncheckedAddContent());
                while (readFrom >= 0) {
                    this._generator.m71481c();
                    HttpConnection.this._out.flush();
                    readFrom = this._generator.getUncheckedBuffer().readFrom(inputStream, this._generator.prepareUncheckedAddContent());
                }
                this._generator.m71481c();
                HttpConnection.this._out.flush();
                if (resource != null) {
                    resource.release();
                } else {
                    inputStream.close();
                }
            } catch (Throwable th) {
                if (resource != null) {
                    resource.release();
                } else {
                    inputStream.close();
                }
                throw th;
            }
        }

        public void sendResponse(Buffer buffer) throws IOException {
            ((HttpGenerator) this._generator).sendResponse(buffer);
        }
    }

    /* loaded from: classes13.dex */
    public class OutputWriter extends AbstractGenerator.OutputWriter {
        public OutputWriter() {
            super(HttpConnection.this._out);
        }
    }

    /* renamed from: org.mortbay.jetty.HttpConnection$a */
    /* loaded from: classes13.dex */
    public class C20377a extends HttpParser.EventHandler {

        /* renamed from: a */
        public String f114604a;

        public C20377a() {
        }

        @Override // org.mortbay.jetty.HttpParser.EventHandler
        public void content(Buffer buffer) throws IOException {
            EndPoint endPoint = HttpConnection.this._endp;
            if (endPoint instanceof SelectChannelEndPoint) {
                ((SelectChannelEndPoint) endPoint).scheduleIdle();
            }
            if (HttpConnection.this.f114601k) {
                HttpConnection.this.f114601k = false;
                HttpConnection.this.handleRequest();
            }
        }

        @Override // org.mortbay.jetty.HttpParser.EventHandler
        public void headerComplete() throws IOException {
            EndPoint endPoint = HttpConnection.this._endp;
            if (endPoint instanceof SelectChannelEndPoint) {
                ((SelectChannelEndPoint) endPoint).scheduleIdle();
            }
            HttpConnection.m71498l(HttpConnection.this);
            HttpConnection httpConnection = HttpConnection.this;
            httpConnection._generator.setVersion(httpConnection.f114598h);
            int i = HttpConnection.this.f114598h;
            if (i == 10) {
                HttpConnection httpConnection2 = HttpConnection.this;
                httpConnection2._generator.setHead(httpConnection2.f114599i);
            } else if (i == 11) {
                HttpConnection httpConnection3 = HttpConnection.this;
                httpConnection3._generator.setHead(httpConnection3.f114599i);
                if (HttpConnection.this._server.getSendDateHeader()) {
                    HttpConnection httpConnection4 = HttpConnection.this;
                    httpConnection4._responseFields.put(HttpHeaders.DATE_BUFFER, httpConnection4._request.getTimeStampBuffer(), HttpConnection.this._request.getTimeStamp());
                }
                if (!HttpConnection.this.f114600j) {
                    HttpConnection.this._generator.setResponse(400, null);
                    HttpConnection.this._responseFields.put(HttpHeaders.CONNECTION_BUFFER, HttpHeaderValues.CLOSE_BUFFER);
                    HttpConnection httpConnection5 = HttpConnection.this;
                    httpConnection5._generator.completeHeader(httpConnection5._responseFields, true);
                    HttpConnection.this._generator.complete();
                    return;
                }
                if (HttpConnection.this.f114597g != HttpConnection.f114589l) {
                    if (HttpConnection.this.f114597g == 6) {
                        if (((HttpParser) HttpConnection.this._parser).getHeaderBuffer() == null || ((HttpParser) HttpConnection.this._parser).getHeaderBuffer().length() < 2) {
                            HttpConnection.this._generator.setResponse(100, null);
                            HttpConnection.this._generator.completeHeader(null, true);
                            HttpConnection.this._generator.complete();
                            HttpConnection.this._generator.reset(false);
                        }
                    } else if (HttpConnection.this.f114597g != 7) {
                        HttpConnection.this._generator.setResponse(417, null);
                        HttpConnection.this._responseFields.put(HttpHeaders.CONNECTION_BUFFER, HttpHeaderValues.CLOSE_BUFFER);
                        HttpConnection httpConnection6 = HttpConnection.this;
                        httpConnection6._generator.completeHeader(httpConnection6._responseFields, true);
                        HttpConnection.this._generator.complete();
                        return;
                    }
                }
            }
            String str = this.f114604a;
            if (str != null) {
                HttpConnection.this._request.setCharacterEncodingUnchecked(str);
            }
            if (((HttpParser) HttpConnection.this._parser).getContentLength() > 0 || ((HttpParser) HttpConnection.this._parser).isChunking()) {
                HttpConnection.this.f114601k = true;
            } else {
                HttpConnection.this.handleRequest();
            }
        }

        @Override // org.mortbay.jetty.HttpParser.EventHandler
        public void messageComplete(long j) throws IOException {
            if (HttpConnection.this.f114601k) {
                HttpConnection.this.f114601k = false;
                HttpConnection.this.handleRequest();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x001b, code lost:
        
            if (r0 != 40) goto L41;
         */
        @Override // org.mortbay.jetty.HttpParser.EventHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void parsedHeader(org.mortbay.io.Buffer r9, org.mortbay.io.Buffer r10) {
            /*
                r8 = this;
                org.mortbay.jetty.HttpHeaders r0 = org.mortbay.jetty.HttpHeaders.CACHE
                int r0 = r0.getOrdinal(r9)
                r1 = 1
                if (r0 == r1) goto L4d
                r2 = 16
                if (r0 == r2) goto L3f
                r2 = 21
                if (r0 == r2) goto L37
                r2 = 24
                if (r0 == r2) goto L26
                r2 = 27
                if (r0 == r2) goto L1f
                r1 = 40
                if (r0 == r1) goto L37
                goto Ld8
            L1f:
                org.mortbay.jetty.HttpConnection r0 = org.mortbay.jetty.HttpConnection.this
                org.mortbay.jetty.HttpConnection.m71488b(r0, r1)
                goto Ld8
            L26:
                org.mortbay.jetty.HttpHeaderValues r0 = org.mortbay.jetty.HttpHeaderValues.CACHE
                org.mortbay.io.Buffer r10 = r0.lookup(r10)
                org.mortbay.jetty.HttpConnection r1 = org.mortbay.jetty.HttpConnection.this
                int r0 = r0.getOrdinal(r10)
                org.mortbay.jetty.HttpConnection.m71490d(r1, r0)
                goto Ld8
            L37:
                org.mortbay.jetty.HttpHeaderValues r0 = org.mortbay.jetty.HttpHeaderValues.CACHE
                org.mortbay.io.Buffer r10 = r0.lookup(r10)
                goto Ld8
            L3f:
                org.mortbay.io.BufferCache r0 = org.mortbay.jetty.MimeTypes.CACHE
                org.mortbay.io.Buffer r10 = r0.lookup(r10)
                java.lang.String r0 = org.mortbay.jetty.MimeTypes.getCharsetFromContentType(r10)
                r8.f114604a = r0
                goto Ld8
            L4d:
                org.mortbay.jetty.HttpHeaderValues r0 = org.mortbay.jetty.HttpHeaderValues.CACHE
                int r0 = r0.getOrdinal(r10)
                r2 = -1
                r3 = 10
                r4 = 0
                r5 = 5
                if (r0 == r2) goto L87
                if (r0 == r1) goto L74
                if (r0 == r5) goto L60
                goto Ld8
            L60:
                org.mortbay.jetty.HttpConnection r0 = org.mortbay.jetty.HttpConnection.this
                int r0 = org.mortbay.jetty.HttpConnection.m71494h(r0)
                if (r0 != r3) goto Ld8
                org.mortbay.jetty.HttpConnection r0 = org.mortbay.jetty.HttpConnection.this
                org.mortbay.jetty.HttpFields r0 = r0._responseFields
                org.mortbay.io.Buffer r1 = org.mortbay.jetty.HttpHeaders.CONNECTION_BUFFER
                org.mortbay.io.Buffer r2 = org.mortbay.jetty.HttpHeaderValues.KEEP_ALIVE_BUFFER
                r0.put(r1, r2)
                goto Ld8
            L74:
                org.mortbay.jetty.HttpConnection r0 = org.mortbay.jetty.HttpConnection.this
                org.mortbay.jetty.HttpFields r0 = r0._responseFields
                org.mortbay.io.Buffer r1 = org.mortbay.jetty.HttpHeaders.CONNECTION_BUFFER
                org.mortbay.io.Buffer r2 = org.mortbay.jetty.HttpHeaderValues.CLOSE_BUFFER
                r0.put(r1, r2)
                org.mortbay.jetty.HttpConnection r0 = org.mortbay.jetty.HttpConnection.this
                org.mortbay.jetty.Generator r0 = r0._generator
                r0.setPersistent(r4)
                goto Ld8
            L87:
                org.mortbay.util.QuotedStringTokenizer r0 = new org.mortbay.util.QuotedStringTokenizer
                java.lang.String r2 = r10.toString()
                java.lang.String r6 = ","
                r0.<init>(r2, r6)
            L92:
                boolean r2 = r0.hasMoreTokens()
                if (r2 == 0) goto Ld8
                org.mortbay.jetty.HttpHeaderValues r2 = org.mortbay.jetty.HttpHeaderValues.CACHE
                java.lang.String r6 = r0.nextToken()
                java.lang.String r6 = r6.trim()
                org.mortbay.io.BufferCache$CachedBuffer r2 = r2.get(r6)
                if (r2 == 0) goto L92
                int r2 = r2.getOrdinal()
                if (r2 == r1) goto Lc5
                if (r2 == r5) goto Lb1
                goto L92
            Lb1:
                org.mortbay.jetty.HttpConnection r2 = org.mortbay.jetty.HttpConnection.this
                int r2 = org.mortbay.jetty.HttpConnection.m71494h(r2)
                if (r2 != r3) goto L92
                org.mortbay.jetty.HttpConnection r2 = org.mortbay.jetty.HttpConnection.this
                org.mortbay.jetty.HttpFields r2 = r2._responseFields
                org.mortbay.io.Buffer r6 = org.mortbay.jetty.HttpHeaders.CONNECTION_BUFFER
                org.mortbay.io.Buffer r7 = org.mortbay.jetty.HttpHeaderValues.KEEP_ALIVE_BUFFER
                r2.add(r6, r7)
                goto L92
            Lc5:
                org.mortbay.jetty.HttpConnection r2 = org.mortbay.jetty.HttpConnection.this
                org.mortbay.jetty.HttpFields r2 = r2._responseFields
                org.mortbay.io.Buffer r6 = org.mortbay.jetty.HttpHeaders.CONNECTION_BUFFER
                org.mortbay.io.Buffer r7 = org.mortbay.jetty.HttpHeaderValues.CLOSE_BUFFER
                r2.add(r6, r7)
                org.mortbay.jetty.HttpConnection r2 = org.mortbay.jetty.HttpConnection.this
                org.mortbay.jetty.Generator r2 = r2._generator
                r2.setPersistent(r4)
                goto L92
            Ld8:
                org.mortbay.jetty.HttpConnection r8 = org.mortbay.jetty.HttpConnection.this
                org.mortbay.jetty.HttpFields r8 = r8._requestFields
                r8.add(r9, r10)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.HttpConnection.C20377a.parsedHeader(org.mortbay.io.Buffer, org.mortbay.io.Buffer):void");
        }

        @Override // org.mortbay.jetty.HttpParser.EventHandler
        public void startRequest(Buffer buffer, Buffer buffer2, Buffer buffer3) throws IOException {
            HttpConnection.this.f114600j = false;
            HttpConnection.this.f114597g = HttpConnection.f114589l;
            HttpConnection.this.f114601k = false;
            this.f114604a = null;
            if (HttpConnection.this._request.getTimeStamp() == 0) {
                HttpConnection.this._request.setTimeStamp(System.currentTimeMillis());
            }
            HttpConnection.this._request.setMethod(buffer.toString());
            try {
                HttpConnection.this._uri.parse(buffer2.array(), buffer2.getIndex(), buffer2.length());
                HttpConnection httpConnection = HttpConnection.this;
                httpConnection._request.setUri(httpConnection._uri);
                if (buffer3 == null) {
                    HttpConnection.this._request.setProtocol("");
                    HttpConnection.this.f114598h = 9;
                } else {
                    BufferCache bufferCache = HttpVersions.CACHE;
                    BufferCache.CachedBuffer cachedBuffer = bufferCache.get(buffer3);
                    HttpConnection.this.f114598h = bufferCache.getOrdinal(cachedBuffer);
                    if (HttpConnection.this.f114598h <= 0) {
                        HttpConnection.this.f114598h = 10;
                    }
                    HttpConnection.this._request.setProtocol(cachedBuffer.toString());
                }
                HttpConnection.this.f114599i = buffer == HttpMethods.HEAD_BUFFER;
            } catch (Exception e) {
                Log.debug(e);
                throw new HttpException(400, null, e);
            }
        }

        @Override // org.mortbay.jetty.HttpParser.EventHandler
        public void startResponse(Buffer buffer, int i, Buffer buffer2) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Bad request!: ");
            stringBuffer.append(buffer);
            stringBuffer.append(" ");
            stringBuffer.append(i);
            stringBuffer.append(" ");
            stringBuffer.append(buffer2);
            Log.debug(stringBuffer.toString());
        }

        public /* synthetic */ C20377a(HttpConnection httpConnection, C20381b c20381b) {
            this();
        }
    }

    public HttpConnection(Connector connector, EndPoint endPoint, Server server) {
        int i = f114589l;
        this.f114597g = i;
        this.f114598h = i;
        this.f114599i = false;
        this.f114600j = false;
        this.f114601k = false;
        String str = URIUtil.__CHARSET;
        this._uri = str == "UTF-8" ? new HttpURI() : new EncodedHttpURI(str);
        this._connector = connector;
        this._endp = endPoint;
        this._parser = new HttpParser(connector, endPoint, new C20377a(this, null), connector.getHeaderBufferSize(), connector.getRequestBufferSize());
        this._requestFields = new HttpFields();
        this._responseFields = new HttpFields();
        this._request = new Request(this);
        this._response = new Response(this);
        HttpGenerator httpGenerator = new HttpGenerator(connector, endPoint, connector.getHeaderBufferSize(), connector.getResponseBufferSize());
        this._generator = httpGenerator;
        httpGenerator.setSendServerVersion(server.getSendServerVersion());
        this._server = server;
    }

    public static HttpConnection getCurrentConnection() {
        return (HttpConnection) f114590m.get();
    }

    /* renamed from: l */
    public static /* synthetic */ int m71498l(HttpConnection httpConnection) {
        int i = httpConnection.f114592b;
        httpConnection.f114592b = i + 1;
        return i;
    }

    public static void setCurrentConnection(HttpConnection httpConnection) {
        f114590m.set(httpConnection);
    }

    public void commitResponse(boolean z) throws IOException {
        if (!this._generator.isCommitted()) {
            this._generator.setResponse(this._response.getStatus(), this._response.getReason());
            try {
                this._generator.completeHeader(this._responseFields, z);
            } catch (IOException e) {
                throw e;
            } catch (RuntimeException e2) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("header full: ");
                stringBuffer.append(e2);
                Log.warn(stringBuffer.toString());
                if (Log.isDebugEnabled()) {
                    Generator generator = this._generator;
                    if (generator instanceof HttpGenerator) {
                        Log.debug(((HttpGenerator) generator)._header.toDetailString(), e2);
                    }
                }
                this._response.reset();
                this._generator.reset(true);
                this._generator.setResponse(500, null);
                this._generator.completeHeader(this._responseFields, true);
                this._generator.complete();
                throw e2;
            }
        }
        if (z) {
            this._generator.complete();
        }
    }

    public void completeResponse() throws IOException {
        if (!this._generator.isCommitted()) {
            this._generator.setResponse(this._response.getStatus(), this._response.getReason());
            try {
                this._generator.completeHeader(this._responseFields, true);
            } catch (IOException e) {
                throw e;
            } catch (RuntimeException e2) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("header full: ");
                stringBuffer.append(e2);
                Log.warn(stringBuffer.toString());
                Log.debug(e2);
                this._response.reset();
                this._generator.reset(true);
                this._generator.setResponse(500, null);
                this._generator.completeHeader(this._responseFields, true);
                this._generator.complete();
                throw e2;
            }
        }
        this._generator.complete();
    }

    public void destroy() {
        synchronized (this) {
            this.f114594d = true;
            if (!this.f114593c) {
                Parser parser = this._parser;
                if (parser != null) {
                    parser.reset(true);
                }
                Generator generator = this._generator;
                if (generator != null) {
                    generator.reset(true);
                }
                HttpFields httpFields = this._requestFields;
                if (httpFields != null) {
                    httpFields.destroy();
                }
                HttpFields httpFields2 = this._responseFields;
                if (httpFields2 != null) {
                    httpFields2.destroy();
                }
            }
        }
    }

    public void flushResponse() throws IOException {
        try {
            commitResponse(false);
            this._generator.flush();
        } catch (IOException e) {
            if (!(e instanceof EofException)) {
                throw new EofException(e);
            }
        }
    }

    public Object getAssociatedObject() {
        return this.f114596f;
    }

    public Connector getConnector() {
        return this._connector;
    }

    public EndPoint getEndPoint() {
        return this._endp;
    }

    public Generator getGenerator() {
        return this._generator;
    }

    public ServletInputStream getInputStream() {
        if (this._in == null) {
            this._in = new HttpParser.Input((HttpParser) this._parser, this._connector.getMaxIdleTime());
        }
        return this._in;
    }

    public ServletOutputStream getOutputStream() {
        if (this._out == null) {
            this._out = new Output();
        }
        return this._out;
    }

    public Parser getParser() {
        return this._parser;
    }

    public PrintWriter getPrintWriter(String str) {
        getOutputStream();
        if (this._writer == null) {
            this._writer = new OutputWriter();
            this._printWriter = new C20381b(this, this._writer);
        }
        this._writer.setCharacterEncoding(str);
        return this._printWriter;
    }

    public Request getRequest() {
        return this._request;
    }

    public HttpFields getRequestFields() {
        return this._requestFields;
    }

    public int getRequests() {
        return this.f114592b;
    }

    public boolean getResolveNames() {
        return this._connector.getResolveNames();
    }

    public Response getResponse() {
        return this._response;
    }

    public HttpFields getResponseFields() {
        return this._responseFields;
    }

    public long getTimeStamp() {
        return this.f114591a;
    }

    @Override // org.mortbay.io.Connection
    public void handle() throws IOException {
        boolean z = true;
        int i = 0;
        while (z) {
            try {
                try {
                    synchronized (this) {
                        if (this.f114593c) {
                            throw new IllegalStateException();
                        }
                        this.f114593c = true;
                    }
                    setCurrentConnection(this);
                    Continuation continuation = this._request.getContinuation();
                    if (continuation == null || !continuation.isPending()) {
                        long parseAvailable = !this._parser.isComplete() ? this._parser.parseAvailable() : 0L;
                        while (this._generator.isCommitted() && !this._generator.isComplete()) {
                            long flush = this._generator.flush();
                            parseAvailable += flush;
                            if (flush <= 0) {
                                break;
                            } else if (this._endp.isBufferingOutput()) {
                                this._endp.flush();
                            }
                        }
                        if (this._endp.isBufferingOutput()) {
                            this._endp.flush();
                            if (!this._endp.isBufferingOutput()) {
                                i = 0;
                            }
                        }
                        if (parseAvailable > 0) {
                            i = 0;
                        } else {
                            int i2 = i + 1;
                            if (i >= 2) {
                                setCurrentConnection(null);
                                boolean z2 = this._parser.isMoreInBuffer() || this._endp.isBufferingInput();
                                synchronized (this) {
                                    this.f114593c = false;
                                    if (this.f114594d) {
                                        destroy();
                                        return;
                                    }
                                    if (this._parser.isComplete() && this._generator.isComplete() && !this._endp.isBufferingOutput()) {
                                        if (!this._generator.isPersistent()) {
                                            this._parser.reset(true);
                                            z2 = false;
                                        }
                                        if (z2) {
                                            reset(false);
                                            if (!this._parser.isMoreInBuffer()) {
                                                this._endp.isBufferingInput();
                                            }
                                        } else {
                                            reset(true);
                                        }
                                    }
                                    Continuation continuation2 = this._request.getContinuation();
                                    if ((continuation2 == null || !continuation2.isPending()) && this._generator.isCommitted() && !this._generator.isComplete()) {
                                        EndPoint endPoint = this._endp;
                                        if (endPoint instanceof SelectChannelEndPoint) {
                                            ((SelectChannelEndPoint) endPoint).setWritable(false);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                            }
                            i = i2;
                        }
                    } else {
                        Log.debug("resume continuation {}", continuation);
                        if (this._request.getMethod() == null) {
                            throw new IllegalStateException();
                        }
                        handleRequest();
                    }
                    setCurrentConnection(null);
                    z = this._parser.isMoreInBuffer() || this._endp.isBufferingInput();
                    synchronized (this) {
                        this.f114593c = false;
                        if (this.f114594d) {
                            destroy();
                            return;
                        }
                        if (this._parser.isComplete() && this._generator.isComplete() && !this._endp.isBufferingOutput()) {
                            if (!this._generator.isPersistent()) {
                                this._parser.reset(true);
                                z = false;
                            }
                            if (z) {
                                reset(false);
                                z = this._parser.isMoreInBuffer() || this._endp.isBufferingInput();
                            } else {
                                reset(true);
                            }
                            i = 0;
                        }
                        Continuation continuation3 = this._request.getContinuation();
                        if (continuation3 != null && continuation3.isPending()) {
                            return;
                        }
                        if (this._generator.isCommitted() && !this._generator.isComplete()) {
                            EndPoint endPoint2 = this._endp;
                            if (endPoint2 instanceof SelectChannelEndPoint) {
                                ((SelectChannelEndPoint) endPoint2).setWritable(false);
                            }
                        }
                    }
                } catch (HttpException e) {
                    if (Log.isDebugEnabled()) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("uri=");
                        stringBuffer.append(this._uri);
                        Log.debug(stringBuffer.toString());
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("fields=");
                        stringBuffer2.append(this._requestFields);
                        Log.debug(stringBuffer2.toString());
                        Log.debug(e);
                    }
                    this._generator.sendError(e.getStatus(), e.getReason(), null, true);
                    this._parser.reset(true);
                    this._endp.close();
                    throw e;
                }
            } catch (Throwable th) {
                setCurrentConnection(null);
                boolean z3 = this._parser.isMoreInBuffer() || this._endp.isBufferingInput();
                synchronized (this) {
                    this.f114593c = false;
                    if (this.f114594d) {
                        destroy();
                        return;
                    }
                    if (this._parser.isComplete() && this._generator.isComplete() && !this._endp.isBufferingOutput()) {
                        if (!this._generator.isPersistent()) {
                            this._parser.reset(true);
                            z3 = false;
                        }
                        if (z3) {
                            reset(false);
                            if (!this._parser.isMoreInBuffer()) {
                                this._endp.isBufferingInput();
                            }
                        } else {
                            reset(true);
                        }
                    }
                    Continuation continuation4 = this._request.getContinuation();
                    if (continuation4 == null || !continuation4.isPending()) {
                        if (this._generator.isCommitted() && !this._generator.isComplete()) {
                            EndPoint endPoint3 = this._endp;
                            if (endPoint3 instanceof SelectChannelEndPoint) {
                                ((SelectChannelEndPoint) endPoint3).setWritable(false);
                            }
                        }
                        throw th;
                    }
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0155, code lost:
    
        if (r11._generator.isPersistent() != false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x019f, code lost:
    
        if (r11._generator.isPersistent() != false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x015e, code lost:
    
        r11._endp.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0157, code lost:
    
        r11._connector.persist(r11._endp);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0216, code lost:
    
        if (r11._generator.isPersistent() != false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01e3, code lost:
    
        if (r11._generator.isPersistent() != false) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x027f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleRequest() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.HttpConnection.handleRequest():void");
    }

    public void include() {
        this.f114595e++;
    }

    public void included() {
        this.f114595e--;
        Output output = this._out;
        if (output != null) {
            output.m71484j();
        }
    }

    public boolean isConfidential(Request request) {
        Connector connector = this._connector;
        if (connector != null) {
            return connector.isConfidential(request);
        }
        return false;
    }

    @Override // org.mortbay.io.Connection
    public boolean isIdle() {
        return this._generator.isIdle() && (this._parser.isIdle() || this.f114601k);
    }

    public boolean isIncluding() {
        return this.f114595e > 0;
    }

    public boolean isIntegral(Request request) {
        Connector connector = this._connector;
        if (connector != null) {
            return connector.isIntegral(request);
        }
        return false;
    }

    public boolean isResponseCommitted() {
        return this._generator.isCommitted();
    }

    public void reset(boolean z) {
        this._parser.reset(z);
        this._requestFields.clear();
        this._request.recycle();
        this._generator.reset(z);
        this._responseFields.clear();
        this._response.recycle();
        this._uri.clear();
    }

    public void setAssociatedObject(Object obj) {
        this.f114596f = obj;
    }

    public HttpConnection(Connector connector, EndPoint endPoint, Server server, Parser parser, Generator generator, Request request) {
        int i = f114589l;
        this.f114597g = i;
        this.f114598h = i;
        this.f114599i = false;
        this.f114600j = false;
        this.f114601k = false;
        String str = URIUtil.__CHARSET;
        this._uri = str == "UTF-8" ? new HttpURI() : new EncodedHttpURI(str);
        this._connector = connector;
        this._endp = endPoint;
        this._parser = parser;
        this._requestFields = new HttpFields();
        this._responseFields = new HttpFields();
        this._request = request;
        this._response = new Response(this);
        this._generator = generator;
        generator.setSendServerVersion(server.getSendServerVersion());
        this._server = server;
    }
}
