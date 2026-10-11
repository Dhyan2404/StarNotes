package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public interface BandwidthMeter {

    /* loaded from: classes5.dex */
    public interface EventListener {

        /* loaded from: classes5.dex */
        public static final class EventDispatcher {

            /* renamed from: a */
            public final CopyOnWriteArrayList<C4992a> f27933a = new CopyOnWriteArrayList<>();

            /* renamed from: com.google.android.exoplayer2.upstream.BandwidthMeter$EventListener$EventDispatcher$a */
            /* loaded from: classes5.dex */
            public static final class C4992a {

                /* renamed from: a */
                public final Handler f27934a;

                /* renamed from: b */
                public final EventListener f27935b;

                /* renamed from: c */
                public boolean f27936c;

                public C4992a(Handler handler, EventListener eventListener) {
                    this.f27934a = handler;
                    this.f27935b = eventListener;
                }

                /* renamed from: d */
                public void m21305d() {
                    this.f27936c = true;
                }
            }

            /* renamed from: b */
            public static /* synthetic */ void m21301b(C4992a c4992a, int i, long j, long j2) {
                c4992a.f27935b.onBandwidthSample(i, j, j2);
            }

            public void addListener(Handler handler, EventListener eventListener) {
                Assertions.checkNotNull(handler);
                Assertions.checkNotNull(eventListener);
                removeListener(eventListener);
                this.f27933a.add(new C4992a(handler, eventListener));
            }

            public void bandwidthSample(final int i, final long j, final long j2) {
                Iterator<C4992a> it2 = this.f27933a.iterator();
                while (it2.hasNext()) {
                    final C4992a next = it2.next();
                    if (!next.f27936c) {
                        next.f27934a.post(new Runnable() { // from class: com.sunia.HTREnginev2.mm
                            @Override // java.lang.Runnable
                            public final void run() {
                                BandwidthMeter.EventListener.EventDispatcher.m21301b(BandwidthMeter.EventListener.EventDispatcher.C4992a.this, i, j, j2);
                            }
                        });
                    }
                }
            }

            public void removeListener(EventListener eventListener) {
                Iterator<C4992a> it2 = this.f27933a.iterator();
                while (it2.hasNext()) {
                    C4992a next = it2.next();
                    if (next.f27935b == eventListener) {
                        next.m21305d();
                        this.f27933a.remove(next);
                    }
                }
            }
        }

        void onBandwidthSample(int i, long j, long j2);
    }

    void addEventListener(Handler handler, EventListener eventListener);

    long getBitrateEstimate();

    default long getTimeToFirstByteEstimateUs() {
        return C4649C.TIME_UNSET;
    }

    @Nullable
    TransferListener getTransferListener();

    void removeEventListener(EventListener eventListener);
}
