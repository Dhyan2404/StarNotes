package org.apache.http.ssl;

import java.security.cert.X509Certificate;
import java.util.Arrays;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public final class PrivateKeyDetails {

    /* renamed from: a */
    public final String f111148a;

    /* renamed from: b */
    public final X509Certificate[] f111149b;

    public PrivateKeyDetails(String str, X509Certificate[] x509CertificateArr) {
        this.f111148a = (String) Args.notNull(str, "Private key type");
        this.f111149b = x509CertificateArr;
    }

    public X509Certificate[] getCertChain() {
        return this.f111149b;
    }

    public String getType() {
        return this.f111148a;
    }

    public String toString() {
        return this.f111148a + ':' + Arrays.toString(this.f111149b);
    }
}
