package com.google.android.exoplayer2;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.MediaSourceList;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MaskingMediaPeriod;
import com.google.android.exoplayer2.source.MaskingMediaSource;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.slj;
import com.sunia.HTREnginev2.v4l;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public final class MediaSourceList {

    /* renamed from: m */
    public static final String f22606m = "MediaSourceList";

    /* renamed from: a */
    public final PlayerId f22607a;

    /* renamed from: e */
    public final MediaSourceListInfoRefreshListener f22611e;

    /* renamed from: f */
    public final MediaSourceEventListener.EventDispatcher f22612f;

    /* renamed from: g */
    public final DrmSessionEventListener.EventDispatcher f22613g;

    /* renamed from: h */
    public final HashMap<C4663c, C4662b> f22614h;

    /* renamed from: i */
    public final Set<C4663c> f22615i;

    /* renamed from: k */
    public boolean f22617k;

    /* renamed from: l */
    @Nullable
    public TransferListener f22618l;

    /* renamed from: j */
    public ShuffleOrder f22616j = new ShuffleOrder.DefaultShuffleOrder(0);

    /* renamed from: c */
    public final IdentityHashMap<MediaPeriod, C4663c> f22609c = new IdentityHashMap<>();

    /* renamed from: d */
    public final Map<Object, C4663c> f22610d = new HashMap();

    /* renamed from: b */
    public final List<C4663c> f22608b = new ArrayList();

    /* loaded from: classes5.dex */
    public interface MediaSourceListInfoRefreshListener {
        void onPlaylistUpdateRequested();
    }

    /* renamed from: com.google.android.exoplayer2.MediaSourceList$a */
    /* loaded from: classes5.dex */
    public final class C4661a implements MediaSourceEventListener, DrmSessionEventListener {

        /* renamed from: e */
        public final C4663c f22619e;

        /* renamed from: f */
        public MediaSourceEventListener.EventDispatcher f22620f;

        /* renamed from: g */
        public DrmSessionEventListener.EventDispatcher f22621g;

        public C4661a(C4663c c4663c) {
            this.f22620f = MediaSourceList.this.f22612f;
            this.f22621g = MediaSourceList.this.f22613g;
            this.f22619e = c4663c;
        }

        /* renamed from: a */
        public final boolean m17971a(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            MediaSource.MediaPeriodId mediaPeriodId2;
            if (mediaPeriodId != null) {
                mediaPeriodId2 = MediaSourceList.m17945o(this.f22619e, mediaPeriodId);
                if (mediaPeriodId2 == null) {
                    return false;
                }
            } else {
                mediaPeriodId2 = null;
            }
            int m17948s = MediaSourceList.m17948s(this.f22619e, i);
            MediaSourceEventListener.EventDispatcher eventDispatcher = this.f22620f;
            if (eventDispatcher.windowIndex != m17948s || !Util.areEqual(eventDispatcher.mediaPeriodId, mediaPeriodId2)) {
                this.f22620f = MediaSourceList.this.f22612f.withParameters(m17948s, mediaPeriodId2, 0L);
            }
            DrmSessionEventListener.EventDispatcher eventDispatcher2 = this.f22621g;
            if (eventDispatcher2.windowIndex == m17948s && Util.areEqual(eventDispatcher2.mediaPeriodId, mediaPeriodId2)) {
                return true;
            }
            this.f22621g = MediaSourceList.this.f22613g.withParameters(m17948s, mediaPeriodId2);
            return true;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onDownstreamFormatChanged(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            if (m17971a(i, mediaPeriodId)) {
                this.f22620f.downstreamFormatChanged(mediaLoadData);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysLoaded(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (m17971a(i, mediaPeriodId)) {
                this.f22621g.drmKeysLoaded();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysRemoved(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (m17971a(i, mediaPeriodId)) {
                this.f22621g.drmKeysRemoved();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysRestored(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (m17971a(i, mediaPeriodId)) {
                this.f22621g.drmKeysRestored();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionAcquired(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, int i2) {
            if (m17971a(i, mediaPeriodId)) {
                this.f22621g.drmSessionAcquired(i2);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionManagerError(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
            if (m17971a(i, mediaPeriodId)) {
                this.f22621g.drmSessionManagerError(exc);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionReleased(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (m17971a(i, mediaPeriodId)) {
                this.f22621g.drmSessionReleased();
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadCanceled(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (m17971a(i, mediaPeriodId)) {
                this.f22620f.loadCanceled(loadEventInfo, mediaLoadData);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadCompleted(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (m17971a(i, mediaPeriodId)) {
                this.f22620f.loadCompleted(loadEventInfo, mediaLoadData);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadError(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            if (m17971a(i, mediaPeriodId)) {
                this.f22620f.loadError(loadEventInfo, mediaLoadData, iOException, z);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadStarted(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (m17971a(i, mediaPeriodId)) {
                this.f22620f.loadStarted(loadEventInfo, mediaLoadData);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onUpstreamDiscarded(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            if (m17971a(i, mediaPeriodId)) {
                this.f22620f.upstreamDiscarded(mediaLoadData);
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.MediaSourceList$b */
    /* loaded from: classes5.dex */
    public static final class C4662b {

        /* renamed from: a */
        public final MediaSource f22623a;

        /* renamed from: b */
        public final MediaSource.MediaSourceCaller f22624b;

        /* renamed from: c */
        public final C4661a f22625c;

        public C4662b(MediaSource mediaSource, MediaSource.MediaSourceCaller mediaSourceCaller, C4661a c4661a) {
            this.f22623a = mediaSource;
            this.f22624b = mediaSourceCaller;
            this.f22625c = c4661a;
        }
    }

    /* renamed from: com.google.android.exoplayer2.MediaSourceList$c */
    /* loaded from: classes5.dex */
    public static final class C4663c implements slj {

        /* renamed from: a */
        public final MaskingMediaSource f22626a;

        /* renamed from: d */
        public int f22629d;

        /* renamed from: e */
        public boolean f22630e;

        /* renamed from: c */
        public final List<MediaSource.MediaPeriodId> f22628c = new ArrayList();

        /* renamed from: b */
        public final Object f22627b = new Object();

        public C4663c(MediaSource mediaSource, boolean z) {
            this.f22626a = new MaskingMediaSource(mediaSource, z);
        }

        @Override // com.sunia.HTREnginev2.slj
        /* renamed from: a */
        public Timeline mo17972a() {
            return this.f22626a.getTimeline();
        }

        /* renamed from: b */
        public void m17973b(int i) {
            this.f22629d = i;
            this.f22630e = false;
            this.f22628c.clear();
        }

        @Override // com.sunia.HTREnginev2.slj
        public Object getUid() {
            return this.f22627b;
        }
    }

    public MediaSourceList(MediaSourceListInfoRefreshListener mediaSourceListInfoRefreshListener, AnalyticsCollector analyticsCollector, Handler handler, PlayerId playerId) {
        this.f22607a = playerId;
        this.f22611e = mediaSourceListInfoRefreshListener;
        MediaSourceEventListener.EventDispatcher eventDispatcher = new MediaSourceEventListener.EventDispatcher();
        this.f22612f = eventDispatcher;
        DrmSessionEventListener.EventDispatcher eventDispatcher2 = new DrmSessionEventListener.EventDispatcher();
        this.f22613g = eventDispatcher2;
        this.f22614h = new HashMap<>();
        this.f22615i = new HashSet();
        eventDispatcher.addEventListener(handler, analyticsCollector);
        eventDispatcher2.addEventListener(handler, analyticsCollector);
    }

    /* renamed from: n */
    public static Object m17944n(Object obj) {
        return AbstractConcatenatedTimeline.getChildPeriodUidFromConcatenatedUid(obj);
    }

    @Nullable
    /* renamed from: o */
    public static MediaSource.MediaPeriodId m17945o(C4663c c4663c, MediaSource.MediaPeriodId mediaPeriodId) {
        for (int i = 0; i < c4663c.f22628c.size(); i++) {
            if (c4663c.f22628c.get(i).windowSequenceNumber == mediaPeriodId.windowSequenceNumber) {
                return mediaPeriodId.copyWithPeriodUid(m17947q(c4663c, mediaPeriodId.periodUid));
            }
        }
        return null;
    }

    /* renamed from: p */
    public static Object m17946p(Object obj) {
        return AbstractConcatenatedTimeline.getChildTimelineUidFromConcatenatedUid(obj);
    }

    /* renamed from: q */
    public static Object m17947q(C4663c c4663c, Object obj) {
        return AbstractConcatenatedTimeline.getConcatenatedUid(c4663c.f22627b, obj);
    }

    /* renamed from: s */
    public static int m17948s(C4663c c4663c, int i) {
        return i + c4663c.f22629d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public /* synthetic */ void m17949u(MediaSource mediaSource, Timeline timeline) {
        this.f22611e.onPlaylistUpdateRequested();
    }

    /* renamed from: A */
    public void m17950A() {
        for (C4662b c4662b : this.f22614h.values()) {
            try {
                c4662b.f22623a.releaseSource(c4662b.f22624b);
            } catch (RuntimeException e) {
                Log.m21490e(f22606m, "Failed to release child source.", e);
            }
            c4662b.f22623a.removeEventListener(c4662b.f22625c);
            c4662b.f22623a.removeDrmEventListener(c4662b.f22625c);
        }
        this.f22614h.clear();
        this.f22615i.clear();
        this.f22617k = false;
    }

    /* renamed from: B */
    public void m17951B(MediaPeriod mediaPeriod) {
        C4663c c4663c = (C4663c) Assertions.checkNotNull(this.f22609c.remove(mediaPeriod));
        c4663c.f22626a.releasePeriod(mediaPeriod);
        c4663c.f22628c.remove(((MaskingMediaPeriod) mediaPeriod).f25262id);
        if (!this.f22609c.isEmpty()) {
            m17962l();
        }
        m17966v(c4663c);
    }

    /* renamed from: C */
    public Timeline m17952C(int i, int i2, ShuffleOrder shuffleOrder) {
        Assertions.checkArgument(i >= 0 && i <= i2 && i2 <= m17964r());
        this.f22616j = shuffleOrder;
        m17953D(i, i2);
        return m17960j();
    }

    /* renamed from: D */
    public final void m17953D(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            C4663c remove = this.f22608b.remove(i3);
            this.f22610d.remove(remove.f22627b);
            m17958h(i3, -remove.f22626a.getTimeline().getWindowCount());
            remove.f22630e = true;
            if (this.f22617k) {
                m17966v(remove);
            }
        }
    }

    /* renamed from: E */
    public Timeline m17954E(List<C4663c> list, ShuffleOrder shuffleOrder) {
        m17953D(0, this.f22608b.size());
        return m17956f(this.f22608b.size(), list, shuffleOrder);
    }

    /* renamed from: F */
    public Timeline m17955F(ShuffleOrder shuffleOrder) {
        int m17964r = m17964r();
        if (shuffleOrder.getLength() != m17964r) {
            shuffleOrder = shuffleOrder.cloneAndClear().cloneAndInsert(0, m17964r);
        }
        this.f22616j = shuffleOrder;
        return m17960j();
    }

    /* renamed from: f */
    public Timeline m17956f(int i, List<C4663c> list, ShuffleOrder shuffleOrder) {
        if (!list.isEmpty()) {
            this.f22616j = shuffleOrder;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                C4663c c4663c = list.get(i2 - i);
                if (i2 > 0) {
                    C4663c c4663c2 = this.f22608b.get(i2 - 1);
                    c4663c.m17973b(c4663c2.f22629d + c4663c2.f22626a.getTimeline().getWindowCount());
                } else {
                    c4663c.m17973b(0);
                }
                m17958h(i2, c4663c.f22626a.getTimeline().getWindowCount());
                this.f22608b.add(i2, c4663c);
                this.f22610d.put(c4663c.f22627b, c4663c);
                if (this.f22617k) {
                    m17970z(c4663c);
                    if (this.f22609c.isEmpty()) {
                        this.f22615i.add(c4663c);
                    } else {
                        m17961k(c4663c);
                    }
                }
            }
        }
        return m17960j();
    }

    /* renamed from: g */
    public Timeline m17957g(@Nullable ShuffleOrder shuffleOrder) {
        if (shuffleOrder == null) {
            shuffleOrder = this.f22616j.cloneAndClear();
        }
        this.f22616j = shuffleOrder;
        m17953D(0, m17964r());
        return m17960j();
    }

    /* renamed from: h */
    public final void m17958h(int i, int i2) {
        while (i < this.f22608b.size()) {
            this.f22608b.get(i).f22629d += i2;
            i++;
        }
    }

    /* renamed from: i */
    public MediaPeriod m17959i(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        Object m17946p = m17946p(mediaPeriodId.periodUid);
        MediaSource.MediaPeriodId copyWithPeriodUid = mediaPeriodId.copyWithPeriodUid(m17944n(mediaPeriodId.periodUid));
        C4663c c4663c = (C4663c) Assertions.checkNotNull(this.f22610d.get(m17946p));
        m17963m(c4663c);
        c4663c.f22628c.add(copyWithPeriodUid);
        MaskingMediaPeriod createPeriod = c4663c.f22626a.createPeriod(copyWithPeriodUid, allocator, j);
        this.f22609c.put(createPeriod, c4663c);
        m17962l();
        return createPeriod;
    }

    /* renamed from: j */
    public Timeline m17960j() {
        if (this.f22608b.isEmpty()) {
            return Timeline.EMPTY;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.f22608b.size(); i2++) {
            C4663c c4663c = this.f22608b.get(i2);
            c4663c.f22629d = i;
            i += c4663c.f22626a.getTimeline().getWindowCount();
        }
        return new v4l(this.f22608b, this.f22616j);
    }

    /* renamed from: k */
    public final void m17961k(C4663c c4663c) {
        C4662b c4662b = this.f22614h.get(c4663c);
        if (c4662b != null) {
            c4662b.f22623a.disable(c4662b.f22624b);
        }
    }

    /* renamed from: l */
    public final void m17962l() {
        Iterator<C4663c> it2 = this.f22615i.iterator();
        while (it2.hasNext()) {
            C4663c next = it2.next();
            if (next.f22628c.isEmpty()) {
                m17961k(next);
                it2.remove();
            }
        }
    }

    /* renamed from: m */
    public final void m17963m(C4663c c4663c) {
        this.f22615i.add(c4663c);
        C4662b c4662b = this.f22614h.get(c4663c);
        if (c4662b != null) {
            c4662b.f22623a.enable(c4662b.f22624b);
        }
    }

    /* renamed from: r */
    public int m17964r() {
        return this.f22608b.size();
    }

    /* renamed from: t */
    public boolean m17965t() {
        return this.f22617k;
    }

    /* renamed from: v */
    public final void m17966v(C4663c c4663c) {
        if (c4663c.f22630e && c4663c.f22628c.isEmpty()) {
            C4662b c4662b = (C4662b) Assertions.checkNotNull(this.f22614h.remove(c4663c));
            c4662b.f22623a.releaseSource(c4662b.f22624b);
            c4662b.f22623a.removeEventListener(c4662b.f22625c);
            c4662b.f22623a.removeDrmEventListener(c4662b.f22625c);
            this.f22615i.remove(c4663c);
        }
    }

    /* renamed from: w */
    public Timeline m17967w(int i, int i2, ShuffleOrder shuffleOrder) {
        return m17968x(i, i + 1, i2, shuffleOrder);
    }

    /* renamed from: x */
    public Timeline m17968x(int i, int i2, int i3, ShuffleOrder shuffleOrder) {
        Assertions.checkArgument(i >= 0 && i <= i2 && i2 <= m17964r() && i3 >= 0);
        this.f22616j = shuffleOrder;
        if (i == i2 || i == i3) {
            return m17960j();
        }
        int min = Math.min(i, i3);
        int max = Math.max(((i2 - i) + i3) - 1, i2 - 1);
        int i4 = this.f22608b.get(min).f22629d;
        Util.moveItems(this.f22608b, i, i2, i3);
        while (min <= max) {
            C4663c c4663c = this.f22608b.get(min);
            c4663c.f22629d = i4;
            i4 += c4663c.f22626a.getTimeline().getWindowCount();
            min++;
        }
        return m17960j();
    }

    /* renamed from: y */
    public void m17969y(@Nullable TransferListener transferListener) {
        Assertions.checkState(!this.f22617k);
        this.f22618l = transferListener;
        for (int i = 0; i < this.f22608b.size(); i++) {
            C4663c c4663c = this.f22608b.get(i);
            m17970z(c4663c);
            this.f22615i.add(c4663c);
        }
        this.f22617k = true;
    }

    /* renamed from: z */
    public final void m17970z(C4663c c4663c) {
        MaskingMediaSource maskingMediaSource = c4663c.f22626a;
        MediaSource.MediaSourceCaller mediaSourceCaller = new MediaSource.MediaSourceCaller() { // from class: com.sunia.HTREnginev2.tlj
            @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
            public final void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline) {
                MediaSourceList.this.m17949u(mediaSource, timeline);
            }
        };
        C4661a c4661a = new C4661a(c4663c);
        this.f22614h.put(c4663c, new C4662b(maskingMediaSource, mediaSourceCaller, c4661a));
        maskingMediaSource.addEventListener(Util.createHandlerForCurrentOrMainLooper(), c4661a);
        maskingMediaSource.addDrmEventListener(Util.createHandlerForCurrentOrMainLooper(), c4661a);
        maskingMediaSource.prepareSource(mediaSourceCaller, this.f22618l, this.f22607a);
    }
}
