package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.HttpConnection;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.HttpTransport;
import com.squareup.okhttp.internal.http.RouteException;
import com.squareup.okhttp.internal.http.SocketConnector;
import com.squareup.okhttp.internal.http.SpdyTransport;
import com.squareup.okhttp.internal.http.Transport;
import com.squareup.okhttp.internal.spdy.SpdyConnection;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.util.List;
import okio.BufferedSink;
import okio.BufferedSource;

/* loaded from: classes9.dex */
public final class Connection {

    /* renamed from: a */
    public final ConnectionPool f63486a;

    /* renamed from: b */
    public final Route f63487b;

    /* renamed from: c */
    public Socket f63488c;

    /* renamed from: e */
    public HttpConnection f63490e;

    /* renamed from: f */
    public SpdyConnection f63491f;

    /* renamed from: h */
    public long f63493h;

    /* renamed from: i */
    public Handshake f63494i;

    /* renamed from: j */
    public int f63495j;

    /* renamed from: k */
    public Object f63496k;

    /* renamed from: d */
    public boolean f63489d = false;

    /* renamed from: g */
    public Protocol f63492g = Protocol.HTTP_1_1;

    public Connection(ConnectionPool connectionPool, Route route) {
        this.f63486a = connectionPool;
        this.f63487b = route;
    }

    /* renamed from: a */
    public boolean m52472a() {
        synchronized (this.f63486a) {
            if (this.f63496k == null) {
                return false;
            }
            this.f63496k = null;
            return true;
        }
    }

    /* renamed from: b */
    public void m52473b(Object obj) throws IOException {
        if (m52483l()) {
            throw new IllegalStateException();
        }
        synchronized (this.f63486a) {
            if (this.f63496k != obj) {
                return;
            }
            this.f63496k = null;
            this.f63488c.close();
        }
    }

    /* renamed from: c */
    public void m52474c(int i, int i2, int i3, Request request, List<ConnectionSpec> list, boolean z) throws RouteException {
        SocketConnector.ConnectedSocket connectCleartext;
        if (this.f63489d) {
            throw new IllegalStateException("already connected");
        }
        SocketConnector socketConnector = new SocketConnector(this, this.f63486a);
        if (this.f63487b.f63644a.getSslSocketFactory() != null) {
            connectCleartext = socketConnector.connectTls(i, i2, i3, request, this.f63487b, list, z);
        } else {
            if (!list.contains(ConnectionSpec.CLEARTEXT)) {
                throw new RouteException(new UnknownServiceException("CLEARTEXT communication not supported: " + list));
            }
            connectCleartext = socketConnector.connectCleartext(i, i2, this.f63487b);
        }
        Socket socket = connectCleartext.socket;
        this.f63488c = socket;
        this.f63494i = connectCleartext.handshake;
        Protocol protocol = connectCleartext.alpnProtocol;
        if (protocol == null) {
            protocol = Protocol.HTTP_1_1;
        }
        this.f63492g = protocol;
        try {
            if (protocol != Protocol.SPDY_3 && protocol != Protocol.HTTP_2) {
                this.f63490e = new HttpConnection(this.f63486a, this, socket);
                this.f63489d = true;
            }
            socket.setSoTimeout(0);
            SpdyConnection build = new SpdyConnection.Builder(this.f63487b.f63644a.f63403b, true, this.f63488c).protocol(this.f63492g).build();
            this.f63491f = build;
            build.sendConnectionPreface();
            this.f63489d = true;
        } catch (IOException e) {
            throw new RouteException(e);
        }
    }

    /* renamed from: d */
    public void m52475d(OkHttpClient okHttpClient, Object obj, Request request) throws RouteException {
        m52489r(obj);
        if (!m52480i()) {
            m52474c(okHttpClient.getConnectTimeout(), okHttpClient.getReadTimeout(), okHttpClient.getWriteTimeout(), request, this.f63487b.f63644a.getConnectionSpecs(), okHttpClient.getRetryOnConnectionFailure());
            if (m52483l()) {
                okHttpClient.getConnectionPool().m52499h(this);
            }
            okHttpClient.m52566f().connected(getRoute());
        }
        m52491t(okHttpClient.getReadTimeout(), okHttpClient.getWriteTimeout());
    }

