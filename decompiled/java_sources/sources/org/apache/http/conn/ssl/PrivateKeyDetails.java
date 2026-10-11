package org.apache.http.conn.ssl;

import java.security.cert.X509Certificate;
import java.util.Arrays;
import org.apache.http.util.Args;

@Deprecated
/* loaded from: classes12.dex */
public final class PrivateKeyDetails {

    /* renamed from: a */
    public final String f110312a;

    /* renamed from: b */
    public final X509Certificate[] f110313b;

    public PrivateKeyDetails(String str, X509Certificate[] x509CertificateArr) {
        this.f110312a = (String) Args.notNull(str, "Private key type");
        this.f110313b = x509CertificateArr;
    }

    public X509Certificate[] getCertChain() {
        return this.f110313b;
    }

    public String getType() {
        return this.f110312a;
    }

    public String toString() {
        return this.f110312a + ':' + Arrays.toString(this.f110313b);
    }
}
