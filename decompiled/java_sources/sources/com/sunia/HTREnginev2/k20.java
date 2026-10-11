package com.sunia.HTREnginev2;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSession;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.impl.conn.ConnectionShutdownException;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes12.dex */
public class k20 implements ManagedHttpClientConnection, HttpContext {

    /* renamed from: e */
    public volatile j20 f74926e;

    public k20(j20 j20Var) {
        this.f74926e = j20Var;
    }

    /* renamed from: I */
    public static j20 m55114I(HttpClientConnection httpClientConnection) {
        j20 m55118H = m55115M(httpClientConnection).m55118H();
        if (m55118H != null) {
            return m55118H;
        }
        throw new ConnectionShutdownException();
    }

    /* renamed from: M */
    public static k20 m55115M(HttpClientConnection httpClientConnection) {
        if (k20.class.isInstance(httpClientConnection)) {
            return (k20) k20.class.cast(httpClientConnection);
        }
        throw new IllegalStateException("Unexpected connection proxy class: " + httpClientConnection.getClass());
    }

    /* renamed from: f0 */
    public static HttpClientConnection m55116f0(j20 j20Var) {
        return new k20(j20Var);
    }

    /* renamed from: j */
    public static j20 m55117j(HttpClientConnection httpClientConnection) {
        return m55115M(httpClientConnection).m55120f();
    }

    /* renamed from: H */
    public j20 m55118H() {
        return this.f74926e;
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public void bind(Socket socket) throws IOException {
        m55119e0().bind(socket);
    }

    @Override // org.apache.http.HttpConnection, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        j20 j20Var = this.f74926e;
        if (j20Var != null) {
            j20Var.m54862a();
        }
    }

    /* renamed from: e0 */
    public ManagedHttpClientConnection m55119e0() {
        ManagedHttpClientConnection m55121w = m55121w();
        if (m55121w != null) {
            return m55121w;
        }
        throw new ConnectionShutdownException();
    }

    /* renamed from: f */
    public j20 m55120f() {
        j20 j20Var = this.f74926e;
        this.f74926e = null;
        return j20Var;
    }

    @Override // org.apache.http.HttpClientConnection
    public void flush() throws IOException {
        m55119e0().flush();
    }

    @Override // org.apache.http.protocol.HttpContext
    public Object getAttribute(String str) {
        ManagedHttpClientConnection m55119e0 = m55119e0();
        if (m55119e0 instanceof HttpContext) {
            return ((HttpContext) m55119e0).getAttribute(str);
        }
        return null;
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public String getId() {
        return m55119e0().getId();
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getLocalAddress() {
        return m55119e0().getLocalAddress();
    }

    @Override // org.apache.http.HttpInetConnection
    public int getLocalPort() {
        return m55119e0().getLocalPort();
    }

    @Override // org.apache.http.HttpConnection
    public HttpConnectionMetrics getMetrics() {
        return m55119e0().getMetrics();
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getRemoteAddress() {
        return m55119e0().getRemoteAddress();
    }

    @Override // org.apache.http.HttpInetConnection
    public int getRemotePort() {
        return m55119e0().getRemotePort();
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public SSLSession getSSLSession() {
        return m55119e0().getSSLSession();
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public Socket getSocket() {
        return m55119e0().getSocket();
    }

    @Override // org.apache.http.HttpConnection
    public int getSocketTimeout() {
        return m55119e0().getSocketTimeout();
    }

    @Override // org.apache.http.HttpConnection
    public boolean isOpen() {
        j20 j20Var = this.f74926e;
        return (j20Var == null || j20Var.isClosed()) ? false : true;
    }

    @Override // org.apache.http.HttpClientConnection
    public boolean isResponseAvailable(int i) throws IOException {
        return m55119e0().isResponseAvailable(i);
    }

    @Override // org.apache.http.HttpConnection
    public boolean isStale() {
        ManagedHttpClientConnection m55121w = m55121w();
        if (m55121w != null) {
            return m55121w.isStale();
        }
        return true;
    }

    @Override // org.apache.http.HttpClientConnection
    public void receiveResponseEntity(HttpResponse httpResponse) throws HttpException, IOException {
        m55119e0().receiveResponseEntity(httpResponse);
    }

    @Override // org.apache.http.HttpClientConnection
    public HttpResponse receiveResponseHeader() throws HttpException, IOException {
        return m55119e0().receiveResponseHeader();
    }

    @Override // org.apache.http.protocol.HttpContext
    public Object removeAttribute(String str) {
        ManagedHttpClientConnection m55119e0 = m55119e0();
        if (m55119e0 instanceof HttpContext) {
            return ((HttpContext) m55119e0).removeAttribute(str);
        }
        return null;
    }

    @Override // org.apache.http.HttpClientConnection
    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws HttpException, IOException {
        m55119e0().sendRequestEntity(httpEntityEnclosingRequest);
    }

    @Override // org.apache.http.HttpClientConnection
    public void sendRequestHeader(HttpRequest httpRequest) throws HttpException, IOException {
        m55119e0().sendRequestHeader(httpRequest);
    }

    @Override // org.apache.http.protocol.HttpContext
    public void setAttribute(String str, Object obj) {
        ManagedHttpClientConnection m55119e0 = m55119e0();
        if (m55119e0 instanceof HttpContext) {
            ((HttpContext) m55119e0).setAttribute(str, obj);
        }
    }

    @Override // org.apache.http.HttpConnection
    public void setSocketTimeout(int i) {
        m55119e0().setSocketTimeout(i);
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        j20 j20Var = this.f74926e;
        if (j20Var != null) {
            j20Var.m54865d();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CPoolProxy{");
        ManagedHttpClientConnection m55121w = m55121w();
        if (m55121w != null) {
            sb.append(m55121w);
        } else {
            sb.append("detached");
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: w */
    public ManagedHttpClientConnection m55121w() {
        j20 j20Var = this.f74926e;
        if (j20Var == null) {
            return null;
        }
        return j20Var.getConnection();
    }
}
