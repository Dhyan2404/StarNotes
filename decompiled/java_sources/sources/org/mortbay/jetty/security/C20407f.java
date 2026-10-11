package org.mortbay.jetty.security;

import java.io.IOException;
import javax.net.ssl.HandshakeCompletedEvent;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSocket;
import org.mortbay.jetty.security.SslSocketConnector;
import org.mortbay.log.Log;

/* renamed from: org.mortbay.jetty.security.f */
/* loaded from: classes13.dex */
public class C20407f implements HandshakeCompletedListener {

    /* renamed from: e */
    public boolean f115099e = false;

    /* renamed from: f */
    public final /* synthetic */ SSLSocket f115100f;

    /* renamed from: g */
    public final /* synthetic */ SslSocketConnector.SslConnection f115101g;

    public C20407f(SslSocketConnector.SslConnection sslConnection, SSLSocket sSLSocket) {
        this.f115101g = sslConnection;
        this.f115100f = sSLSocket;
    }

    @Override // javax.net.ssl.HandshakeCompletedListener
    public void handshakeCompleted(HandshakeCompletedEvent handshakeCompletedEvent) {
        SslSocketConnector sslSocketConnector;
        boolean z;
        if (!this.f115099e) {
            this.f115099e = true;
            return;
        }
        sslSocketConnector = SslSocketConnector.this;
        z = sslSocketConnector.f115077W0;
        if (z) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("SSL renegotiate denied: ");
        stringBuffer.append(this.f115100f);
        Log.warn(stringBuffer.toString());
        try {
            this.f115100f.close();
        } catch (IOException e) {
            Log.warn(e);
        }
    }
}
