package com.sunia.HTREnginev2;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.LayeredSchemeSocketFactory;
import org.apache.http.conn.scheme.SchemeLayeredSocketFactory;
import org.apache.http.params.HttpParams;

@Deprecated
/* loaded from: classes12.dex */
public class w5m implements SchemeLayeredSocketFactory {

    /* renamed from: a */
    public final LayeredSchemeSocketFactory f88260a;

    public w5m(LayeredSchemeSocketFactory layeredSchemeSocketFactory) {
        this.f88260a = layeredSchemeSocketFactory;
    }

    @Override // org.apache.http.conn.scheme.SchemeSocketFactory
    public Socket connectSocket(Socket socket, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, HttpParams httpParams) throws IOException, UnknownHostException, ConnectTimeoutException {
        return this.f88260a.connectSocket(socket, inetSocketAddress, inetSocketAddress2, httpParams);
    }

    @Override // org.apache.http.conn.scheme.SchemeLayeredSocketFactory
    public Socket createLayeredSocket(Socket socket, String str, int i, HttpParams httpParams) throws IOException, UnknownHostException {
        return this.f88260a.createLayeredSocket(socket, str, i, true);
    }

    @Override // org.apache.http.conn.scheme.SchemeSocketFactory
    public Socket createSocket(HttpParams httpParams) throws IOException {
        return this.f88260a.createSocket(httpParams);
    }

    @Override // org.apache.http.conn.scheme.SchemeSocketFactory
    public boolean isSecure(Socket socket) throws IllegalArgumentException {
        return this.f88260a.isSecure(socket);
    }
}
