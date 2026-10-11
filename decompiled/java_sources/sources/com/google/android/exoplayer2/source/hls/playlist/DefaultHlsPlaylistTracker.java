package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.hls.HlsDataSourceFactory;
import com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMultivariantPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.Iterables;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public final class DefaultHlsPlaylistTracker implements HlsPlaylistTracker, Loader.Callback<ParsingLoadable<HlsPlaylist>> {
    public static final double DEFAULT_PLAYLIST_STUCK_TARGET_DURATION_COEFFICIENT = 3.5d;
    public static final HlsPlaylistTracker.Factory FACTORY = new HlsPlaylistTracker.Factory() { // from class: com.sunia.HTREnginev2.pze
        @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.Factory
        public final HlsPlaylistTracker createTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory) {
            return new DefaultHlsPlaylistTracker(hlsDataSourceFactory, loadErrorHandlingPolicy, hlsPlaylistParserFactory);
        }
    };

    /* renamed from: e */
    public final HlsDataSourceFactory f26084e;

    /* renamed from: f */
    public final HlsPlaylistParserFactory f26085f;

    /* renamed from: g */
    public final LoadErrorHandlingPolicy f26086g;

    /* renamed from: h */
    public final HashMap<Uri, C4894c> f26087h;

    /* renamed from: i */
    public final CopyOnWriteArrayList<HlsPlaylistTracker.PlaylistEventListener> f26088i;

    /* renamed from: j */
    public final double f26089j;

    /* renamed from: k */
    @Nullable
    public MediaSourceEventListener.EventDispatcher f26090k;

    /* renamed from: l */
    @Nullable
    public Loader f26091l;

    /* renamed from: m */
    @Nullable
    public Handler f26092m;

    /* renamed from: n */
    @Nullable
    public HlsPlaylistTracker.PrimaryPlaylistListener f26093n;

    /* renamed from: o */
    @Nullable
    public HlsMultivariantPlaylist f26094o;

    /* renamed from: p */
    @Nullable
    public Uri f26095p;

    /* renamed from: q */
    @Nullable
    public HlsMediaPlaylist f26096q;

    /* renamed from: r */
    public boolean f26097r;

    /* renamed from: s */
    public long f26098s;

    /* renamed from: com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker$b */
    /* loaded from: classes5.dex */
    public class C4893b implements HlsPlaylistTracker.PlaylistEventListener {
        public C4893b() {
        }

        @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
        public void onPlaylistChanged() {
            DefaultHlsPlaylistTracker.this.f26088i.remove(this);
        }

        @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
        public boolean onPlaylistError(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z) {
            C4894c c4894c;
            if (DefaultHlsPlaylistTracker.this.f26096q == null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                List<HlsMultivariantPlaylist.Variant> list = ((HlsMultivariantPlaylist) Util.castNonNull(DefaultHlsPlaylistTracker.this.f26094o)).variants;
                int i = 0;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    C4894c c4894c2 = (C4894c) DefaultHlsPlaylistTracker.this.f26087h.get(list.get(i2).url);
                    if (c4894c2 != null && elapsedRealtime < c4894c2.f26110l) {
                        i++;
                    }
                }
                LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor = DefaultHlsPlaylistTracker.this.f26086g.getFallbackSelectionFor(new LoadErrorHandlingPolicy.FallbackOptions(1, 0, DefaultHlsPlaylistTracker.this.f26094o.variants.size(), i), loadErrorInfo);
                if (fallbackSelectionFor != null && fallbackSelectionFor.type == 2 && (c4894c = (C4894c) DefaultHlsPlaylistTracker.this.f26087h.get(uri)) != null) {
                    c4894c.m20204h(fallbackSelectionFor.exclusionDurationMs);
                }
            }
            return false;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker$c */
    /* loaded from: classes5.dex */
    public final class C4894c implements Loader.Callback<ParsingLoadable<HlsPlaylist>> {

        /* renamed from: p */
        public static final String f26100p = "_HLS_msn";

        /* renamed from: q */
        public static final String f26101q = "_HLS_part";

        /* renamed from: r */
        public static final String f26102r = "_HLS_skip";

        /* renamed from: e */
        public final Uri f26103e;

        /* renamed from: f */
        public final Loader f26104f = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* renamed from: g */
        public final DataSource f26105g;

        /* renamed from: h */
        @Nullable
        public HlsMediaPlaylist f26106h;

        /* renamed from: i */
        public long f26107i;

        /* renamed from: j */
        public long f26108j;

        /* renamed from: k */
        public long f26109k;

        /* renamed from: l */
        public long f26110l;

        /* renamed from: m */
        public boolean f26111m;

        /* renamed from: n */
        @Nullable
        public IOException f26112n;

        public C4894c(Uri uri) {
            this.f26103e = uri;
            this.f26105g = DefaultHlsPlaylistTracker.this.f26084e.createDataSource(4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public /* synthetic */ void m20203l(Uri uri) {
            this.f26111m = false;
            m20209n(uri);
        }

        /* renamed from: h */
        public final boolean m20204h(long j) {
            this.f26110l = SystemClock.elapsedRealtime() + j;
            return this.f26103e.equals(DefaultHlsPlaylistTracker.this.f26095p) && !DefaultHlsPlaylistTracker.this.m20192w();
        }

        /* renamed from: i */
        public final Uri m20205i() {
            HlsMediaPlaylist hlsMediaPlaylist = this.f26106h;
            if (hlsMediaPlaylist != null) {
                HlsMediaPlaylist.ServerControl serverControl = hlsMediaPlaylist.serverControl;
                if (serverControl.skipUntilUs != C4649C.TIME_UNSET || serverControl.canBlockReload) {
                    Uri.Builder buildUpon = this.f26103e.buildUpon();
                    HlsMediaPlaylist hlsMediaPlaylist2 = this.f26106h;
                    if (hlsMediaPlaylist2.serverControl.canBlockReload) {
                        buildUpon.appendQueryParameter(f26100p, String.valueOf(hlsMediaPlaylist2.mediaSequence + hlsMediaPlaylist2.segments.size()));
                        HlsMediaPlaylist hlsMediaPlaylist3 = this.f26106h;
                        if (hlsMediaPlaylist3.partTargetDurationUs != C4649C.TIME_UNSET) {
                            List<HlsMediaPlaylist.Part> list = hlsMediaPlaylist3.trailingParts;
                            int size = list.size();
                            if (!list.isEmpty() && ((HlsMediaPlaylist.Part) Iterables.getLast(list)).isPreload) {
                                size--;
                            }
                            buildUpon.appendQueryParameter(f26101q, String.valueOf(size));
                        }
                    }
                    HlsMediaPlaylist.ServerControl serverControl2 = this.f26106h.serverControl;
                    if (serverControl2.skipUntilUs != C4649C.TIME_UNSET) {
                        buildUpon.appendQueryParameter(f26102r, serverControl2.canSkipDateRanges ? WechatLoadWebWidget.ACTION_SYMBOL_REPLACE : HlsPlaylistParser.f26141M0);
                    }
                    return buildUpon.build();
                }
            }
            return this.f26103e;
        }

        @Nullable
        /* renamed from: j */
        public HlsMediaPlaylist m20206j() {
            return this.f26106h;
        }

        /* renamed from: k */
        public boolean m20207k() {
            int i;
            if (this.f26106h == null) {
                return false;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long max = Math.max(30000L, Util.usToMs(this.f26106h.durationUs));
            HlsMediaPlaylist hlsMediaPlaylist = this.f26106h;
            return hlsMediaPlaylist.hasEndTag || (i = hlsMediaPlaylist.playlistType) == 2 || i == 1 || this.f26107i + max > elapsedRealtime;
        }

        /* renamed from: m */
        public void m20208m() {
            m20210o(this.f26103e);
        }

        /* renamed from: n */
        public final void m20209n(Uri uri) {
            ParsingLoadable parsingLoadable = new ParsingLoadable(this.f26105g, uri, 4, DefaultHlsPlaylistTracker.this.f26085f.createPlaylistParser(DefaultHlsPlaylistTracker.this.f26094o, this.f26106h));
            DefaultHlsPlaylistTracker.this.f26090k.loadStarted(new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, this.f26104f.startLoading(parsingLoadable, this, DefaultHlsPlaylistTracker.this.f26086g.getMinimumLoadableRetryCount(parsingLoadable.type))), parsingLoadable.type);
        }

        /* renamed from: o */
        public final void m20210o(final Uri uri) {
            this.f26110l = 0L;
            if (this.f26111m || this.f26104f.isLoading() || this.f26104f.hasFatalError()) {
                return;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime >= this.f26109k) {
                m20209n(uri);
            } else {
                this.f26111m = true;
                DefaultHlsPlaylistTracker.this.f26092m.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.qze
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultHlsPlaylistTracker.C4894c.this.m20203l(uri);
                    }
                }, this.f26109k - elapsedRealtime);
            }
        }

        /* renamed from: p */
        public void m20211p() throws IOException {
            this.f26104f.maybeThrowError();
            IOException iOException = this.f26112n;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: q, reason: merged with bridge method [inline-methods] */
        public void onLoadCanceled(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, boolean z) {
            LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
            DefaultHlsPlaylistTracker.this.f26086g.onLoadTaskConcluded(parsingLoadable.loadTaskId);
            DefaultHlsPlaylistTracker.this.f26090k.loadCanceled(loadEventInfo, 4);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: r, reason: merged with bridge method [inline-methods] */
        public void onLoadCompleted(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2) {
            HlsPlaylist result = parsingLoadable.getResult();
            LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
            if (result instanceof HlsMediaPlaylist) {
                m20215t((HlsMediaPlaylist) result, loadEventInfo);
                DefaultHlsPlaylistTracker.this.f26090k.loadCompleted(loadEventInfo, 4);
            } else {
                this.f26112n = ParserException.createForMalformedManifest("Loaded playlist has unexpected type.", null);
                DefaultHlsPlaylistTracker.this.f26090k.loadError(loadEventInfo, 4, this.f26112n, true);
            }
            DefaultHlsPlaylistTracker.this.f26086g.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: s, reason: merged with bridge method [inline-methods] */
        public Loader.LoadErrorAction onLoadError(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, IOException iOException, int i) {
            Loader.LoadErrorAction loadErrorAction;
            LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
            boolean z = iOException instanceof HlsPlaylistParser.DeltaUpdateException;
            if ((parsingLoadable.getUri().getQueryParameter(f26100p) != null) || z) {
                int i2 = iOException instanceof HttpDataSource.InvalidResponseCodeException ? ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode : Integer.MAX_VALUE;
                if (z || i2 == 400 || i2 == 503) {
                    this.f26109k = SystemClock.elapsedRealtime();
                    m20208m();
                    ((MediaSourceEventListener.EventDispatcher) Util.castNonNull(DefaultHlsPlaylistTracker.this.f26090k)).loadError(loadEventInfo, parsingLoadable.type, iOException, true);
                    return Loader.DONT_RETRY;
                }
            }
            LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(parsingLoadable.type), iOException, i);
            if (DefaultHlsPlaylistTracker.this.m20194y(this.f26103e, loadErrorInfo, false)) {
                long retryDelayMsFor = DefaultHlsPlaylistTracker.this.f26086g.getRetryDelayMsFor(loadErrorInfo);
                loadErrorAction = retryDelayMsFor != C4649C.TIME_UNSET ? Loader.createRetryAction(false, retryDelayMsFor) : Loader.DONT_RETRY_FATAL;
            } else {
                loadErrorAction = Loader.DONT_RETRY;
            }
            boolean isRetry = true ^ loadErrorAction.isRetry();
            DefaultHlsPlaylistTracker.this.f26090k.loadError(loadEventInfo, parsingLoadable.type, iOException, isRetry);
            if (isRetry) {
                DefaultHlsPlaylistTracker.this.f26086g.onLoadTaskConcluded(parsingLoadable.loadTaskId);
            }
            return loadErrorAction;
        }

        /* renamed from: t */
        public final void m20215t(HlsMediaPlaylist hlsMediaPlaylist, LoadEventInfo loadEventInfo) {
            IOException playlistStuckException;
            boolean z;
            HlsMediaPlaylist hlsMediaPlaylist2 = this.f26106h;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f26107i = elapsedRealtime;
            HlsMediaPlaylist m20187r = DefaultHlsPlaylistTracker.this.m20187r(hlsMediaPlaylist2, hlsMediaPlaylist);
            this.f26106h = m20187r;
            if (m20187r != hlsMediaPlaylist2) {
                this.f26112n = null;
                this.f26108j = elapsedRealtime;
                DefaultHlsPlaylistTracker.this.m20195z(this.f26103e, m20187r);
            } else if (!m20187r.hasEndTag) {
                long size = hlsMediaPlaylist.mediaSequence + hlsMediaPlaylist.segments.size();
                HlsMediaPlaylist hlsMediaPlaylist3 = this.f26106h;
                if (size < hlsMediaPlaylist3.mediaSequence) {
                    playlistStuckException = new HlsPlaylistTracker.PlaylistResetException(this.f26103e);
                    z = true;
                } else {
                    playlistStuckException = ((double) (elapsedRealtime - this.f26108j)) > ((double) Util.usToMs(hlsMediaPlaylist3.targetDurationUs)) * DefaultHlsPlaylistTracker.this.f26089j ? new HlsPlaylistTracker.PlaylistStuckException(this.f26103e) : null;
                    z = false;
                }
                if (playlistStuckException != null) {
                    this.f26112n = playlistStuckException;
                    DefaultHlsPlaylistTracker.this.m20194y(this.f26103e, new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(4), playlistStuckException, 1), z);
                }
            }
            HlsMediaPlaylist hlsMediaPlaylist4 = this.f26106h;
            this.f26109k = elapsedRealtime + Util.usToMs(!hlsMediaPlaylist4.serverControl.canBlockReload ? hlsMediaPlaylist4 != hlsMediaPlaylist2 ? hlsMediaPlaylist4.targetDurationUs : hlsMediaPlaylist4.targetDurationUs / 2 : 0L);
            if (!(this.f26106h.partTargetDurationUs != C4649C.TIME_UNSET || this.f26103e.equals(DefaultHlsPlaylistTracker.this.f26095p)) || this.f26106h.hasEndTag) {
                return;
            }
            m20210o(m20205i());
        }

        /* renamed from: u */
        public void m20216u() {
            this.f26104f.release();
        }
    }

    public DefaultHlsPlaylistTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory) {
        this(hlsDataSourceFactory, loadErrorHandlingPolicy, hlsPlaylistParserFactory, 3.5d);
    }

    /* renamed from: q */
    public static HlsMediaPlaylist.Segment m20185q(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        int i = (int) (hlsMediaPlaylist2.mediaSequence - hlsMediaPlaylist.mediaSequence);
        List<HlsMediaPlaylist.Segment> list = hlsMediaPlaylist.segments;
        if (i < list.size()) {
            return list.get(i);
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void addListener(HlsPlaylistTracker.PlaylistEventListener playlistEventListener) {
        Assertions.checkNotNull(playlistEventListener);
        this.f26088i.add(playlistEventListener);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public boolean excludeMediaPlaylist(Uri uri, long j) {
        if (this.f26087h.get(uri) != null) {
            return !r0.m20204h(j);
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public long getInitialStartTimeUs() {
        return this.f26098s;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    @Nullable
    public HlsMultivariantPlaylist getMultivariantPlaylist() {
        return this.f26094o;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    @Nullable
    public HlsMediaPlaylist getPlaylistSnapshot(Uri uri, boolean z) {
        HlsMediaPlaylist m20206j = this.f26087h.get(uri).m20206j();
        if (m20206j != null && z) {
            m20193x(uri);
        }
        return m20206j;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public boolean isLive() {
        return this.f26097r;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public boolean isSnapshotValid(Uri uri) {
        return this.f26087h.get(uri).m20207k();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void maybeThrowPlaylistRefreshError(Uri uri) throws IOException {
        this.f26087h.get(uri).m20211p();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void maybeThrowPrimaryPlaylistRefreshError() throws IOException {
        Loader loader = this.f26091l;
        if (loader != null) {
            loader.maybeThrowError();
        }
        Uri uri = this.f26095p;
        if (uri != null) {
            maybeThrowPlaylistRefreshError(uri);
        }
    }

    /* renamed from: p */
    public final void m20186p(List<Uri> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Uri uri = list.get(i);
            this.f26087h.put(uri, new C4894c(uri));
        }
    }

    /* renamed from: r */
    public final HlsMediaPlaylist m20187r(@Nullable HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        return !hlsMediaPlaylist2.isNewerThan(hlsMediaPlaylist) ? hlsMediaPlaylist2.hasEndTag ? hlsMediaPlaylist.copyWithEndTag() : hlsMediaPlaylist : hlsMediaPlaylist2.copyWith(m20189t(hlsMediaPlaylist, hlsMediaPlaylist2), m20188s(hlsMediaPlaylist, hlsMediaPlaylist2));
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void refreshPlaylist(Uri uri) {
        this.f26087h.get(uri).m20208m();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void removeListener(HlsPlaylistTracker.PlaylistEventListener playlistEventListener) {
        this.f26088i.remove(playlistEventListener);
    }

    /* renamed from: s */
    public final int m20188s(@Nullable HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        HlsMediaPlaylist.Segment m20185q;
        if (hlsMediaPlaylist2.hasDiscontinuitySequence) {
            return hlsMediaPlaylist2.discontinuitySequence;
        }
        HlsMediaPlaylist hlsMediaPlaylist3 = this.f26096q;
        int i = hlsMediaPlaylist3 != null ? hlsMediaPlaylist3.discontinuitySequence : 0;
        return (hlsMediaPlaylist == null || (m20185q = m20185q(hlsMediaPlaylist, hlsMediaPlaylist2)) == null) ? i : (hlsMediaPlaylist.discontinuitySequence + m20185q.relativeDiscontinuitySequence) - hlsMediaPlaylist2.segments.get(0).relativeDiscontinuitySequence;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void start(Uri uri, MediaSourceEventListener.EventDispatcher eventDispatcher, HlsPlaylistTracker.PrimaryPlaylistListener primaryPlaylistListener) {
        this.f26092m = Util.createHandlerForCurrentLooper();
        this.f26090k = eventDispatcher;
        this.f26093n = primaryPlaylistListener;
        ParsingLoadable parsingLoadable = new ParsingLoadable(this.f26084e.createDataSource(4), uri, 4, this.f26085f.createPlaylistParser());
        Assertions.checkState(this.f26091l == null);
        Loader loader = new Loader("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        this.f26091l = loader;
        eventDispatcher.loadStarted(new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, loader.startLoading(parsingLoadable, this, this.f26086g.getMinimumLoadableRetryCount(parsingLoadable.type))), parsingLoadable.type);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void stop() {
        this.f26095p = null;
        this.f26096q = null;
        this.f26094o = null;
        this.f26098s = C4649C.TIME_UNSET;
        this.f26091l.release();
        this.f26091l = null;
        Iterator<C4894c> it2 = this.f26087h.values().iterator();
        while (it2.hasNext()) {
            it2.next().m20216u();
        }
        this.f26092m.removeCallbacksAndMessages(null);
        this.f26092m = null;
        this.f26087h.clear();
    }

    /* renamed from: t */
    public final long m20189t(@Nullable HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        if (hlsMediaPlaylist2.hasProgramDateTime) {
            return hlsMediaPlaylist2.startTimeUs;
        }
        HlsMediaPlaylist hlsMediaPlaylist3 = this.f26096q;
        long j = hlsMediaPlaylist3 != null ? hlsMediaPlaylist3.startTimeUs : 0L;
        if (hlsMediaPlaylist == null) {
            return j;
        }
        int size = hlsMediaPlaylist.segments.size();
        HlsMediaPlaylist.Segment m20185q = m20185q(hlsMediaPlaylist, hlsMediaPlaylist2);
        return m20185q != null ? hlsMediaPlaylist.startTimeUs + m20185q.relativeStartTimeUs : ((long) size) == hlsMediaPlaylist2.mediaSequence - hlsMediaPlaylist.mediaSequence ? hlsMediaPlaylist.getEndTimeUs() : j;
    }

    /* renamed from: u */
    public final Uri m20190u(Uri uri) {
        HlsMediaPlaylist.RenditionReport renditionReport;
        HlsMediaPlaylist hlsMediaPlaylist = this.f26096q;
        if (hlsMediaPlaylist == null || !hlsMediaPlaylist.serverControl.canBlockReload || (renditionReport = hlsMediaPlaylist.renditionReports.get(uri)) == null) {
            return uri;
        }
        Uri.Builder buildUpon = uri.buildUpon();
        buildUpon.appendQueryParameter(C4894c.f26100p, String.valueOf(renditionReport.lastMediaSequence));
        int i = renditionReport.lastPartIndex;
        if (i != -1) {
            buildUpon.appendQueryParameter(C4894c.f26101q, String.valueOf(i));
        }
        return buildUpon.build();
    }

    /* renamed from: v */
    public final boolean m20191v(Uri uri) {
        List<HlsMultivariantPlaylist.Variant> list = this.f26094o.variants;
        for (int i = 0; i < list.size(); i++) {
            if (uri.equals(list.get(i).url)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: w */
    public final boolean m20192w() {
        List<HlsMultivariantPlaylist.Variant> list = this.f26094o.variants;
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            C4894c c4894c = (C4894c) Assertions.checkNotNull(this.f26087h.get(list.get(i).url));
            if (elapsedRealtime > c4894c.f26110l) {
                Uri uri = c4894c.f26103e;
                this.f26095p = uri;
                c4894c.m20210o(m20190u(uri));
                return true;
            }
        }
        return false;
    }

    /* renamed from: x */
    public final void m20193x(Uri uri) {
        if (uri.equals(this.f26095p) || !m20191v(uri)) {
            return;
        }
        HlsMediaPlaylist hlsMediaPlaylist = this.f26096q;
        if (hlsMediaPlaylist == null || !hlsMediaPlaylist.hasEndTag) {
            this.f26095p = uri;
            C4894c c4894c = this.f26087h.get(uri);
            HlsMediaPlaylist hlsMediaPlaylist2 = c4894c.f26106h;
            if (hlsMediaPlaylist2 == null || !hlsMediaPlaylist2.hasEndTag) {
                c4894c.m20210o(m20190u(uri));
            } else {
                this.f26096q = hlsMediaPlaylist2;
                this.f26093n.onPrimaryPlaylistRefreshed(hlsMediaPlaylist2);
            }
        }
    }

    /* renamed from: y */
    public final boolean m20194y(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z) {
        Iterator<HlsPlaylistTracker.PlaylistEventListener> it2 = this.f26088i.iterator();
        boolean z2 = false;
        while (it2.hasNext()) {
            z2 |= !it2.next().onPlaylistError(uri, loadErrorInfo, z);
        }
        return z2;
    }

    /* renamed from: z */
    public final void m20195z(Uri uri, HlsMediaPlaylist hlsMediaPlaylist) {
        if (uri.equals(this.f26095p)) {
            if (this.f26096q == null) {
                this.f26097r = !hlsMediaPlaylist.hasEndTag;
                this.f26098s = hlsMediaPlaylist.startTimeUs;
            }
            this.f26096q = hlsMediaPlaylist;
            this.f26093n.onPrimaryPlaylistRefreshed(hlsMediaPlaylist);
        }
        Iterator<HlsPlaylistTracker.PlaylistEventListener> it2 = this.f26088i.iterator();
        while (it2.hasNext()) {
            it2.next().onPlaylistChanged();
        }
    }

    public DefaultHlsPlaylistTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory, double d) {
        this.f26084e = hlsDataSourceFactory;
        this.f26085f = hlsPlaylistParserFactory;
        this.f26086g = loadErrorHandlingPolicy;
        this.f26089j = d;
        this.f26088i = new CopyOnWriteArrayList<>();
        this.f26087h = new HashMap<>();
        this.f26098s = C4649C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCanceled(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, boolean z) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.f26086g.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.f26090k.loadCanceled(loadEventInfo, 4);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCompleted(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2) {
        HlsMultivariantPlaylist hlsMultivariantPlaylist;
        HlsPlaylist result = parsingLoadable.getResult();
        boolean z = result instanceof HlsMediaPlaylist;
        if (z) {
            hlsMultivariantPlaylist = HlsMultivariantPlaylist.createSingleVariantMultivariantPlaylist(result.baseUri);
        } else {
            hlsMultivariantPlaylist = (HlsMultivariantPlaylist) result;
        }
        this.f26094o = hlsMultivariantPlaylist;
        this.f26095p = hlsMultivariantPlaylist.variants.get(0).url;
        this.f26088i.add(new C4893b());
        m20186p(hlsMultivariantPlaylist.mediaPlaylistUrls);
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        C4894c c4894c = this.f26087h.get(this.f26095p);
        if (z) {
            c4894c.m20215t((HlsMediaPlaylist) result, loadEventInfo);
        } else {
            c4894c.m20208m();
        }
        this.f26086g.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.f26090k.loadCompleted(loadEventInfo, 4);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public Loader.LoadErrorAction onLoadError(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, IOException iOException, int i) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        long retryDelayMsFor = this.f26086g.getRetryDelayMsFor(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(parsingLoadable.type), iOException, i));
        boolean z = retryDelayMsFor == C4649C.TIME_UNSET;
        this.f26090k.loadError(loadEventInfo, parsingLoadable.type, iOException, z);
        if (z) {
            this.f26086g.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        }
        if (z) {
            return Loader.DONT_RETRY_FATAL;
        }
        return Loader.createRetryAction(false, retryDelayMsFor);
    }
}
