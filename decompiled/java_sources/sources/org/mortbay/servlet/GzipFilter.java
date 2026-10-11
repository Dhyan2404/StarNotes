package org.mortbay.servlet;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.zip.GZIPOutputStream;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import org.mortbay.jetty.servlet.Dispatcher;
import org.mortbay.util.ByteArrayOutputStream2;
import org.mortbay.util.StringUtil;

/* loaded from: classes13.dex */
public class GzipFilter extends UserAgentFilter {
    protected Set _excluded;
    protected Set _mimeTypes;
    protected int _bufferSize = 8192;
    protected int _minGzipSize = 0;

    @Override // org.mortbay.servlet.UserAgentFilter, javax.servlet.Filter
    public void destroy() {
    }

    @Override // org.mortbay.servlet.UserAgentFilter, javax.servlet.Filter
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        String header = httpServletRequest.getHeader("accept-encoding");
        Boolean bool = (Boolean) httpServletRequest.getAttribute("GzipFilter");
        if (header == null || header.indexOf("gzip") < 0 || httpServletResponse.containsHeader("Content-Encoding") || (!(bool == null || bool.booleanValue()) || "HEAD".equalsIgnoreCase(httpServletRequest.getMethod()))) {
            super.doFilter(httpServletRequest, httpServletResponse, filterChain);
            return;
        }
        if (this._excluded != null) {
            if (this._excluded.contains(getUserAgent(httpServletRequest))) {
                super.doFilter(httpServletRequest, httpServletResponse, filterChain);
                return;
            }
        }
        GZIPResponseWrapper newGZIPResponseWrapper = newGZIPResponseWrapper(httpServletRequest, httpServletResponse);
        try {
            try {
                super.doFilter(httpServletRequest, newGZIPResponseWrapper, filterChain);
                newGZIPResponseWrapper.m71631b();
            } catch (RuntimeException e) {
                httpServletRequest.setAttribute("GzipFilter", Boolean.FALSE);
                if (!httpServletResponse.isCommitted()) {
                    httpServletResponse.reset();
                }
                throw e;
            }
        } catch (Throwable th) {
            if (httpServletResponse.isCommitted()) {
                newGZIPResponseWrapper.m71631b();
            } else {
                newGZIPResponseWrapper.resetBuffer();
                newGZIPResponseWrapper.m71632c();
            }
            throw th;
        }
    }

    @Override // org.mortbay.servlet.UserAgentFilter, javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws ServletException {
        super.init(filterConfig);
        String initParameter = filterConfig.getInitParameter("bufferSize");
        if (initParameter != null) {
            this._bufferSize = Integer.parseInt(initParameter);
        }
        String initParameter2 = filterConfig.getInitParameter("minGzipSize");
        if (initParameter2 != null) {
            this._minGzipSize = Integer.parseInt(initParameter2);
        }
        String initParameter3 = filterConfig.getInitParameter("mimeTypes");
        if (initParameter3 != null) {
            this._mimeTypes = new HashSet();
            StringTokenizer stringTokenizer = new StringTokenizer(initParameter3, ",", false);
            while (stringTokenizer.hasMoreTokens()) {
                this._mimeTypes.add(stringTokenizer.nextToken());
            }
        }
        String initParameter4 = filterConfig.getInitParameter("excludedAgents");
        if (initParameter4 != null) {
            this._excluded = new HashSet();
            StringTokenizer stringTokenizer2 = new StringTokenizer(initParameter4, ",", false);
            while (stringTokenizer2.hasMoreTokens()) {
                this._excluded.add(stringTokenizer2.nextToken());
            }
        }
    }

    public GZIPResponseWrapper newGZIPResponseWrapper(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        return new GZIPResponseWrapper(httpServletRequest, httpServletResponse);
    }

    public PrintWriter newWriter(OutputStream outputStream, String str) throws UnsupportedEncodingException {
        return str == null ? new PrintWriter(outputStream) : new PrintWriter(new OutputStreamWriter(outputStream, str));
    }

    /* loaded from: classes13.dex */
    public class GZIPResponseWrapper extends HttpServletResponseWrapper {

        /* renamed from: b */
        public HttpServletRequest f115235b;

        /* renamed from: c */
        public boolean f115236c;

        /* renamed from: d */
        public PrintWriter f115237d;

        /* renamed from: e */
        public GzipStream f115238e;

        /* renamed from: f */
        public long f115239f;

        public GZIPResponseWrapper(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
            super(httpServletResponse);
            this.f115239f = -1L;
            this.f115235b = httpServletRequest;
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void addHeader(String str, String str2) {
            if ("content-length".equalsIgnoreCase(str)) {
                long parseLong = Long.parseLong(str2);
                this.f115239f = parseLong;
                GzipStream gzipStream = this.f115238e;
                if (gzipStream != null) {
                    gzipStream.setContentLength(parseLong);
                    return;
                }
                return;
            }
            if ("content-type".equalsIgnoreCase(str)) {
                setContentType(str2);
                return;
            }
            if (!"content-encoding".equalsIgnoreCase(str)) {
                super.addHeader(str, str2);
                return;
            }
            super.addHeader(str, str2);
            if (isCommitted()) {
                return;
            }
            m71632c();
        }

        /* renamed from: b */
        public void m71631b() throws IOException {
            PrintWriter printWriter = this.f115237d;
            if (printWriter != null && !this.f115238e._closed) {
                printWriter.flush();
            }
            GzipStream gzipStream = this.f115238e;
            if (gzipStream != null) {
                gzipStream.finish();
            }
        }

        /* renamed from: c */
        public void m71632c() {
            this.f115236c = true;
            GzipStream gzipStream = this.f115238e;
            if (gzipStream != null) {
                try {
                    gzipStream.doNotGzip();
                } catch (IOException unused) {
                    throw new IllegalStateException();
                }
            }
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public void flushBuffer() throws IOException {
            PrintWriter printWriter = this.f115237d;
            if (printWriter != null) {
                printWriter.flush();
            }
            GzipStream gzipStream = this.f115238e;
            if (gzipStream != null) {
                gzipStream.finish();
            } else {
                getResponse().flushBuffer();
            }
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public ServletOutputStream getOutputStream() throws IOException {
            if (this.f115238e == null) {
                if (getResponse().isCommitted() || this.f115236c) {
                    return getResponse().getOutputStream();
                }
                HttpServletRequest httpServletRequest = this.f115235b;
                HttpServletResponse httpServletResponse = (HttpServletResponse) getResponse();
                long j = this.f115239f;
                GzipFilter gzipFilter = GzipFilter.this;
                this.f115238e = newGzipStream(httpServletRequest, httpServletResponse, j, gzipFilter._bufferSize, gzipFilter._minGzipSize);
            } else if (this.f115237d != null) {
                throw new IllegalStateException("getWriter() called");
            }
            return this.f115238e;
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public PrintWriter getWriter() throws IOException {
            if (this.f115237d == null) {
                if (this.f115238e != null) {
                    throw new IllegalStateException("getOutputStream() called");
                }
                if (getResponse().isCommitted() || this.f115236c) {
                    return getResponse().getWriter();
                }
                HttpServletRequest httpServletRequest = this.f115235b;
                HttpServletResponse httpServletResponse = (HttpServletResponse) getResponse();
                long j = this.f115239f;
                GzipFilter gzipFilter = GzipFilter.this;
                GzipStream newGzipStream = newGzipStream(httpServletRequest, httpServletResponse, j, gzipFilter._bufferSize, gzipFilter._minGzipSize);
                this.f115238e = newGzipStream;
                this.f115237d = GzipFilter.this.newWriter(newGzipStream, getCharacterEncoding());
            }
            return this.f115237d;
        }

        public GzipStream newGzipStream(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, long j, int i, int i2) throws IOException {
            return new GzipStream(httpServletRequest, httpServletResponse, j, i, i2);
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public void reset() {
            super.reset();
            GzipStream gzipStream = this.f115238e;
            if (gzipStream != null) {
                gzipStream.resetBuffer();
            }
            this.f115237d = null;
            this.f115238e = null;
            this.f115236c = false;
            this.f115239f = -1L;
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public void resetBuffer() {
            super.resetBuffer();
            GzipStream gzipStream = this.f115238e;
            if (gzipStream != null) {
                gzipStream.resetBuffer();
            }
            this.f115237d = null;
            this.f115238e = null;
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void sendError(int i, String str) throws IOException {
            resetBuffer();
            super.sendError(i, str);
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void sendRedirect(String str) throws IOException {
            resetBuffer();
            super.sendRedirect(str);
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public void setContentLength(int i) {
            long j = i;
            this.f115239f = j;
            GzipStream gzipStream = this.f115238e;
            if (gzipStream != null) {
                gzipStream.setContentLength(j);
            }
        }

        @Override // javax.servlet.ServletResponseWrapper, javax.servlet.ServletResponse
        public void setContentType(String str) {
            int indexOf;
            super.setContentType(str);
            if (str != null && (indexOf = str.indexOf(AndroidTreeView.f47214k)) > 0) {
                str = str.substring(0, indexOf);
            }
            GzipStream gzipStream = this.f115238e;
            if (gzipStream == null || gzipStream._out == null) {
                if (GzipFilter.this._mimeTypes != null || !"application/gzip".equalsIgnoreCase(str)) {
                    Set set = GzipFilter.this._mimeTypes;
                    if (set == null) {
                        return;
                    }
                    if (str != null && set.contains(StringUtil.asciiToLowerCase(str))) {
                        return;
                    }
                }
                m71632c();
            }
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void setHeader(String str, String str2) {
            if ("content-length".equalsIgnoreCase(str)) {
                long parseLong = Long.parseLong(str2);
                this.f115239f = parseLong;
                GzipStream gzipStream = this.f115238e;
                if (gzipStream != null) {
                    gzipStream.setContentLength(parseLong);
                    return;
                }
                return;
            }
            if ("content-type".equalsIgnoreCase(str)) {
                setContentType(str2);
                return;
            }
            if (!"content-encoding".equalsIgnoreCase(str)) {
                super.setHeader(str, str2);
                return;
            }
            super.setHeader(str, str2);
            if (isCommitted()) {
                return;
            }
            m71632c();
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void setIntHeader(String str, int i) {
            if (!"content-length".equalsIgnoreCase(str)) {
                super.setIntHeader(str, i);
                return;
            }
            long j = i;
            this.f115239f = j;
            GzipStream gzipStream = this.f115238e;
            if (gzipStream != null) {
                gzipStream.setContentLength(j);
            }
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void setStatus(int i, String str) {
            super.setStatus(i, str);
            if (i < 200 || i >= 300) {
                m71632c();
            }
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void sendError(int i) throws IOException {
            resetBuffer();
            super.sendError(i);
        }

        @Override // javax.servlet.http.HttpServletResponseWrapper, javax.servlet.http.HttpServletResponse
        public void setStatus(int i) {
            super.setStatus(i);
            if (i < 200 || i >= 300) {
                m71632c();
            }
        }
    }

    /* loaded from: classes13.dex */
    public static class GzipStream extends ServletOutputStream {
        protected ByteArrayOutputStream2 _bOut;
        protected int _bufferSize;
        protected boolean _closed;
        protected long _contentLength;
        protected GZIPOutputStream _gzOut;
        protected int _minGzipSize;
        protected OutputStream _out;
        protected HttpServletRequest _request;
        protected HttpServletResponse _response;

        public GzipStream(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, long j, int i, int i2) throws IOException {
            this._request = httpServletRequest;
            this._response = httpServletResponse;
            this._contentLength = j;
            this._bufferSize = i;
            this._minGzipSize = i2;
            if (i2 == 0) {
                doGzip();
            }
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this._request.getAttribute(Dispatcher.__INCLUDE_REQUEST_URI) != null) {
                flush();
                return;
            }
            if (this._bOut != null) {
                if (this._contentLength < 0) {
                    this._contentLength = r0.getCount();
                }
                if (this._contentLength < this._minGzipSize) {
                    doNotGzip();
                } else {
                    doGzip();
                }
            } else if (this._out == null) {
                doNotGzip();
            }
            GZIPOutputStream gZIPOutputStream = this._gzOut;
            if (gZIPOutputStream != null) {
                gZIPOutputStream.close();
            } else {
                this._out.close();
            }
            this._closed = true;
        }

        public void doGzip() throws IOException {
            if (this._gzOut == null) {
                if (this._response.isCommitted()) {
                    throw new IllegalStateException();
                }
                if (!setContentEncodingGzip()) {
                    doNotGzip();
                    return;
                }
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(this._response.getOutputStream(), this._bufferSize);
                this._gzOut = gZIPOutputStream;
                this._out = gZIPOutputStream;
                ByteArrayOutputStream2 byteArrayOutputStream2 = this._bOut;
                if (byteArrayOutputStream2 != null) {
                    gZIPOutputStream.write(byteArrayOutputStream2.getBuf(), 0, this._bOut.getCount());
                    this._bOut = null;
                }
            }
        }

        public void doNotGzip() throws IOException {
            if (this._gzOut != null) {
                throw new IllegalStateException();
            }
            if (this._out == null || this._bOut != null) {
                this._out = this._response.getOutputStream();
                long j = this._contentLength;
                if (j >= 0) {
                    if (j < 2147483647L) {
                        this._response.setContentLength((int) j);
                    } else {
                        this._response.setHeader("Content-Length", Long.toString(j));
                    }
                }
                ByteArrayOutputStream2 byteArrayOutputStream2 = this._bOut;
                if (byteArrayOutputStream2 != null) {
                    this._out.write(byteArrayOutputStream2.getBuf(), 0, this._bOut.getCount());
                }
                this._bOut = null;
            }
        }

        /* renamed from: f */
        public final void m71633f(int i) throws IOException {
            if (this._closed) {
                throw new IOException("CLOSED");
            }
            if (this._out != null) {
                if (this._bOut != null) {
                    if (!this._response.isCommitted()) {
                        long j = this._contentLength;
                        if (j < 0 || j >= this._minGzipSize) {
                            if (i >= this._bOut.getBuf().length - this._bOut.getCount()) {
                                doGzip();
                                return;
                            }
                            return;
                        }
                    }
                    doNotGzip();
                    return;
                }
                return;
            }
            if (!this._response.isCommitted()) {
                long j2 = this._contentLength;
                if (j2 < 0 || j2 >= this._minGzipSize) {
                    if (i > this._minGzipSize) {
                        doGzip();
                        return;
                    }
                    ByteArrayOutputStream2 byteArrayOutputStream2 = new ByteArrayOutputStream2(this._bufferSize);
                    this._bOut = byteArrayOutputStream2;
                    this._out = byteArrayOutputStream2;
                    return;
                }
            }
            doNotGzip();
        }

        public void finish() throws IOException {
            if (this._closed) {
                return;
            }
            if (this._out == null || this._bOut != null) {
                long j = this._contentLength;
                if (j <= 0 || j >= this._minGzipSize) {
                    doGzip();
                } else {
                    doNotGzip();
                }
            }
            GZIPOutputStream gZIPOutputStream = this._gzOut;
            if (gZIPOutputStream == null || this._closed) {
                return;
            }
            this._closed = true;
            gZIPOutputStream.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            if (this._out == null || this._bOut != null) {
                long j = this._contentLength;
                if (j <= 0 || j >= this._minGzipSize) {
                    doGzip();
                } else {
                    doNotGzip();
                }
            }
            this._out.flush();
        }

        public void resetBuffer() {
            this._closed = false;
            this._out = null;
            this._bOut = null;
            if (this._gzOut != null && !this._response.isCommitted()) {
                this._response.setHeader("Content-Encoding", null);
            }
            this._gzOut = null;
        }

        public boolean setContentEncodingGzip() {
            this._response.setHeader("Content-Encoding", "gzip");
            return this._response.containsHeader("Content-Encoding");
        }

        public void setContentLength(long j) {
            this._contentLength = j;
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            m71633f(1);
            this._out.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            m71633f(bArr.length);
            this._out.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            m71633f(i2);
            this._out.write(bArr, i, i2);
        }
    }
}
