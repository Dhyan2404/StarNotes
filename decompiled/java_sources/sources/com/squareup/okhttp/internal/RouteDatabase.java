package com.squareup.okhttp.internal;

import com.squareup.okhttp.Route;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes9.dex */
public final class RouteDatabase {

    /* renamed from: a */
    public final Set<Route> f63723a = new LinkedHashSet();

    public synchronized void connected(Route route) {
        this.f63723a.remove(route);
    }

    public synchronized void failed(Route route) {
        this.f63723a.add(route);
    }

    public synchronized int failedRoutesCount() {
        return this.f63723a.size();
    }

    public synchronized boolean shouldPostpone(Route route) {
        return this.f63723a.contains(route);
    }
}
