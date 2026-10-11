package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.impl.conn.ConnectionShutdownException;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
/* loaded from: classes12.dex */
public class d8j implements ManagedClientConnection {

    /* renamed from: e */
    public final ClientConnectionManager f67605e;

    /* renamed from: f */
    public final ClientConnectionOperator f67606f;

    /* renamed from: g */
    public volatile j0i f67607g;

    /* renamed from: h */
    public volatile boolean f67608h;

    /* renamed from: i */
    public volatile long f67609i;

    public d8j(ClientConnectionManager clientConnectionManager, ClientConnectionOperator clientConnectionOperator, j0i j0iVar) {
        Args.notNull(clientConnectionManager, "Connection manager");
        Args.notNull(clientConnectionOperator, "Connection operator");
        Args.notNull(j0iVar, "HTTP pool entry");
        this.f67605e = clientConnectionManager;
        this.f67606f = clientConnectionOperator;
        this.f67607g = j0iVar;
        this.f67608h = false;
        this.f67609i = Long.MAX_VALUE;
    }

    /* renamed from: H */
    public Object m53597H(String str) {
        OperatedClientConnection m53604j = m53604j();
        if (m53604j instanceof HttpContext) {
            return ((HttpContext) m53604j).getAttribute(str);
        }
        return null;
    }

    /* renamed from: I */
    public final OperatedClientConnection m53598I() {
        j0i j0iVar = this.f67607g;
        if (j0iVar == null) {
            return null;
        }
        return j0iVar.getConnection();
    }

