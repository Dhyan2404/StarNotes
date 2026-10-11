package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.p008ui.AdViewProvider;
import com.google.android.exoplayer2.source.CompositeMediaSource;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MaskingMediaPeriod;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ads.AdPlaybackState;
import com.google.android.exoplayer2.source.ads.AdsLoader;
import com.google.android.exoplayer2.source.ads.AdsMediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes5.dex */
public final class AdsMediaSource extends CompositeMediaSource<MediaSource.MediaPeriodId> {

    /* renamed from: J */
    public static final MediaSource.MediaPeriodId f25449J = new MediaSource.MediaPeriodId(new Object());

    /* renamed from: o */
    public final MediaSource f25450o;

    /* renamed from: p */
    public final MediaSource.Factory f25451p;

    /* renamed from: q */
    public final AdsLoader f25452q;

    /* renamed from: r */
    public final AdViewProvider f25453r;

    /* renamed from: s */
    public final DataSpec f25454s;

    /* renamed from: t */
    public final Object f25455t;

    /* renamed from: w */
    @Nullable
    public C4853c f25458w;

    /* renamed from: x */
    @Nullable
    public Timeline f25459x;

    /* renamed from: y */
    @Nullable
    public AdPlaybackState f25460y;

    /* renamed from: u */
    public final Handler f25456u = new Handler(Looper.getMainLooper());

    /* renamed from: v */
    public final Timeline.Period f25457v = new Timeline.Period();

    /* renamed from: z */
    public C4851a[][] f25461z = new C4851a[0];

    /* loaded from: classes5.dex */
    public static final class AdLoadException extends IOException {
        public static final int TYPE_AD = 0;
        public static final int TYPE_AD_GROUP = 1;
        public static final int TYPE_ALL_ADS = 2;
        public static final int TYPE_UNEXPECTED = 3;
        public final int type;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes5.dex */
        public @interface Type {
        }

        private AdLoadException(int i, Exception exc) {
            super(exc);
            this.type = i;
        }

        public static AdLoadException createForAd(Exception exc) {
            return new AdLoadException(0, exc);
        }

        public static AdLoadException createForAdGroup(Exception exc, int i) {
            StringBuilder sb = new StringBuilder(35);
            sb.append("Failed to load ad group ");
            sb.append(i);
            return new AdLoadException(1, new IOException(sb.toString(), exc));
        }

        public static AdLoadException createForAllAds(Exception exc) {
            return new AdLoadException(2, exc);
        }

        public static AdLoadException createForUnexpected(RuntimeException runtimeException) {
            return new AdLoadException(3, runtimeException);
        }

