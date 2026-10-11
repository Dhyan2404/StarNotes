package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Network;
import com.squareup.okhttp.internal.RouteDatabase;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes9.dex */
public final class RouteSelector {

    /* renamed from: a */
    public final Address f63816a;

    /* renamed from: b */
    public final URI f63817b;

    /* renamed from: c */
    public final Network f63818c;

    /* renamed from: d */
    public final OkHttpClient f63819d;

    /* renamed from: e */
    public final RouteDatabase f63820e;

    /* renamed from: f */
    public Proxy f63821f;

    /* renamed from: g */
    public InetSocketAddress f63822g;

    /* renamed from: i */
    public int f63824i;

    /* renamed from: k */
    public int f63826k;

    /* renamed from: h */
    public List<Proxy> f63823h = Collections.emptyList();

    /* renamed from: j */
    public List<InetSocketAddress> f63825j = Collections.emptyList();

    /* renamed from: l */
    public final List<Route> f63827l = new ArrayList();

    public RouteSelector(Address address, URI uri, OkHttpClient okHttpClient) {
        this.f63816a = address;
        this.f63817b = uri;
        this.f63819d = okHttpClient;
        this.f63820e = Internal.instance.routeDatabase(okHttpClient);
        this.f63818c = Internal.instance.network(okHttpClient);
        m52714i(uri, address.getProxy());
    }

    /* renamed from: a */
    public static String m52706a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    public static RouteSelector get(Address address, Request request, OkHttpClient okHttpClient) throws IOException {
        return new RouteSelector(address, request.uri(), okHttpClient);
    }

    /* renamed from: b */
    public final boolean m52707b() {
        return this.f63826k < this.f63825j.size();
    }

    /* renamed from: c */
    public final boolean m52708c() {
        return !this.f63827l.isEmpty();
    }

    public void connectFailed(Route route, IOException iOException) {
        if (route.getProxy().type() != Proxy.Type.DIRECT && this.f63816a.getProxySelector() != null) {
            this.f63816a.getProxySelector().connectFailed(this.f63817b, route.getProxy().address(), iOException);
        }
        this.f63820e.failed(route);
    }

    /* renamed from: d */
    public final boolean m52709d() {
        return this.f63824i < this.f63823h.size();
    }

    /* renamed from: e */
    public final InetSocketAddress m52710e() throws IOException {
        if (m52707b()) {
            List<InetSocketAddress> list = this.f63825j;
            int i = this.f63826k;
            this.f63826k = i + 1;
            return list.get(i);
        }
        throw new SocketException("No route to " + this.f63816a.getUriHost() + "; exhausted inet socket addresses: " + this.f63825j);
    }

    /* renamed from: f */
    public final Route m52711f() {
        return this.f63827l.remove(0);
    }

    /* renamed from: g */
    public final Proxy m52712g() throws IOException {
        if (m52709d()) {
            List<Proxy> list = this.f63823h;
            int i = this.f63824i;
            this.f63824i = i + 1;
            Proxy proxy = list.get(i);
            m52713h(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f63816a.getUriHost() + "; exhausted proxy configurations: " + this.f63823h);
    }

    /* renamed from: h */
    public final void m52713h(Proxy proxy) throws IOException {
        String uriHost;
        int effectivePort;
        this.f63825j = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            uriHost = this.f63816a.getUriHost();
            effectivePort = Util.getEffectivePort(this.f63817b);
        } else {
            SocketAddress address = proxy.address();
            if (!(address instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
            uriHost = m52706a(inetSocketAddress);
            effectivePort = inetSocketAddress.getPort();
        }
        if (effectivePort < 1 || effectivePort > 65535) {
            throw new SocketException("No route to " + uriHost + ":" + effectivePort + "; port is out of range");
        }
        for (InetAddress inetAddress : this.f63818c.resolveInetAddresses(uriHost)) {
            this.f63825j.add(new InetSocketAddress(inetAddress, effectivePort));
        }
        this.f63826k = 0;
    }

    public boolean hasNext() {
        return m52707b() || m52709d() || m52708c();
    }

    /* renamed from: i */
    public final void m52714i(URI uri, Proxy proxy) {
        if (proxy != null) {
            this.f63823h = Collections.singletonList(proxy);
        } else {
            this.f63823h = new ArrayList();
            List<Proxy> select = this.f63819d.getProxySelector().select(uri);
            if (select != null) {
                this.f63823h.addAll(select);
            }
            this.f63823h.removeAll(Collections.singleton(Proxy.NO_PROXY));
            this.f63823h.add(Proxy.NO_PROXY);
        }
        this.f63824i = 0;
    }

    public Route next() throws IOException {
        if (!m52707b()) {
            if (!m52709d()) {
                if (m52708c()) {
                    return m52711f();
                }
                throw new NoSuchElementException();
            }
            this.f63821f = m52712g();
        }
        InetSocketAddress m52710e = m52710e();
        this.f63822g = m52710e;
        Route route = new Route(this.f63816a, this.f63821f, m52710e);
        if (!this.f63820e.shouldPostpone(route)) {
            return route;
        }
        this.f63827l.add(route);
        return next();
    }
}
