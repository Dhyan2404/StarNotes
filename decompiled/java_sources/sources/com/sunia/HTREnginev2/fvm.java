package com.sunia.HTREnginev2;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.SchemeSocketFactory;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;

@Deprecated
/* loaded from: classes12.dex */
public class fvm implements SocketFactory {

    /* renamed from: a */
    public final SchemeSocketFactory f70424a;

    public fvm(SchemeSocketFactory schemeSocketFactory) {
        this.f70424a = schemeSocketFactory;
    }

    /* renamed from: a */
    public SchemeSocketFactory m54202a() {
        return this.f70424a;
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public Socket connectSocket(Socket socket, String str, int i, InetAddress inetAddress, int i2, HttpParams httpParams) throws IOException, UnknownHostException, ConnectTimeoutException {
        InetSocketAddress inetSocketAddress;
        if (inetAddress != null || i2 > 0) {
            if (i2 <= 0) {
                i2 = 0;
            }
            inetSocketAddress = new InetSocketAddress(inetAddress, i2);
        } else {
            inetSocketAddress = null;
        }
        return this.f70424a.connectSocket(socket, new InetSocketAddress(InetAddress.getByName(str), i), inetSocketAddress, httpParams);
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() throws IOException {
        return this.f70424a.createSocket(new BasicHttpParams());
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        boolean z = obj instanceof fvm;
        SchemeSocketFactory schemeSocketFactory = this.f70424a;
        if (z) {
            obj = ((fvm) obj).f70424a;
        }
        return schemeSocketFactory.equals(obj);
    }

    public int hashCode() {
        return this.f70424a.hashCode();
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public boolean isSecure(Socket socket) throws IllegalArgumentException {
        return this.f70424a.isSecure(socket);
    }
}
