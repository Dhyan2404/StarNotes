package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.rtsp.C4918b;
import com.google.android.exoplayer2.source.rtsp.RtpDataChannel;
import com.google.android.exoplayer2.source.rtsp.RtpDataLoadable;
import com.google.android.exoplayer2.source.rtsp.RtspClient;
import com.google.android.exoplayer2.source.rtsp.RtspMediaSource;
import com.google.android.exoplayer2.source.rtsp.RtspMessageChannel;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.sunia.HTREnginev2.aul;
import com.sunia.HTREnginev2.bul;
import java.io.IOException;
import java.net.BindException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.net.SocketFactory;

/* renamed from: com.google.android.exoplayer2.source.rtsp.b */
/* loaded from: classes5.dex */
public final class C4918b implements MediaPeriod {

    /* renamed from: J */
    public static final int f26478J = 3;

    /* renamed from: e */
    public final Allocator f26479e;

    /* renamed from: f */
    public final Handler f26480f = Util.createHandlerForCurrentLooper();

    /* renamed from: g */
    public final b f26481g;

    /* renamed from: h */
    public final RtspClient f26482h;

    /* renamed from: i */
    public final List<e> f26483i;

    /* renamed from: j */
    public final List<d> f26484j;

    /* renamed from: k */
    public final c f26485k;

    /* renamed from: l */
    public final RtpDataChannel.Factory f26486l;

    /* renamed from: m */
    public MediaPeriod.Callback f26487m;

    /* renamed from: n */
    public ImmutableList<TrackGroup> f26488n;

    /* renamed from: o */
    @Nullable
    public IOException f26489o;

    /* renamed from: p */
    @Nullable
    public RtspMediaSource.RtspPlaybackException f26490p;

    /* renamed from: q */
    public long f26491q;

    /* renamed from: r */
    public long f26492r;

    /* renamed from: s */
    public long f26493s;

    /* renamed from: t */
    public boolean f26494t;

    /* renamed from: u */
    public boolean f26495u;

    /* renamed from: v */
    public boolean f26496v;

    /* renamed from: w */
    public boolean f26497w;

    /* renamed from: x */
    public boolean f26498x;

    /* renamed from: y */
    public int f26499y;

    /* renamed from: z */
    public boolean f26500z;

