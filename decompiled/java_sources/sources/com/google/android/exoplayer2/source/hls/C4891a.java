package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.DefaultExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.hls.HlsChunkSource;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceUtil;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableList;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.C13985k9;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* renamed from: com.google.android.exoplayer2.source.hls.a */
/* loaded from: classes5.dex */
public final class C4891a extends MediaChunk {

    /* renamed from: C */
    public static final String f26054C = "com.apple.streaming.transportStreamTimestamp";

    /* renamed from: D */
    public static final AtomicInteger f26055D = new AtomicInteger();

    /* renamed from: A */
    public boolean f26056A;

    /* renamed from: B */
    public boolean f26057B;

    /* renamed from: a */
    public final int f26058a;

    /* renamed from: b */
    public final int f26059b;

    /* renamed from: c */
    public final Uri f26060c;

    /* renamed from: d */
    public final boolean f26061d;

    /* renamed from: e */
    public final int f26062e;

    /* renamed from: f */
    @Nullable
    public final DataSource f26063f;

    /* renamed from: g */
    @Nullable
    public final DataSpec f26064g;

    /* renamed from: h */
    @Nullable
    public final HlsMediaChunkExtractor f26065h;

    /* renamed from: i */
    public final boolean f26066i;

    /* renamed from: j */
    public final boolean f26067j;

    /* renamed from: k */
    public final TimestampAdjuster f26068k;

    /* renamed from: l */
    public final HlsExtractorFactory f26069l;

    /* renamed from: m */
    @Nullable
    public final List<Format> f26070m;

    /* renamed from: n */
    @Nullable
    public final DrmInitData f26071n;

    /* renamed from: o */
    public final Id3Decoder f26072o;

    /* renamed from: p */
    public final ParsableByteArray f26073p;

    /* renamed from: q */
    public final boolean f26074q;

    /* renamed from: r */
    public final boolean f26075r;

    /* renamed from: s */
    public final PlayerId f26076s;

    /* renamed from: t */
    public HlsMediaChunkExtractor f26077t;

    /* renamed from: u */
    public HlsSampleStreamWrapper f26078u;

    /* renamed from: v */
    public int f26079v;

    /* renamed from: w */
    public boolean f26080w;

    /* renamed from: x */
    public volatile boolean f26081x;

    /* renamed from: y */
    public boolean f26082y;

    /* renamed from: z */
    public ImmutableList<Integer> f26083z;

    public C4891a(HlsExtractorFactory hlsExtractorFactory, DataSource dataSource, DataSpec dataSpec, Format format, boolean z, @Nullable DataSource dataSource2, @Nullable DataSpec dataSpec2, boolean z2, Uri uri, @Nullable List<Format> list, int i, @Nullable Object obj, long j, long j2, long j3, int i2, boolean z3, int i3, boolean z4, boolean z5, TimestampAdjuster timestampAdjuster, @Nullable DrmInitData drmInitData, @Nullable HlsMediaChunkExtractor hlsMediaChunkExtractor, Id3Decoder id3Decoder, ParsableByteArray parsableByteArray, boolean z6, PlayerId playerId) {
        super(dataSource, dataSpec, format, i, obj, j, j2, j3);
        this.f26074q = z;
        this.f26062e = i2;
        this.f26057B = z3;
        this.f26059b = i3;
        this.f26064g = dataSpec2;
        this.f26063f = dataSource2;
        this.f26080w = dataSpec2 != null;
        this.f26075r = z2;
        this.f26060c = uri;
        this.f26066i = z5;
        this.f26068k = timestampAdjuster;
        this.f26067j = z4;
        this.f26069l = hlsExtractorFactory;
        this.f26070m = list;
        this.f26071n = drmInitData;
        this.f26065h = hlsMediaChunkExtractor;
        this.f26072o = id3Decoder;
        this.f26073p = parsableByteArray;
        this.f26061d = z6;
        this.f26076s = playerId;
        this.f26083z = ImmutableList.m26161of();
        this.f26058a = f26055D.getAndIncrement();
    }

    /* renamed from: a */
    public static DataSource m20154a(DataSource dataSource, @Nullable byte[] bArr, @Nullable byte[] bArr2) {
        if (bArr == null) {
            return dataSource;
        }
        Assertions.checkNotNull(bArr2);
        return new C13985k9(dataSource, bArr, bArr2);
    }

