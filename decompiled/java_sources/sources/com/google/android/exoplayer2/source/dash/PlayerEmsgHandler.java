package com.google.android.exoplayer2.source.dash;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataInputBuffer;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.metadata.emsg.EventMessageDecoder;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes5.dex */
public final class PlayerEmsgHandler implements Handler.Callback {

    /* renamed from: o */
    public static final int f25808o = 1;

    /* renamed from: e */
    public final Allocator f25809e;

    /* renamed from: f */
    public final PlayerEmsgCallback f25810f;

    /* renamed from: j */
    public DashManifest f25814j;

    /* renamed from: k */
    public long f25815k;

    /* renamed from: l */
    public boolean f25816l;

    /* renamed from: m */
    public boolean f25817m;

    /* renamed from: n */
    public boolean f25818n;

    /* renamed from: i */
    public final TreeMap<Long, Long> f25813i = new TreeMap<>();

    /* renamed from: h */
    public final Handler f25812h = Util.createHandlerForCurrentLooper(this);

    /* renamed from: g */
    public final EventMessageDecoder f25811g = new EventMessageDecoder();

    /* loaded from: classes5.dex */
    public interface PlayerEmsgCallback {
        void onDashManifestPublishTimeExpired(long j);

        void onDashManifestRefreshRequested();
    }

    /* loaded from: classes5.dex */
    public final class PlayerTrackEmsgHandler implements TrackOutput {

        /* renamed from: a */
        public final SampleQueue f25819a;

        /* renamed from: b */
        public final FormatHolder f25820b = new FormatHolder();

        /* renamed from: c */
        public final MetadataInputBuffer f25821c = new MetadataInputBuffer();

        /* renamed from: d */
        public long f25822d = C4649C.TIME_UNSET;

        public PlayerTrackEmsgHandler(Allocator allocator) {
            this.f25819a = SampleQueue.createWithoutDrm(allocator);
        }

        @Nullable
        /* renamed from: a */
        public final MetadataInputBuffer m20021a() {
            this.f25821c.clear();
            if (this.f25819a.read(this.f25820b, this.f25821c, 0, false) != -4) {
                return null;
            }
            this.f25821c.flip();
            return this.f25821c;
        }

        /* renamed from: b */
        public final void m20022b(long j, long j2) {
            PlayerEmsgHandler.this.f25812h.sendMessage(PlayerEmsgHandler.this.f25812h.obtainMessage(1, new C4873a(j, j2)));
        }

        /* renamed from: c */
        public final void m20023c() {
            while (this.f25819a.isReady(false)) {
                MetadataInputBuffer m20021a = m20021a();
                if (m20021a != null) {
                    long j = m20021a.timeUs;
                    Metadata decode = PlayerEmsgHandler.this.f25811g.decode(m20021a);
                    if (decode != null) {
                        EventMessage eventMessage = (EventMessage) decode.get(0);
                        if (PlayerEmsgHandler.m20012h(eventMessage.schemeIdUri, eventMessage.value)) {
                            m20024d(j, eventMessage);
                        }
                    }
                }
            }
            this.f25819a.discardToRead();
        }

