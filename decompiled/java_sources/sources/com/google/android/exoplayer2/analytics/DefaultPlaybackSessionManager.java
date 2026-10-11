package com.google.android.exoplayer2.analytics;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager;
import com.google.android.exoplayer2.analytics.PlaybackSessionManager;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.common.base.Supplier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class DefaultPlaybackSessionManager implements PlaybackSessionManager {
    public static final Supplier<String> DEFAULT_SESSION_ID_GENERATOR = new Supplier() { // from class: com.sunia.HTREnginev2.b0f
        @Override // com.google.common.base.Supplier, java.util.function.Supplier
        public final Object get() {
            String m18349d;
            m18349d = DefaultPlaybackSessionManager.m18349d();
            return m18349d;
        }
    };

    /* renamed from: h */
    public static final Random f22862h = new Random();

    /* renamed from: i */
    public static final int f22863i = 12;

    /* renamed from: a */
    public final Timeline.Window f22864a;

    /* renamed from: b */
    public final Timeline.Period f22865b;

    /* renamed from: c */
    public final HashMap<String, C4673a> f22866c;

    /* renamed from: d */
    public final Supplier<String> f22867d;

    /* renamed from: e */
    public PlaybackSessionManager.Listener f22868e;

    /* renamed from: f */
    public Timeline f22869f;

    /* renamed from: g */
    @Nullable
    public String f22870g;

    /* renamed from: com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager$a */
    /* loaded from: classes5.dex */
    public final class C4673a {

        /* renamed from: a */
        public final String f22871a;

        /* renamed from: b */
        public int f22872b;

        /* renamed from: c */
        public long f22873c;

        /* renamed from: d */
        public MediaSource.MediaPeriodId f22874d;

        /* renamed from: e */
        public boolean f22875e;

        /* renamed from: f */
        public boolean f22876f;

        public C4673a(String str, int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            this.f22871a = str;
            this.f22872b = i;
            this.f22873c = mediaPeriodId == null ? -1L : mediaPeriodId.windowSequenceNumber;
            if (mediaPeriodId == null || !mediaPeriodId.isAd()) {
                return;
            }
            this.f22874d = mediaPeriodId;
        }

        /* renamed from: i */
        public boolean m18360i(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (mediaPeriodId == null) {
                return i == this.f22872b;
            }
            MediaSource.MediaPeriodId mediaPeriodId2 = this.f22874d;
            return mediaPeriodId2 == null ? !mediaPeriodId.isAd() && mediaPeriodId.windowSequenceNumber == this.f22873c : mediaPeriodId.windowSequenceNumber == mediaPeriodId2.windowSequenceNumber && mediaPeriodId.adGroupIndex == mediaPeriodId2.adGroupIndex && mediaPeriodId.adIndexInAdGroup == mediaPeriodId2.adIndexInAdGroup;
        }

        /* renamed from: j */
        public boolean m18361j(AnalyticsListener.EventTime eventTime) {
            long j = this.f22873c;
            if (j == -1) {
                return false;
            }
            MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
            if (mediaPeriodId == null) {
                return this.f22872b != eventTime.windowIndex;
            }
            if (mediaPeriodId.windowSequenceNumber > j) {
                return true;
            }
            if (this.f22874d == null) {
                return false;
            }
            int indexOfPeriod = eventTime.timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
            int indexOfPeriod2 = eventTime.timeline.getIndexOfPeriod(this.f22874d.periodUid);
            MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.mediaPeriodId;
            if (mediaPeriodId2.windowSequenceNumber < this.f22874d.windowSequenceNumber || indexOfPeriod < indexOfPeriod2) {
                return false;
            }
            if (indexOfPeriod > indexOfPeriod2) {
                return true;
            }
            if (!mediaPeriodId2.isAd()) {
                int i = eventTime.mediaPeriodId.nextAdGroupIndex;
                return i == -1 || i > this.f22874d.adGroupIndex;
            }
            MediaSource.MediaPeriodId mediaPeriodId3 = eventTime.mediaPeriodId;
            int i2 = mediaPeriodId3.adGroupIndex;
            int i3 = mediaPeriodId3.adIndexInAdGroup;
            MediaSource.MediaPeriodId mediaPeriodId4 = this.f22874d;
            int i4 = mediaPeriodId4.adGroupIndex;
            return i2 > i4 || (i2 == i4 && i3 > mediaPeriodId4.adIndexInAdGroup);
        }

        /* renamed from: k */
        public void m18362k(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (this.f22873c == -1 && i == this.f22872b && mediaPeriodId != null) {
                this.f22873c = mediaPeriodId.windowSequenceNumber;
            }
        }

        /* renamed from: l */
        public final int m18363l(Timeline timeline, Timeline timeline2, int i) {
            if (i >= timeline.getWindowCount()) {
                if (i < timeline2.getWindowCount()) {
                    return i;
                }
                return -1;
            }
            timeline.getWindow(i, DefaultPlaybackSessionManager.this.f22864a);
            for (int i2 = DefaultPlaybackSessionManager.this.f22864a.firstPeriodIndex; i2 <= DefaultPlaybackSessionManager.this.f22864a.lastPeriodIndex; i2++) {
                int indexOfPeriod = timeline2.getIndexOfPeriod(timeline.getUidOfPeriod(i2));
                if (indexOfPeriod != -1) {
                    return timeline2.getPeriod(indexOfPeriod, DefaultPlaybackSessionManager.this.f22865b).windowIndex;
                }
            }
            return -1;
        }

        /* renamed from: m */
        public boolean m18364m(Timeline timeline, Timeline timeline2) {
            int m18363l = m18363l(timeline, timeline2, this.f22872b);
            this.f22872b = m18363l;
            if (m18363l == -1) {
                return false;
            }
            MediaSource.MediaPeriodId mediaPeriodId = this.f22874d;
            return mediaPeriodId == null || timeline2.getIndexOfPeriod(mediaPeriodId.periodUid) != -1;
        }
    }

    public DefaultPlaybackSessionManager() {
        this(DEFAULT_SESSION_ID_GENERATOR);
    }

    /* renamed from: d */
    public static String m18349d() {
        byte[] bArr = new byte[12];
        f22862h.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized boolean belongsToSession(AnalyticsListener.EventTime eventTime, String str) {
        C4673a c4673a = this.f22866c.get(str);
        if (c4673a == null) {
            return false;
        }
        c4673a.m18362k(eventTime.windowIndex, eventTime.mediaPeriodId);
        return c4673a.m18360i(eventTime.windowIndex, eventTime.mediaPeriodId);
    }

    /* renamed from: e */
    public final C4673a m18350e(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        C4673a c4673a = null;
        long j = Long.MAX_VALUE;
        for (C4673a c4673a2 : this.f22866c.values()) {
            c4673a2.m18362k(i, mediaPeriodId);
            if (c4673a2.m18360i(i, mediaPeriodId)) {
                long j2 = c4673a2.f22873c;
                if (j2 == -1 || j2 < j) {
                    c4673a = c4673a2;
                    j = j2;
                } else if (j2 == j && ((C4673a) Util.castNonNull(c4673a)).f22874d != null && c4673a2.f22874d != null) {
                    c4673a = c4673a2;
                }
            }
        }
        if (c4673a != null) {
            return c4673a;
        }
        String str = this.f22867d.get();
        C4673a c4673a3 = new C4673a(str, i, mediaPeriodId);
        this.f22866c.put(str, c4673a3);
        return c4673a3;
    }

    @RequiresNonNull({ServiceSpecificExtraArgs.CastExtraArgs.LISTENER})
    /* renamed from: f */
    public final void m18351f(AnalyticsListener.EventTime eventTime) {
        if (eventTime.timeline.isEmpty()) {
            this.f22870g = null;
            return;
        }
        C4673a c4673a = this.f22866c.get(this.f22870g);
        C4673a m18350e = m18350e(eventTime.windowIndex, eventTime.mediaPeriodId);
        this.f22870g = m18350e.f22871a;
        updateSessions(eventTime);
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if (mediaPeriodId == null || !mediaPeriodId.isAd()) {
            return;
        }
        if (c4673a != null && c4673a.f22873c == eventTime.mediaPeriodId.windowSequenceNumber && c4673a.f22874d != null && c4673a.f22874d.adGroupIndex == eventTime.mediaPeriodId.adGroupIndex && c4673a.f22874d.adIndexInAdGroup == eventTime.mediaPeriodId.adIndexInAdGroup) {
            return;
        }
        MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.mediaPeriodId;
        this.f22868e.onAdPlaybackStarted(eventTime, m18350e(eventTime.windowIndex, new MediaSource.MediaPeriodId(mediaPeriodId2.periodUid, mediaPeriodId2.windowSequenceNumber)).f22871a, m18350e.f22871a);
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized void finishAllSessions(AnalyticsListener.EventTime eventTime) {
        PlaybackSessionManager.Listener listener;
        this.f22870g = null;
        Iterator<C4673a> it2 = this.f22866c.values().iterator();
        while (it2.hasNext()) {
            C4673a next = it2.next();
            it2.remove();
            if (next.f22875e && (listener = this.f22868e) != null) {
                listener.onSessionFinished(eventTime, next.f22871a, false);
            }
        }
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    @Nullable
    public synchronized String getActiveSessionId() {
        return this.f22870g;
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized String getSessionForMediaPeriodId(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        return m18350e(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.f22865b).windowIndex, mediaPeriodId).f22871a;
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public void setListener(PlaybackSessionManager.Listener listener) {
        this.f22868e = listener;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00e1 A[Catch: all -> 0x0118, TryCatch #0 {, blocks: (B:4:0x0005, B:9:0x0014, B:12:0x0025, B:14:0x0030, B:20:0x003a, B:23:0x004b, B:25:0x0057, B:26:0x005d, B:28:0x0061, B:30:0x0067, B:32:0x0080, B:33:0x00db, B:35:0x00e1, B:36:0x00f7, B:38:0x0103, B:40:0x0109), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f3  */
    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void updateSessions(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime r25) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.updateSessions(com.google.android.exoplayer2.analytics.AnalyticsListener$EventTime):void");
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized void updateSessionsWithDiscontinuity(AnalyticsListener.EventTime eventTime, int i) {
        Assertions.checkNotNull(this.f22868e);
        boolean z = i == 0;
        Iterator<C4673a> it2 = this.f22866c.values().iterator();
        while (it2.hasNext()) {
            C4673a next = it2.next();
            if (next.m18361j(eventTime)) {
                it2.remove();
                if (next.f22875e) {
                    boolean equals = next.f22871a.equals(this.f22870g);
                    boolean z2 = z && equals && next.f22876f;
                    if (equals) {
                        this.f22870g = null;
                    }
                    this.f22868e.onSessionFinished(eventTime, next.f22871a, z2);
                }
            }
        }
        m18351f(eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized void updateSessionsWithTimelineChange(AnalyticsListener.EventTime eventTime) {
        Assertions.checkNotNull(this.f22868e);
        Timeline timeline = this.f22869f;
        this.f22869f = eventTime.timeline;
        Iterator<C4673a> it2 = this.f22866c.values().iterator();
        while (it2.hasNext()) {
            C4673a next = it2.next();
            if (!next.m18364m(timeline, this.f22869f) || next.m18361j(eventTime)) {
                it2.remove();
                if (next.f22875e) {
                    if (next.f22871a.equals(this.f22870g)) {
                        this.f22870g = null;
                    }
                    this.f22868e.onSessionFinished(eventTime, next.f22871a, false);
                }
            }
        }
        m18351f(eventTime);
    }

    public DefaultPlaybackSessionManager(Supplier<String> supplier) {
        this.f22867d = supplier;
        this.f22864a = new Timeline.Window();
        this.f22865b = new Timeline.Period();
        this.f22866c = new HashMap<>();
        this.f22869f = Timeline.EMPTY;
    }
}
