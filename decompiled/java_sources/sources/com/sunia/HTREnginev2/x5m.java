package com.sunia.HTREnginev2;

import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
import org.apache.http.conn.scheme.LayeredSocketFactory;
import org.apache.http.conn.scheme.SchemeLayeredSocketFactory;
import org.apache.http.params.HttpParams;

@Deprecated
/* loaded from: classes12.dex */
public class x5m extends y5m implements SchemeLayeredSocketFactory {

    /* renamed from: b */
    public final LayeredSocketFactory f89318b;

    public x5m(LayeredSocketFactory layeredSocketFactory) {
        super(layeredSocketFactory);
        this.f89318b = layeredSocketFactory;
    }

    @Override // org.apache.http.conn.scheme.SchemeLayeredSocketFactory
    public Socket createLayeredSocket(Socket socket, String str, int i, HttpParams httpParams) throws IOException, UnknownHostException {
        return this.f89318b.createSocket(socket, str, i, true);
    }
}
