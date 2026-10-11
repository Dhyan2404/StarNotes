package com.squareup.okhttp.internal;

import com.squareup.okhttp.ConnectionSpec;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* loaded from: classes9.dex */
public final class ConnectionSpecSelector {

    /* renamed from: a */
    public final List<ConnectionSpec> f63647a;

    /* renamed from: b */
    public int f63648b = 0;

    /* renamed from: c */
    public boolean f63649c;

    /* renamed from: d */
    public boolean f63650d;

    public ConnectionSpecSelector(List<ConnectionSpec> list) {
        this.f63647a = list;
    }

    /* renamed from: a */
    public final boolean m52601a(SSLSocket sSLSocket) {
        for (int i = this.f63648b; i < this.f63647a.size(); i++) {
            if (this.f63647a.get(i).isCompatible(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public ConnectionSpec configureSecureSocket(SSLSocket sSLSocket) throws IOException {
        ConnectionSpec connectionSpec;
        int i = this.f63648b;
        int size = this.f63647a.size();
        while (true) {
            if (i >= size) {
                connectionSpec = null;
                break;
            }
            connectionSpec = this.f63647a.get(i);
            if (connectionSpec.isCompatible(sSLSocket)) {
                this.f63648b = i + 1;
                break;
            }
            i++;
        }
        if (connectionSpec != null) {
            this.f63649c = m52601a(sSLSocket);
            Internal.instance.apply(connectionSpec, sSLSocket, this.f63650d);
            return connectionSpec;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f63650d + ", modes=" + this.f63647a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean connectionFailed(IOException iOException) {
        this.f63650d = true;
        if ((iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return (z || (iOException instanceof SSLProtocolException)) && this.f63649c;
    }
}
