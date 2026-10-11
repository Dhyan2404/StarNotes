package org.mortbay.servlet.jetty;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.io.UncheckedPrintWriter;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.servlet.GzipFilter;

/* loaded from: classes13.dex */
public class IncludableGzipFilter extends GzipFilter {

    /* renamed from: e */
    public boolean f115270e = false;

    /* loaded from: classes13.dex */
    public class IncludableGzipStream extends GzipFilter.GzipStream {
        public IncludableGzipStream(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, long j, int i, int i2) throws IOException {
            super(httpServletRequest, httpServletResponse, j, i, i2);
        }

        @Override // org.mortbay.servlet.GzipFilter.GzipStream
        public boolean setContentEncodingGzip() {
            HttpConnection.getCurrentConnection().getResponseFields().put("Content-Encoding", "gzip");
            return true;
        }
    }

    /* loaded from: classes13.dex */
    public class IncludableResponseWrapper extends GzipFilter.GZIPResponseWrapper {
        public IncludableResponseWrapper(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
            super(httpServletRequest, httpServletResponse);
        }

        @Override // org.mortbay.servlet.GzipFilter.GZIPResponseWrapper
        public GzipFilter.GzipStream newGzipStream(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, long j, int i, int i2) throws IOException {
            return new IncludableGzipStream(httpServletRequest, httpServletResponse, j, i, i2);
        }
    }

    @Override // org.mortbay.servlet.GzipFilter, org.mortbay.servlet.UserAgentFilter, javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws ServletException {
        super.init(filterConfig);
        String initParameter = filterConfig.getInitParameter("uncheckedPrintWriter");
        if (initParameter != null) {
            this.f115270e = Boolean.valueOf(initParameter).booleanValue();
        }
    }

    @Override // org.mortbay.servlet.GzipFilter
    public GzipFilter.GZIPResponseWrapper newGZIPResponseWrapper(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        return new IncludableResponseWrapper(httpServletRequest, httpServletResponse);
    }

    @Override // org.mortbay.servlet.GzipFilter
    public PrintWriter newWriter(OutputStream outputStream, String str) throws UnsupportedEncodingException {
        if (this.f115270e) {
            return str == null ? new UncheckedPrintWriter(outputStream) : new UncheckedPrintWriter(new OutputStreamWriter(outputStream, str));
        }
        return super.newWriter(outputStream, str);
    }
}
