package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes9.dex */
public final class Address {

    /* renamed from: a */
    public final Proxy f63402a;

    /* renamed from: b */
    public final String f63403b;

    /* renamed from: c */
    public final int f63404c;

    /* renamed from: d */
    public final SocketFactory f63405d;

    /* renamed from: e */
    public final SSLSocketFactory f63406e;

    /* renamed from: f */
    public final HostnameVerifier f63407f;

    /* renamed from: g */
    public final CertificatePinner f63408g;

    /* renamed from: h */
    public final Authenticator f63409h;

    /* renamed from: i */
    public final List<Protocol> f63410i;

    /* renamed from: j */
    public final List<ConnectionSpec> f63411j;

    /* renamed from: k */
    public final ProxySelector f63412k;

    public Address(String str, int i, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, CertificatePinner certificatePinner, Authenticator authenticator, Proxy proxy, List<Protocol> list, List<ConnectionSpec> list2, ProxySelector proxySelector) {
        if (str == null) {
            throw new NullPointerException("uriHost == null");
        }
        if (i <= 0) {
            throw new IllegalArgumentException("uriPort <= 0: " + i);
        }
        if (authenticator == null) {
            throw new IllegalArgumentException("authenticator == null");
        }
        if (list == null) {
            throw new IllegalArgumentException("protocols == null");
        }
        if (proxySelector == null) {
            throw new IllegalArgumentException("proxySelector == null");
        }
        this.f63402a = proxy;
        this.f63403b = str;
        this.f63404c = i;
        this.f63405d = socketFactory;
        this.f63406e = sSLSocketFactory;
        this.f63407f = hostnameVerifier;
        this.f63408g = certificatePinner;
        this.f63409h = authenticator;
        this.f63410i = Util.immutableList(list);
        this.f63411j = Util.immutableList(list2);
        this.f63412k = proxySelector;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Address)) {
            return false;
        }
        Address address = (Address) obj;
        return Util.equal(this.f63402a, address.f63402a) && this.f63403b.equals(address.f63403b) && this.f63404c == address.f63404c && Util.equal(this.f63406e, address.f63406e) && Util.equal(this.f63407f, address.f63407f) && Util.equal(this.f63408g, address.f63408g) && Util.equal(this.f63409h, address.f63409h) && Util.equal(this.f63410i, address.f63410i) && Util.equal(this.f63411j, address.f63411j) && Util.equal(this.f63412k, address.f63412k);
    }

    public Authenticator getAuthenticator() {
        return this.f63409h;
    }

    public CertificatePinner getCertificatePinner() {
        return this.f63408g;
    }

    public List<ConnectionSpec> getConnectionSpecs() {
        return this.f63411j;
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.f63407f;
    }

    public List<Protocol> getProtocols() {
        return this.f63410i;
    }

    public Proxy getProxy() {
        return this.f63402a;
    }

    public ProxySelector getProxySelector() {
        return this.f63412k;
    }

    public SocketFactory getSocketFactory() {
        return this.f63405d;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.f63406e;
    }

    public String getUriHost() {
        return this.f63403b;
    }

    public int getUriPort() {
        return this.f63404c;
    }

    public int hashCode() {
        Proxy proxy = this.f63402a;
        int hashCode = (((((527 + (proxy != null ? proxy.hashCode() : 0)) * 31) + this.f63403b.hashCode()) * 31) + this.f63404c) * 31;
        SSLSocketFactory sSLSocketFactory = this.f63406e;
        int hashCode2 = (hashCode + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.f63407f;
        int hashCode3 = (hashCode2 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        CertificatePinner certificatePinner = this.f63408g;
        return ((((((((hashCode3 + (certificatePinner != null ? certificatePinner.hashCode() : 0)) * 31) + this.f63409h.hashCode()) * 31) + this.f63410i.hashCode()) * 31) + this.f63411j.hashCode()) * 31) + this.f63412k.hashCode();
    }
}
