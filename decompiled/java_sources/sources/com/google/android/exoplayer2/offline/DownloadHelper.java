package com.google.android.exoplayer2.offline;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Renderer;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.RenderersFactory;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.DrmSessionManagerProvider;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataOutput;
import com.google.android.exoplayer2.offline.DownloadHelper;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.text.TextOutput;
import com.google.android.exoplayer2.trackselection.BaseTrackSelection;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultAllocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class DownloadHelper {

    @Deprecated
    public static final DefaultTrackSelector.Parameters DEFAULT_TRACK_SELECTOR_PARAMETERS;
    public static final DefaultTrackSelector.Parameters DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT;

    @Deprecated
    public static final DefaultTrackSelector.Parameters DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_VIEWPORT;

    /* renamed from: a */
    public final MediaItem.LocalConfiguration f24962a;

    /* renamed from: b */
    @Nullable
    public final MediaSource f24963b;

    /* renamed from: c */
    public final DefaultTrackSelector f24964c;

    /* renamed from: d */
    public final RendererCapabilities[] f24965d;

    /* renamed from: e */
    public final SparseIntArray f24966e;

    /* renamed from: f */
    public final Handler f24967f;

    /* renamed from: g */
    public final Timeline.Window f24968g;

    /* renamed from: h */
    public boolean f24969h;

    /* renamed from: i */
    public Callback f24970i;

    /* renamed from: j */
    public C4806e f24971j;

    /* renamed from: k */
    public TrackGroupArray[] f24972k;

    /* renamed from: l */
    public MappingTrackSelector.MappedTrackInfo[] f24973l;

    /* renamed from: m */
    public List<ExoTrackSelection>[][] f24974m;

    /* renamed from: n */
    public List<ExoTrackSelection>[][] f24975n;

    /* loaded from: classes5.dex */
    public interface Callback {
        void onPrepareError(DownloadHelper downloadHelper, IOException iOException);

        void onPrepared(DownloadHelper downloadHelper);
    }

    /* loaded from: classes5.dex */
    public static class LiveContentUnsupportedException extends IOException {
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadHelper$a */
    /* loaded from: classes5.dex */
    public class C4802a implements VideoRendererEventListener {
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadHelper$b */
    /* loaded from: classes5.dex */
    public class C4803b implements AudioRendererEventListener {
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadHelper$c */
    /* loaded from: classes5.dex */
    public static final class C4804c extends BaseTrackSelection {

        /* renamed from: com.google.android.exoplayer2.offline.DownloadHelper$c$a */
        /* loaded from: classes5.dex */
        public static final class a implements ExoTrackSelection.Factory {
            public a() {
            }

            @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory
            public ExoTrackSelection[] createTrackSelections(ExoTrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
                ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
                for (int i = 0; i < definitionArr.length; i++) {
                    ExoTrackSelection.Definition definition = definitionArr[i];
                    exoTrackSelectionArr[i] = definition == null ? null : new C4804c(definition.group, definition.tracks);
                }
                return exoTrackSelectionArr;
            }

            public /* synthetic */ a(C4802a c4802a) {
                this();
            }
        }

        public C4804c(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        @Nullable
        public Object getSelectionData() {
            return null;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        }
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadHelper$d */
    /* loaded from: classes5.dex */
    public static final class C4805d implements BandwidthMeter {
        public C4805d() {
        }

        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        }

        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        public long getBitrateEstimate() {
            return 0L;
        }

        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        @Nullable
        public TransferListener getTransferListener() {
            return null;
        }

        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        }

        public /* synthetic */ C4805d(C4802a c4802a) {
            this();
        }
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadHelper$e */
    /* loaded from: classes5.dex */
    public static final class C4806e implements MediaSource.MediaSourceCaller, MediaPeriod.Callback, Handler.Callback {

        /* renamed from: o */
        public static final int f24976o = 0;

        /* renamed from: p */
        public static final int f24977p = 1;

        /* renamed from: q */
        public static final int f24978q = 2;

        /* renamed from: r */
        public static final int f24979r = 3;

        /* renamed from: s */
        public static final int f24980s = 0;

        /* renamed from: t */
        public static final int f24981t = 1;

        /* renamed from: e */
        public final MediaSource f24982e;

        /* renamed from: f */
        public final DownloadHelper f24983f;

        /* renamed from: g */
        public final Allocator f24984g = new DefaultAllocator(true, 65536);

        /* renamed from: h */
        public final ArrayList<MediaPeriod> f24985h = new ArrayList<>();

        /* renamed from: i */
        public final Handler f24986i = Util.createHandlerForCurrentOrMainLooper(new Handler.Callback() { // from class: com.sunia.HTREnginev2.igf
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean m19474b;
                m19474b = DownloadHelper.C4806e.this.m19474b(message);
                return m19474b;
            }
        });

        /* renamed from: j */
        public final HandlerThread f24987j;

        /* renamed from: k */
        public final Handler f24988k;

        /* renamed from: l */
        public Timeline f24989l;

        /* renamed from: m */
        public MediaPeriod[] f24990m;

        /* renamed from: n */
        public boolean f24991n;

        public C4806e(MediaSource mediaSource, DownloadHelper downloadHelper) {
            this.f24982e = mediaSource;
            this.f24983f = downloadHelper;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadHelper");
            this.f24987j = handlerThread;
            handlerThread.start();
            Handler createHandler = Util.createHandler(handlerThread.getLooper(), this);
            this.f24988k = createHandler;
            createHandler.sendEmptyMessage(0);
        }

        /* renamed from: b */
        public final boolean m19474b(Message message) {
            if (this.f24991n) {
                return false;
            }
            int i = message.what;
            if (i == 0) {
                this.f24983f.m19470u();
                return true;
            }
            if (i != 1) {
                return false;
            }
            m19476d();
            this.f24983f.m19469t((IOException) Util.castNonNull(message.obj));
            return true;
        }

        @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
            if (this.f24985h.contains(mediaPeriod)) {
                this.f24988k.obtainMessage(2, mediaPeriod).sendToTarget();
            }
        }

        /* renamed from: d */
        public void m19476d() {
            if (this.f24991n) {
                return;
            }
            this.f24991n = true;
            this.f24988k.sendEmptyMessage(3);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.f24982e.prepareSource(this, null, PlayerId.UNSET);
                this.f24988k.sendEmptyMessage(1);
                return true;
            }
            int i2 = 0;
            if (i == 1) {
                try {
                    if (this.f24990m == null) {
                        this.f24982e.maybeThrowSourceInfoRefreshError();
                    } else {
                        while (i2 < this.f24985h.size()) {
                            this.f24985h.get(i2).maybeThrowPrepareError();
                            i2++;
                        }
                    }
                    this.f24988k.sendEmptyMessageDelayed(1, 100L);
                } catch (IOException e) {
                    this.f24986i.obtainMessage(1, e).sendToTarget();
                }
                return true;
            }
            if (i == 2) {
                MediaPeriod mediaPeriod = (MediaPeriod) message.obj;
                if (this.f24985h.contains(mediaPeriod)) {
                    mediaPeriod.continueLoading(0L);
                }
                return true;
            }
            if (i != 3) {
                return false;
            }
            MediaPeriod[] mediaPeriodArr = this.f24990m;
            if (mediaPeriodArr != null) {
                int length = mediaPeriodArr.length;
                while (i2 < length) {
                    this.f24982e.releasePeriod(mediaPeriodArr[i2]);
                    i2++;
                }
            }
            this.f24982e.releaseSource(this);
            this.f24988k.removeCallbacksAndMessages(null);
            this.f24987j.quit();
            return true;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
        public void onPrepared(MediaPeriod mediaPeriod) {
            this.f24985h.remove(mediaPeriod);
            if (this.f24985h.isEmpty()) {
                this.f24988k.removeMessages(1);
                this.f24986i.sendEmptyMessage(0);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
        public void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline) {
            MediaPeriod[] mediaPeriodArr;
            if (this.f24989l != null) {
                return;
            }
            if (timeline.getWindow(0, new Timeline.Window()).isLive()) {
                this.f24986i.obtainMessage(1, new LiveContentUnsupportedException()).sendToTarget();
                return;
            }
            this.f24989l = timeline;
            this.f24990m = new MediaPeriod[timeline.getPeriodCount()];
            int i = 0;
            while (true) {
                mediaPeriodArr = this.f24990m;
                if (i >= mediaPeriodArr.length) {
                    break;
                }
                MediaPeriod createPeriod = this.f24982e.createPeriod(new MediaSource.MediaPeriodId(timeline.getUidOfPeriod(i)), this.f24984g, 0L);
                this.f24990m[i] = createPeriod;
                this.f24985h.add(createPeriod);
                i++;
            }
            for (MediaPeriod mediaPeriod : mediaPeriodArr) {
                mediaPeriod.prepare(this, 0L);
            }
        }
    }

    static {
        DefaultTrackSelector.Parameters build = DefaultTrackSelector.Parameters.DEFAULT_WITHOUT_CONTEXT.buildUpon().setForceHighestSupportedBitrate(true).build();
        DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT = build;
        DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_VIEWPORT = build;
        DEFAULT_TRACK_SELECTOR_PARAMETERS = build;
    }

    public DownloadHelper(MediaItem mediaItem, @Nullable MediaSource mediaSource, DefaultTrackSelector.Parameters parameters, RendererCapabilities[] rendererCapabilitiesArr) {
        this.f24962a = (MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration);
        this.f24963b = mediaSource;
        C4802a c4802a = null;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(parameters, new C4804c.a(c4802a));
        this.f24964c = defaultTrackSelector;
        this.f24965d = rendererCapabilitiesArr;
        this.f24966e = new SparseIntArray();
        defaultTrackSelector.init(new TrackSelector.InvalidationListener() { // from class: com.sunia.HTREnginev2.bgf
            @Override // com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener
            public final void onTrackSelectionsInvalidated() {
                DownloadHelper.m19464p();
            }
        }, new C4805d(c4802a));
        this.f24967f = Util.createHandlerForCurrentOrMainLooper();
        this.f24968g = new Timeline.Window();
    }

    public static MediaSource createMediaSource(DownloadRequest downloadRequest, DataSource.Factory factory) {
        return createMediaSource(downloadRequest, factory, null);
    }

    @Deprecated
    public static DownloadHelper forDash(Context context, Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory) {
        return forDash(uri, factory, renderersFactory, null, getDefaultTrackSelectorParameters(context));
    }

    @Deprecated
    public static DownloadHelper forHls(Context context, Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory) {
        return forHls(uri, factory, renderersFactory, null, getDefaultTrackSelectorParameters(context));
    }

    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem) {
        Assertions.checkArgument(m19460l((MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration)));
        return forMediaItem(mediaItem, getDefaultTrackSelectorParameters(context), null, null, null);
    }

    @Deprecated
    public static DownloadHelper forProgressive(Context context, Uri uri) {
        return forMediaItem(context, new MediaItem.Builder().setUri(uri).build());
    }

    @Deprecated
    public static DownloadHelper forSmoothStreaming(Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory) {
        return forSmoothStreaming(uri, factory, renderersFactory, null, DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT);
    }

    public static DefaultTrackSelector.Parameters getDefaultTrackSelectorParameters(Context context) {
        return DefaultTrackSelector.Parameters.getDefaults(context).buildUpon().setForceHighestSupportedBitrate(true).build();
    }

    public static RendererCapabilities[] getRendererCapabilities(RenderersFactory renderersFactory) {
        Renderer[] createRenderers = renderersFactory.createRenderers(Util.createHandlerForCurrentOrMainLooper(), new C4802a(), new C4803b(), new TextOutput() { // from class: com.sunia.HTREnginev2.egf
            @Override // com.google.android.exoplayer2.text.TextOutput
            public final void onCues(List list) {
                DownloadHelper.m19462n(list);
            }
        }, new MetadataOutput() { // from class: com.sunia.HTREnginev2.fgf
            @Override // com.google.android.exoplayer2.metadata.MetadataOutput
            public final void onMetadata(Metadata metadata) {
                DownloadHelper.m19463o(metadata);
            }
        });
        RendererCapabilities[] rendererCapabilitiesArr = new RendererCapabilities[createRenderers.length];
        for (int i = 0; i < createRenderers.length; i++) {
            rendererCapabilitiesArr[i] = createRenderers[i].getCapabilities();
        }
        return rendererCapabilitiesArr;
    }

    /* renamed from: k */
    public static MediaSource m19459k(MediaItem mediaItem, DataSource.Factory factory, @Nullable final DrmSessionManager drmSessionManager) {
        return new DefaultMediaSourceFactory(factory, ExtractorsFactory.EMPTY).setDrmSessionManagerProvider(drmSessionManager != null ? new DrmSessionManagerProvider() { // from class: com.sunia.HTREnginev2.cgf
            @Override // com.google.android.exoplayer2.drm.DrmSessionManagerProvider
            public final DrmSessionManager get(MediaItem mediaItem2) {
                DrmSessionManager m19461m;
                m19461m = DownloadHelper.m19461m(DrmSessionManager.this, mediaItem2);
                return m19461m;
            }
        } : null).createMediaSource(mediaItem);
    }

    /* renamed from: l */
    public static boolean m19460l(MediaItem.LocalConfiguration localConfiguration) {
        return Util.inferContentTypeForUriAndMimeType(localConfiguration.uri, localConfiguration.mimeType) == 4;
    }

    /* renamed from: m */
    public static /* synthetic */ DrmSessionManager m19461m(DrmSessionManager drmSessionManager, MediaItem mediaItem) {
        return drmSessionManager;
    }

    /* renamed from: n */
    public static /* synthetic */ void m19462n(List list) {
    }

    /* renamed from: o */
    public static /* synthetic */ void m19463o(Metadata metadata) {
    }

    /* renamed from: p */
    public static /* synthetic */ void m19464p() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ void m19465q(IOException iOException) {
        ((Callback) Assertions.checkNotNull(this.f24970i)).onPrepareError(this, iOException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ void m19466r() {
        ((Callback) Assertions.checkNotNull(this.f24970i)).onPrepared(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public /* synthetic */ void m19467s(Callback callback) {
        callback.onPrepared(this);
    }

    public void addAudioLanguagesToSelection(String... strArr) {
        m19468j();
        for (int i = 0; i < this.f24973l.length; i++) {
            DefaultTrackSelector.ParametersBuilder buildUpon = DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT.buildUpon();
            MappingTrackSelector.MappedTrackInfo mappedTrackInfo = this.f24973l[i];
            int rendererCount = mappedTrackInfo.getRendererCount();
            for (int i2 = 0; i2 < rendererCount; i2++) {
                if (mappedTrackInfo.getRendererType(i2) != 1) {
                    buildUpon.setRendererDisabled(i2, true);
                }
            }
            for (String str : strArr) {
                buildUpon.setPreferredAudioLanguage(str);
                addTrackSelection(i, buildUpon.build());
            }
        }
    }

    public void addTextLanguagesToSelection(boolean z, String... strArr) {
        m19468j();
        for (int i = 0; i < this.f24973l.length; i++) {
            DefaultTrackSelector.ParametersBuilder buildUpon = DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT.buildUpon();
            MappingTrackSelector.MappedTrackInfo mappedTrackInfo = this.f24973l[i];
            int rendererCount = mappedTrackInfo.getRendererCount();
            for (int i2 = 0; i2 < rendererCount; i2++) {
                if (mappedTrackInfo.getRendererType(i2) != 3) {
                    buildUpon.setRendererDisabled(i2, true);
                }
            }
            buildUpon.setSelectUndeterminedTextLanguage(z);
            for (String str : strArr) {
                buildUpon.setPreferredTextLanguage(str);
                addTrackSelection(i, buildUpon.build());
            }
        }
    }

    public void addTrackSelection(int i, DefaultTrackSelector.Parameters parameters) {
        m19468j();
        this.f24964c.setParameters(parameters);
        m19471v(i);
    }

    public void addTrackSelectionForSingleRenderer(int i, int i2, DefaultTrackSelector.Parameters parameters, List<DefaultTrackSelector.SelectionOverride> list) {
        m19468j();
        DefaultTrackSelector.ParametersBuilder buildUpon = parameters.buildUpon();
        int i3 = 0;
        while (i3 < this.f24973l[i].getRendererCount()) {
            buildUpon.setRendererDisabled(i3, i3 != i2);
            i3++;
        }
        if (list.isEmpty()) {
            addTrackSelection(i, buildUpon.build());
            return;
        }
        TrackGroupArray trackGroups = this.f24973l[i].getTrackGroups(i2);
        for (int i4 = 0; i4 < list.size(); i4++) {
            buildUpon.setSelectionOverride(i2, trackGroups, list.get(i4));
            addTrackSelection(i, buildUpon.build());
        }
    }

    public void clearTrackSelections(int i) {
        m19468j();
        for (int i2 = 0; i2 < this.f24965d.length; i2++) {
            this.f24974m[i][i2].clear();
        }
    }

    public DownloadRequest getDownloadRequest(@Nullable byte[] bArr) {
        return getDownloadRequest(this.f24962a.uri.toString(), bArr);
    }

    @Nullable
    public Object getManifest() {
        if (this.f24963b == null) {
            return null;
        }
        m19468j();
        if (this.f24971j.f24989l.getWindowCount() > 0) {
            return this.f24971j.f24989l.getWindow(0, this.f24968g).manifest;
        }
        return null;
    }

    public MappingTrackSelector.MappedTrackInfo getMappedTrackInfo(int i) {
        m19468j();
        return this.f24973l[i];
    }

    public int getPeriodCount() {
        if (this.f24963b == null) {
            return 0;
        }
        m19468j();
        return this.f24972k.length;
    }

    public TrackGroupArray getTrackGroups(int i) {
        m19468j();
        return this.f24972k[i];
    }

    public List<ExoTrackSelection> getTrackSelections(int i, int i2) {
        m19468j();
        return this.f24975n[i][i2];
    }

    @EnsuresNonNull({"trackGroupArrays", "mappedTrackInfos", "trackSelectionsByPeriodAndRenderer", "immutableTrackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.mediaPeriods"})
    /* renamed from: j */
    public final void m19468j() {
        Assertions.checkState(this.f24969h);
    }

    public void prepare(final Callback callback) {
        Assertions.checkState(this.f24970i == null);
        this.f24970i = callback;
        MediaSource mediaSource = this.f24963b;
        if (mediaSource != null) {
            this.f24971j = new C4806e(mediaSource, this);
        } else {
            this.f24967f.post(new Runnable() { // from class: com.sunia.HTREnginev2.hgf
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadHelper.this.m19467s(callback);
                }
            });
        }
    }

    public void release() {
        C4806e c4806e = this.f24971j;
        if (c4806e != null) {
            c4806e.m19476d();
        }
    }

    public void replaceTrackSelections(int i, DefaultTrackSelector.Parameters parameters) {
        clearTrackSelections(i);
        addTrackSelection(i, parameters);
    }

    /* renamed from: t */
    public final void m19469t(final IOException iOException) {
        ((Handler) Assertions.checkNotNull(this.f24967f)).post(new Runnable() { // from class: com.sunia.HTREnginev2.dgf
            @Override // java.lang.Runnable
            public final void run() {
                DownloadHelper.this.m19465q(iOException);
            }
        });
    }

    /* renamed from: u */
    public final void m19470u() {
        Assertions.checkNotNull(this.f24971j);
        Assertions.checkNotNull(this.f24971j.f24990m);
        Assertions.checkNotNull(this.f24971j.f24989l);
        int length = this.f24971j.f24990m.length;
        int length2 = this.f24965d.length;
        this.f24974m = (List[][]) Array.newInstance((Class<?>) List.class, length, length2);
        this.f24975n = (List[][]) Array.newInstance((Class<?>) List.class, length, length2);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                this.f24974m[i][i2] = new ArrayList();
                this.f24975n[i][i2] = Collections.unmodifiableList(this.f24974m[i][i2]);
            }
        }
        this.f24972k = new TrackGroupArray[length];
        this.f24973l = new MappingTrackSelector.MappedTrackInfo[length];
        for (int i3 = 0; i3 < length; i3++) {
            this.f24972k[i3] = this.f24971j.f24990m[i3].getTrackGroups();
            this.f24964c.onSelectionActivated(m19471v(i3).info);
            this.f24973l[i3] = (MappingTrackSelector.MappedTrackInfo) Assertions.checkNotNull(this.f24964c.getCurrentMappedTrackInfo());
        }
        m19472w();
        ((Handler) Assertions.checkNotNull(this.f24967f)).post(new Runnable() { // from class: com.sunia.HTREnginev2.ggf
            @Override // java.lang.Runnable
            public final void run() {
                DownloadHelper.this.m19466r();
            }
        });
    }

    @RequiresNonNull({"trackGroupArrays", "trackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline"})
    /* renamed from: v */
    public final TrackSelectorResult m19471v(int i) {
        boolean z;
        try {
            TrackSelectorResult selectTracks = this.f24964c.selectTracks(this.f24965d, this.f24972k[i], new MediaSource.MediaPeriodId(this.f24971j.f24989l.getUidOfPeriod(i)), this.f24971j.f24989l);
            for (int i2 = 0; i2 < selectTracks.length; i2++) {
                ExoTrackSelection exoTrackSelection = selectTracks.selections[i2];
                if (exoTrackSelection != null) {
                    List<ExoTrackSelection> list = this.f24974m[i][i2];
                    int i3 = 0;
                    while (true) {
                        if (i3 >= list.size()) {
                            z = false;
                            break;
                        }
                        ExoTrackSelection exoTrackSelection2 = list.get(i3);
                        if (exoTrackSelection2.getTrackGroup().equals(exoTrackSelection.getTrackGroup())) {
                            this.f24966e.clear();
                            for (int i4 = 0; i4 < exoTrackSelection2.length(); i4++) {
                                this.f24966e.put(exoTrackSelection2.getIndexInTrackGroup(i4), 0);
                            }
                            for (int i5 = 0; i5 < exoTrackSelection.length(); i5++) {
                                this.f24966e.put(exoTrackSelection.getIndexInTrackGroup(i5), 0);
                            }
                            int[] iArr = new int[this.f24966e.size()];
                            for (int i6 = 0; i6 < this.f24966e.size(); i6++) {
                                iArr[i6] = this.f24966e.keyAt(i6);
                            }
                            list.set(i3, new C4804c(exoTrackSelection2.getTrackGroup(), iArr));
                            z = true;
                        } else {
                            i3++;
                        }
                    }
                    if (!z) {
                        list.add(exoTrackSelection);
                    }
                }
            }
            return selectTracks;
        } catch (ExoPlaybackException e) {
            throw new UnsupportedOperationException(e);
        }
    }

    @RequiresNonNull({"trackGroupArrays", "mappedTrackInfos", "trackSelectionsByPeriodAndRenderer", "immutableTrackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.mediaPeriods"})
    /* renamed from: w */
    public final void m19472w() {
        this.f24969h = true;
    }

    public static MediaSource createMediaSource(DownloadRequest downloadRequest, DataSource.Factory factory, @Nullable DrmSessionManager drmSessionManager) {
        return m19459k(downloadRequest.toMediaItem(), factory, drmSessionManager);
    }

    @Deprecated
    public static DownloadHelper forProgressive(Context context, Uri uri, @Nullable String str) {
        return forMediaItem(context, new MediaItem.Builder().setUri(uri).setCustomCacheKey(str).build());
    }

    @Deprecated
    public static DownloadHelper forSmoothStreaming(Context context, Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory) {
        return forSmoothStreaming(uri, factory, renderersFactory, null, getDefaultTrackSelectorParameters(context));
    }

    public DownloadRequest getDownloadRequest(String str, @Nullable byte[] bArr) {
        DownloadRequest.Builder mimeType = new DownloadRequest.Builder(str, this.f24962a.uri).setMimeType(this.f24962a.mimeType);
        MediaItem.DrmConfiguration drmConfiguration = this.f24962a.drmConfiguration;
        DownloadRequest.Builder data = mimeType.setKeySetId(drmConfiguration != null ? drmConfiguration.getKeySetId() : null).setCustomCacheKey(this.f24962a.customCacheKey).setData(bArr);
        if (this.f24963b == null) {
            return data.build();
        }
        m19468j();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int length = this.f24974m.length;
        for (int i = 0; i < length; i++) {
            arrayList2.clear();
            int length2 = this.f24974m[i].length;
            for (int i2 = 0; i2 < length2; i2++) {
                arrayList2.addAll(this.f24974m[i][i2]);
            }
            arrayList.addAll(this.f24971j.f24990m[i].getStreamKeys(arrayList2));
        }
        return data.setStreamKeys(arrayList).build();
    }

    @Deprecated
    public static DownloadHelper forDash(Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory, @Nullable DrmSessionManager drmSessionManager, DefaultTrackSelector.Parameters parameters) {
        return forMediaItem(new MediaItem.Builder().setUri(uri).setMimeType(MimeTypes.APPLICATION_MPD).build(), parameters, renderersFactory, factory, drmSessionManager);
    }

    @Deprecated
    public static DownloadHelper forHls(Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory, @Nullable DrmSessionManager drmSessionManager, DefaultTrackSelector.Parameters parameters) {
        return forMediaItem(new MediaItem.Builder().setUri(uri).setMimeType(MimeTypes.APPLICATION_M3U8).build(), parameters, renderersFactory, factory, drmSessionManager);
    }

    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem, @Nullable RenderersFactory renderersFactory, @Nullable DataSource.Factory factory) {
        return forMediaItem(mediaItem, getDefaultTrackSelectorParameters(context), renderersFactory, factory, null);
    }

    @Deprecated
    public static DownloadHelper forSmoothStreaming(Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory, @Nullable DrmSessionManager drmSessionManager, DefaultTrackSelector.Parameters parameters) {
        return forMediaItem(new MediaItem.Builder().setUri(uri).setMimeType(MimeTypes.APPLICATION_SS).build(), parameters, renderersFactory, factory, drmSessionManager);
    }

    public static DownloadHelper forMediaItem(MediaItem mediaItem, DefaultTrackSelector.Parameters parameters, @Nullable RenderersFactory renderersFactory, @Nullable DataSource.Factory factory) {
        return forMediaItem(mediaItem, parameters, renderersFactory, factory, null);
    }

    public static DownloadHelper forMediaItem(MediaItem mediaItem, DefaultTrackSelector.Parameters parameters, @Nullable RenderersFactory renderersFactory, @Nullable DataSource.Factory factory, @Nullable DrmSessionManager drmSessionManager) {
        boolean m19460l = m19460l((MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration));
        Assertions.checkArgument(m19460l || factory != null);
        return new DownloadHelper(mediaItem, m19460l ? null : m19459k(mediaItem, (DataSource.Factory) Util.castNonNull(factory), drmSessionManager), parameters, renderersFactory != null ? getRendererCapabilities(renderersFactory) : new RendererCapabilities[0]);
    }
}
