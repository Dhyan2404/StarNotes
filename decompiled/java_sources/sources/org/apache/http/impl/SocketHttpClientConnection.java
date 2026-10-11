package org.apache.http.impl;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import org.apache.http.HttpInetConnection;
import org.apache.http.impl.io.SocketInputBuffer;
import org.apache.http.impl.io.SocketOutputBuffer;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
/* loaded from: classes12.dex */
public class SocketHttpClientConnection extends AbstractHttpClientConnection implements HttpInetConnection {

    /* renamed from: m */
    public volatile boolean f110410m;

    /* renamed from: n */
    public volatile Socket f110411n = null;

    /* renamed from: f */
    public static void m68366f(StringBuilder sb, SocketAddress socketAddress) {
        if (!(socketAddress instanceof InetSocketAddress)) {
            sb.append(socketAddress);
            return;
        }
        InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
        sb.append(inetSocketAddress.getAddress() != null ? inetSocketAddress.getAddress().getHostAddress() : inetSocketAddress.getAddress());
        sb.append(':');
        sb.append(inetSocketAddress.getPort());
    }

    public void assertNotOpen() {
        Asserts.check(!this.f110410m, "Connection is already open");
    }

    @Override // org.apache.http.impl.AbstractHttpClientConnection
    public void assertOpen() {
        Asserts.check(this.f110410m, "Connection is not open");
    }

    public void bind(Socket socket, HttpParams httpParams) throws IOException {
        Args.notNull(socket, "Socket");
        Args.notNull(httpParams, "HTTP parameters");
        this.f110411n = socket;
        int intParameter = httpParams.getIntParameter(CoreConnectionPNames.SOCKET_BUFFER_SIZE, -1);
        init(createSessionInputBuffer(socket, intParameter, httpParams), createSessionOutputBuffer(socket, intParameter, httpParams), httpParams);
        this.f110410m = true;
    }

    @Override // org.apache.http.HttpConnection, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f110410m) {
            this.f110410m = false;
            Socket socket = this.f110411n;
            try {
                doFlush();
                try {
                    try {
                        socket.shutdownOutput();
                    } catch (IOException unused) {
                    }
                    socket.shutdownInput();
                } catch (IOException | UnsupportedOperationException unused2) {
                }
            } finally {
                socket.close();
            }
        }
    }

    public SessionInputBuffer createSessionInputBuffer(Socket socket, int i, HttpParams httpParams) throws IOException {
        return new SocketInputBuffer(socket, i, httpParams);
    }

    public SessionOutputBuffer createSessionOutputBuffer(Socket socket, int i, HttpParams httpParams) throws IOException {
        return new SocketOutputBuffer(socket, i, httpParams);
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getLocalAddress() {
        if (this.f110411n != null) {
            return this.f110411n.getLocalAddress();
        }
        return null;
    }

    @Override // org.apache.http.HttpInetConnection
    public int getLocalPort() {
        if (this.f110411n != null) {
            return this.f110411n.getLocalPort();
        }
        return -1;
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getRemoteAddress() {
        if (this.f110411n != null) {
            return this.f110411n.getInetAddress();
        }
        return null;
    }

    @Override // org.apache.http.HttpInetConnection
    public int getRemotePort() {
        if (this.f110411n != null) {
            return this.f110411n.getPort();
        }
        return -1;
    }

    public Socket getSocket() {
        return this.f110411n;
    }

    @Override // org.apache.http.HttpConnection
    public int getSocketTimeout() {
        if (this.f110411n == null) {
            return -1;
        }
        try {
            return this.f110411n.getSoTimeout();
        } catch (SocketException unused) {
            return -1;
        }
    }

    @Override // org.apache.http.HttpConnection
    public boolean isOpen() {
        return this.f110410m;
    }

    @Override // org.apache.http.HttpConnection
    public void setSocketTimeout(int i) {
        assertOpen();
        if (this.f110411n != null) {
            try {
                this.f110411n.setSoTimeout(i);
            } catch (SocketException unused) {
            }
        }
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        this.f110410m = false;
        Socket socket = this.f110411n;
        if (socket != null) {
            socket.close();
        }
    }

    public String toString() {
        if (this.f110411n == null) {
            return super.toString();
        }
        StringBuilder sb = new StringBuilder();
        SocketAddress remoteSocketAddress = this.f110411n.getRemoteSocketAddress();
        SocketAddress localSocketAddress = this.f110411n.getLocalSocketAddress();
        if (remoteSocketAddress != null && localSocketAddress != null) {
            m68366f(sb, localSocketAddress);
            sb.append("<->");
            m68366f(sb, remoteSocketAddress);
        }
        return sb.toString();
    }
}