    /* renamed from: M */
    public ClientConnectionManager m53599M() {
        return this.f67605e;
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void abortConnection() {
        synchronized (this) {
            if (this.f67607g == null) {
                return;
            }
            this.f67608h = false;
            try {
                this.f67607g.getConnection().shutdown();
            } catch (IOException unused) {
            }
            this.f67605e.releaseConnection(this, this.f67609i, TimeUnit.MILLISECONDS);
            this.f67607g = null;
        }
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public void bind(Socket socket) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.http.HttpConnection, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        j0i j0iVar = this.f67607g;
        if (j0iVar != null) {
            OperatedClientConnection connection = j0iVar.getConnection();
            j0iVar.m54849c().reset();
            connection.close();
        }
    }

    /* renamed from: e0 */
    public j0i m53600e0() {
        return this.f67607g;
    }

    /* renamed from: f */
    public j0i m53601f() {
        j0i j0iVar = this.f67607g;
        this.f67607g = null;
        return j0iVar;
    }

    /* renamed from: f0 */
    public Object m53602f0(String str) {
        OperatedClientConnection m53604j = m53604j();
        if (m53604j instanceof HttpContext) {
            return ((HttpContext) m53604j).removeAttribute(str);
        }
        return null;
    }

    @Override // org.apache.http.HttpClientConnection
    public void flush() throws IOException {
        m53604j().flush();
    }

    /* renamed from: g0 */
    public void m53603g0(String str, Object obj) {
        OperatedClientConnection m53604j = m53604j();
        if (m53604j instanceof HttpContext) {
            ((HttpContext) m53604j).setAttribute(str, obj);
        }
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public String getId() {
        return null;
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getLocalAddress() {
        return m53604j().getLocalAddress();
    }

    @Override // org.apache.http.HttpInetConnection
    public int getLocalPort() {
        return m53604j().getLocalPort();
    }

    @Override // org.apache.http.HttpConnection
    public HttpConnectionMetrics getMetrics() {
        return m53604j().getMetrics();
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getRemoteAddress() {
        return m53604j().getRemoteAddress();
    }

    @Override // org.apache.http.HttpInetConnection
    public int getRemotePort() {
        return m53604j().getRemotePort();
    }

    @Override // org.apache.http.conn.ManagedClientConnection, org.apache.http.conn.HttpRoutedConnection
    public HttpRoute getRoute() {
        return m53605w().m54847a();
    }

    @Override // org.apache.http.conn.ManagedClientConnection, org.apache.http.conn.HttpRoutedConnection, org.apache.http.conn.ManagedHttpClientConnection
    public SSLSession getSSLSession() {
        Socket socket = m53604j().getSocket();
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).getSession();
        }
        return null;
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public Socket getSocket() {
        return m53604j().getSocket();
    }

    @Override // org.apache.http.HttpConnection
    public int getSocketTimeout() {
        return m53604j().getSocketTimeout();
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public Object getState() {
        return m53605w().getState();
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public boolean isMarkedReusable() {
        return this.f67608h;
    }

    @Override // org.apache.http.HttpConnection
    public boolean isOpen() {
        OperatedClientConnection m53598I = m53598I();
        if (m53598I != null) {
            return m53598I.isOpen();
        }
        return false;
    }

    @Override // org.apache.http.HttpClientConnection
    public boolean isResponseAvailable(int i) throws IOException {
        return m53604j().isResponseAvailable(i);
    }

    @Override // org.apache.http.conn.ManagedClientConnection, org.apache.http.conn.HttpRoutedConnection
    public boolean isSecure() {
        return m53604j().isSecure();
    }

    @Override // org.apache.http.HttpConnection
    public boolean isStale() {
        OperatedClientConnection m53598I = m53598I();
        if (m53598I != null) {
            return m53598I.isStale();
        }
        return true;
    }

    /* renamed from: j */
    public final OperatedClientConnection m53604j() {
        j0i j0iVar = this.f67607g;
        if (j0iVar != null) {
            return j0iVar.getConnection();
        }
        throw new ConnectionShutdownException();
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void layerProtocol(HttpContext httpContext, HttpParams httpParams) throws IOException {
        HttpHost targetHost;
        OperatedClientConnection connection;
        Args.notNull(httpParams, "HTTP parameters");
        synchronized (this) {
            if (this.f67607g == null) {
                throw new ConnectionShutdownException();
            }
            RouteTracker m54849c = this.f67607g.m54849c();
            Asserts.notNull(m54849c, "Route tracker");
            Asserts.check(m54849c.isConnected(), "Connection not open");
            Asserts.check(m54849c.isTunnelled(), "Protocol layering without a tunnel not supported");
            Asserts.check(!m54849c.isLayered(), "Multiple protocol layering not supported");
            targetHost = m54849c.getTargetHost();
            connection = this.f67607g.getConnection();
        }
        this.f67606f.updateSecureConnection(connection, targetHost, httpContext, httpParams);
        synchronized (this) {
            if (this.f67607g == null) {
                throw new InterruptedIOException();
            }
            this.f67607g.m54849c().layerProtocol(connection.isSecure());
        }
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void markReusable() {
        this.f67608h = true;
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void open(HttpRoute httpRoute, HttpContext httpContext, HttpParams httpParams) throws IOException {
        OperatedClientConnection connection;
        Args.notNull(httpRoute, "Route");
        Args.notNull(httpParams, "HTTP parameters");
        synchronized (this) {
            if (this.f67607g == null) {
                throw new ConnectionShutdownException();
            }
            RouteTracker m54849c = this.f67607g.m54849c();
            Asserts.notNull(m54849c, "Route tracker");
            Asserts.check(!m54849c.isConnected(), "Connection already open");
            connection = this.f67607g.getConnection();
        }
        HttpHost proxyHost = httpRoute.getProxyHost();
        this.f67606f.openConnection(connection, proxyHost != null ? proxyHost : httpRoute.getTargetHost(), httpRoute.getLocalAddress(), httpContext, httpParams);
        synchronized (this) {
            if (this.f67607g == null) {
                throw new InterruptedIOException();
            }
            RouteTracker m54849c2 = this.f67607g.m54849c();
            if (proxyHost == null) {
                m54849c2.connectTarget(connection.isSecure());
            } else {
                m54849c2.connectProxy(proxyHost, connection.isSecure());
            }
        }
    }

    @Override // org.apache.http.HttpClientConnection
    public void receiveResponseEntity(HttpResponse httpResponse) throws HttpException, IOException {
        m53604j().receiveResponseEntity(httpResponse);
    }

    @Override // org.apache.http.HttpClientConnection
    public HttpResponse receiveResponseHeader() throws HttpException, IOException {
        return m53604j().receiveResponseHeader();
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void releaseConnection() {
        synchronized (this) {
            if (this.f67607g == null) {
                return;
            }
            this.f67605e.releaseConnection(this, this.f67609i, TimeUnit.MILLISECONDS);
            this.f67607g = null;
        }
    }

    @Override // org.apache.http.HttpClientConnection
    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws HttpException, IOException {
        m53604j().sendRequestEntity(httpEntityEnclosingRequest);
    }

    @Override // org.apache.http.HttpClientConnection
    public void sendRequestHeader(HttpRequest httpRequest) throws HttpException, IOException {
        m53604j().sendRequestHeader(httpRequest);
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void setIdleDuration(long j, TimeUnit timeUnit) {
        if (j > 0) {
            this.f67609i = timeUnit.toMillis(j);
        } else {
            this.f67609i = -1L;
        }
    }

    @Override // org.apache.http.HttpConnection
    public void setSocketTimeout(int i) {
        m53604j().setSocketTimeout(i);
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void setState(Object obj) {
        m53605w().setState(obj);
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        j0i j0iVar = this.f67607g;
        if (j0iVar != null) {
            OperatedClientConnection connection = j0iVar.getConnection();
            j0iVar.m54849c().reset();
            connection.shutdown();
        }
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void tunnelProxy(HttpHost httpHost, boolean z, HttpParams httpParams) throws IOException {
        OperatedClientConnection connection;
        Args.notNull(httpHost, "Next proxy");
        Args.notNull(httpParams, "HTTP parameters");
        synchronized (this) {
            if (this.f67607g == null) {
                throw new ConnectionShutdownException();
            }
            RouteTracker m54849c = this.f67607g.m54849c();
            Asserts.notNull(m54849c, "Route tracker");
            Asserts.check(m54849c.isConnected(), "Connection not open");
            connection = this.f67607g.getConnection();
        }
        connection.update(null, httpHost, z, httpParams);
        synchronized (this) {
            if (this.f67607g == null) {
                throw new InterruptedIOException();
            }
            this.f67607g.m54849c().tunnelProxy(httpHost, z);
        }
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void tunnelTarget(boolean z, HttpParams httpParams) throws IOException {
        HttpHost targetHost;
        OperatedClientConnection connection;
        Args.notNull(httpParams, "HTTP parameters");
        synchronized (this) {
            if (this.f67607g == null) {
                throw new ConnectionShutdownException();
            }
            RouteTracker m54849c = this.f67607g.m54849c();
            Asserts.notNull(m54849c, "Route tracker");
            Asserts.check(m54849c.isConnected(), "Connection not open");
            Asserts.check(!m54849c.isTunnelled(), "Connection is already tunnelled");
            targetHost = m54849c.getTargetHost();
            connection = this.f67607g.getConnection();
        }
        connection.update(null, targetHost, z, httpParams);
        synchronized (this) {
            if (this.f67607g == null) {
                throw new InterruptedIOException();
            }
            this.f67607g.m54849c().tunnelTarget(z);
        }
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void unmarkReusable() {
        this.f67608h = false;
    }

    /* renamed from: w */
    public final j0i m53605w() {
        j0i j0iVar = this.f67607g;
        if (j0iVar != null) {
            return j0iVar;
        }
        throw new ConnectionShutdownException();
    }
}
