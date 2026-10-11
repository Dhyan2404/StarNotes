package com.squareup.okhttp;

import com.google.android.material.motion.MotionUtils;
import com.squareup.okhttp.internal.Util;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* loaded from: classes9.dex */
public final class ConnectionSpec {
    public static final ConnectionSpec CLEARTEXT;
    public static final ConnectionSpec COMPATIBLE_TLS;
    public static final ConnectionSpec MODERN_TLS;

    /* renamed from: e */
    public static final CipherSuite[] f63505e;

    /* renamed from: a */
    public final boolean f63506a;

    /* renamed from: b */
    public final String[] f63507b;

    /* renamed from: c */
    public final String[] f63508c;

    /* renamed from: d */
    public final boolean f63509d;

    static {
        CipherSuite[] cipherSuiteArr = {CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_DHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_DHE_DSS_WITH_AES_128_CBC_SHA, CipherSuite.TLS_DHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_3DES_EDE_CBC_SHA};
        f63505e = cipherSuiteArr;
        Builder cipherSuites = new Builder(true).cipherSuites(cipherSuiteArr);
        TlsVersion tlsVersion = TlsVersion.TLS_1_2;
        TlsVersion tlsVersion2 = TlsVersion.TLS_1_1;
        TlsVersion tlsVersion3 = TlsVersion.TLS_1_0;
        ConnectionSpec build = cipherSuites.tlsVersions(tlsVersion, tlsVersion2, tlsVersion3).supportsTlsExtensions(true).build();
        MODERN_TLS = build;
        COMPATIBLE_TLS = new Builder(build).tlsVersions(tlsVersion3).supportsTlsExtensions(true).build();
        CLEARTEXT = new Builder(false).build();
    }

