package com.squareup.okhttp;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* loaded from: classes9.dex */
public final class Route {

    /* renamed from: a */
    public final Address f63644a;

    /* renamed from: b */
    public final Proxy f63645b;

    /* renamed from: c */
    public final InetSocketAddress f63646c;

    public Route(Address address, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (address == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f63644a = address;
        this.f63645b = proxy;
        this.f63646c = inetSocketAddress;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Route)) {
            return false;
        }
        Route route = (Route) obj;
        return this.f63644a.equals(route.f63644a) && this.f63645b.equals(route.f63645b) && this.f63646c.equals(route.f63646c);
    }

    public Address getAddress() {
        return this.f63644a;
    }

    public Proxy getProxy() {
        return this.f63645b;
    }

    public InetSocketAddress getSocketAddress() {
        return this.f63646c;
    }

    public int hashCode() {
        return ((((527 + this.f63644a.hashCode()) * 31) + this.f63645b.hashCode()) * 31) + this.f63646c.hashCode();
    }

    public boolean requiresTunnel() {
        return this.f63644a.f63406e != null && this.f63645b.type() == Proxy.Type.HTTP;
    }
}
