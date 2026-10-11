package com.sunia.HTREnginev2;

import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
import org.apache.http.conn.scheme.LayeredSchemeSocketFactory;
import org.apache.http.conn.scheme.LayeredSocketFactory;

@Deprecated
/* loaded from: classes12.dex */
public class nwi extends fvm implements LayeredSocketFactory {

    /* renamed from: b */
    public final LayeredSchemeSocketFactory f79095b;

    public nwi(LayeredSchemeSocketFactory layeredSchemeSocketFactory) {
        super(layeredSchemeSocketFactory);
        this.f79095b = layeredSchemeSocketFactory;
    }

    @Override // org.apache.http.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException, UnknownHostException {
        return this.f79095b.createLayeredSocket(socket, str, i, z);
    }
}