        /* renamed from: d */
        public final void m20024d(long j, EventMessage eventMessage) {
            long m20011f = PlayerEmsgHandler.m20011f(eventMessage);
            if (m20011f == C4649C.TIME_UNSET) {
                return;
            }
            m20022b(j, m20011f);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void format(Format format) {
            this.f25819a.format(format);
        }

        public boolean maybeRefreshManifestBeforeLoadingNextChunk(long j) {
            return PlayerEmsgHandler.this.m20016j(j);
        }

        public void onChunkLoadCompleted(Chunk chunk) {
            long j = this.f25822d;
            if (j == C4649C.TIME_UNSET || chunk.endTimeUs > j) {
                this.f25822d = chunk.endTimeUs;
            }
            PlayerEmsgHandler.this.m20018l(chunk);
        }

        public boolean onChunkLoadError(Chunk chunk) {
            long j = this.f25822d;
            return PlayerEmsgHandler.this.m20019m(j != C4649C.TIME_UNSET && j < chunk.startTimeUs);
        }

        public void release() {
            this.f25819a.release();
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public int sampleData(DataReader dataReader, int i, boolean z, int i2) throws IOException {
            return this.f25819a.sampleData(dataReader, i, z);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleMetadata(long j, int i, int i2, int i3, @Nullable TrackOutput.CryptoData cryptoData) {
            this.f25819a.sampleMetadata(j, i, i2, i3, cryptoData);
            m20023c();
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleData(ParsableByteArray parsableByteArray, int i, int i2) {
            this.f25819a.sampleData(parsableByteArray, i);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.dash.PlayerEmsgHandler$a */
    /* loaded from: classes5.dex */
    public static final class C4873a {

        /* renamed from: a */
        public final long f25824a;

        /* renamed from: b */
        public final long f25825b;

        public C4873a(long j, long j2) {
            this.f25824a = j;
            this.f25825b = j2;
        }
    }

    public PlayerEmsgHandler(DashManifest dashManifest, PlayerEmsgCallback playerEmsgCallback, Allocator allocator) {
        this.f25814j = dashManifest;
        this.f25810f = playerEmsgCallback;
        this.f25809e = allocator;
    }

    /* renamed from: f */
    public static long m20011f(EventMessage eventMessage) {
        try {
            return Util.parseXsDateTime(Util.fromUtf8Bytes(eventMessage.messageData));
        } catch (ParserException unused) {
            return C4649C.TIME_UNSET;
        }
    }

    /* renamed from: h */
    public static boolean m20012h(String str, String str2) {
        return "urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || "2".equals(str2) || "3".equals(str2));
    }

    @Nullable
    /* renamed from: e */
    public final Map.Entry<Long, Long> m20013e(long j) {
        return this.f25813i.ceilingEntry(Long.valueOf(j));
    }

    /* renamed from: g */
    public final void m20014g(long j, long j2) {
        Long l = this.f25813i.get(Long.valueOf(j2));
        if (l == null) {
            this.f25813i.put(Long.valueOf(j2), Long.valueOf(j));
        } else if (l.longValue() > j) {
            this.f25813i.put(Long.valueOf(j2), Long.valueOf(j));
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.f25818n) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        C4873a c4873a = (C4873a) message.obj;
        m20014g(c4873a.f25824a, c4873a.f25825b);
        return true;
    }

    /* renamed from: i */
    public final void m20015i() {
        if (this.f25816l) {
            this.f25817m = true;
            this.f25816l = false;
            this.f25810f.onDashManifestRefreshRequested();
        }
    }

    /* renamed from: j */
    public boolean m20016j(long j) {
        DashManifest dashManifest = this.f25814j;
        boolean z = false;
        if (!dashManifest.dynamic) {
            return false;
        }
        if (this.f25817m) {
            return true;
        }
        Map.Entry<Long, Long> m20013e = m20013e(dashManifest.publishTimeMs);
        if (m20013e != null && m20013e.getValue().longValue() < j) {
            this.f25815k = m20013e.getKey().longValue();
            m20017k();
            z = true;
        }
        if (z) {
            m20015i();
        }
        return z;
    }

    /* renamed from: k */
    public final void m20017k() {
        this.f25810f.onDashManifestPublishTimeExpired(this.f25815k);
    }

    /* renamed from: l */
    public void m20018l(Chunk chunk) {
        this.f25816l = true;
    }

    /* renamed from: m */
    public boolean m20019m(boolean z) {
        if (!this.f25814j.dynamic) {
            return false;
        }
        if (this.f25817m) {
            return true;
        }
        if (!z) {
            return false;
        }
        m20015i();
        return true;
    }

    /* renamed from: n */
    public final void m20020n() {
        Iterator<Map.Entry<Long, Long>> it2 = this.f25813i.entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getKey().longValue() < this.f25814j.publishTimeMs) {
                it2.remove();
            }
        }
    }

    public PlayerTrackEmsgHandler newPlayerTrackEmsgHandler() {
        return new PlayerTrackEmsgHandler(this.f25809e);
    }

    public void release() {
        this.f25818n = true;
        this.f25812h.removeCallbacksAndMessages(null);
    }

    public void updateManifest(DashManifest dashManifest) {
        this.f25817m = false;
        this.f25815k = C4649C.TIME_UNSET;
        this.f25814j = dashManifest;
        m20020n();
    }
}