        public RuntimeException getRuntimeExceptionForUnexpected() {
            Assertions.checkState(this.type == 3);
            return (RuntimeException) Assertions.checkNotNull(getCause());
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ads.AdsMediaSource$a */
    /* loaded from: classes5.dex */
    public final class C4851a {

        /* renamed from: a */
        public final MediaSource.MediaPeriodId f25462a;

        /* renamed from: b */
        public final List<MaskingMediaPeriod> f25463b = new ArrayList();

        /* renamed from: c */
        public Uri f25464c;

        /* renamed from: d */
        public MediaSource f25465d;

        /* renamed from: e */
        public Timeline f25466e;

        public C4851a(MediaSource.MediaPeriodId mediaPeriodId) {
            this.f25462a = mediaPeriodId;
        }

        /* renamed from: a */
        public MediaPeriod m19752a(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
            MaskingMediaPeriod maskingMediaPeriod = new MaskingMediaPeriod(mediaPeriodId, allocator, j);
            this.f25463b.add(maskingMediaPeriod);
            MediaSource mediaSource = this.f25465d;
            if (mediaSource != null) {
                maskingMediaPeriod.setMediaSource(mediaSource);
                maskingMediaPeriod.setPrepareListener(new C4852b((Uri) Assertions.checkNotNull(this.f25464c)));
            }
            Timeline timeline = this.f25466e;
            if (timeline != null) {
                maskingMediaPeriod.createPeriod(new MediaSource.MediaPeriodId(timeline.getUidOfPeriod(0), mediaPeriodId.windowSequenceNumber));
            }
            return maskingMediaPeriod;
        }

        /* renamed from: b */
        public long m19753b() {
            Timeline timeline = this.f25466e;
            return timeline == null ? C4649C.TIME_UNSET : timeline.getPeriod(0, AdsMediaSource.this.f25457v).getDurationUs();
        }

        /* renamed from: c */
        public void m19754c(Timeline timeline) {
            Assertions.checkArgument(timeline.getPeriodCount() == 1);
            if (this.f25466e == null) {
                Object uidOfPeriod = timeline.getUidOfPeriod(0);
                for (int i = 0; i < this.f25463b.size(); i++) {
                    MaskingMediaPeriod maskingMediaPeriod = this.f25463b.get(i);
                    maskingMediaPeriod.createPeriod(new MediaSource.MediaPeriodId(uidOfPeriod, maskingMediaPeriod.f25262id.windowSequenceNumber));
                }
            }
            this.f25466e = timeline;
        }

        /* renamed from: d */
        public boolean m19755d() {
            return this.f25465d != null;
        }

        /* renamed from: e */
        public void m19756e(MediaSource mediaSource, Uri uri) {
            this.f25465d = mediaSource;
            this.f25464c = uri;
            for (int i = 0; i < this.f25463b.size(); i++) {
                MaskingMediaPeriod maskingMediaPeriod = this.f25463b.get(i);
                maskingMediaPeriod.setMediaSource(mediaSource);
                maskingMediaPeriod.setPrepareListener(new C4852b(uri));
            }
            AdsMediaSource.this.prepareChildSource(this.f25462a, mediaSource);
        }

        /* renamed from: f */
        public boolean m19757f() {
            return this.f25463b.isEmpty();
        }

        /* renamed from: g */
        public void m19758g() {
            if (m19755d()) {
                AdsMediaSource.this.releaseChildSource(this.f25462a);
            }
        }

        /* renamed from: h */
        public void m19759h(MaskingMediaPeriod maskingMediaPeriod) {
            this.f25463b.remove(maskingMediaPeriod);
            maskingMediaPeriod.releasePeriod();
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ads.AdsMediaSource$b */
    /* loaded from: classes5.dex */
    public final class C4852b implements MaskingMediaPeriod.PrepareListener {

        /* renamed from: a */
        public final Uri f25468a;

        public C4852b(Uri uri) {
            this.f25468a = uri;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m19762c(MediaSource.MediaPeriodId mediaPeriodId) {
            AdsMediaSource.this.f25452q.handlePrepareComplete(AdsMediaSource.this, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ void m19763d(MediaSource.MediaPeriodId mediaPeriodId, IOException iOException) {
            AdsMediaSource.this.f25452q.handlePrepareError(AdsMediaSource.this, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, iOException);
        }

        @Override // com.google.android.exoplayer2.source.MaskingMediaPeriod.PrepareListener
        public void onPrepareComplete(final MediaSource.MediaPeriodId mediaPeriodId) {
            AdsMediaSource.this.f25456u.post(new Runnable() { // from class: com.sunia.HTREnginev2.g9
                @Override // java.lang.Runnable
                public final void run() {
                    AdsMediaSource.C4852b.this.m19762c(mediaPeriodId);
                }
            });
        }

        @Override // com.google.android.exoplayer2.source.MaskingMediaPeriod.PrepareListener
        public void onPrepareError(final MediaSource.MediaPeriodId mediaPeriodId, final IOException iOException) {
            AdsMediaSource.this.createEventDispatcher(mediaPeriodId).loadError(new LoadEventInfo(LoadEventInfo.getNewId(), new DataSpec(this.f25468a), SystemClock.elapsedRealtime()), 6, (IOException) AdLoadException.createForAd(iOException), true);
            AdsMediaSource.this.f25456u.post(new Runnable() { // from class: com.sunia.HTREnginev2.h9
                @Override // java.lang.Runnable
                public final void run() {
                    AdsMediaSource.C4852b.this.m19763d(mediaPeriodId, iOException);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ads.AdsMediaSource$c */
    /* loaded from: classes5.dex */
    public final class C4853c implements AdsLoader.EventListener {

        /* renamed from: a */
        public final Handler f25470a = Util.createHandlerForCurrentLooper();

        /* renamed from: b */
        public volatile boolean f25471b;

        public C4853c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m19765b(AdPlaybackState adPlaybackState) {
            if (this.f25471b) {
                return;
            }
            AdsMediaSource.this.m19751r(adPlaybackState);
        }

        /* renamed from: c */
        public void m19766c() {
            this.f25471b = true;
            this.f25470a.removeCallbacksAndMessages(null);
        }

        @Override // com.google.android.exoplayer2.source.ads.AdsLoader.EventListener
        public void onAdLoadError(AdLoadException adLoadException, DataSpec dataSpec) {
            if (this.f25471b) {
                return;
            }
            AdsMediaSource.this.createEventDispatcher(null).loadError(new LoadEventInfo(LoadEventInfo.getNewId(), dataSpec, SystemClock.elapsedRealtime()), 6, (IOException) adLoadException, true);
        }

        @Override // com.google.android.exoplayer2.source.ads.AdsLoader.EventListener
        public void onAdPlaybackState(final AdPlaybackState adPlaybackState) {
            if (this.f25471b) {
                return;
            }
            this.f25470a.post(new Runnable() { // from class: com.sunia.HTREnginev2.i9
                @Override // java.lang.Runnable
                public final void run() {
                    AdsMediaSource.C4853c.this.m19765b(adPlaybackState);
                }
            });
        }
    }

    public AdsMediaSource(MediaSource mediaSource, DataSpec dataSpec, Object obj, MediaSource.Factory factory, AdsLoader adsLoader, AdViewProvider adViewProvider) {
        this.f25450o = mediaSource;
        this.f25451p = factory;
        this.f25452q = adsLoader;
        this.f25453r = adViewProvider;
        this.f25454s = dataSpec;
        this.f25455t = obj;
        adsLoader.setSupportedContentTypes(factory.getSupportedTypes());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m19746n(C4853c c4853c) {
        this.f25452q.start(this, this.f25454s, this.f25455t, this.f25453r, c4853c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m19747o(C4853c c4853c) {
        this.f25452q.stop(this, c4853c);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        if (((AdPlaybackState) Assertions.checkNotNull(this.f25460y)).adGroupCount <= 0 || !mediaPeriodId.isAd()) {
            MaskingMediaPeriod maskingMediaPeriod = new MaskingMediaPeriod(mediaPeriodId, allocator, j);
            maskingMediaPeriod.setMediaSource(this.f25450o);
            maskingMediaPeriod.createPeriod(mediaPeriodId);
            return maskingMediaPeriod;
        }
        int i = mediaPeriodId.adGroupIndex;
        int i2 = mediaPeriodId.adIndexInAdGroup;
        C4851a[][] c4851aArr = this.f25461z;
        C4851a[] c4851aArr2 = c4851aArr[i];
        if (c4851aArr2.length <= i2) {
            c4851aArr[i] = (C4851a[]) Arrays.copyOf(c4851aArr2, i2 + 1);
        }
        C4851a c4851a = this.f25461z[i][i2];
        if (c4851a == null) {
            c4851a = new C4851a(mediaPeriodId);
            this.f25461z[i][i2] = c4851a;
            m19749p();
        }
        return c4851a.m19752a(mediaPeriodId, allocator, j);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.f25450o.getMediaItem();
    }

    /* renamed from: m */
    public final long[][] m19748m() {
        long[][] jArr = new long[this.f25461z.length];
        int i = 0;
        while (true) {
            C4851a[][] c4851aArr = this.f25461z;
            if (i >= c4851aArr.length) {
                return jArr;
            }
            jArr[i] = new long[c4851aArr[i].length];
            int i2 = 0;
            while (true) {
                C4851a[] c4851aArr2 = this.f25461z[i];
                if (i2 < c4851aArr2.length) {
                    C4851a c4851a = c4851aArr2[i2];
                    jArr[i][i2] = c4851a == null ? C4649C.TIME_UNSET : c4851a.m19753b();
                    i2++;
                }
            }
            i++;
        }
    }

    /* renamed from: p */
    public final void m19749p() {
        Uri uri;
        AdPlaybackState adPlaybackState = this.f25460y;
        if (adPlaybackState == null) {
            return;
        }
        for (int i = 0; i < this.f25461z.length; i++) {
            int i2 = 0;
            while (true) {
                C4851a[] c4851aArr = this.f25461z[i];
                if (i2 < c4851aArr.length) {
                    C4851a c4851a = c4851aArr[i2];
                    AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i);
                    if (c4851a != null && !c4851a.m19755d()) {
                        Uri[] uriArr = adGroup.uris;
                        if (i2 < uriArr.length && (uri = uriArr[i2]) != null) {
                            MediaItem.Builder uri2 = new MediaItem.Builder().setUri(uri);
                            MediaItem.LocalConfiguration localConfiguration = this.f25450o.getMediaItem().localConfiguration;
                            if (localConfiguration != null) {
                                uri2.setDrmConfiguration(localConfiguration.drmConfiguration);
                            }
                            c4851a.m19756e(this.f25451p.createMediaSource(uri2.build()), uri);
                        }
                    }
                    i2++;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        final C4853c c4853c = new C4853c();
        this.f25458w = c4853c;
        prepareChildSource(f25449J, this.f25450o);
        this.f25456u.post(new Runnable() { // from class: com.sunia.HTREnginev2.f9
            @Override // java.lang.Runnable
            public final void run() {
                AdsMediaSource.this.m19746n(c4853c);
            }
        });
    }

    /* renamed from: q */
    public final void m19750q() {
        Timeline timeline = this.f25459x;
        AdPlaybackState adPlaybackState = this.f25460y;
        if (adPlaybackState == null || timeline == null) {
            return;
        }
        if (adPlaybackState.adGroupCount == 0) {
            refreshSourceInfo(timeline);
        } else {
            this.f25460y = adPlaybackState.withAdDurationsUs(m19748m());
            refreshSourceInfo(new SinglePeriodAdTimeline(timeline, this.f25460y));
        }
    }

    /* renamed from: r */
    public final void m19751r(AdPlaybackState adPlaybackState) {
        AdPlaybackState adPlaybackState2 = this.f25460y;
        if (adPlaybackState2 == null) {
            C4851a[][] c4851aArr = new C4851a[adPlaybackState.adGroupCount];
            this.f25461z = c4851aArr;
            Arrays.fill(c4851aArr, new C4851a[0]);
        } else {
            Assertions.checkState(adPlaybackState.adGroupCount == adPlaybackState2.adGroupCount);
        }
        this.f25460y = adPlaybackState;
        m19749p();
        m19750q();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        MaskingMediaPeriod maskingMediaPeriod = (MaskingMediaPeriod) mediaPeriod;
        MediaSource.MediaPeriodId mediaPeriodId = maskingMediaPeriod.f25262id;
        if (!mediaPeriodId.isAd()) {
            maskingMediaPeriod.releasePeriod();
            return;
        }
        C4851a c4851a = (C4851a) Assertions.checkNotNull(this.f25461z[mediaPeriodId.adGroupIndex][mediaPeriodId.adIndexInAdGroup]);
        c4851a.m19759h(maskingMediaPeriod);
        if (c4851a.m19757f()) {
            c4851a.m19758g();
            this.f25461z[mediaPeriodId.adGroupIndex][mediaPeriodId.adIndexInAdGroup] = null;
        }
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        final C4853c c4853c = (C4853c) Assertions.checkNotNull(this.f25458w);
        this.f25458w = null;
        c4853c.m19766c();
        this.f25459x = null;
        this.f25460y = null;
        this.f25461z = new C4851a[0];
        this.f25456u.post(new Runnable() { // from class: com.sunia.HTREnginev2.e9
            @Override // java.lang.Runnable
            public final void run() {
                AdsMediaSource.this.m19747o(c4853c);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(MediaSource.MediaPeriodId mediaPeriodId, MediaSource.MediaPeriodId mediaPeriodId2) {
        return mediaPeriodId.isAd() ? mediaPeriodId : mediaPeriodId2;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void m19597b(MediaSource.MediaPeriodId mediaPeriodId, MediaSource mediaSource, Timeline timeline) {
        if (mediaPeriodId.isAd()) {
            ((C4851a) Assertions.checkNotNull(this.f25461z[mediaPeriodId.adGroupIndex][mediaPeriodId.adIndexInAdGroup])).m19754c(timeline);
        } else {
            Assertions.checkArgument(timeline.getPeriodCount() == 1);
            this.f25459x = timeline;
        }
        m19750q();
    }
}
