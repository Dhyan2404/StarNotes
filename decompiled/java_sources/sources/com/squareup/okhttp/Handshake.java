package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* loaded from: classes9.dex */
public final class Handshake {

    /* renamed from: a */
    public final String f63522a;

    /* renamed from: b */
    public final List<Certificate> f63523b;

    /* renamed from: c */
    public final List<Certificate> f63524c;

    public Handshake(String str, List<Certificate> list, List<Certificate> list2) {
        this.f63522a = str;
        this.f63523b = list;
        this.f63524c = list2;
    }

    public static Handshake get(SSLSession sSLSession) {
        Certificate[] certificateArr;
        List emptyList;
        List emptyList2;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite != null) {
            try {
                certificateArr = sSLSession.getPeerCertificates();
            } catch (SSLPeerUnverifiedException unused) {
                certificateArr = null;
            }
            if (certificateArr != null) {
                emptyList = Util.immutableList(certificateArr);
            } else {
                emptyList = Collections.emptyList();
            }
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            if (localCertificates != null) {
                emptyList2 = Util.immutableList(localCertificates);
            } else {
                emptyList2 = Collections.emptyList();
            }
            return new Handshake(cipherSuite, emptyList, emptyList2);
        }
        throw new IllegalStateException("cipherSuite == null");
    }

    public String cipherSuite() {
        return this.f63522a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Handshake)) {
            return false;
        }
        Handshake handshake = (Handshake) obj;
        return this.f63522a.equals(handshake.f63522a) && this.f63523b.equals(handshake.f63523b) && this.f63524c.equals(handshake.f63524c);
    }

    public int hashCode() {
        return ((((527 + this.f63522a.hashCode()) * 31) + this.f63523b.hashCode()) * 31) + this.f63524c.hashCode();
    }

    public List<Certificate> localCertificates() {
        return this.f63524c;
    }

    public Principal localPrincipal() {
        if (this.f63524c.isEmpty()) {
            return null;
        }
        return ((X509Certificate) this.f63524c.get(0)).getSubjectX500Principal();
    }

    public List<Certificate> peerCertificates() {
        return this.f63523b;
    }

    public Principal peerPrincipal() {
        if (this.f63523b.isEmpty()) {
            return null;
        }
        return ((X509Certificate) this.f63523b.get(0)).getSubjectX500Principal();
    }

    public static Handshake get(String str, List<Certificate> list, List<Certificate> list2) {
        if (str != null) {
            return new Handshake(str, Util.immutableList(list), Util.immutableList(list2));
        }
        throw new IllegalArgumentException("cipherSuite == null");
    }
}
