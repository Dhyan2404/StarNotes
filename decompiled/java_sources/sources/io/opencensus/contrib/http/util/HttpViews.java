package io.opencensus.contrib.http.util;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import io.opencensus.stats.Stats;
import io.opencensus.stats.View;
import io.opencensus.stats.ViewManager;

/* loaded from: classes10.dex */
public final class HttpViews {

    /* renamed from: a */
    @VisibleForTesting
    public static final ImmutableSet<View> f94691a = ImmutableSet.m26238of(HttpViewConstants.HTTP_SERVER_COMPLETED_COUNT_VIEW, HttpViewConstants.HTTP_SERVER_SENT_BYTES_VIEW, HttpViewConstants.HTTP_SERVER_RECEIVED_BYTES_VIEW, HttpViewConstants.HTTP_SERVER_LATENCY_VIEW);

    /* renamed from: b */
    @VisibleForTesting
    public static final ImmutableSet<View> f94692b = ImmutableSet.m26238of(HttpViewConstants.HTTP_CLIENT_COMPLETED_COUNT_VIEW, HttpViewConstants.HTTP_CLIENT_RECEIVED_BYTES_VIEW, HttpViewConstants.HTTP_CLIENT_SENT_BYTES_VIEW, HttpViewConstants.HTTP_CLIENT_ROUNDTRIP_LATENCY_VIEW);

    @VisibleForTesting
    /* renamed from: a */
    public static void m60953a(ViewManager viewManager) {
        UnmodifiableIterator<View> it2 = f94692b.iterator();
        while (it2.hasNext()) {
            viewManager.registerView(it2.next());
        }
    }

    @VisibleForTesting
    /* renamed from: b */
    public static void m60954b(ViewManager viewManager) {
        UnmodifiableIterator<View> it2 = f94691a.iterator();
        while (it2.hasNext()) {
            viewManager.registerView(it2.next());
        }
    }

    @VisibleForTesting
    /* renamed from: c */
    public static void m60955c(ViewManager viewManager) {
        m60953a(viewManager);
        m60954b(viewManager);
    }

    public static final void registerAllClientViews() {
        m60953a(Stats.getViewManager());
    }

    public static final void registerAllServerViews() {
        m60954b(Stats.getViewManager());
    }

    public static final void registerAllViews() {
        m60955c(Stats.getViewManager());
    }
}
