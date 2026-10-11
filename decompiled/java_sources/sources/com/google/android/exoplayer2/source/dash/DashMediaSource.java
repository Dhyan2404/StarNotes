package com.google.android.exoplayer2.source.dash;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.DrmSessionManagerProvider;
import com.google.android.exoplayer2.offline.FilteringManifestParser;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.BaseMediaSource;
import com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.MediaSourceFactory;
import com.google.android.exoplayer2.source.dash.DashChunkSource;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.dash.DefaultDashChunkSource;
import com.google.android.exoplayer2.source.dash.PlayerEmsgHandler;
import com.google.android.exoplayer2.source.dash.manifest.AdaptationSet;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.source.dash.manifest.DashManifestParser;
import com.google.android.exoplayer2.source.dash.manifest.Period;
import com.google.android.exoplayer2.source.dash.manifest.Representation;
import com.google.android.exoplayer2.source.dash.manifest.UtcTimingElement;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.LoaderErrorThrower;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.SntpClient;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Charsets;
import com.google.common.math.LongMath;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class DashMediaSource extends BaseMediaSource {
    public static final long DEFAULT_FALLBACK_TARGET_LIVE_OFFSET_MS = 30000;

    @Deprecated
    public static final long DEFAULT_LIVE_PRESENTATION_DELAY_MS = 30000;
    public static final String DEFAULT_MEDIA_ID = "DashMediaSource";

    /* renamed from: G0 */
    public static final long f25725G0 = 5000;

    /* renamed from: H0 */
    public static final long f25726H0 = 5000000;

    /* renamed from: I0 */
    public static final String f25727I0 = "DashMediaSource";

    /* renamed from: A0 */
    public long f25728A0;

    /* renamed from: B0 */
    public long f25729B0;

    /* renamed from: C0 */
    public long f25730C0;

    /* renamed from: D0 */
    public int f25731D0;

    /* renamed from: E0 */
    public long f25732E0;

    /* renamed from: F0 */
    public int f25733F0;

    /* renamed from: J */
    public final Runnable f25734J;

    /* renamed from: O */
    public final PlayerEmsgHandler.PlayerEmsgCallback f25735O;

    /* renamed from: Q */
    public final LoaderErrorThrower f25736Q;

    /* renamed from: Z */
    public DataSource f25737Z;

    /* renamed from: k0 */
    public Loader f25738k0;

    /* renamed from: l */
    public final MediaItem f25739l;

    /* renamed from: m */
    public final boolean f25740m;

    /* renamed from: n */
    public final DataSource.Factory f25741n;

    /* renamed from: o */
    public final DashChunkSource.Factory f25742o;

    /* renamed from: p */
    public final CompositeSequenceableLoaderFactory f25743p;

    /* renamed from: q */
    public final DrmSessionManager f25744q;

    /* renamed from: q0 */
    @Nullable
    public TransferListener f25745q0;

    /* renamed from: r */
    public final LoadErrorHandlingPolicy f25746r;

    /* renamed from: s */
    public final BaseUrlExclusionList f25747s;

    /* renamed from: t */
    public final long f25748t;

    /* renamed from: t0 */
    public IOException f25749t0;

    /* renamed from: u */
    public final MediaSourceEventListener.EventDispatcher f25750u;

    /* renamed from: u0 */
    public Handler f25751u0;

    /* renamed from: v */
    public final ParsingLoadable.Parser<? extends DashManifest> f25752v;

    /* renamed from: v0 */
    public MediaItem.LiveConfiguration f25753v0;

    /* renamed from: w */
    public final C4869e f25754w;

    /* renamed from: w0 */
    public Uri f25755w0;

    /* renamed from: x */
    public final Object f25756x;

    /* renamed from: x0 */
    public Uri f25757x0;

    /* renamed from: y */
    public final SparseArray<DashMediaPeriod> f25758y;

    /* renamed from: y0 */
    public DashManifest f25759y0;

    /* renamed from: z */
    public final Runnable f25760z;

    /* renamed from: z0 */
    public boolean f25761z0;

    /* loaded from: classes5.dex */
    public static final class Factory implements MediaSourceFactory {

        /* renamed from: a */
        public final DashChunkSource.Factory f25762a;

        /* renamed from: b */
        @Nullable
        public final DataSource.Factory f25763b;

        /* renamed from: c */
        public DrmSessionManagerProvider f25764c;

        /* renamed from: d */
        public CompositeSequenceableLoaderFactory f25765d;

        /* renamed from: e */
        public LoadErrorHandlingPolicy f25766e;

        /* renamed from: f */
        public long f25767f;

        /* renamed from: g */
        @Nullable
        public ParsingLoadable.Parser<? extends DashManifest> f25768g;

        public Factory(DataSource.Factory factory) {
            this(new DefaultDashChunkSource.Factory(factory), factory);
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{0};
        }

        public Factory setCompositeSequenceableLoaderFactory(@Nullable CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory) {
            if (compositeSequenceableLoaderFactory == null) {
                compositeSequenceableLoaderFactory = new DefaultCompositeSequenceableLoaderFactory();
            }
            this.f25765d = compositeSequenceableLoaderFactory;
            return this;
        }

        public Factory setFallbackTargetLiveOffsetMs(long j) {
            this.f25767f = j;
            return this;
        }

        public Factory setManifestParser(@Nullable ParsingLoadable.Parser<? extends DashManifest> parser) {
            this.f25768g = parser;
            return this;
        }

        public Factory(DashChunkSource.Factory factory, @Nullable DataSource.Factory factory2) {
            this.f25762a = (DashChunkSource.Factory) Assertions.checkNotNull(factory);
            this.f25763b = factory2;
            this.f25764c = new DefaultDrmSessionManagerProvider();
            this.f25766e = new DefaultLoadErrorHandlingPolicy();
            this.f25767f = 30000L;
            this.f25765d = new DefaultCompositeSequenceableLoaderFactory();
        }

        public DashMediaSource createMediaSource(DashManifest dashManifest) {
            return createMediaSource(dashManifest, new MediaItem.Builder().setUri(Uri.EMPTY).setMediaId("DashMediaSource").setMimeType(MimeTypes.APPLICATION_MPD).build());
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public Factory setDrmSessionManagerProvider(@Nullable DrmSessionManagerProvider drmSessionManagerProvider) {
            if (drmSessionManagerProvider == null) {
                drmSessionManagerProvider = new DefaultDrmSessionManagerProvider();
            }
            this.f25764c = drmSessionManagerProvider;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public Factory setLoadErrorHandlingPolicy(@Nullable LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            }
            this.f25766e = loadErrorHandlingPolicy;
            return this;
        }

        public DashMediaSource createMediaSource(DashManifest dashManifest, MediaItem mediaItem) {
            Assertions.checkArgument(!dashManifest.dynamic);
            MediaItem.Builder mimeType = mediaItem.buildUpon().setMimeType(MimeTypes.APPLICATION_MPD);
            if (mediaItem.localConfiguration == null) {
                mimeType.setUri(Uri.EMPTY);
            }
            MediaItem build = mimeType.build();
            return new DashMediaSource(build, dashManifest, null, null, this.f25762a, this.f25765d, this.f25764c.get(build), this.f25766e, this.f25767f, null);
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public DashMediaSource createMediaSource(MediaItem mediaItem) {
            Assertions.checkNotNull(mediaItem.localConfiguration);
            ParsingLoadable.Parser parser = this.f25768g;
            if (parser == null) {
                parser = new DashManifestParser();
            }
            List<StreamKey> list = mediaItem.localConfiguration.streamKeys;
            return new DashMediaSource(mediaItem, null, this.f25763b, !list.isEmpty() ? new FilteringManifestParser(parser, list) : parser, this.f25762a, this.f25765d, this.f25764c.get(mediaItem), this.f25766e, this.f25767f, null);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.dash.DashMediaSource$a */
    /* loaded from: classes5.dex */
    public class C4865a implements SntpClient.InitializationCallback {
        public C4865a() {
        }

        @Override // com.google.android.exoplayer2.util.SntpClient.InitializationCallback
        public void onInitializationFailed(IOException iOException) {
            DashMediaSource.this.m19977v(iOException);
        }

        @Override // com.google.android.exoplayer2.util.SntpClient.InitializationCallback
        public void onInitialized() {
            DashMediaSource.this.m19978w(SntpClient.getElapsedRealtimeOffsetMs());
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.dash.DashMediaSource$b */
    /* loaded from: classes5.dex */
    public static final class C4866b extends Timeline {

        /* renamed from: h */
        public final long f25770h;

        /* renamed from: i */
        public final long f25771i;

        /* renamed from: j */
        public final long f25772j;

        /* renamed from: k */
        public final int f25773k;

        /* renamed from: l */
        public final long f25774l;

        /* renamed from: m */
        public final long f25775m;

        /* renamed from: n */
        public final long f25776n;

        /* renamed from: o */
        public final DashManifest f25777o;

        /* renamed from: p */
        public final MediaItem f25778p;

        /* renamed from: q */
        @Nullable
        public final MediaItem.LiveConfiguration f25779q;

        public C4866b(long j, long j2, long j3, int i, long j4, long j5, long j6, DashManifest dashManifest, MediaItem mediaItem, @Nullable MediaItem.LiveConfiguration liveConfiguration) {
            Assertions.checkState(dashManifest.dynamic == (liveConfiguration != null));
            this.f25770h = j;
            this.f25771i = j2;
            this.f25772j = j3;
            this.f25773k = i;
            this.f25774l = j4;
            this.f25775m = j5;
            this.f25776n = j6;
            this.f25777o = dashManifest;
            this.f25778p = mediaItem;
            this.f25779q = liveConfiguration;
        }

        /* renamed from: g */
        public static boolean m19982g(DashManifest dashManifest) {
            return dashManifest.dynamic && dashManifest.minUpdatePeriodMs != C4649C.TIME_UNSET && dashManifest.durationMs == C4649C.TIME_UNSET;
        }

        /* renamed from: f */
        public final long m19983f(long j) {
            DashSegmentIndex index;
            long j2 = this.f25776n;
            if (!m19982g(this.f25777o)) {
                return j2;
            }
            if (j > 0) {
                j2 += j;
                if (j2 > this.f25775m) {
                    return C4649C.TIME_UNSET;
                }
            }
            long j3 = this.f25774l + j2;
            long periodDurationUs = this.f25777o.getPeriodDurationUs(0);
            int i = 0;
            while (i < this.f25777o.getPeriodCount() - 1 && j3 >= periodDurationUs) {
                j3 -= periodDurationUs;
                i++;
                periodDurationUs = this.f25777o.getPeriodDurationUs(i);
            }
            Period period = this.f25777o.getPeriod(i);
            int adaptationSetIndex = period.getAdaptationSetIndex(2);
            return (adaptationSetIndex == -1 || (index = period.adaptationSets.get(adaptationSetIndex).representations.get(0).getIndex()) == null || index.getSegmentCount(periodDurationUs) == 0) ? j2 : (j2 + index.getTimeUs(index.getSegmentNum(j3, periodDurationUs))) - j3;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            int intValue;
            if ((obj instanceof Integer) && (intValue = ((Integer) obj).intValue() - this.f25773k) >= 0 && intValue < getPeriodCount()) {
                return intValue;
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            Assertions.checkIndex(i, 0, getPeriodCount());
            return period.set(z ? this.f25777o.getPeriod(i).f25835id : null, z ? Integer.valueOf(this.f25773k + i) : null, 0, this.f25777o.getPeriodDurationUs(i), Util.msToUs(this.f25777o.getPeriod(i).startMs - this.f25777o.getPeriod(0).startMs) - this.f25774l);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.f25777o.getPeriodCount();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Object getUidOfPeriod(int i) {
            Assertions.checkIndex(i, 0, getPeriodCount());
            return Integer.valueOf(this.f25773k + i);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            Assertions.checkIndex(i, 0, 1);
            long m19983f = m19983f(j);
            Object obj = Timeline.Window.SINGLE_WINDOW_UID;
            MediaItem mediaItem = this.f25778p;
            DashManifest dashManifest = this.f25777o;
            return window.set(obj, mediaItem, dashManifest, this.f25770h, this.f25771i, this.f25772j, true, m19982g(dashManifest), this.f25779q, m19983f, this.f25775m, 0, getPeriodCount() - 1, this.f25774l);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return 1;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.dash.DashMediaSource$c */
    /* loaded from: classes5.dex */
    public final class C4867c implements PlayerEmsgHandler.PlayerEmsgCallback {
        public C4867c() {
        }

        @Override // com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerEmsgCallback
        public void onDashManifestPublishTimeExpired(long j) {
            DashMediaSource.this.m19970o(j);
        }

        @Override // com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerEmsgCallback
        public void onDashManifestRefreshRequested() {
            DashMediaSource.this.m19971p();
        }

        public /* synthetic */ C4867c(DashMediaSource dashMediaSource, C4865a c4865a) {
            this();
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.dash.DashMediaSource$d */
    /* loaded from: classes5.dex */
    public static final class C4868d implements ParsingLoadable.Parser<Long> {

        /* renamed from: e */
        public static final Pattern f25781e = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long parse(Uri uri, InputStream inputStream) throws IOException {
            String readLine = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8)).readLine();
            try {
                Matcher matcher = f25781e.matcher(readLine);
                if (!matcher.matches()) {
                    String valueOf = String.valueOf(readLine);
                    throw ParserException.createForMalformedManifest(valueOf.length() != 0 ? "Couldn't parse timestamp: ".concat(valueOf) : new String("Couldn't parse timestamp: "), null);
                }
                String group = matcher.group(1);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                long time = simpleDateFormat.parse(group).getTime();
                if (!Constants.HASIDCALL_INDEX_SIG.equals(matcher.group(2))) {
                    long j = "+".equals(matcher.group(4)) ? 1L : -1L;
                    long parseLong = Long.parseLong(matcher.group(5));
                    String group2 = matcher.group(7);
                    time -= j * ((((parseLong * 60) + (TextUtils.isEmpty(group2) ? 0L : Long.parseLong(group2))) * 60) * 1000);
                }
                return Long.valueOf(time);
            } catch (ParseException e) {
                throw ParserException.createForMalformedManifest(null, e);
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.dash.DashMediaSource$e */
    /* loaded from: classes5.dex */
    public final class C4869e implements Loader.Callback<ParsingLoadable<DashManifest>> {
        public C4869e() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onLoadCanceled(ParsingLoadable<DashManifest> parsingLoadable, long j, long j2, boolean z) {
            DashMediaSource.this.m19972q(parsingLoadable, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onLoadCompleted(ParsingLoadable<DashManifest> parsingLoadable, long j, long j2) {
            DashMediaSource.this.m19973r(parsingLoadable, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Loader.LoadErrorAction onLoadError(ParsingLoadable<DashManifest> parsingLoadable, long j, long j2, IOException iOException, int i) {
            return DashMediaSource.this.m19974s(parsingLoadable, j, j2, iOException, i);
        }

        public /* synthetic */ C4869e(DashMediaSource dashMediaSource, C4865a c4865a) {
            this();
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.dash.DashMediaSource$g */
    /* loaded from: classes5.dex */
    public final class C4871g implements Loader.Callback<ParsingLoadable<Long>> {
        public C4871g() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onLoadCanceled(ParsingLoadable<Long> parsingLoadable, long j, long j2, boolean z) {
            DashMediaSource.this.m19972q(parsingLoadable, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onLoadCompleted(ParsingLoadable<Long> parsingLoadable, long j, long j2) {
            DashMediaSource.this.m19975t(parsingLoadable, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Loader.LoadErrorAction onLoadError(ParsingLoadable<Long> parsingLoadable, long j, long j2, IOException iOException, int i) {
            return DashMediaSource.this.m19976u(parsingLoadable, j, j2, iOException);
        }

        public /* synthetic */ C4871g(DashMediaSource dashMediaSource, C4865a c4865a) {
            this();
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.dash.DashMediaSource$h */
    /* loaded from: classes5.dex */
    public static final class C4872h implements ParsingLoadable.Parser<Long> {
        public C4872h() {
        }

        @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long parse(Uri uri, InputStream inputStream) throws IOException {
            return Long.valueOf(Util.parseXsDateTime(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }

        public /* synthetic */ C4872h(C4865a c4865a) {
            this();
        }
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.dash");
    }

    public /* synthetic */ DashMediaSource(MediaItem mediaItem, DashManifest dashManifest, DataSource.Factory factory, ParsingLoadable.Parser parser, DashChunkSource.Factory factory2, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, long j, C4865a c4865a) {
        this(mediaItem, dashManifest, factory, parser, factory2, compositeSequenceableLoaderFactory, drmSessionManager, loadErrorHandlingPolicy, j);
    }

    /* renamed from: g */
    public static long m19957g(Period period, long j, long j2) {
        long msToUs = Util.msToUs(period.startMs);
        boolean m19960k = m19960k(period);
        long j3 = Long.MAX_VALUE;
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            AdaptationSet adaptationSet = period.adaptationSets.get(i);
            List<Representation> list = adaptationSet.representations;
            if ((!m19960k || adaptationSet.type != 3) && !list.isEmpty()) {
                DashSegmentIndex index = list.get(0).getIndex();
                if (index == null) {
                    return msToUs + j;
                }
                long availableSegmentCount = index.getAvailableSegmentCount(j, j2);
                if (availableSegmentCount == 0) {
                    return msToUs;
                }
                long firstAvailableSegmentNum = (index.getFirstAvailableSegmentNum(j, j2) + availableSegmentCount) - 1;
                j3 = Math.min(j3, index.getDurationUs(firstAvailableSegmentNum, j) + index.getTimeUs(firstAvailableSegmentNum) + msToUs);
            }
        }
        return j3;
    }

    /* renamed from: h */
    public static long m19958h(Period period, long j, long j2) {
        long msToUs = Util.msToUs(period.startMs);
        boolean m19960k = m19960k(period);
        long j3 = msToUs;
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            AdaptationSet adaptationSet = period.adaptationSets.get(i);
            List<Representation> list = adaptationSet.representations;
            if ((!m19960k || adaptationSet.type != 3) && !list.isEmpty()) {
                DashSegmentIndex index = list.get(0).getIndex();
                if (index == null || index.getAvailableSegmentCount(j, j2) == 0) {
                    return msToUs;
                }
                j3 = Math.max(j3, index.getTimeUs(index.getFirstAvailableSegmentNum(j, j2)) + msToUs);
            }
        }
        return j3;
    }

    /* renamed from: i */
    public static long m19959i(DashManifest dashManifest, long j) {
        DashSegmentIndex index;
        int periodCount = dashManifest.getPeriodCount() - 1;
        Period period = dashManifest.getPeriod(periodCount);
        long msToUs = Util.msToUs(period.startMs);
        long periodDurationUs = dashManifest.getPeriodDurationUs(periodCount);
        long msToUs2 = Util.msToUs(j);
        long msToUs3 = Util.msToUs(dashManifest.availabilityStartTimeMs);
        long msToUs4 = Util.msToUs(5000L);
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            List<Representation> list = period.adaptationSets.get(i).representations;
            if (!list.isEmpty() && (index = list.get(0).getIndex()) != null) {
                long nextSegmentAvailableTimeUs = ((msToUs3 + msToUs) + index.getNextSegmentAvailableTimeUs(periodDurationUs, msToUs2)) - msToUs2;
                if (nextSegmentAvailableTimeUs < msToUs4 - 100000 || (nextSegmentAvailableTimeUs > msToUs4 && nextSegmentAvailableTimeUs < msToUs4 + 100000)) {
                    msToUs4 = nextSegmentAvailableTimeUs;
                }
            }
        }
        return LongMath.divide(msToUs4, 1000L, RoundingMode.CEILING);
    }

    /* renamed from: k */
    public static boolean m19960k(Period period) {
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            int i2 = period.adaptationSets.get(i).type;
            if (i2 == 1 || i2 == 2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: l */
    public static boolean m19961l(Period period) {
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            DashSegmentIndex index = period.adaptationSets.get(i).representations.get(0).getIndex();
            if (index == null || index.isExplicit()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m19962m() {
        m19979x(false);
    }

    /* renamed from: A */
    public final void m19963A(UtcTimingElement utcTimingElement, ParsingLoadable.Parser<Long> parser) {
        m19965C(new ParsingLoadable(this.f25737Z, Uri.parse(utcTimingElement.value), 5, parser), new C4871g(this, null), 1);
    }

    /* renamed from: B */
    public final void m19964B(long j) {
        this.f25751u0.postDelayed(this.f25760z, j);
    }

    /* renamed from: C */
    public final <T> void m19965C(ParsingLoadable<T> parsingLoadable, Loader.Callback<ParsingLoadable<T>> callback, int i) {
        this.f25750u.loadStarted(new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, this.f25738k0.startLoading(parsingLoadable, callback, i)), parsingLoadable.type);
    }

    /* renamed from: D */
    public final void m19966D() {
        Uri uri;
        this.f25751u0.removeCallbacks(this.f25760z);
        if (this.f25738k0.hasFatalError()) {
            return;
        }
        if (this.f25738k0.isLoading()) {
            this.f25761z0 = true;
            return;
        }
        synchronized (this.f25756x) {
            uri = this.f25755w0;
        }
        this.f25761z0 = false;
        m19965C(new ParsingLoadable(this.f25737Z, uri, 4, this.f25752v), this.f25754w, this.f25746r.getMinimumLoadableRetryCount(4));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x005b  */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m19967E(long r18, long r20) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.DashMediaSource.m19967E(long, long):void");
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        int intValue = ((Integer) mediaPeriodId.periodUid).intValue() - this.f25733F0;
        MediaSourceEventListener.EventDispatcher createEventDispatcher = createEventDispatcher(mediaPeriodId, this.f25759y0.getPeriod(intValue).startMs);
        DashMediaPeriod dashMediaPeriod = new DashMediaPeriod(intValue + this.f25733F0, this.f25759y0, this.f25747s, intValue, this.f25742o, this.f25745q0, this.f25744q, createDrmEventDispatcher(mediaPeriodId), this.f25746r, createEventDispatcher, this.f25730C0, this.f25736Q, allocator, this.f25743p, this.f25735O, getPlayerId());
        this.f25758y.put(dashMediaPeriod.f25693e, dashMediaPeriod);
        return dashMediaPeriod;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.f25739l;
    }

    /* renamed from: j */
    public final long m19968j() {
        return Math.min((this.f25731D0 - 1) * 1000, 5000);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.f25736Q.maybeThrowError();
    }

    /* renamed from: n */
    public final void m19969n() {
        SntpClient.initialize(this.f25738k0, new C4865a());
    }

    /* renamed from: o */
    public void m19970o(long j) {
        long j2 = this.f25732E0;
        if (j2 == C4649C.TIME_UNSET || j2 < j) {
            this.f25732E0 = j;
        }
    }

    /* renamed from: p */
    public void m19971p() {
        this.f25751u0.removeCallbacks(this.f25734J);
        m19966D();
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        this.f25745q0 = transferListener;
        this.f25744q.prepare();
        this.f25744q.setPlayer(Looper.myLooper(), getPlayerId());
        if (this.f25740m) {
            m19979x(false);
            return;
        }
        this.f25737Z = this.f25741n.createDataSource();
        this.f25738k0 = new Loader("DashMediaSource");
        this.f25751u0 = Util.createHandlerForCurrentLooper();
        m19966D();
    }

    /* renamed from: q */
    public void m19972q(ParsingLoadable<?> parsingLoadable, long j, long j2) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.f25746r.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.f25750u.loadCanceled(loadEventInfo, parsingLoadable.type);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c8  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m19973r(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.dash.manifest.DashManifest> r19, long r20, long r22) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.DashMediaSource.m19973r(com.google.android.exoplayer2.upstream.ParsingLoadable, long, long):void");
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        DashMediaPeriod dashMediaPeriod = (DashMediaPeriod) mediaPeriod;
        dashMediaPeriod.m19942q();
        this.f25758y.remove(dashMediaPeriod.f25693e);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        this.f25761z0 = false;
        this.f25737Z = null;
        Loader loader = this.f25738k0;
        if (loader != null) {
            loader.release();
            this.f25738k0 = null;
        }
        this.f25728A0 = 0L;
        this.f25729B0 = 0L;
        this.f25759y0 = this.f25740m ? this.f25759y0 : null;
        this.f25755w0 = this.f25757x0;
        this.f25749t0 = null;
        Handler handler = this.f25751u0;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f25751u0 = null;
        }
        this.f25730C0 = C4649C.TIME_UNSET;
        this.f25731D0 = 0;
        this.f25732E0 = C4649C.TIME_UNSET;
        this.f25733F0 = 0;
        this.f25758y.clear();
        this.f25747s.reset();
        this.f25744q.release();
    }

    public void replaceManifestUri(Uri uri) {
        synchronized (this.f25756x) {
            this.f25755w0 = uri;
            this.f25757x0 = uri;
        }
    }

    /* renamed from: s */
    public Loader.LoadErrorAction m19974s(ParsingLoadable<DashManifest> parsingLoadable, long j, long j2, IOException iOException, int i) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        long retryDelayMsFor = this.f25746r.getRetryDelayMsFor(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(parsingLoadable.type), iOException, i));
        Loader.LoadErrorAction createRetryAction = retryDelayMsFor == C4649C.TIME_UNSET ? Loader.DONT_RETRY_FATAL : Loader.createRetryAction(false, retryDelayMsFor);
        boolean z = !createRetryAction.isRetry();
        this.f25750u.loadError(loadEventInfo, parsingLoadable.type, iOException, z);
        if (z) {
            this.f25746r.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        }
        return createRetryAction;
    }

    /* renamed from: t */
    public void m19975t(ParsingLoadable<Long> parsingLoadable, long j, long j2) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.f25746r.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.f25750u.loadCompleted(loadEventInfo, parsingLoadable.type);
        m19978w(parsingLoadable.getResult().longValue() - j);
    }

    /* renamed from: u */
    public Loader.LoadErrorAction m19976u(ParsingLoadable<Long> parsingLoadable, long j, long j2, IOException iOException) {
        this.f25750u.loadError(new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded()), parsingLoadable.type, iOException, true);
        this.f25746r.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        m19977v(iOException);
        return Loader.DONT_RETRY;
    }

    /* renamed from: v */
    public final void m19977v(IOException iOException) {
        Log.m21490e("DashMediaSource", "Failed to resolve time offset.", iOException);
        m19979x(true);
    }

    /* renamed from: w */
    public final void m19978w(long j) {
        this.f25730C0 = j;
        m19979x(true);
    }

    /* renamed from: x */
    public final void m19979x(boolean z) {
        Period period;
        long j;
        long j2;
        for (int i = 0; i < this.f25758y.size(); i++) {
            int keyAt = this.f25758y.keyAt(i);
            if (keyAt >= this.f25733F0) {
                this.f25758y.valueAt(i).m19946u(this.f25759y0, keyAt - this.f25733F0);
            }
        }
        Period period2 = this.f25759y0.getPeriod(0);
        int periodCount = this.f25759y0.getPeriodCount() - 1;
        Period period3 = this.f25759y0.getPeriod(periodCount);
        long periodDurationUs = this.f25759y0.getPeriodDurationUs(periodCount);
        long msToUs = Util.msToUs(Util.getNowUnixTimeMs(this.f25730C0));
        long m19958h = m19958h(period2, this.f25759y0.getPeriodDurationUs(0), msToUs);
        long m19957g = m19957g(period3, periodDurationUs, msToUs);
        boolean z2 = this.f25759y0.dynamic && !m19961l(period3);
        if (z2) {
            long j3 = this.f25759y0.timeShiftBufferDepthMs;
            if (j3 != C4649C.TIME_UNSET) {
                m19958h = Math.max(m19958h, m19957g - Util.msToUs(j3));
            }
        }
        long j4 = m19957g - m19958h;
        DashManifest dashManifest = this.f25759y0;
        if (dashManifest.dynamic) {
            Assertions.checkState(dashManifest.availabilityStartTimeMs != C4649C.TIME_UNSET);
            long msToUs2 = (msToUs - Util.msToUs(this.f25759y0.availabilityStartTimeMs)) - m19958h;
            m19967E(msToUs2, j4);
            long usToMs = this.f25759y0.availabilityStartTimeMs + Util.usToMs(m19958h);
            long msToUs3 = msToUs2 - Util.msToUs(this.f25753v0.targetOffsetMs);
            long min = Math.min(5000000L, j4 / 2);
            j = usToMs;
            j2 = msToUs3 < min ? min : msToUs3;
            period = period2;
        } else {
            period = period2;
            j = C4649C.TIME_UNSET;
            j2 = 0;
        }
        long msToUs4 = m19958h - Util.msToUs(period.startMs);
        DashManifest dashManifest2 = this.f25759y0;
        refreshSourceInfo(new C4866b(dashManifest2.availabilityStartTimeMs, j, this.f25730C0, this.f25733F0, msToUs4, j4, j2, dashManifest2, this.f25739l, dashManifest2.dynamic ? this.f25753v0 : null));
        if (this.f25740m) {
            return;
        }
        this.f25751u0.removeCallbacks(this.f25734J);
        if (z2) {
            this.f25751u0.postDelayed(this.f25734J, m19959i(this.f25759y0, Util.getNowUnixTimeMs(this.f25730C0)));
        }
        if (this.f25761z0) {
            m19966D();
            return;
        }
        if (z) {
            DashManifest dashManifest3 = this.f25759y0;
            if (dashManifest3.dynamic) {
                long j5 = dashManifest3.minUpdatePeriodMs;
                if (j5 != C4649C.TIME_UNSET) {
                    if (j5 == 0) {
                        j5 = 5000;
                    }
                    m19964B(Math.max(0L, (this.f25728A0 + j5) - SystemClock.elapsedRealtime()));
                }
            }
        }
    }

    /* renamed from: y */
    public final void m19980y(UtcTimingElement utcTimingElement) {
        String str = utcTimingElement.schemeIdUri;
        if (Util.areEqual(str, "urn:mpeg:dash:utc:direct:2014") || Util.areEqual(str, "urn:mpeg:dash:utc:direct:2012")) {
            m19981z(utcTimingElement);
            return;
        }
        if (Util.areEqual(str, "urn:mpeg:dash:utc:http-iso:2014") || Util.areEqual(str, "urn:mpeg:dash:utc:http-iso:2012")) {
            m19963A(utcTimingElement, new C4868d());
            return;
        }
        if (Util.areEqual(str, "urn:mpeg:dash:utc:http-xsdate:2014") || Util.areEqual(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
            m19963A(utcTimingElement, new C4872h(null));
        } else if (Util.areEqual(str, "urn:mpeg:dash:utc:ntp:2014") || Util.areEqual(str, "urn:mpeg:dash:utc:ntp:2012")) {
            m19969n();
        } else {
            m19977v(new IOException("Unsupported UTC timing scheme"));
        }
    }

    /* renamed from: z */
    public final void m19981z(UtcTimingElement utcTimingElement) {
        try {
            m19978w(Util.parseXsDateTime(utcTimingElement.value) - this.f25729B0);
        } catch (ParserException e) {
            m19977v(e);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.dash.DashMediaSource$f */
    /* loaded from: classes5.dex */
    public final class C4870f implements LoaderErrorThrower {
        public C4870f() {
        }

        /* renamed from: a */
        public final void m19988a() throws IOException {
            if (DashMediaSource.this.f25749t0 != null) {
                throw DashMediaSource.this.f25749t0;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
        public void maybeThrowError() throws IOException {
            DashMediaSource.this.f25738k0.maybeThrowError();
            m19988a();
        }

        @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
        public void maybeThrowError(int i) throws IOException {
            DashMediaSource.this.f25738k0.maybeThrowError(i);
            m19988a();
        }
    }

    public DashMediaSource(MediaItem mediaItem, @Nullable DashManifest dashManifest, @Nullable DataSource.Factory factory, @Nullable ParsingLoadable.Parser<? extends DashManifest> parser, DashChunkSource.Factory factory2, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, long j) {
        this.f25739l = mediaItem;
        this.f25753v0 = mediaItem.liveConfiguration;
        this.f25755w0 = ((MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration)).uri;
        this.f25757x0 = mediaItem.localConfiguration.uri;
        this.f25759y0 = dashManifest;
        this.f25741n = factory;
        this.f25752v = parser;
        this.f25742o = factory2;
        this.f25744q = drmSessionManager;
        this.f25746r = loadErrorHandlingPolicy;
        this.f25748t = j;
        this.f25743p = compositeSequenceableLoaderFactory;
        this.f25747s = new BaseUrlExclusionList();
        boolean z = dashManifest != null;
        this.f25740m = z;
        C4865a c4865a = null;
        this.f25750u = createEventDispatcher(null);
        this.f25756x = new Object();
        this.f25758y = new SparseArray<>();
        this.f25735O = new C4867c(this, c4865a);
        this.f25732E0 = C4649C.TIME_UNSET;
        this.f25730C0 = C4649C.TIME_UNSET;
        if (z) {
            Assertions.checkState(true ^ dashManifest.dynamic);
            this.f25754w = null;
            this.f25760z = null;
            this.f25734J = null;
            this.f25736Q = new LoaderErrorThrower.Dummy();
            return;
        }
        this.f25754w = new C4869e(this, c4865a);
        this.f25736Q = new C4870f();
        this.f25760z = new Runnable() { // from class: com.sunia.HTREnginev2.vre
            @Override // java.lang.Runnable
            public final void run() {
                DashMediaSource.this.m19966D();
            }
        };
        this.f25734J = new Runnable() { // from class: com.sunia.HTREnginev2.wre
            @Override // java.lang.Runnable
            public final void run() {
                DashMediaSource.this.m19962m();
            }
        };
    }
}
