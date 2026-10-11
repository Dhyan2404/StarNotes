package org.apache.http.client.config;

import java.net.InetAddress;
import java.util.Collection;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class RequestConfig implements Cloneable {
    public static final RequestConfig DEFAULT = new Builder().build();

    /* renamed from: e */
    public final boolean f110114e;

    /* renamed from: f */
    public final HttpHost f110115f;

    /* renamed from: g */
    public final InetAddress f110116g;

    /* renamed from: h */
    public final boolean f110117h;

    /* renamed from: i */
    public final String f110118i;

    /* renamed from: j */
    public final boolean f110119j;

    /* renamed from: k */
    public final boolean f110120k;

    /* renamed from: l */
    public final boolean f110121l;

    /* renamed from: m */
    public final int f110122m;

    /* renamed from: n */
    public final boolean f110123n;

    /* renamed from: o */
    public final Collection<String> f110124o;

    /* renamed from: p */
    public final Collection<String> f110125p;

    /* renamed from: q */
    public final int f110126q;

    /* renamed from: r */
    public final int f110127r;

    /* renamed from: s */
    public final int f110128s;

    /* renamed from: t */
    public final boolean f110129t;

    /* renamed from: u */
    public final boolean f110130u;

    /* loaded from: classes12.dex */
    public static class Builder {

        /* renamed from: a */
        public boolean f110131a;

        /* renamed from: b */
        public HttpHost f110132b;

        /* renamed from: c */
        public InetAddress f110133c;

        /* renamed from: e */
        public String f110135e;

        /* renamed from: h */
        public boolean f110138h;

        /* renamed from: k */
        public Collection<String> f110141k;

        /* renamed from: l */
        public Collection<String> f110142l;

        /* renamed from: d */
        public boolean f110134d = false;

        /* renamed from: f */
        public boolean f110136f = true;

        /* renamed from: i */
        public int f110139i = 50;

        /* renamed from: g */
        public boolean f110137g = true;

        /* renamed from: j */
        public boolean f110140j = true;

        /* renamed from: m */
        public int f110143m = -1;

        /* renamed from: n */
        public int f110144n = -1;

        /* renamed from: o */
        public int f110145o = -1;

        /* renamed from: p */
        public boolean f110146p = true;

        /* renamed from: q */
        public boolean f110147q = true;

        public RequestConfig build() {
            return new RequestConfig(this.f110131a, this.f110132b, this.f110133c, this.f110134d, this.f110135e, this.f110136f, this.f110137g, this.f110138h, this.f110139i, this.f110140j, this.f110141k, this.f110142l, this.f110143m, this.f110144n, this.f110145o, this.f110146p, this.f110147q);
        }

        public Builder setAuthenticationEnabled(boolean z) {
            this.f110140j = z;
            return this;
        }

        public Builder setCircularRedirectsAllowed(boolean z) {
            this.f110138h = z;
            return this;
        }

        public Builder setConnectTimeout(int i) {
            this.f110144n = i;
            return this;
        }

        public Builder setConnectionRequestTimeout(int i) {
            this.f110143m = i;
            return this;
        }

        public Builder setContentCompressionEnabled(boolean z) {
            this.f110146p = z;
            return this;
        }

        public Builder setCookieSpec(String str) {
            this.f110135e = str;
            return this;
        }

        @Deprecated
        public Builder setDecompressionEnabled(boolean z) {
            this.f110146p = z;
            return this;
        }

        public Builder setExpectContinueEnabled(boolean z) {
            this.f110131a = z;
            return this;
        }

        public Builder setLocalAddress(InetAddress inetAddress) {
            this.f110133c = inetAddress;
            return this;
        }

        public Builder setMaxRedirects(int i) {
            this.f110139i = i;
            return this;
        }

        public Builder setNormalizeUri(boolean z) {
            this.f110147q = z;
            return this;
        }

        public Builder setProxy(HttpHost httpHost) {
            this.f110132b = httpHost;
            return this;
        }

        public Builder setProxyPreferredAuthSchemes(Collection<String> collection) {
            this.f110142l = collection;
            return this;
        }

        public Builder setRedirectsEnabled(boolean z) {
            this.f110136f = z;
            return this;
        }

        public Builder setRelativeRedirectsAllowed(boolean z) {
            this.f110137g = z;
            return this;
        }

        public Builder setSocketTimeout(int i) {
            this.f110145o = i;
            return this;
        }

        @Deprecated
        public Builder setStaleConnectionCheckEnabled(boolean z) {
            this.f110134d = z;
            return this;
        }

        public Builder setTargetPreferredAuthSchemes(Collection<String> collection) {
            this.f110141k = collection;
            return this;
        }
    }

    public RequestConfig() {
        this(false, null, null, false, null, false, false, false, 0, false, null, null, 0, 0, 0, true, true);
    }

    public static Builder copy(RequestConfig requestConfig) {
        return new Builder().setExpectContinueEnabled(requestConfig.isExpectContinueEnabled()).setProxy(requestConfig.getProxy()).setLocalAddress(requestConfig.getLocalAddress()).setStaleConnectionCheckEnabled(requestConfig.isStaleConnectionCheckEnabled()).setCookieSpec(requestConfig.getCookieSpec()).setRedirectsEnabled(requestConfig.isRedirectsEnabled()).setRelativeRedirectsAllowed(requestConfig.isRelativeRedirectsAllowed()).setCircularRedirectsAllowed(requestConfig.isCircularRedirectsAllowed()).setMaxRedirects(requestConfig.getMaxRedirects()).setAuthenticationEnabled(requestConfig.isAuthenticationEnabled()).setTargetPreferredAuthSchemes(requestConfig.getTargetPreferredAuthSchemes()).setProxyPreferredAuthSchemes(requestConfig.getProxyPreferredAuthSchemes()).setConnectionRequestTimeout(requestConfig.getConnectionRequestTimeout()).setConnectTimeout(requestConfig.getConnectTimeout()).setSocketTimeout(requestConfig.getSocketTimeout()).setDecompressionEnabled(requestConfig.isDecompressionEnabled()).setContentCompressionEnabled(requestConfig.isContentCompressionEnabled()).setNormalizeUri(requestConfig.isNormalizeUri());
    }

    public static Builder custom() {
        return new Builder();
    }

    public int getConnectTimeout() {
        return this.f110127r;
    }

    public int getConnectionRequestTimeout() {
        return this.f110126q;
    }

    public String getCookieSpec() {
        return this.f110118i;
    }

    public InetAddress getLocalAddress() {
        return this.f110116g;
    }

    public int getMaxRedirects() {
        return this.f110122m;
    }

    public HttpHost getProxy() {
        return this.f110115f;
    }

    public Collection<String> getProxyPreferredAuthSchemes() {
        return this.f110125p;
    }

    public int getSocketTimeout() {
        return this.f110128s;
    }

    public Collection<String> getTargetPreferredAuthSchemes() {
        return this.f110124o;
    }

    public boolean isAuthenticationEnabled() {
        return this.f110123n;
    }

    public boolean isCircularRedirectsAllowed() {
        return this.f110121l;
    }

    public boolean isContentCompressionEnabled() {
        return this.f110129t;
    }

    @Deprecated
    public boolean isDecompressionEnabled() {
        return this.f110129t;
    }

    public boolean isExpectContinueEnabled() {
        return this.f110114e;
    }

    public boolean isNormalizeUri() {
        return this.f110130u;
    }

    public boolean isRedirectsEnabled() {
        return this.f110119j;
    }

    public boolean isRelativeRedirectsAllowed() {
        return this.f110120k;
    }

    @Deprecated
    public boolean isStaleConnectionCheckEnabled() {
        return this.f110117h;
    }

    public String toString() {
        return IteratorUtils.f104923a + "expectContinueEnabled=" + this.f110114e + ", proxy=" + this.f110115f + ", localAddress=" + this.f110116g + ", cookieSpec=" + this.f110118i + ", redirectsEnabled=" + this.f110119j + ", relativeRedirectsAllowed=" + this.f110120k + ", maxRedirects=" + this.f110122m + ", circularRedirectsAllowed=" + this.f110121l + ", authenticationEnabled=" + this.f110123n + ", targetPreferredAuthSchemes=" + this.f110124o + ", proxyPreferredAuthSchemes=" + this.f110125p + ", connectionRequestTimeout=" + this.f110126q + ", connectTimeout=" + this.f110127r + ", socketTimeout=" + this.f110128s + ", contentCompressionEnabled=" + this.f110129t + ", normalizeUri=" + this.f110130u + IteratorUtils.f104924b;
    }

    public RequestConfig(boolean z, HttpHost httpHost, InetAddress inetAddress, boolean z2, String str, boolean z3, boolean z4, boolean z5, int i, boolean z6, Collection<String> collection, Collection<String> collection2, int i2, int i3, int i4, boolean z7, boolean z8) {
        this.f110114e = z;
        this.f110115f = httpHost;
        this.f110116g = inetAddress;
        this.f110117h = z2;
        this.f110118i = str;
        this.f110119j = z3;
        this.f110120k = z4;
        this.f110121l = z5;
        this.f110122m = i;
        this.f110123n = z6;
        this.f110124o = collection;
        this.f110125p = collection2;
        this.f110126q = i2;
        this.f110127r = i3;
        this.f110128s = i4;
        this.f110129t = z7;
        this.f110130u = z8;
    }

    public RequestConfig clone() throws CloneNotSupportedException {
        return (RequestConfig) super.clone();
    }
}