    /* renamed from: d */
    public static <T> boolean m52502d(T[] tArr, T t) {
        for (T t2 : tArr) {
            if (Util.equal(t, t2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public static boolean m52503e(String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                if (m52502d(strArr2, str)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: c */
    public void m52504c(SSLSocket sSLSocket, boolean z) {
        ConnectionSpec m52505f = m52505f(sSLSocket, z);
        sSLSocket.setEnabledProtocols(m52505f.f63508c);
        String[] strArr = m52505f.f63507b;
        if (strArr != null) {
            sSLSocket.setEnabledCipherSuites(strArr);
        }
    }

    public List<CipherSuite> cipherSuites() {
        String[] strArr = this.f63507b;
        if (strArr == null) {
            return null;
        }
        CipherSuite[] cipherSuiteArr = new CipherSuite[strArr.length];
        int i = 0;
        while (true) {
            String[] strArr2 = this.f63507b;
            if (i >= strArr2.length) {
                return Util.immutableList(cipherSuiteArr);
            }
            cipherSuiteArr[i] = CipherSuite.forJavaName(strArr2[i]);
            i++;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ConnectionSpec)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ConnectionSpec connectionSpec = (ConnectionSpec) obj;
        boolean z = this.f63506a;
        if (z != connectionSpec.f63506a) {
            return false;
        }
        return !z || (Arrays.equals(this.f63507b, connectionSpec.f63507b) && Arrays.equals(this.f63508c, connectionSpec.f63508c) && this.f63509d == connectionSpec.f63509d);
    }

    /* renamed from: f */
    public final ConnectionSpec m52505f(SSLSocket sSLSocket, boolean z) {
        String[] strArr;
        if (this.f63507b != null) {
            strArr = (String[]) Util.intersect(String.class, this.f63507b, sSLSocket.getEnabledCipherSuites());
        } else {
            strArr = null;
        }
        if (z && Arrays.asList(sSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV")) {
            if (strArr == null) {
                strArr = sSLSocket.getEnabledCipherSuites();
            }
            int length = strArr.length + 1;
            String[] strArr2 = new String[length];
            System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
            strArr2[length - 1] = "TLS_FALLBACK_SCSV";
            strArr = strArr2;
        }
        return new Builder(this).cipherSuites(strArr).tlsVersions((String[]) Util.intersect(String.class, this.f63508c, sSLSocket.getEnabledProtocols())).build();
    }

    public int hashCode() {
        if (this.f63506a) {
            return ((((527 + Arrays.hashCode(this.f63507b)) * 31) + Arrays.hashCode(this.f63508c)) * 31) + (!this.f63509d ? 1 : 0);
        }
        return 17;
    }

    public boolean isCompatible(SSLSocket sSLSocket) {
        if (!this.f63506a) {
            return false;
        }
        if (!m52503e(this.f63508c, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        if (this.f63507b == null) {
            return sSLSocket.getEnabledCipherSuites().length > 0;
        }
        return m52503e(this.f63507b, sSLSocket.getEnabledCipherSuites());
    }

    public boolean isTls() {
        return this.f63506a;
    }

    public boolean supportsTlsExtensions() {
        return this.f63509d;
    }

    public List<TlsVersion> tlsVersions() {
        TlsVersion[] tlsVersionArr = new TlsVersion[this.f63508c.length];
        int i = 0;
        while (true) {
            String[] strArr = this.f63508c;
            if (i >= strArr.length) {
                return Util.immutableList(tlsVersionArr);
            }
            tlsVersionArr[i] = TlsVersion.forJavaName(strArr[i]);
            i++;
        }
    }

    public String toString() {
        if (!this.f63506a) {
            return "ConnectionSpec()";
        }
        List<CipherSuite> cipherSuites = cipherSuites();
        return "ConnectionSpec(cipherSuites=" + (cipherSuites == null ? "[use default]" : cipherSuites.toString()) + ", tlsVersions=" + tlsVersions() + ", supportsTlsExtensions=" + this.f63509d + MotionUtils.f31762d;
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public boolean f63510a;

        /* renamed from: b */
        public String[] f63511b;

        /* renamed from: c */
        public String[] f63512c;

        /* renamed from: d */
        public boolean f63513d;

        public Builder(boolean z) {
            this.f63510a = z;
        }

        public ConnectionSpec build() {
            return new ConnectionSpec(this);
        }

        public Builder cipherSuites(CipherSuite... cipherSuiteArr) {
            if (this.f63510a) {
                String[] strArr = new String[cipherSuiteArr.length];
                for (int i = 0; i < cipherSuiteArr.length; i++) {
                    strArr[i] = cipherSuiteArr[i].javaName;
                }
                this.f63511b = strArr;
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public Builder supportsTlsExtensions(boolean z) {
            if (!this.f63510a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.f63513d = z;
            return this;
        }

        public Builder tlsVersions(TlsVersion... tlsVersionArr) {
            if (this.f63510a) {
                if (tlsVersionArr.length != 0) {
                    String[] strArr = new String[tlsVersionArr.length];
                    for (int i = 0; i < tlsVersionArr.length; i++) {
                        strArr[i] = tlsVersionArr[i].javaName;
                    }
                    this.f63512c = strArr;
                    return this;
                }
                throw new IllegalArgumentException("At least one TlsVersion is required");
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public Builder(ConnectionSpec connectionSpec) {
            this.f63510a = connectionSpec.f63506a;
            this.f63511b = connectionSpec.f63507b;
            this.f63512c = connectionSpec.f63508c;
            this.f63513d = connectionSpec.f63509d;
        }

        public Builder cipherSuites(String... strArr) {
            if (!this.f63510a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr == null) {
                this.f63511b = null;
            } else {
                this.f63511b = (String[]) strArr.clone();
            }
            return this;
        }

        public Builder tlsVersions(String... strArr) {
            if (!this.f63510a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr == null) {
                this.f63512c = null;
            } else {
                this.f63512c = (String[]) strArr.clone();
            }
            return this;
        }
    }

    public ConnectionSpec(Builder builder) {
        this.f63506a = builder.f63510a;
        this.f63507b = builder.f63511b;
        this.f63508c = builder.f63512c;
        this.f63509d = builder.f63513d;
    }
}
