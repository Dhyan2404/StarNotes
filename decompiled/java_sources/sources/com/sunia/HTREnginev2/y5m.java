package com.sunia.HTREnginev2;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.SchemeSocketFactory;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.params.HttpParams;

@Deprecated
/* loaded from: classes12.dex */
public class y5m implements SchemeSocketFactory {

    /* renamed from: a */
    public final SocketFactory f90417a;

    public y5m(SocketFactory socketFactory) {
        this.f90417a = socketFactory;
    }

    /* renamed from: a */
    public SocketFactory m58384a() {
        return this.f90417a;
    }

    @Override // org.apache.http.conn.scheme.SchemeSocketFactory
    public Socket connectSocket(Socket socket, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, HttpParams httpParams) throws IOException, UnknownHostException, ConnectTimeoutException {
        InetAddress inetAddress;
        int i;
        String hostName = inetSocketAddress.getHostName();
        int port = inetSocketAddress.getPort();
        if (inetSocketAddress2 != null) {
            inetAddress = inetSocketAddress2.getAddress();
            i = inetSocketAddress2.getPort();
        } else {
            inetAddress = null;
            i = 0;
        }
        return this.f90417a.connectSocket(socket, hostName, port, inetAddress, i, httpParams);
    }

    @Override // org.apache.http.conn.scheme.SchemeSocketFactory
    public Socket createSocket(HttpParams httpParams) throws IOException {
        return this.f90417a.createSocket();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        boolean z = obj instanceof y5m;
        SocketFactory socketFactory = this.f90417a;
        if (z) {
            obj = ((y5m) obj).f90417a;
        }
        return socketFactory.equals(obj);
    }

    public int hashCode() {
        return this.f90417a.hashCode();
    }

    @Override // org.apache.http.conn.scheme.SchemeSocketFactory
    public boolean isSecure(Socket socket) throws IllegalArgumentException {
        return this.f90417a.isSecure(socket);
    }
}