    /* renamed from: com.google.android.exoplayer2.source.rtsp.b$b */
    /* loaded from: classes5.dex */
    public final class b implements ExtractorOutput, Loader.Callback<RtpDataLoadable>, SampleQueue.UpstreamFormatChangedListener, RtspClient.SessionInfoListener, RtspClient.PlaybackEventListener {
        public b() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public void onLoadCanceled(RtpDataLoadable rtpDataLoadable, long j, long j2, boolean z) {
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public void endTracks() {
            Handler handler = C4918b.this.f26480f;
            final C4918b c4918b = C4918b.this;
            handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.ttl
                @Override // java.lang.Runnable
                public final void run() {
                    C4918b.m20440q(C4918b.this);
                }
            });
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public void onLoadCompleted(RtpDataLoadable rtpDataLoadable, long j, long j2) {
            if (C4918b.this.getBufferedPositionUs() == 0) {
                if (C4918b.this.f26500z) {
                    return;
                }
                C4918b.this.m20458L();
                C4918b.this.f26500z = true;
                return;
            }
            for (int i = 0; i < C4918b.this.f26483i.size(); i++) {
                e eVar = (e) C4918b.this.f26483i.get(i);
                if (eVar.f26506a.f26503b == rtpDataLoadable) {
                    eVar.m20478c();
                    return;
                }
            }
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public Loader.LoadErrorAction onLoadError(RtpDataLoadable rtpDataLoadable, long j, long j2, IOException iOException, int i) {
            if (!C4918b.this.f26497w) {
                C4918b.this.f26489o = iOException;
            } else if (!(iOException.getCause() instanceof BindException)) {
                C4918b.this.f26490p = new RtspMediaSource.RtspPlaybackException(rtpDataLoadable.f26278b.f26520b.toString(), iOException);
            } else if (C4918b.m20424a(C4918b.this) < 3) {
                return Loader.RETRY;
            }
            return Loader.DONT_RETRY;
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.PlaybackEventListener
        public void onPlaybackError(RtspMediaSource.RtspPlaybackException rtspPlaybackException) {
            C4918b.this.f26490p = rtspPlaybackException;
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.PlaybackEventListener
        public void onPlaybackStarted(long j, ImmutableList<bul> immutableList) {
            ArrayList arrayList = new ArrayList(immutableList.size());
            for (int i = 0; i < immutableList.size(); i++) {
                arrayList.add((String) Assertions.checkNotNull(immutableList.get(i).f66151c.getPath()));
            }
            for (int i2 = 0; i2 < C4918b.this.f26484j.size(); i2++) {
                if (!arrayList.contains(((d) C4918b.this.f26484j.get(i2)).m20473c().getPath())) {
                    C4918b.this.f26485k.mo20366a();
                    if (C4918b.this.m20453G()) {
                        C4918b.this.f26495u = true;
                        C4918b.this.f26492r = C4649C.TIME_UNSET;
                        C4918b.this.f26491q = C4649C.TIME_UNSET;
                        C4918b.this.f26493s = C4649C.TIME_UNSET;
                    }
                }
            }
            for (int i3 = 0; i3 < immutableList.size(); i3++) {
                bul bulVar = immutableList.get(i3);
                RtpDataLoadable m20450D = C4918b.this.m20450D(bulVar.f66151c);
                if (m20450D != null) {
                    m20450D.m20279f(bulVar.f66149a);
                    m20450D.m20278e(bulVar.f66150b);
                    if (C4918b.this.m20453G() && C4918b.this.f26492r == C4918b.this.f26491q) {
                        m20450D.m20277d(j, bulVar.f66149a);
                    }
                }
            }
            if (!C4918b.this.m20453G()) {
                if (C4918b.this.f26493s != C4649C.TIME_UNSET) {
                    C4918b c4918b = C4918b.this;
                    c4918b.seekToUs(c4918b.f26493s);
                    C4918b.this.f26493s = C4649C.TIME_UNSET;
                    return;
                }
                return;
            }
            if (C4918b.this.f26492r == C4918b.this.f26491q) {
                C4918b.this.f26492r = C4649C.TIME_UNSET;
                C4918b.this.f26491q = C4649C.TIME_UNSET;
            } else {
                C4918b.this.f26492r = C4649C.TIME_UNSET;
                C4918b c4918b2 = C4918b.this;
                c4918b2.seekToUs(c4918b2.f26491q);
            }
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.PlaybackEventListener
        public void onRtspSetupCompleted() {
            C4918b.this.f26482h.m20330N0(0L);
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.SessionInfoListener
        public void onSessionTimelineRequestFailed(String str, @Nullable Throwable th) {
            C4918b.this.f26489o = th == null ? new IOException(str) : new IOException(str, th);
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspClient.SessionInfoListener
        public void onSessionTimelineUpdated(aul aulVar, ImmutableList<C4919c> immutableList) {
            for (int i = 0; i < immutableList.size(); i++) {
                C4919c c4919c = immutableList.get(i);
                C4918b c4918b = C4918b.this;
                e eVar = new e(c4919c, i, c4918b.f26486l);
                C4918b.this.f26483i.add(eVar);
                eVar.m20485j();
            }
            C4918b.this.f26485k.mo20367b(aulVar);
        }

        @Override // com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener
        public void onUpstreamFormatChanged(Format format) {
            Handler handler = C4918b.this.f26480f;
            final C4918b c4918b = C4918b.this;
            handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.stl
                @Override // java.lang.Runnable
                public final void run() {
                    C4918b.m20440q(C4918b.this);
                }
            });
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public void seekMap(SeekMap seekMap) {
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public TrackOutput track(int i, int i2) {
            return ((e) Assertions.checkNotNull((e) C4918b.this.f26483i.get(i))).f26508c;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.b$c */
    /* loaded from: classes5.dex */
    public interface c {
        /* renamed from: a */
        default void mo20366a() {
        }

        /* renamed from: b */
        void mo20367b(aul aulVar);
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.b$d */
    /* loaded from: classes5.dex */
    public final class d {

        /* renamed from: a */
        public final C4919c f26502a;

        /* renamed from: b */
        public final RtpDataLoadable f26503b;

        /* renamed from: c */
        @Nullable
        public String f26504c;

        public d(C4919c c4919c, int i, RtpDataChannel.Factory factory) {
            this.f26502a = c4919c;
            this.f26503b = new RtpDataLoadable(i, c4919c, new RtpDataLoadable.EventListener() { // from class: com.sunia.HTREnginev2.utl
                @Override // com.google.android.exoplayer2.source.rtsp.RtpDataLoadable.EventListener
                public final void onTransportReady(String str, RtpDataChannel rtpDataChannel) {
                    C4918b.d.this.m20472f(str, rtpDataChannel);
                }
            }, C4918b.this.f26481g, factory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public /* synthetic */ void m20472f(String str, RtpDataChannel rtpDataChannel) {
            this.f26504c = str;
            RtspMessageChannel.InterleavedBinaryDataListener mo20273c = rtpDataChannel.mo20273c();
            if (mo20273c != null) {
                C4918b.this.f26482h.m20325H0(rtpDataChannel.getLocalPort(), mo20273c);
                C4918b.this.f26500z = true;
            }
            C4918b.this.m20455I();
        }

        /* renamed from: c */
        public Uri m20473c() {
            return this.f26503b.f26278b.f26520b;
        }

        /* renamed from: d */
        public String m20474d() {
            Assertions.checkStateNotNull(this.f26504c);
            return this.f26504c;
        }

        /* renamed from: e */
        public boolean m20475e() {
            return this.f26504c != null;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.b$e */
    /* loaded from: classes5.dex */
    public final class e {

        /* renamed from: a */
        public final d f26506a;

        /* renamed from: b */
        public final Loader f26507b;

        /* renamed from: c */
        public final SampleQueue f26508c;

        /* renamed from: d */
        public boolean f26509d;

        /* renamed from: e */
        public boolean f26510e;

        public e(C4919c c4919c, int i, RtpDataChannel.Factory factory) {
            this.f26506a = new d(c4919c, i, factory);
            StringBuilder sb = new StringBuilder(55);
            sb.append("ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper ");
            sb.append(i);
            this.f26507b = new Loader(sb.toString());
            SampleQueue createWithoutDrm = SampleQueue.createWithoutDrm(C4918b.this.f26479e);
            this.f26508c = createWithoutDrm;
            createWithoutDrm.setUpstreamFormatChangeListener(C4918b.this.f26481g);
        }

        /* renamed from: c */
        public void m20478c() {
            if (this.f26509d) {
                return;
            }
            this.f26506a.f26503b.cancelLoad();
            this.f26509d = true;
            C4918b.this.m20462P();
        }

        /* renamed from: d */
        public long m20479d() {
            return this.f26508c.getLargestQueuedTimestampUs();
        }

        /* renamed from: e */
        public boolean m20480e() {
            return this.f26508c.isReady(this.f26509d);
        }

        /* renamed from: f */
        public int m20481f(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            return this.f26508c.read(formatHolder, decoderInputBuffer, i, this.f26509d);
        }

        /* renamed from: g */
        public void m20482g() {
            if (this.f26510e) {
                return;
            }
            this.f26507b.release();
            this.f26508c.release();
            this.f26510e = true;
        }

        /* renamed from: h */
        public void m20483h(long j) {
            if (this.f26509d) {
                return;
            }
            this.f26506a.f26503b.m20276c();
            this.f26508c.reset();
            this.f26508c.setStartTimeUs(j);
        }

        /* renamed from: i */
        public int m20484i(long j) {
            int skipCount = this.f26508c.getSkipCount(j, this.f26509d);
            this.f26508c.skip(skipCount);
            return skipCount;
        }

        /* renamed from: j */
        public void m20485j() {
            this.f26507b.startLoading(this.f26506a.f26503b, C4918b.this.f26481g, 0);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.b$f */
    /* loaded from: classes5.dex */
    public final class f implements SampleStream {

        /* renamed from: e */
        public final int f26512e;

        public f(int i) {
            this.f26512e = i;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return C4918b.this.m20452F(this.f26512e);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() throws RtspMediaSource.RtspPlaybackException {
            if (C4918b.this.f26490p != null) {
                throw C4918b.this.f26490p;
            }
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            return C4918b.this.m20456J(this.f26512e, formatHolder, decoderInputBuffer, i);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            return C4918b.this.m20460N(this.f26512e, j);
        }
    }

    public C4918b(Allocator allocator, RtpDataChannel.Factory factory, Uri uri, c cVar, String str, SocketFactory socketFactory, boolean z) {
        this.f26479e = allocator;
        this.f26486l = factory;
        this.f26485k = cVar;
        b bVar = new b();
        this.f26481g = bVar;
        this.f26482h = new RtspClient(bVar, bVar, str, uri, socketFactory, z);
        this.f26483i = new ArrayList();
        this.f26484j = new ArrayList();
        this.f26492r = C4649C.TIME_UNSET;
        this.f26491q = C4649C.TIME_UNSET;
        this.f26493s = C4649C.TIME_UNSET;
    }

    /* renamed from: C */
    public static ImmutableList<TrackGroup> m20423C(ImmutableList<e> immutableList) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        for (int i = 0; i < immutableList.size(); i++) {
            builder.add((ImmutableList.Builder) new TrackGroup(Integer.toString(i), (Format) Assertions.checkNotNull(immutableList.get(i).f26508c.getUpstreamFormat())));
        }
        return builder.build();
    }

    /* renamed from: a */
    public static /* synthetic */ int m20424a(C4918b c4918b) {
        int i = c4918b.f26499y;
        c4918b.f26499y = i + 1;
        return i;
    }

    /* renamed from: q */
    public static /* synthetic */ void m20440q(C4918b c4918b) {
        c4918b.m20454H();
    }

    @Nullable
    /* renamed from: D */
    public final RtpDataLoadable m20450D(Uri uri) {
        for (int i = 0; i < this.f26483i.size(); i++) {
            if (!this.f26483i.get(i).f26509d) {
                d dVar = this.f26483i.get(i).f26506a;
                if (dVar.m20473c().equals(uri)) {
                    return dVar.f26503b;
                }
            }
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public ImmutableList<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
        return ImmutableList.m26161of();
    }

    /* renamed from: F */
    public boolean m20452F(int i) {
        return !m20461O() && this.f26483i.get(i).m20480e();
    }

    /* renamed from: G */
    public final boolean m20453G() {
        return this.f26492r != C4649C.TIME_UNSET;
    }

    /* renamed from: H */
    public final void m20454H() {
        if (this.f26496v || this.f26497w) {
            return;
        }
        for (int i = 0; i < this.f26483i.size(); i++) {
            if (this.f26483i.get(i).f26508c.getUpstreamFormat() == null) {
                return;
            }
        }
        this.f26497w = true;
        this.f26488n = m20423C(ImmutableList.copyOf((Collection) this.f26483i));
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.f26487m)).onPrepared(this);
    }

    /* renamed from: I */
    public final void m20455I() {
        boolean z = true;
        for (int i = 0; i < this.f26484j.size(); i++) {
            z &= this.f26484j.get(i).m20475e();
        }
        if (z && this.f26498x) {
            this.f26482h.m20328L0(this.f26484j);
        }
    }

    /* renamed from: J */
    public int m20456J(int i, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
        if (m20461O()) {
            return -3;
        }
        return this.f26483i.get(i).m20481f(formatHolder, decoderInputBuffer, i2);
    }

    /* renamed from: K */
    public void m20457K() {
        for (int i = 0; i < this.f26483i.size(); i++) {
            this.f26483i.get(i).m20482g();
        }
        Util.closeQuietly(this.f26482h);
        this.f26496v = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: L */
    public final void m20458L() {
        this.f26482h.m20326I0();
        RtpDataChannel.Factory createFallbackDataChannelFactory = this.f26486l.createFallbackDataChannelFactory();
        if (createFallbackDataChannelFactory == null) {
            this.f26490p = new RtspMediaSource.RtspPlaybackException("No fallback data channel factory for TCP retry");
            return;
        }
        ArrayList arrayList = new ArrayList(this.f26483i.size());
        ArrayList arrayList2 = new ArrayList(this.f26484j.size());
        for (int i = 0; i < this.f26483i.size(); i++) {
            e eVar = this.f26483i.get(i);
            if (eVar.f26509d) {
                arrayList.add(eVar);
            } else {
                e eVar2 = new e(eVar.f26506a.f26502a, i, createFallbackDataChannelFactory);
                arrayList.add(eVar2);
                eVar2.m20485j();
                if (this.f26484j.contains(eVar.f26506a)) {
                    arrayList2.add(eVar2.f26506a);
                }
            }
        }
        ImmutableList copyOf = ImmutableList.copyOf((Collection) this.f26483i);
        this.f26483i.clear();
        this.f26483i.addAll(arrayList);
        this.f26484j.clear();
        this.f26484j.addAll(arrayList2);
        for (int i2 = 0; i2 < copyOf.size(); i2++) {
            ((e) copyOf.get(i2)).m20478c();
        }
    }

    /* renamed from: M */
    public final boolean m20459M(long j) {
        for (int i = 0; i < this.f26483i.size(); i++) {
            if (!this.f26483i.get(i).f26508c.seekTo(j, false)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: N */
    public int m20460N(int i, long j) {
        if (m20461O()) {
            return -3;
        }
        return this.f26483i.get(i).m20484i(j);
    }

    /* renamed from: O */
    public final boolean m20461O() {
        return this.f26495u;
    }

    /* renamed from: P */
    public final void m20462P() {
        this.f26494t = true;
        for (int i = 0; i < this.f26483i.size(); i++) {
            this.f26494t &= this.f26483i.get(i).f26509d;
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        return isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        if (m20453G()) {
            return;
        }
        for (int i = 0; i < this.f26483i.size(); i++) {
            e eVar = this.f26483i.get(i);
            if (!eVar.f26509d) {
                eVar.f26508c.discardTo(j, z, true);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        if (this.f26494t || this.f26483i.isEmpty()) {
            return Long.MIN_VALUE;
        }
        long j = this.f26491q;
        if (j != C4649C.TIME_UNSET) {
            return j;
        }
        boolean z = true;
        long j2 = Long.MAX_VALUE;
        for (int i = 0; i < this.f26483i.size(); i++) {
            e eVar = this.f26483i.get(i);
            if (!eVar.f26509d) {
                j2 = Math.min(j2, eVar.m20479d());
                z = false;
            }
        }
        if (z || j2 == Long.MIN_VALUE) {
            return 0L;
        }
        return j2;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        Assertions.checkState(this.f26497w);
        return new TrackGroupArray((TrackGroup[]) ((ImmutableList) Assertions.checkNotNull(this.f26488n)).toArray(new TrackGroup[0]));
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return !this.f26494t;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        IOException iOException = this.f26489o;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.f26487m = callback;
        try {
            this.f26482h.m20329M0();
        } catch (IOException e2) {
            this.f26489o = e2;
            Util.closeQuietly(this.f26482h);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        if (!this.f26495u) {
            return C4649C.TIME_UNSET;
        }
        this.f26495u = false;
        return 0L;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        if (getBufferedPositionUs() == 0 && !this.f26500z) {
            this.f26493s = j;
            return j;
        }
        discardBuffer(j, false);
        this.f26491q = j;
        if (m20453G()) {
            int m20323F0 = this.f26482h.m20323F0();
            if (m20323F0 == 1) {
                return j;
            }
            if (m20323F0 != 2) {
                throw new IllegalStateException();
            }
            this.f26492r = j;
            this.f26482h.m20327J0(j);
            return j;
        }
        if (m20459M(j)) {
            return j;
        }
        this.f26492r = j;
        this.f26482h.m20327J0(j);
        for (int i = 0; i < this.f26483i.size(); i++) {
            this.f26483i.get(i).m20483h(j);
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            if (sampleStreamArr[i] != null && (exoTrackSelectionArr[i] == null || !zArr[i])) {
                sampleStreamArr[i] = null;
            }
        }
        this.f26484j.clear();
        for (int i2 = 0; i2 < exoTrackSelectionArr.length; i2++) {
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i2];
            if (exoTrackSelection != null) {
                TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                int indexOf = ((ImmutableList) Assertions.checkNotNull(this.f26488n)).indexOf(trackGroup);
                this.f26484j.add(((e) Assertions.checkNotNull(this.f26483i.get(indexOf))).f26506a);
                if (this.f26488n.contains(trackGroup) && sampleStreamArr[i2] == null) {
                    sampleStreamArr[i2] = new f(indexOf);
                    zArr2[i2] = true;
                }
            }
        }
        for (int i3 = 0; i3 < this.f26483i.size(); i3++) {
            e eVar = this.f26483i.get(i3);
            if (!this.f26484j.contains(eVar.f26506a)) {
                eVar.m20478c();
            }
        }
        this.f26498x = true;
        m20455I();
        return j;
    }
}