    /* renamed from: b */
    public static C4891a m20155b(HlsExtractorFactory hlsExtractorFactory, DataSource dataSource, Format format, long j, HlsMediaPlaylist hlsMediaPlaylist, HlsChunkSource.C4881d c4881d, Uri uri, @Nullable List<Format> list, int i, @Nullable Object obj, boolean z, TimestampAdjusterProvider timestampAdjusterProvider, @Nullable C4891a c4891a, @Nullable byte[] bArr, @Nullable byte[] bArr2, boolean z2, PlayerId playerId) {
        boolean z3;
        DataSource dataSource2;
        DataSpec dataSpec;
        boolean z4;
        Id3Decoder id3Decoder;
        ParsableByteArray parsableByteArray;
        HlsMediaChunkExtractor hlsMediaChunkExtractor;
        HlsMediaPlaylist.SegmentBase segmentBase = c4881d.f25915a;
        DataSpec build = new DataSpec.Builder().setUri(UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segmentBase.url)).setPosition(segmentBase.byteRangeOffset).setLength(segmentBase.byteRangeLength).setFlags(c4881d.f25918d ? 8 : 0).build();
        boolean z5 = bArr != null;
        DataSource m20154a = m20154a(dataSource, bArr, z5 ? m20156d((String) Assertions.checkNotNull(segmentBase.encryptionIV)) : null);
        HlsMediaPlaylist.Segment segment = segmentBase.initializationSegment;
        if (segment != null) {
            boolean z6 = bArr2 != null;
            byte[] m20156d = z6 ? m20156d((String) Assertions.checkNotNull(segment.encryptionIV)) : null;
            z3 = z5;
            dataSpec = new DataSpec(UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segment.url), segment.byteRangeOffset, segment.byteRangeLength);
            dataSource2 = m20154a(dataSource, bArr2, m20156d);
            z4 = z6;
        } else {
            z3 = z5;
            dataSource2 = null;
            dataSpec = null;
            z4 = false;
        }
        long j2 = j + segmentBase.relativeStartTimeUs;
        long j3 = j2 + segmentBase.durationUs;
        int i2 = hlsMediaPlaylist.discontinuitySequence + segmentBase.relativeDiscontinuitySequence;
        if (c4891a != null) {
            DataSpec dataSpec2 = c4891a.f26064g;
            boolean z7 = dataSpec == dataSpec2 || (dataSpec != null && dataSpec2 != null && dataSpec.uri.equals(dataSpec2.uri) && dataSpec.position == c4891a.f26064g.position);
            boolean z8 = uri.equals(c4891a.f26060c) && c4891a.f26082y;
            id3Decoder = c4891a.f26072o;
            parsableByteArray = c4891a.f26073p;
            hlsMediaChunkExtractor = (z7 && z8 && !c4891a.f26056A && c4891a.f26059b == i2) ? c4891a.f26077t : null;
        } else {
            id3Decoder = new Id3Decoder();
            parsableByteArray = new ParsableByteArray(10);
            hlsMediaChunkExtractor = null;
        }
        return new C4891a(hlsExtractorFactory, m20154a, build, format, z3, dataSource2, dataSpec, z4, uri, list, i, obj, j2, j3, c4881d.f25916b, c4881d.f25917c, !c4881d.f25918d, i2, segmentBase.hasGapTag, z, timestampAdjusterProvider.getAdjuster(i2), segmentBase.drmInitData, hlsMediaChunkExtractor, id3Decoder, parsableByteArray, z2, playerId);
    }

    /* renamed from: d */
    public static byte[] m20156d(String str) {
        if (Ascii.toLowerCase(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    /* renamed from: g */
    public static boolean m20157g(HlsChunkSource.C4881d c4881d, HlsMediaPlaylist hlsMediaPlaylist) {
        HlsMediaPlaylist.SegmentBase segmentBase = c4881d.f25915a;
        return segmentBase instanceof HlsMediaPlaylist.Part ? ((HlsMediaPlaylist.Part) segmentBase).isIndependent || (c4881d.f25917c == 0 && hlsMediaPlaylist.hasIndependentSegments) : hlsMediaPlaylist.hasIndependentSegments;
    }

    /* renamed from: n */
    public static boolean m20158n(@Nullable C4891a c4891a, Uri uri, HlsMediaPlaylist hlsMediaPlaylist, HlsChunkSource.C4881d c4881d, long j) {
        if (c4891a == null) {
            return false;
        }
        if (uri.equals(c4891a.f26060c) && c4891a.f26082y) {
            return false;
        }
        return !m20157g(c4881d, hlsMediaPlaylist) || j + c4881d.f25915a.relativeStartTimeUs < c4891a.endTimeUs;
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: c */
    public final void m20159c(DataSource dataSource, DataSpec dataSpec, boolean z, boolean z2) throws IOException {
        DataSpec subrange;
        long position;
        long j;
        if (z) {
            r0 = this.f26079v != 0;
            subrange = dataSpec;
        } else {
            subrange = dataSpec.subrange(this.f26079v);
        }
        try {
            DefaultExtractorInput m20166l = m20166l(dataSource, subrange, z2);
            if (r0) {
                m20166l.skipFully(this.f26079v);
            }
            do {
                try {
                    try {
                        if (this.f26081x) {
                            break;
                        }
                    } catch (EOFException e) {
                        if ((this.trackFormat.roleFlags & 16384) == 0) {
                            throw e;
                        }
                        this.f26077t.onTruncatedSegmentParsed();
                        position = m20166l.getPosition();
                        j = dataSpec.position;
                    }
                } catch (Throwable th) {
                    this.f26079v = (int) (m20166l.getPosition() - dataSpec.position);
                    throw th;
                }
            } while (this.f26077t.read(m20166l));
            position = m20166l.getPosition();
            j = dataSpec.position;
            this.f26079v = (int) (position - j);
        } finally {
            DataSourceUtil.closeQuietly(dataSource);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void cancelLoad() {
        this.f26081x = true;
    }

    /* renamed from: e */
    public void m20160e(HlsSampleStreamWrapper hlsSampleStreamWrapper, ImmutableList<Integer> immutableList) {
        this.f26078u = hlsSampleStreamWrapper;
        this.f26083z = immutableList;
    }

    /* renamed from: f */
    public void m20161f() {
        this.f26056A = true;
    }

    public int getFirstSampleIndex(int i) {
        Assertions.checkState(!this.f26061d);
        if (i >= this.f26083z.size()) {
            return 0;
        }
        return this.f26083z.get(i).intValue();
    }

    /* renamed from: h */
    public boolean m20162h() {
        return this.f26057B;
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: i */
    public final void m20163i() throws IOException {
        m20159c(this.dataSource, this.dataSpec, this.f26074q, true);
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.f26082y;
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: j */
    public final void m20164j() throws IOException {
        if (this.f26080w) {
            Assertions.checkNotNull(this.f26063f);
            Assertions.checkNotNull(this.f26064g);
            m20159c(this.f26063f, this.f26064g, this.f26075r, false);
            this.f26079v = 0;
            this.f26080w = false;
        }
    }

    /* renamed from: k */
    public final long m20165k(ExtractorInput extractorInput) throws IOException {
        extractorInput.resetPeekPosition();
        try {
            this.f26073p.reset(10);
            extractorInput.peekFully(this.f26073p.getData(), 0, 10);
        } catch (EOFException unused) {
        }
        if (this.f26073p.readUnsignedInt24() != 4801587) {
            return C4649C.TIME_UNSET;
        }
        this.f26073p.skipBytes(3);
        int readSynchSafeInt = this.f26073p.readSynchSafeInt();
        int i = readSynchSafeInt + 10;
        if (i > this.f26073p.capacity()) {
            byte[] data = this.f26073p.getData();
            this.f26073p.reset(i);
            System.arraycopy(data, 0, this.f26073p.getData(), 0, 10);
        }
        extractorInput.peekFully(this.f26073p.getData(), 10, readSynchSafeInt);
        Metadata decode = this.f26072o.decode(this.f26073p.getData(), readSynchSafeInt);
        if (decode == null) {
            return C4649C.TIME_UNSET;
        }
        int length = decode.length();
        for (int i2 = 0; i2 < length; i2++) {
            Metadata.Entry entry = decode.get(i2);
            if (entry instanceof PrivFrame) {
                PrivFrame privFrame = (PrivFrame) entry;
                if (f26054C.equals(privFrame.owner)) {
                    System.arraycopy(privFrame.privateData, 0, this.f26073p.getData(), 0, 8);
                    this.f26073p.setPosition(0);
                    this.f26073p.setLimit(8);
                    return this.f26073p.readLong() & TarConstants.MAXSIZE;
                }
            }
        }
        return C4649C.TIME_UNSET;
    }

    @EnsuresNonNull({"extractor"})
    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: l */
    public final DefaultExtractorInput m20166l(DataSource dataSource, DataSpec dataSpec, boolean z) throws IOException {
        long open = dataSource.open(dataSpec);
        if (z) {
            try {
                this.f26068k.sharedInitializeOrWait(this.f26066i, this.startTimeUs);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            }
        }
        DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(dataSource, dataSpec.position, open);
        if (this.f26077t == null) {
            long m20165k = m20165k(defaultExtractorInput);
            defaultExtractorInput.resetPeekPosition();
            HlsMediaChunkExtractor hlsMediaChunkExtractor = this.f26065h;
            HlsMediaChunkExtractor recreate = hlsMediaChunkExtractor != null ? hlsMediaChunkExtractor.recreate() : this.f26069l.createExtractor(dataSpec.uri, this.trackFormat, this.f26070m, this.f26068k, dataSource.getResponseHeaders(), defaultExtractorInput, this.f26076s);
            this.f26077t = recreate;
            if (recreate.isPackedAudioExtractor()) {
                this.f26078u.m20115T(m20165k != C4649C.TIME_UNSET ? this.f26068k.adjustTsTimestamp(m20165k) : this.startTimeUs);
            } else {
                this.f26078u.m20115T(0L);
            }
            this.f26078u.m20101F();
            this.f26077t.init(this.f26078u);
        }
        this.f26078u.m20112Q(this.f26071n);
        return defaultExtractorInput;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void load() throws IOException {
        HlsMediaChunkExtractor hlsMediaChunkExtractor;
        Assertions.checkNotNull(this.f26078u);
        if (this.f26077t == null && (hlsMediaChunkExtractor = this.f26065h) != null && hlsMediaChunkExtractor.isReusable()) {
            this.f26077t = this.f26065h;
            this.f26080w = false;
        }
        m20164j();
        if (this.f26081x) {
            return;
        }
        if (!this.f26067j) {
            m20163i();
        }
        this.f26082y = !this.f26081x;
    }

    /* renamed from: m */
    public void m20167m() {
        this.f26057B = true;
    }
}
