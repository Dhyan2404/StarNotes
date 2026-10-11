package org.mortbay.jetty.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.util.Enumeration;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.UnavailableException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.io.Buffer;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.WriterOutputStream;
import org.mortbay.io.nio.DirectNIOBuffer;
import org.mortbay.io.nio.IndirectNIOBuffer;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.HttpContent;
import org.mortbay.jetty.HttpFields;
import org.mortbay.jetty.HttpHeaderValues;
import org.mortbay.jetty.HttpHeaders;
import org.mortbay.jetty.InclusiveByteRange;
import org.mortbay.jetty.MimeTypes;
import org.mortbay.jetty.ResourceCache;
import org.mortbay.jetty.Response;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.nio.NIOConnector;
import org.mortbay.jetty.servlet.PathMap;
import org.mortbay.log.Log;
import org.mortbay.resource.FileResource;
import org.mortbay.resource.Resource;
import org.mortbay.resource.ResourceFactory;
import org.mortbay.util.C20429IO;
import org.mortbay.util.MultiPartOutputStream;
import org.mortbay.util.TypeUtil;
import org.mortbay.util.URIUtil;

/* loaded from: classes13.dex */
public class DefaultServlet extends HttpServlet implements ResourceFactory {
    static /* synthetic */ Class class$org$mortbay$jetty$servlet$ServletHandler;
    private ResourceCache _bioCache;
    ByteArrayBuffer _cacheControl;
    private ContextHandler.SContext _context;
    private ServletHolder _defaultHolder;
    private MimeTypes _mimeTypes;
    private NIOResourceCache _nioCache;
    private Resource _resourceBase;
    private ServletHandler _servletHandler;
    private String[] _welcomes;
    private boolean _acceptRanges = true;
    private boolean _dirAllowed = true;
    private boolean _welcomeServlets = false;
    private boolean _redirectWelcome = false;
    private boolean _gzip = true;
    private boolean _aliases = false;
    private boolean _useFileMappedBuffer = false;

    /* loaded from: classes13.dex */
    public class NIOResourceCache extends ResourceCache {
        public NIOResourceCache(MimeTypes mimeTypes) {
            super(mimeTypes);
        }

        @Override // org.mortbay.jetty.ResourceCache
        public void fill(ResourceCache.Content content) throws IOException {
            Buffer indirectNIOBuffer;
            Buffer buffer;
            Resource resource = content.getResource();
            long length = resource.length();
            if (!DefaultServlet.this._useFileMappedBuffer || resource.getFile() == null) {
                InputStream inputStream = resource.getInputStream();
                try {
                    indirectNIOBuffer = ((NIOConnector) HttpConnection.getCurrentConnection().getConnector()).getUseDirectBuffers() ? new DirectNIOBuffer((int) length) : new IndirectNIOBuffer((int) length);
                } catch (OutOfMemoryError e) {
                    Log.warn(e.toString());
                    Log.debug(e);
                    indirectNIOBuffer = new IndirectNIOBuffer((int) length);
                }
                indirectNIOBuffer.readFrom(inputStream, (int) length);
                inputStream.close();
                buffer = indirectNIOBuffer;
            } else {
                buffer = new DirectNIOBuffer(resource.getFile());
            }
            content.setBuffer(buffer);
        }
    }

    /* renamed from: org.mortbay.jetty.servlet.DefaultServlet$a */
    /* loaded from: classes13.dex */
    public class C20408a implements HttpContent {

        /* renamed from: a */
        public Resource f115106a;

        public C20408a(Resource resource) {
            this.f115106a = resource;
        }

        @Override // org.mortbay.jetty.HttpContent
        public Buffer getBuffer() {
            return null;
        }

        @Override // org.mortbay.jetty.HttpContent
        public long getContentLength() {
            return this.f115106a.length();
        }

        @Override // org.mortbay.jetty.HttpContent
        public Buffer getContentType() {
            return DefaultServlet.this._mimeTypes.getMimeByExtension(this.f115106a.toString());
        }

        @Override // org.mortbay.jetty.HttpContent
        public InputStream getInputStream() throws IOException {
            return this.f115106a.getInputStream();
        }

        @Override // org.mortbay.jetty.HttpContent
        public Buffer getLastModified() {
            return null;
        }