    /* renamed from: e */
    public long m52476e() {
        SpdyConnection spdyConnection = this.f63491f;
        return spdyConnection == null ? this.f63493h : spdyConnection.getIdleStartTimeNs();
    }

    /* renamed from: f */
    public Object m52477f() {
        Object obj;
        synchronized (this.f63486a) {
            obj = this.f63496k;
        }
        return obj;
    }

    /* renamed from: g */
    public void m52478g() {
        this.f63495j++;
    }

    public Handshake getHandshake() {
        return this.f63494i;
    }

    public Protocol getProtocol() {
        return this.f63492g;
    }

    public Route getRoute() {
        return this.f63487b;
    }

    public Socket getSocket() {
        return this.f63488c;
    }

    /* renamed from: h */
    public boolean m52479h() {
        return (this.f63488c.isClosed() || this.f63488c.isInputShutdown() || this.f63488c.isOutputShutdown()) ? false : true;
    }

    /* renamed from: i */
    public boolean m52480i() {
        return this.f63489d;
    }

    /* renamed from: j */
    public boolean m52481j() {
        SpdyConnection spdyConnection = this.f63491f;
        return spdyConnection == null || spdyConnection.isIdle();
    }

    /* renamed from: k */
    public boolean m52482k() {
        HttpConnection httpConnection = this.f63490e;
        if (httpConnection != null) {
            return httpConnection.isReadable();
        }
        return true;
    }

    /* renamed from: l */
    public boolean m52483l() {
        return this.f63491f != null;
    }

    /* renamed from: m */
    public Transport m52484m(HttpEngine httpEngine) throws IOException {
        return this.f63491f != null ? new SpdyTransport(httpEngine, this.f63491f) : new HttpTransport(httpEngine, this.f63490e);
    }

    /* renamed from: n */
    public BufferedSink m52485n() {
        HttpConnection httpConnection = this.f63490e;
        if (httpConnection != null) {
            return httpConnection.rawSink();
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: o */
    public BufferedSource m52486o() {
        HttpConnection httpConnection = this.f63490e;
        if (httpConnection != null) {
            return httpConnection.rawSource();
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: p */
    public int m52487p() {
        return this.f63495j;
    }

    /* renamed from: q */
    public void m52488q() {
        if (this.f63491f != null) {
            throw new IllegalStateException("spdyConnection != null");
        }
        this.f63493h = System.nanoTime();
    }

    /* renamed from: r */
    public void m52489r(Object obj) {
        if (m52483l()) {
            return;
        }
        synchronized (this.f63486a) {
            if (this.f63496k != null) {
                throw new IllegalStateException("Connection already has an owner!");
            }
            this.f63496k = obj;
        }
    }

    /* renamed from: s */
    public void m52490s(Protocol protocol) {
        if (protocol == null) {
            throw new IllegalArgumentException("protocol == null");
        }
        this.f63492g = protocol;
    }

    /* renamed from: t */
    public void m52491t(int i, int i2) throws RouteException {
        if (!this.f63489d) {
            throw new IllegalStateException("setTimeouts - not connected");
        }
        if (this.f63490e != null) {
            try {
                this.f63488c.setSoTimeout(i);
                this.f63490e.setTimeouts(i, i2);
            } catch (IOException e) {
                throw new RouteException(e);
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.f63487b.f63644a.f63403b);
        sb.append(":");
        sb.append(this.f63487b.f63644a.f63404c);
        sb.append(", proxy=");
        sb.append(this.f63487b.f63645b);
        sb.append(" hostAddress=");
        sb.append(this.f63487b.f63646c.getAddress().getHostAddress());
        sb.append(" cipherSuite=");
        Handshake handshake = this.f63494i;
        sb.append(handshake != null ? handshake.cipherSuite() : "none");
        sb.append(" protocol=");
        sb.append(this.f63492g);
        sb.append('}');
        return sb.toString();
    }
}
