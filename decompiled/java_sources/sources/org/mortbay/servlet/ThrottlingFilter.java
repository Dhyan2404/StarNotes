package org.mortbay.servlet;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.log.Log;
import org.mortbay.util.ajax.Continuation;

/* loaded from: classes13.dex */
public class ThrottlingFilter implements Filter {

    /* renamed from: a */
    public int f115255a;

    /* renamed from: c */
    public long f115257c;

    /* renamed from: d */
    public long f115258d;

    /* renamed from: b */
    public int f115256b = 0;

    /* renamed from: e */
    public final Object f115259e = new Object();

    /* renamed from: f */
    public final List f115260f = new LinkedList();

    /* renamed from: a */
    public final boolean m71637a() {
        synchronized (this.f115259e) {
            int i = this.f115256b;
            if (i >= this.f115255a) {
                return false;
            }
            this.f115256b = i + 1;
            return true;
        }
    }

    /* renamed from: b */
    public final void m71638b(Continuation continuation) {
        this.f115260f.remove(continuation);
        continuation.reset();
    }

    /* renamed from: c */
    public final Continuation m71639c(ServletRequest servletRequest) {
        return (Continuation) servletRequest.getAttribute("org.mortbay.jetty.ajax.Continuation");
    }

    /* renamed from: d */
    public final int m71640d(FilterConfig filterConfig, String str, int i) throws ServletException {
        String initParameter = filterConfig.getInitParameter(str);
        if (initParameter == null) {
            return i;
        }
        try {
            return Integer.parseInt(initParameter);
        } catch (NumberFormatException unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Parameter ");
            stringBuffer.append(str);
            stringBuffer.append(" must be a number (was ");
            stringBuffer.append(initParameter);
            stringBuffer.append(" instead)");
            throw new ServletException(stringBuffer.toString());
        }
    }

    @Override // javax.servlet.Filter
    public void destroy() {
        this.f115260f.clear();
    }

    @Override // javax.servlet.Filter
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        doFilter((HttpServletRequest) servletRequest, (HttpServletResponse) servletResponse, filterChain);
    }

    /* renamed from: e */
    public final void m71641e() {
        synchronized (this.f115260f) {
            if (this.f115260f.isEmpty()) {
                return;
            }
            Continuation continuation = (Continuation) this.f115260f.remove(0);
            Log.debug("Resuming continuation {}", continuation, null);
            continuation.resume();
        }
    }

    /* renamed from: f */
    public final boolean m71642f(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Continuation continuation) throws IOException, ServletException {
        synchronized (this.f115260f) {
            if (this.f115260f.size() >= this.f115258d) {
                Log.debug("Queue is full, rejecting request {}", httpServletRequest.getRequestURI(), null);
                return false;
            }
            Log.debug("Queuing request {} / {}", httpServletRequest.getRequestURI(), continuation);
            this.f115260f.add(continuation);
            continuation.suspend(this.f115257c);
            Log.debug("Resuming blocking continuation for request {}", httpServletRequest.getRequestURI(), null);
            return true;
        }
    }

    /* renamed from: g */
    public final void m71643g() {
        synchronized (this.f115259e) {
            this.f115256b--;
        }
    }

    @Override // javax.servlet.Filter
    public void init(FilterConfig filterConfig) throws ServletException {
        this.f115255a = m71640d(filterConfig, "maximum", 10);
        this.f115257c = m71640d(filterConfig, BreakpointSQLiteHelper.f39283i, 5000);
        this.f115258d = m71640d(filterConfig, "queue", 500);
        if (this.f115257c == -1) {
            this.f115257c = 2147483647L;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Config{maximum:");
        stringBuffer.append(this.f115255a);
        stringBuffer.append(", block:");
        stringBuffer.append(this.f115257c);
        stringBuffer.append(", queue:");
        stringBuffer.append(this.f115258d);
        stringBuffer.append("}");
        Log.debug(stringBuffer.toString(), null, null);
    }

    public void rejectRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Too many active connections to resource ");
        stringBuffer.append(httpServletRequest.getRequestURI());
        httpServletResponse.sendError(503, stringBuffer.toString());
    }

    public void doFilter(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, FilterChain filterChain) throws IOException, ServletException {
        boolean z;
        Continuation m71639c = m71639c(httpServletRequest);
        try {
            z = m71637a();
            if (!z) {
                try {
                    if (m71639c.isPending()) {
                        Log.debug("Request {} / {} was already queued, rejecting", httpServletRequest.getRequestURI(), m71639c);
                        m71638b(m71639c);
                        m71639c.reset();
                    } else if (m71642f(httpServletRequest, httpServletResponse, m71639c)) {
                        z = m71637a();
                    }
                } catch (Throwable th) {
                    th = th;
                    if (z) {
                        m71643g();
                        m71641e();
                    }
                    throw th;
                }
            }
            if (z) {
                filterChain.doFilter(httpServletRequest, httpServletResponse);
            } else {
                rejectRequest(httpServletRequest, httpServletResponse);
            }
            if (z) {
                m71643g();
                m71641e();
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
        }
    }
}