        @Override // org.mortbay.jetty.HttpContent
        public Resource getResource() {
            return this.f115106a;
        }

        @Override // org.mortbay.jetty.HttpContent
        public void release() {
            this.f115106a.release();
            this.f115106a = null;
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    private boolean getInitBoolean(String str, boolean z) {
        String initParameter = getInitParameter(str);
        return (initParameter == null || initParameter.length() == 0) ? z : initParameter.startsWith("t") || initParameter.startsWith("T") || initParameter.startsWith("y") || initParameter.startsWith("Y") || initParameter.startsWith("1");
    }

    private int getInitInt(String str, int i) {
        String initParameter = getInitParameter(str);
        if (initParameter == null) {
            initParameter = getInitParameter(str);
        }
        return (initParameter == null || initParameter.length() <= 0) ? i : Integer.parseInt(initParameter);
    }

    private String getWelcomeFile(String str) throws MalformedURLException, IOException {
        PathMap.Entry holderEntry;
        String str2 = null;
        if (this._welcomes == null) {
            return null;
        }
        int i = 0;
        while (true) {
            String[] strArr = this._welcomes;
            if (i >= strArr.length) {
                return str2;
            }
            String addPaths = URIUtil.addPaths(str, strArr[i]);
            Resource resource = getResource(addPaths);
            if (resource != null && resource.exists()) {
                return this._welcomes[i];
            }
            if (this._welcomeServlets && str2 == null && (holderEntry = this._servletHandler.getHolderEntry(addPaths)) != null && holderEntry.getValue() != this._defaultHolder) {
                str2 = addPaths;
            }
            i++;
        }
    }

    @Override // javax.servlet.GenericServlet, javax.servlet.Servlet
    public void destroy() {
        try {
            try {
                NIOResourceCache nIOResourceCache = this._nioCache;
                if (nIOResourceCache != null) {
                    nIOResourceCache.stop();
                }
                try {
                    try {
                        ResourceCache resourceCache = this._bioCache;
                        if (resourceCache != null) {
                            resourceCache.stop();
                        }
                    } finally {
                    }
                } catch (Exception e) {
                    Log.warn(Log.EXCEPTION, (Throwable) e);
                }
            } catch (Exception e2) {
                Log.warn(Log.EXCEPTION, (Throwable) e2);
                try {
                    try {
                        ResourceCache resourceCache2 = this._bioCache;
                        if (resourceCache2 != null) {
                            resourceCache2.stop();
                        }
                    } catch (Exception e3) {
                        Log.warn(Log.EXCEPTION, (Throwable) e3);
                    }
                } finally {
                }
            }
        } catch (Throwable th) {
            try {
                try {
                    ResourceCache resourceCache3 = this._bioCache;
                    if (resourceCache3 != null) {
                        resourceCache3.stop();
                    }
                } finally {
                }
            } catch (Exception e4) {
                Log.warn(Log.EXCEPTION, (Throwable) e4);
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:170:0x00df, code lost:
    
        if (r3.isDirectory() != false) goto L57;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x00d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0117 A[Catch: all -> 0x02b8, IllegalArgumentException -> 0x02ba, TryCatch #8 {IllegalArgumentException -> 0x02ba, all -> 0x02b8, blocks: (B:34:0x0111, B:36:0x0117, B:39:0x012b, B:42:0x0137, B:45:0x013f, B:49:0x0149, B:51:0x014d, B:53:0x0153, B:55:0x0162, B:57:0x0168, B:58:0x017a, B:68:0x018f, B:107:0x01cf, B:109:0x01d5, B:112:0x01df, B:114:0x01e5, B:116:0x01e9, B:118:0x01f2, B:120:0x01f8, B:121:0x021d, B:122:0x0230, B:124:0x0236, B:126:0x023c, B:127:0x0241, B:128:0x024a, B:145:0x026f, B:147:0x027d, B:148:0x0284, B:150:0x028a, B:152:0x0290, B:153:0x0298, B:154:0x0281, B:155:0x02a7), top: B:33:0x0111 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02c8 A[Catch: all -> 0x02dd, TRY_LEAVE, TryCatch #11 {all -> 0x02dd, blocks: (B:85:0x02bd, B:87:0x02c8), top: B:84:0x02bd }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02d7  */
    @Override // javax.servlet.http.HttpServlet
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doGet(javax.servlet.http.HttpServletRequest r18, javax.servlet.http.HttpServletResponse r19) throws javax.servlet.ServletException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 748
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.servlet.DefaultServlet.doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse):void");
    }

    @Override // javax.servlet.http.HttpServlet
    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        doGet(httpServletRequest, httpServletResponse);
    }

    @Override // javax.servlet.http.HttpServlet
    public void doTrace(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        httpServletResponse.sendError(405);
    }

    @Override // javax.servlet.GenericServlet, javax.servlet.ServletConfig
    public String getInitParameter(String str) {
        ServletContext servletContext = getServletContext();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("org.mortbay.jetty.servlet.Default.");
        stringBuffer.append(str);
        String initParameter = servletContext.getInitParameter(stringBuffer.toString());
        return initParameter == null ? super.getInitParameter(str) : initParameter;
    }

    @Override // org.mortbay.resource.ResourceFactory
    public Resource getResource(String str) {
        Resource addPath;
        Resource resource = this._resourceBase;
        Resource resource2 = null;
        if (resource == null) {
            return null;
        }
        try {
            addPath = resource.addPath(str);
        } catch (IOException e) {
            e = e;
        }
        try {
            if (this._aliases || addPath.getAlias() == null) {
                if (!Log.isDebugEnabled()) {
                    return addPath;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("RESOURCE=");
                stringBuffer.append(addPath);
                Log.debug(stringBuffer.toString());
                return addPath;
            }
            if (addPath.exists()) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Aliased resource: ");
                stringBuffer2.append(addPath);
                stringBuffer2.append("==");
                stringBuffer2.append(addPath.getAlias());
                Log.warn(stringBuffer2.toString());
            }
            return null;
        } catch (IOException e2) {
            e = e2;
            resource2 = addPath;
            Log.ignore(e);
            return resource2;
        }
    }

    @Override // javax.servlet.GenericServlet
    public void init() throws UnavailableException {
        ServletContext servletContext = getServletContext();
        ContextHandler.SContext sContext = (ContextHandler.SContext) servletContext;
        this._context = sContext;
        this._mimeTypes = sContext.getContextHandler().getMimeTypes();
        String[] welcomeFiles = this._context.getContextHandler().getWelcomeFiles();
        this._welcomes = welcomeFiles;
        if (welcomeFiles == null) {
            this._welcomes = new String[]{"index.jsp", "index.html"};
        }
        this._acceptRanges = getInitBoolean("acceptRanges", this._acceptRanges);
        this._dirAllowed = getInitBoolean("dirAllowed", this._dirAllowed);
        this._welcomeServlets = getInitBoolean("welcomeServlets", this._welcomeServlets);
        this._redirectWelcome = getInitBoolean("redirectWelcome", this._redirectWelcome);
        this._gzip = getInitBoolean("gzip", this._gzip);
        boolean initBoolean = getInitBoolean("aliases", this._aliases);
        this._aliases = initBoolean;
        if (!initBoolean && !FileResource.getCheckAliases()) {
            throw new IllegalStateException("Alias checking disabled");
        }
        if (this._aliases) {
            servletContext.log("Aliases are enabled");
        }
        this._useFileMappedBuffer = getInitBoolean("useFileMappedBuffer", this._useFileMappedBuffer);
        String initParameter = getInitParameter("relativeResourceBase");
        if (initParameter != null) {
            try {
                Resource resource = this._context.getContextHandler().getResource("/");
                if (resource == null) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("No base resourceBase for relativeResourceBase in");
                    stringBuffer.append(this._context.getContextPath());
                    throw new UnavailableException(stringBuffer.toString());
                }
                this._resourceBase = resource.addPath(initParameter);
            } catch (Exception e) {
                Log.warn(Log.EXCEPTION, (Throwable) e);
                throw new UnavailableException(e.toString());
            }
        }
        String initParameter2 = getInitParameter("resourceBase");
        if (initParameter != null && initParameter2 != null) {
            throw new UnavailableException("resourceBase & relativeResourceBase");
        }
        if (initParameter2 != null) {
            try {
                this._resourceBase = Resource.newResource(initParameter2);
            } catch (Exception e2) {
                Log.warn(Log.EXCEPTION, (Throwable) e2);
                throw new UnavailableException(e2.toString());
            }
        }
        String initParameter3 = getInitParameter("cacheControl");
        if (initParameter3 != null) {
            this._cacheControl = new ByteArrayBuffer(initParameter3);
        }
        try {
            if (this._resourceBase == null) {
                this._resourceBase = this._context.getContextHandler().getResource("/");
            }
            String initParameter4 = getInitParameter("cacheType");
            int initInt = getInitInt("maxCacheSize", -2);
            int initInt2 = getInitInt("maxCachedFileSize", -2);
            int initInt3 = getInitInt("maxCachedFiles", -2);
            if ((initParameter4 == null || "nio".equals(initParameter4) || "both".equals(initParameter4)) && (initInt == -2 || initInt > 0)) {
                NIOResourceCache nIOResourceCache = new NIOResourceCache(this._mimeTypes);
                this._nioCache = nIOResourceCache;
                if (initInt > 0) {
                    nIOResourceCache.setMaxCacheSize(initInt);
                }
                if (initInt2 >= -1) {
                    this._nioCache.setMaxCachedFileSize(initInt2);
                }
                if (initInt3 >= -1) {
                    this._nioCache.setMaxCachedFiles(initInt3);
                }
                this._nioCache.start();
            }
            if (("bio".equals(initParameter4) || "both".equals(initParameter4)) && (initInt == -2 || initInt > 0)) {
                ResourceCache resourceCache = new ResourceCache(this._mimeTypes);
                this._bioCache = resourceCache;
                if (initInt > 0) {
                    resourceCache.setMaxCacheSize(initInt);
                }
                if (initInt2 >= -1) {
                    this._bioCache.setMaxCachedFileSize(initInt2);
                }
                if (initInt3 >= -1) {
                    this._bioCache.setMaxCachedFiles(initInt3);
                }
                this._bioCache.start();
            }
            if (this._nioCache == null) {
                this._bioCache = null;
            }
            ContextHandler contextHandler = this._context.getContextHandler();
            Class cls = class$org$mortbay$jetty$servlet$ServletHandler;
            if (cls == null) {
                cls = class$("org.mortbay.jetty.servlet.ServletHandler");
                class$org$mortbay$jetty$servlet$ServletHandler = cls;
            }
            ServletHandler servletHandler = (ServletHandler) contextHandler.getChildHandlerByClass(cls);
            this._servletHandler = servletHandler;
            ServletHolder[] servlets = servletHandler.getServlets();
            int length = servlets.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    break;
                }
                if (servlets[i].getServletInstance() == this) {
                    this._defaultHolder = servlets[i];
                }
                length = i;
            }
            if (Log.isDebugEnabled()) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("resource base = ");
                stringBuffer2.append(this._resourceBase);
                Log.debug(stringBuffer2.toString());
            }
        } catch (Exception e3) {
            Log.warn(Log.EXCEPTION, (Throwable) e3);
            throw new UnavailableException(e3.toString());
        }
    }

    public boolean passConditionalHeaders(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Resource resource, HttpContent httpContent) throws IOException {
        Buffer lastModified;
        try {
            if (httpServletRequest.getMethod().equals("HEAD")) {
                return true;
            }
            String header = httpServletRequest.getHeader("If-Modified-Since");
            if (header != null) {
                if (httpContent != null && (lastModified = httpContent.getLastModified()) != null && header.equals(lastModified.toString())) {
                    httpServletResponse.reset();
                    httpServletResponse.setStatus(304);
                    httpServletResponse.flushBuffer();
                    return false;
                }
                long dateHeader = httpServletRequest.getDateHeader("If-Modified-Since");
                if (dateHeader != -1 && resource.lastModified() / 1000 <= dateHeader / 1000) {
                    httpServletResponse.reset();
                    httpServletResponse.setStatus(304);
                    httpServletResponse.flushBuffer();
                    return false;
                }
            }
            long dateHeader2 = httpServletRequest.getDateHeader("If-Unmodified-Since");
            if (dateHeader2 == -1 || resource.lastModified() / 1000 <= dateHeader2 / 1000) {
                return true;
            }
            httpServletResponse.sendError(412);
            return false;
        } catch (IllegalArgumentException e) {
            if (!httpServletResponse.isCommitted()) {
                httpServletResponse.sendError(400, e.getMessage());
            }
            throw e;
        }
    }

    public void sendData(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, boolean z, Resource resource, HttpContent httpContent, Enumeration enumeration) throws IOException {
        OutputStream writerOutputStream;
        long length = httpContent == null ? resource.length() : httpContent.getContentLength();
        try {
            writerOutputStream = httpServletResponse.getOutputStream();
        } catch (IllegalStateException unused) {
            writerOutputStream = new WriterOutputStream(httpServletResponse.getWriter());
        }
        if (enumeration == null || !enumeration.hasMoreElements() || length < 0) {
            if (z) {
                resource.writeTo(writerOutputStream, 0L, length);
                return;
            }
            if (!(writerOutputStream instanceof HttpConnection.Output)) {
                writeHeaders(httpServletResponse, httpContent, length);
                resource.writeTo(writerOutputStream, 0L, length);
                return;
            } else if (httpServletResponse instanceof Response) {
                writeOptionHeaders(((Response) httpServletResponse).getHttpFields());
                ((HttpConnection.Output) writerOutputStream).sendContent(httpContent);
                return;
            } else if (httpContent.getBuffer() != null) {
                writeHeaders(httpServletResponse, httpContent, length);
                ((HttpConnection.Output) writerOutputStream).sendContent(httpContent.getBuffer());
                return;
            } else {
                writeHeaders(httpServletResponse, httpContent, length);
                resource.writeTo(writerOutputStream, 0L, length);
                return;
            }
        }
        List satisfiableRanges = InclusiveByteRange.satisfiableRanges(enumeration, length);
        if (satisfiableRanges == null || satisfiableRanges.size() == 0) {
            writeHeaders(httpServletResponse, httpContent, length);
            httpServletResponse.setStatus(416);
            httpServletResponse.setHeader("Content-Range", InclusiveByteRange.to416HeaderRangeString(length));
            resource.writeTo(writerOutputStream, 0L, length);
            return;
        }
        if (satisfiableRanges.size() == 1) {
            InclusiveByteRange inclusiveByteRange = (InclusiveByteRange) satisfiableRanges.get(0);
            long size = inclusiveByteRange.getSize(length);
            writeHeaders(httpServletResponse, httpContent, size);
            httpServletResponse.setStatus(206);
            httpServletResponse.setHeader("Content-Range", inclusiveByteRange.toHeaderRangeString(length));
            resource.writeTo(writerOutputStream, inclusiveByteRange.getFirst(length), size);
            return;
        }
        writeHeaders(httpServletResponse, httpContent, -1L);
        String obj = httpContent.getContentType().toString();
        MultiPartOutputStream multiPartOutputStream = new MultiPartOutputStream(writerOutputStream);
        httpServletResponse.setStatus(206);
        String str = httpServletRequest.getHeader(HttpHeaders.REQUEST_RANGE) != null ? "multipart/x-byteranges; boundary=" : "multipart/byteranges; boundary=";
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(multiPartOutputStream.getBoundary());
        httpServletResponse.setContentType(stringBuffer.toString());
        InputStream inputStream = resource.getInputStream();
        String[] strArr = new String[satisfiableRanges.size()];
        int i = 0;
        int i2 = 0;
        while (i < satisfiableRanges.size()) {
            InclusiveByteRange inclusiveByteRange2 = (InclusiveByteRange) satisfiableRanges.get(i);
            strArr[i] = inclusiveByteRange2.toHeaderRangeString(length);
            i2 = (int) (i2 + (i > 0 ? 2 : 0) + 2 + multiPartOutputStream.getBoundary().length() + 2 + 12 + 2 + obj.length() + 2 + 13 + 2 + strArr[i].length() + 2 + 2 + (inclusiveByteRange2.getLast(length) - inclusiveByteRange2.getFirst(length)) + 1);
            i++;
        }
        httpServletResponse.setContentLength(i2 + multiPartOutputStream.getBoundary().length() + 4 + 2 + 2);
        long j = 0;
        for (int i3 = 0; i3 < satisfiableRanges.size(); i3++) {
            InclusiveByteRange inclusiveByteRange3 = (InclusiveByteRange) satisfiableRanges.get(i3);
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Content-Range: ");
            stringBuffer2.append(strArr[i3]);
            multiPartOutputStream.startPart(obj, new String[]{stringBuffer2.toString()});
            long first = inclusiveByteRange3.getFirst(length);
            long size2 = inclusiveByteRange3.getSize(length);
            if (inputStream != null) {
                if (first < j) {
                    inputStream.close();
                    inputStream = resource.getInputStream();
                    j = 0;
                }
                if (j < first) {
                    inputStream.skip(first - j);
                } else {
                    first = j;
                }
                C20429IO.copy(inputStream, multiPartOutputStream, size2);
                j = first + size2;
            } else {
                resource.writeTo(multiPartOutputStream, first, size2);
            }
        }
        if (inputStream != null) {
            inputStream.close();
        }
        multiPartOutputStream.close();
    }

    public void sendDirectory(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Resource resource, boolean z) throws IOException {
        if (!this._dirAllowed) {
            httpServletResponse.sendError(403);
            return;
        }
        String listHTML = resource.getListHTML(URIUtil.addPaths(httpServletRequest.getRequestURI(), "/"), z);
        if (listHTML == null) {
            httpServletResponse.sendError(403, "No directory");
            return;
        }
        byte[] bytes = listHTML.getBytes("UTF-8");
        httpServletResponse.setContentType("text/html; charset=UTF-8");
        httpServletResponse.setContentLength(bytes.length);
        httpServletResponse.getOutputStream().write(bytes);
    }

    public void writeHeaders(HttpServletResponse httpServletResponse, HttpContent httpContent, long j) throws IOException {
        if (httpContent.getContentType() != null && httpServletResponse.getContentType() == null) {
            httpServletResponse.setContentType(httpContent.getContentType().toString());
        }
        if (!(httpServletResponse instanceof Response)) {
            long lastModified = httpContent.getResource().lastModified();
            if (lastModified >= 0) {
                httpServletResponse.setDateHeader("Last-Modified", lastModified);
            }
            if (j != -1) {
                if (j < 2147483647L) {
                    httpServletResponse.setContentLength((int) j);
                } else {
                    httpServletResponse.setHeader("Content-Length", TypeUtil.toString(j));
                }
            }
            writeOptionHeaders(httpServletResponse);
            return;
        }
        Response response = (Response) httpServletResponse;
        HttpFields httpFields = response.getHttpFields();
        if (httpContent.getLastModified() != null) {
            httpFields.put(HttpHeaders.LAST_MODIFIED_BUFFER, httpContent.getLastModified(), httpContent.getResource().lastModified());
        } else if (httpContent.getResource() != null) {
            long lastModified2 = httpContent.getResource().lastModified();
            if (lastModified2 != -1) {
                httpFields.putDateField(HttpHeaders.LAST_MODIFIED_BUFFER, lastModified2);
            }
        }
        if (j != -1) {
            response.setLongContentLength(j);
        }
        writeOptionHeaders(httpFields);
    }

    public void writeOptionHeaders(HttpFields httpFields) throws IOException {
        if (this._acceptRanges) {
            httpFields.put(HttpHeaders.ACCEPT_RANGES_BUFFER, HttpHeaderValues.BYTES_BUFFER);
        }
        ByteArrayBuffer byteArrayBuffer = this._cacheControl;
        if (byteArrayBuffer != null) {
            httpFields.put(HttpHeaders.CACHE_CONTROL_BUFFER, byteArrayBuffer);
        }
    }

    public void writeOptionHeaders(HttpServletResponse httpServletResponse) throws IOException {
        if (this._acceptRanges) {
            httpServletResponse.setHeader("Accept-Ranges", HttpHeaderValues.BYTES);
        }
        ByteArrayBuffer byteArrayBuffer = this._cacheControl;
        if (byteArrayBuffer != null) {
            httpServletResponse.setHeader("Cache-Control", byteArrayBuffer.toString());
        }
    }
}
