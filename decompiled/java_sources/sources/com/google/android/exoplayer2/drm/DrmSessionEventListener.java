package com.google.android.exoplayer2.drm;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public interface DrmSessionEventListener {

    /* loaded from: classes5.dex */
    public static class EventDispatcher {

        /* renamed from: a */
        public final CopyOnWriteArrayList<C4723a> f23434a;

        @Nullable
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final int windowIndex;

        /* renamed from: com.google.android.exoplayer2.drm.DrmSessionEventListener$EventDispatcher$a */
        /* loaded from: classes5.dex */
        public static final class C4723a {

            /* renamed from: a */
            public Handler f23435a;

            /* renamed from: b */
            public DrmSessionEventListener f23436b;

            public C4723a(Handler handler, DrmSessionEventListener drmSessionEventListener) {
                this.f23435a = handler;
                this.f23436b = drmSessionEventListener;
            }
        }

        public EventDispatcher() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public /* synthetic */ void m18720g(DrmSessionEventListener drmSessionEventListener) {
            drmSessionEventListener.onDrmKeysLoaded(this.windowIndex, this.mediaPeriodId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h */
        public /* synthetic */ void m18721h(DrmSessionEventListener drmSessionEventListener) {
            drmSessionEventListener.onDrmKeysRemoved(this.windowIndex, this.mediaPeriodId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i */
        public /* synthetic */ void m18722i(DrmSessionEventListener drmSessionEventListener) {
            drmSessionEventListener.onDrmKeysRestored(this.windowIndex, this.mediaPeriodId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j */
        public /* synthetic */ void m18723j(DrmSessionEventListener drmSessionEventListener, int i) {
            drmSessionEventListener.onDrmSessionAcquired(this.windowIndex, this.mediaPeriodId);
            drmSessionEventListener.onDrmSessionAcquired(this.windowIndex, this.mediaPeriodId, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public /* synthetic */ void m18724k(DrmSessionEventListener drmSessionEventListener, Exception exc) {
            drmSessionEventListener.onDrmSessionManagerError(this.windowIndex, this.mediaPeriodId, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public /* synthetic */ void m18725l(DrmSessionEventListener drmSessionEventListener) {
            drmSessionEventListener.onDrmSessionReleased(this.windowIndex, this.mediaPeriodId);
        }

        public void addEventListener(Handler handler, DrmSessionEventListener drmSessionEventListener) {
            Assertions.checkNotNull(handler);
            Assertions.checkNotNull(drmSessionEventListener);
            this.f23434a.add(new C4723a(handler, drmSessionEventListener));
        }

        public void drmKeysLoaded() {
            Iterator<C4723a> it2 = this.f23434a.iterator();
            while (it2.hasNext()) {
                C4723a next = it2.next();
                final DrmSessionEventListener drmSessionEventListener = next.f23436b;
                Util.postOrRun(next.f23435a, new Runnable() { // from class: com.sunia.HTREnginev2.djf
                    @Override // java.lang.Runnable
                    public final void run() {
                        DrmSessionEventListener.EventDispatcher.this.m18720g(drmSessionEventListener);
                    }
                });
            }
        }

        public void drmKeysRemoved() {
            Iterator<C4723a> it2 = this.f23434a.iterator();
            while (it2.hasNext()) {
                C4723a next = it2.next();
                final DrmSessionEventListener drmSessionEventListener = next.f23436b;
                Util.postOrRun(next.f23435a, new Runnable() { // from class: com.sunia.HTREnginev2.cjf
                    @Override // java.lang.Runnable
                    public final void run() {
                        DrmSessionEventListener.EventDispatcher.this.m18721h(drmSessionEventListener);
                    }
                });
            }
        }

        public void drmKeysRestored() {
            Iterator<C4723a> it2 = this.f23434a.iterator();
            while (it2.hasNext()) {
                C4723a next = it2.next();
                final DrmSessionEventListener drmSessionEventListener = next.f23436b;
                Util.postOrRun(next.f23435a, new Runnable() { // from class: com.sunia.HTREnginev2.ejf
                    @Override // java.lang.Runnable
                    public final void run() {
                        DrmSessionEventListener.EventDispatcher.this.m18722i(drmSessionEventListener);
                    }
                });
            }
        }

        public void drmSessionAcquired(final int i) {
            Iterator<C4723a> it2 = this.f23434a.iterator();
            while (it2.hasNext()) {
                C4723a next = it2.next();
                final DrmSessionEventListener drmSessionEventListener = next.f23436b;
                Util.postOrRun(next.f23435a, new Runnable() { // from class: com.sunia.HTREnginev2.bjf
                    @Override // java.lang.Runnable
                    public final void run() {
                        DrmSessionEventListener.EventDispatcher.this.m18723j(drmSessionEventListener, i);
                    }
                });
            }
        }

        public void drmSessionManagerError(final Exception exc) {
            Iterator<C4723a> it2 = this.f23434a.iterator();
            while (it2.hasNext()) {
                C4723a next = it2.next();
                final DrmSessionEventListener drmSessionEventListener = next.f23436b;
                Util.postOrRun(next.f23435a, new Runnable() { // from class: com.sunia.HTREnginev2.ajf
                    @Override // java.lang.Runnable
                    public final void run() {
                        DrmSessionEventListener.EventDispatcher.this.m18724k(drmSessionEventListener, exc);
                    }
                });
            }
        }

        public void drmSessionReleased() {
            Iterator<C4723a> it2 = this.f23434a.iterator();
            while (it2.hasNext()) {
                C4723a next = it2.next();
                final DrmSessionEventListener drmSessionEventListener = next.f23436b;
                Util.postOrRun(next.f23435a, new Runnable() { // from class: com.sunia.HTREnginev2.zif
                    @Override // java.lang.Runnable
                    public final void run() {
                        DrmSessionEventListener.EventDispatcher.this.m18725l(drmSessionEventListener);
                    }
                });
            }
        }

        public void removeEventListener(DrmSessionEventListener drmSessionEventListener) {
            Iterator<C4723a> it2 = this.f23434a.iterator();
            while (it2.hasNext()) {
                C4723a next = it2.next();
                if (next.f23436b == drmSessionEventListener) {
                    this.f23434a.remove(next);
                }
            }
        }

        @CheckResult
        public EventDispatcher withParameters(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            return new EventDispatcher(this.f23434a, i, mediaPeriodId);
        }

        public EventDispatcher(CopyOnWriteArrayList<C4723a> copyOnWriteArrayList, int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            this.f23434a = copyOnWriteArrayList;
            this.windowIndex = i;
            this.mediaPeriodId = mediaPeriodId;
        }
    }

    default void onDrmKeysLoaded(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
    }

    default void onDrmKeysRemoved(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
    }

    default void onDrmKeysRestored(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
    }

    @Deprecated
    default void onDrmSessionAcquired(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
    }

    default void onDrmSessionManagerError(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
    }

    default void onDrmSessionReleased(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
    }

    default void onDrmSessionAcquired(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, int i2) {
    }
}
