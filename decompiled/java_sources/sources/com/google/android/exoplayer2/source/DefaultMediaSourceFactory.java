package com.google.android.exoplayer2.source;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.drm.DrmSessionManagerProvider;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.p008ui.AdViewProvider;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.exoplayer2.source.SingleSampleMediaSource;
import com.google.android.exoplayer2.source.ads.AdsLoader;
import com.google.android.exoplayer2.source.ads.AdsMediaSource;
import com.google.android.exoplayer2.text.SubtitleDecoderFactory;
import com.google.android.exoplayer2.text.SubtitleExtractor;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public final class DefaultMediaSourceFactory implements MediaSourceFactory {

    /* renamed from: m */
    public static final String f25222m = "DMediaSourceFactory";

    /* renamed from: a */
    public final DataSource.Factory f25223a;

    /* renamed from: b */
    public final C4834a f25224b;

    /* renamed from: c */
    @Nullable
    public MediaSource.Factory f25225c;

    /* renamed from: d */
    @Nullable
    public AdsLoader.Provider f25226d;

    /* renamed from: e */
    @Nullable
    public AdViewProvider f25227e;

    /* renamed from: f */
    @Nullable
    public LoadErrorHandlingPolicy f25228f;

    /* renamed from: g */
    public long f25229g;

    /* renamed from: h */
    public long f25230h;

    /* renamed from: i */
    public long f25231i;

    /* renamed from: j */
    public float f25232j;

    /* renamed from: k */
    public float f25233k;

    /* renamed from: l */
    public boolean f25234l;

    @Deprecated
    /* loaded from: classes5.dex */
    public interface AdsLoaderProvider extends AdsLoader.Provider {
    }

    /* renamed from: com.google.android.exoplayer2.source.DefaultMediaSourceFactory$a */
    /* loaded from: classes5.dex */
    public static final class C4834a {

        /* renamed from: a */
        public final DataSource.Factory f25235a;

        /* renamed from: b */
        public final ExtractorsFactory f25236b;

        /* renamed from: c */
        public final Map<Integer, Supplier<MediaSource.Factory>> f25237c = new HashMap();

        /* renamed from: d */
        public final Set<Integer> f25238d = new HashSet();

        /* renamed from: e */
        public final Map<Integer, MediaSource.Factory> f25239e = new HashMap();

        /* renamed from: f */
        @Nullable
        public DrmSessionManagerProvider f25240f;

        /* renamed from: g */
        @Nullable
        public LoadErrorHandlingPolicy f25241g;

        public C4834a(DataSource.Factory factory, ExtractorsFactory extractorsFactory) {
            this.f25235a = factory;
            this.f25236b = extractorsFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i */
        public /* synthetic */ MediaSource.Factory m19640i(Class cls) {
            return DefaultMediaSourceFactory.m19633h(cls, this.f25235a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j */
        public /* synthetic */ MediaSource.Factory m19641j(Class cls) {
            return DefaultMediaSourceFactory.m19633h(cls, this.f25235a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public /* synthetic */ MediaSource.Factory m19642k(Class cls) {
            return DefaultMediaSourceFactory.m19633h(cls, this.f25235a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public /* synthetic */ MediaSource.Factory m19644m() {
            return new ProgressiveMediaSource.Factory(this.f25235a, this.f25236b);
        }

        /* renamed from: f */
        public final void m19645f() {
            m19648n(0);
            m19648n(1);
            m19648n(2);
            m19648n(3);
            m19648n(4);
        }

        @Nullable
        /* renamed from: g */
        public MediaSource.Factory m19646g(int i) {
            MediaSource.Factory factory = this.f25239e.get(Integer.valueOf(i));
            if (factory != null) {
                return factory;
            }
            Supplier<MediaSource.Factory> m19648n = m19648n(i);
            if (m19648n == null) {
                return null;
            }
            MediaSource.Factory factory2 = m19648n.get();
            DrmSessionManagerProvider drmSessionManagerProvider = this.f25240f;
            if (drmSessionManagerProvider != null) {
                factory2.setDrmSessionManagerProvider(drmSessionManagerProvider);
            }
            LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.f25241g;
            if (loadErrorHandlingPolicy != null) {
                factory2.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
            }
            this.f25239e.put(Integer.valueOf(i), factory2);
            return factory2;
        }

        /* renamed from: h */
        public int[] m19647h() {
            m19645f();
            return Ints.toArray(this.f25238d);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x006d  */
        @androidx.annotation.Nullable
        /* renamed from: n */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.google.common.base.Supplier<com.google.android.exoplayer2.source.MediaSource.Factory> m19648n(int r4) {
            /*
                r3 = this;
                java.util.Map<java.lang.Integer, com.google.common.base.Supplier<com.google.android.exoplayer2.source.MediaSource$Factory>> r0 = r3.f25237c
                java.lang.Integer r1 = java.lang.Integer.valueOf(r4)
                boolean r0 = r0.containsKey(r1)
                if (r0 == 0) goto L19
                java.util.Map<java.lang.Integer, com.google.common.base.Supplier<com.google.android.exoplayer2.source.MediaSource$Factory>> r3 = r3.f25237c
                java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
                java.lang.Object r3 = r3.get(r4)
                com.google.common.base.Supplier r3 = (com.google.common.base.Supplier) r3
                return r3
            L19:
                java.lang.Class<com.google.android.exoplayer2.source.MediaSource$Factory> r0 = com.google.android.exoplayer2.source.MediaSource.Factory.class
                r1 = 0
                if (r4 == 0) goto L56
                r2 = 1
                if (r4 == r2) goto L4a
                r2 = 2
                if (r4 == r2) goto L3e
                r2 = 3
                if (r4 == r2) goto L32
                r0 = 4
                if (r4 == r0) goto L2b
                goto L62
            L2b:
                com.sunia.HTREnginev2.zze r0 = new com.sunia.HTREnginev2.zze     // Catch: java.lang.ClassNotFoundException -> L62
                r0.<init>()     // Catch: java.lang.ClassNotFoundException -> L62
                r1 = r0
                goto L62
            L32:
                java.lang.Class<com.google.android.exoplayer2.source.rtsp.RtspMediaSource$Factory> r2 = com.google.android.exoplayer2.source.rtsp.RtspMediaSource.Factory.class
                java.lang.Class r0 = r2.asSubclass(r0)     // Catch: java.lang.ClassNotFoundException -> L62
                com.sunia.HTREnginev2.yze r2 = new com.sunia.HTREnginev2.yze     // Catch: java.lang.ClassNotFoundException -> L62
                r2.<init>()     // Catch: java.lang.ClassNotFoundException -> L62
                goto L61
            L3e:
                java.lang.Class<com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory> r2 = com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory.class
                java.lang.Class r0 = r2.asSubclass(r0)     // Catch: java.lang.ClassNotFoundException -> L62
                com.sunia.HTREnginev2.xze r2 = new com.sunia.HTREnginev2.xze     // Catch: java.lang.ClassNotFoundException -> L62
                r2.<init>()     // Catch: java.lang.ClassNotFoundException -> L62
                goto L61
            L4a:
                java.lang.Class<com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory> r2 = com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory.class
                java.lang.Class r0 = r2.asSubclass(r0)     // Catch: java.lang.ClassNotFoundException -> L62
                com.sunia.HTREnginev2.wze r2 = new com.sunia.HTREnginev2.wze     // Catch: java.lang.ClassNotFoundException -> L62
                r2.<init>()     // Catch: java.lang.ClassNotFoundException -> L62
                goto L61
            L56:
                java.lang.Class<com.google.android.exoplayer2.source.dash.DashMediaSource$Factory> r2 = com.google.android.exoplayer2.source.dash.DashMediaSource.Factory.class
                java.lang.Class r0 = r2.asSubclass(r0)     // Catch: java.lang.ClassNotFoundException -> L62
                com.sunia.HTREnginev2.vze r2 = new com.sunia.HTREnginev2.vze     // Catch: java.lang.ClassNotFoundException -> L62
                r2.<init>()     // Catch: java.lang.ClassNotFoundException -> L62
            L61:
                r1 = r2
            L62:
                java.util.Map<java.lang.Integer, com.google.common.base.Supplier<com.google.android.exoplayer2.source.MediaSource$Factory>> r0 = r3.f25237c
                java.lang.Integer r2 = java.lang.Integer.valueOf(r4)
                r0.put(r2, r1)
                if (r1 == 0) goto L76
                java.util.Set<java.lang.Integer> r3 = r3.f25238d
                java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
                r3.add(r4)
            L76:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.DefaultMediaSourceFactory.C4834a.m19648n(int):com.google.common.base.Supplier");
        }

        /* renamed from: o */
        public void m19649o(@Nullable DrmSessionManagerProvider drmSessionManagerProvider) {
            this.f25240f = drmSessionManagerProvider;
            Iterator<MediaSource.Factory> it2 = this.f25239e.values().iterator();
            while (it2.hasNext()) {
                it2.next().setDrmSessionManagerProvider(drmSessionManagerProvider);
            }
        }

        /* renamed from: p */
        public void m19650p(@Nullable LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.f25241g = loadErrorHandlingPolicy;
            Iterator<MediaSource.Factory> it2 = this.f25239e.values().iterator();
            while (it2.hasNext()) {
                it2.next().setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.DefaultMediaSourceFactory$b */
    /* loaded from: classes5.dex */
    public static final class C4835b implements Extractor {

        /* renamed from: a */
        public final Format f25242a;

        public C4835b(Format format) {
            this.f25242a = format;
        }

        @Override // com.google.android.exoplayer2.extractor.Extractor
        public void init(ExtractorOutput extractorOutput) {
            TrackOutput track = extractorOutput.track(0, 3);
            extractorOutput.seekMap(new SeekMap.Unseekable(C4649C.TIME_UNSET));
            extractorOutput.endTracks();
            track.format(this.f25242a.buildUpon().setSampleMimeType(MimeTypes.TEXT_UNKNOWN).setCodecs(this.f25242a.sampleMimeType).build());
        }

        @Override // com.google.android.exoplayer2.extractor.Extractor
        public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
            return extractorInput.skip(Integer.MAX_VALUE) == -1 ? -1 : 0;
        }

        @Override // com.google.android.exoplayer2.extractor.Extractor
        public void release() {
        }

        @Override // com.google.android.exoplayer2.extractor.Extractor
        public void seek(long j, long j2) {
        }

        @Override // com.google.android.exoplayer2.extractor.Extractor
        public boolean sniff(ExtractorInput extractorInput) {
            return true;
        }
    }

    public DefaultMediaSourceFactory(Context context) {
        this(new DefaultDataSource.Factory(context));
    }

    /* renamed from: b */
    public static /* synthetic */ MediaSource.Factory m19628b(Class cls) {
        return m19632g(cls);
    }

    /* renamed from: d */
    public static /* synthetic */ Extractor[] m19630d(Format format) {
        Extractor[] extractorArr = new Extractor[1];
        SubtitleDecoderFactory subtitleDecoderFactory = SubtitleDecoderFactory.DEFAULT;
        extractorArr[0] = subtitleDecoderFactory.supportsFormat(format) ? new SubtitleExtractor(subtitleDecoderFactory.createDecoder(format), format) : new C4835b(format);
        return extractorArr;
    }

    /* renamed from: e */
    public static MediaSource m19631e(MediaItem mediaItem, MediaSource mediaSource) {
        MediaItem.ClippingConfiguration clippingConfiguration = mediaItem.clippingConfiguration;
        long j = clippingConfiguration.startPositionMs;
        if (j == 0 && clippingConfiguration.endPositionMs == Long.MIN_VALUE && !clippingConfiguration.relativeToDefaultPosition) {
            return mediaSource;
        }
        long msToUs = Util.msToUs(j);
        long msToUs2 = Util.msToUs(mediaItem.clippingConfiguration.endPositionMs);
        MediaItem.ClippingConfiguration clippingConfiguration2 = mediaItem.clippingConfiguration;
        return new ClippingMediaSource(mediaSource, msToUs, msToUs2, !clippingConfiguration2.startsAtKeyFrame, clippingConfiguration2.relativeToLiveWindow, clippingConfiguration2.relativeToDefaultPosition);
    }

    /* renamed from: g */
    public static MediaSource.Factory m19632g(Class<? extends MediaSource.Factory> cls) {
        try {
            return cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: h */
    public static MediaSource.Factory m19633h(Class<? extends MediaSource.Factory> cls, DataSource.Factory factory) {
        try {
            return cls.getConstructor(DataSource.Factory.class).newInstance(factory);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource.Factory
    public MediaSource createMediaSource(MediaItem mediaItem) {
        Assertions.checkNotNull(mediaItem.localConfiguration);
        String scheme = mediaItem.localConfiguration.uri.getScheme();
        if (scheme != null && scheme.equals(C4649C.SSAI_SCHEME)) {
            return ((MediaSource.Factory) Assertions.checkNotNull(this.f25225c)).createMediaSource(mediaItem);
        }
        MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
        int inferContentTypeForUriAndMimeType = Util.inferContentTypeForUriAndMimeType(localConfiguration.uri, localConfiguration.mimeType);
        MediaSource.Factory m19646g = this.f25224b.m19646g(inferContentTypeForUriAndMimeType);
        StringBuilder sb = new StringBuilder(68);
        sb.append("No suitable media source factory found for content type: ");
        sb.append(inferContentTypeForUriAndMimeType);
        Assertions.checkStateNotNull(m19646g, sb.toString());
        MediaItem.LiveConfiguration.Builder buildUpon = mediaItem.liveConfiguration.buildUpon();
        if (mediaItem.liveConfiguration.targetOffsetMs == C4649C.TIME_UNSET) {
            buildUpon.setTargetOffsetMs(this.f25229g);
        }
        if (mediaItem.liveConfiguration.minPlaybackSpeed == -3.4028235E38f) {
            buildUpon.setMinPlaybackSpeed(this.f25232j);
        }
        if (mediaItem.liveConfiguration.maxPlaybackSpeed == -3.4028235E38f) {
            buildUpon.setMaxPlaybackSpeed(this.f25233k);
        }
        if (mediaItem.liveConfiguration.minOffsetMs == C4649C.TIME_UNSET) {
            buildUpon.setMinOffsetMs(this.f25230h);
        }
        if (mediaItem.liveConfiguration.maxOffsetMs == C4649C.TIME_UNSET) {
            buildUpon.setMaxOffsetMs(this.f25231i);
        }
        MediaItem.LiveConfiguration build = buildUpon.build();
        if (!build.equals(mediaItem.liveConfiguration)) {
            mediaItem = mediaItem.buildUpon().setLiveConfiguration(build).build();
        }
        MediaSource createMediaSource = m19646g.createMediaSource(mediaItem);
        ImmutableList<MediaItem.SubtitleConfiguration> immutableList = ((MediaItem.LocalConfiguration) Util.castNonNull(mediaItem.localConfiguration)).subtitleConfigurations;
        if (!immutableList.isEmpty()) {
            MediaSource[] mediaSourceArr = new MediaSource[immutableList.size() + 1];
            mediaSourceArr[0] = createMediaSource;
            for (int i = 0; i < immutableList.size(); i++) {
                if (this.f25234l) {
                    final Format build2 = new Format.Builder().setSampleMimeType(immutableList.get(i).mimeType).setLanguage(immutableList.get(i).language).setSelectionFlags(immutableList.get(i).selectionFlags).setRoleFlags(immutableList.get(i).roleFlags).setLabel(immutableList.get(i).label).setId(immutableList.get(i).f22534id).build();
                    mediaSourceArr[i + 1] = new ProgressiveMediaSource.Factory(this.f25223a, new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.uze
                        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
                        public final Extractor[] createExtractors() {
                            Extractor[] m19630d;
                            m19630d = DefaultMediaSourceFactory.m19630d(Format.this);
                            return m19630d;
                        }
                    }).setLoadErrorHandlingPolicy(this.f25228f).createMediaSource(MediaItem.fromUri(immutableList.get(i).uri.toString()));
                } else {
                    mediaSourceArr[i + 1] = new SingleSampleMediaSource.Factory(this.f25223a).setLoadErrorHandlingPolicy(this.f25228f).createMediaSource(immutableList.get(i), C4649C.TIME_UNSET);
                }
            }
            createMediaSource = new MergingMediaSource(mediaSourceArr);
        }
        return m19634f(mediaItem, m19631e(mediaItem, createMediaSource));
    }

    public DefaultMediaSourceFactory experimentalUseProgressiveMediaSourceForSubtitles(boolean z) {
        this.f25234l = z;
        return this;
    }

    /* renamed from: f */
    public final MediaSource m19634f(MediaItem mediaItem, MediaSource mediaSource) {
        Assertions.checkNotNull(mediaItem.localConfiguration);
        MediaItem.AdsConfiguration adsConfiguration = mediaItem.localConfiguration.adsConfiguration;
        if (adsConfiguration == null) {
            return mediaSource;
        }
        AdsLoader.Provider provider = this.f25226d;
        AdViewProvider adViewProvider = this.f25227e;
        if (provider == null || adViewProvider == null) {
            Log.m21493w(f25222m, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider.");
            return mediaSource;
        }
        AdsLoader adsLoader = provider.getAdsLoader(adsConfiguration);
        if (adsLoader == null) {
            Log.m21493w(f25222m, "Playing media without ads, as no AdsLoader was provided.");
            return mediaSource;
        }
        DataSpec dataSpec = new DataSpec(adsConfiguration.adTagUri);
        Object obj = adsConfiguration.adsId;
        return new AdsMediaSource(mediaSource, dataSpec, obj != null ? obj : ImmutableList.m26164of((Uri) mediaItem.mediaId, mediaItem.localConfiguration.uri, adsConfiguration.adTagUri), this, adsLoader, adViewProvider);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource.Factory
    public int[] getSupportedTypes() {
        return this.f25224b.m19647h();
    }

    public DefaultMediaSourceFactory setAdViewProvider(@Nullable AdViewProvider adViewProvider) {
        this.f25227e = adViewProvider;
        return this;
    }

    public DefaultMediaSourceFactory setAdsLoaderProvider(@Nullable AdsLoader.Provider provider) {
        this.f25226d = provider;
        return this;
    }

    public DefaultMediaSourceFactory setLiveMaxOffsetMs(long j) {
        this.f25231i = j;
        return this;
    }

    public DefaultMediaSourceFactory setLiveMaxSpeed(float f) {
        this.f25233k = f;
        return this;
    }

    public DefaultMediaSourceFactory setLiveMinOffsetMs(long j) {
        this.f25230h = j;
        return this;
    }

    public DefaultMediaSourceFactory setLiveMinSpeed(float f) {
        this.f25232j = f;
        return this;
    }

    public DefaultMediaSourceFactory setLiveTargetOffsetMs(long j) {
        this.f25229g = j;
        return this;
    }

    public DefaultMediaSourceFactory setServerSideAdInsertionMediaSourceFactory(@Nullable MediaSource.Factory factory) {
        this.f25225c = factory;
        return this;
    }

    public DefaultMediaSourceFactory(Context context, ExtractorsFactory extractorsFactory) {
        this(new DefaultDataSource.Factory(context), extractorsFactory);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource.Factory
    public DefaultMediaSourceFactory setDrmSessionManagerProvider(@Nullable DrmSessionManagerProvider drmSessionManagerProvider) {
        this.f25224b.m19649o(drmSessionManagerProvider);
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource.Factory
    public DefaultMediaSourceFactory setLoadErrorHandlingPolicy(@Nullable LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        this.f25228f = loadErrorHandlingPolicy;
        this.f25224b.m19650p(loadErrorHandlingPolicy);
        return this;
    }

    public DefaultMediaSourceFactory(DataSource.Factory factory) {
        this(factory, new DefaultExtractorsFactory());
    }

    public DefaultMediaSourceFactory(DataSource.Factory factory, ExtractorsFactory extractorsFactory) {
        this.f25223a = factory;
        this.f25224b = new C4834a(factory, extractorsFactory);
        this.f25229g = C4649C.TIME_UNSET;
        this.f25230h = C4649C.TIME_UNSET;
        this.f25231i = C4649C.TIME_UNSET;
        this.f25232j = -3.4028235E38f;
        this.f25233k = -3.4028235E38f;
    }
}
