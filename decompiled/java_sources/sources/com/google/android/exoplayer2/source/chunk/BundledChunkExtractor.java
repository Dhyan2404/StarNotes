package com.google.android.exoplayer2.source.chunk;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.rawcc.RawCcExtractor;
import com.google.android.exoplayer2.source.chunk.BundledChunkExtractor;
import com.google.android.exoplayer2.source.chunk.ChunkExtractor;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.List;

/* loaded from: classes5.dex */
public final class BundledChunkExtractor implements ExtractorOutput, ChunkExtractor {
    public static final ChunkExtractor.Factory FACTORY = new ChunkExtractor.Factory() { // from class: com.sunia.HTREnginev2.pv
        @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor.Factory
        public final ChunkExtractor createProgressiveMediaExtractor(int i, Format format, boolean z, List list, TrackOutput trackOutput, PlayerId playerId) {
            ChunkExtractor m19883b;
            m19883b = BundledChunkExtractor.m19883b(i, format, z, list, trackOutput, playerId);
            return m19883b;
        }
    };

    /* renamed from: n */
    public static final PositionHolder f25588n = new PositionHolder();

    /* renamed from: e */
    public final Extractor f25589e;

    /* renamed from: f */
    public final int f25590f;

    /* renamed from: g */
    public final Format f25591g;

    /* renamed from: h */
    public final SparseArray<C4860a> f25592h = new SparseArray<>();

    /* renamed from: i */
    public boolean f25593i;

    /* renamed from: j */
    @Nullable
    public ChunkExtractor.TrackOutputProvider f25594j;

    /* renamed from: k */
    public long f25595k;

    /* renamed from: l */
    public SeekMap f25596l;

    /* renamed from: m */
    public Format[] f25597m;

    /* renamed from: com.google.android.exoplayer2.source.chunk.BundledChunkExtractor$a */
    /* loaded from: classes5.dex */
    public static final class C4860a implements TrackOutput {

        /* renamed from: a */
        public final int f25598a;

        /* renamed from: b */
        public final int f25599b;

        /* renamed from: c */
        @Nullable
        public final Format f25600c;

        /* renamed from: d */
        public final DummyTrackOutput f25601d = new DummyTrackOutput();

        /* renamed from: e */
        public Format f25602e;

        /* renamed from: f */
        public TrackOutput f25603f;

        /* renamed from: g */
        public long f25604g;

        public C4860a(int i, int i2, @Nullable Format format) {
            this.f25598a = i;
            this.f25599b = i2;
            this.f25600c = format;
        }

        /* renamed from: a */
        public void m19884a(@Nullable ChunkExtractor.TrackOutputProvider trackOutputProvider, long j) {
            if (trackOutputProvider == null) {
                this.f25603f = this.f25601d;
                return;
            }
            this.f25604g = j;
            TrackOutput track = trackOutputProvider.track(this.f25598a, this.f25599b);
            this.f25603f = track;
            Format format = this.f25602e;
            if (format != null) {
                track.format(format);
            }
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void format(Format format) {
            Format format2 = this.f25600c;
            if (format2 != null) {
                format = format.withManifestFormatInfo(format2);
            }
            this.f25602e = format;
            ((TrackOutput) Util.castNonNull(this.f25603f)).format(this.f25602e);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public int sampleData(DataReader dataReader, int i, boolean z, int i2) throws IOException {
            return ((TrackOutput) Util.castNonNull(this.f25603f)).sampleData(dataReader, i, z);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleMetadata(long j, int i, int i2, int i3, @Nullable TrackOutput.CryptoData cryptoData) {
            long j2 = this.f25604g;
            if (j2 != C4649C.TIME_UNSET && j >= j2) {
                this.f25603f = this.f25601d;
            }
            ((TrackOutput) Util.castNonNull(this.f25603f)).sampleMetadata(j, i, i2, i3, cryptoData);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleData(ParsableByteArray parsableByteArray, int i, int i2) {
            ((TrackOutput) Util.castNonNull(this.f25603f)).sampleData(parsableByteArray, i);
        }
    }

    public BundledChunkExtractor(Extractor extractor, int i, Format format) {
        this.f25589e = extractor;
        this.f25590f = i;
        this.f25591g = format;
    }

    /* renamed from: b */
    public static /* synthetic */ ChunkExtractor m19883b(int i, Format format, boolean z, List list, TrackOutput trackOutput, PlayerId playerId) {
        Extractor fragmentedMp4Extractor;
        String str = format.containerMimeType;
        if (MimeTypes.isText(str)) {
            if (!MimeTypes.APPLICATION_RAWCC.equals(str)) {
                return null;
            }
            fragmentedMp4Extractor = new RawCcExtractor(format);
        } else if (MimeTypes.isMatroska(str)) {
            fragmentedMp4Extractor = new MatroskaExtractor(1);
        } else {
            fragmentedMp4Extractor = new FragmentedMp4Extractor(z ? 4 : 0, null, null, list, trackOutput);
        }
        return new BundledChunkExtractor(fragmentedMp4Extractor, i, format);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        Format[] formatArr = new Format[this.f25592h.size()];
        for (int i = 0; i < this.f25592h.size(); i++) {
            formatArr[i] = (Format) Assertions.checkStateNotNull(this.f25592h.valueAt(i).f25602e);
        }
        this.f25597m = formatArr;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    @Nullable
    public ChunkIndex getChunkIndex() {
        SeekMap seekMap = this.f25596l;
        if (seekMap instanceof ChunkIndex) {
            return (ChunkIndex) seekMap;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    @Nullable
    public Format[] getSampleFormats() {
        return this.f25597m;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public void init(@Nullable ChunkExtractor.TrackOutputProvider trackOutputProvider, long j, long j2) {
        this.f25594j = trackOutputProvider;
        this.f25595k = j2;
        if (!this.f25593i) {
            this.f25589e.init(this);
            if (j != C4649C.TIME_UNSET) {
                this.f25589e.seek(0L, j);
            }
            this.f25593i = true;
            return;
        }
        Extractor extractor = this.f25589e;
        if (j == C4649C.TIME_UNSET) {
            j = 0;
        }
        extractor.seek(0L, j);
        for (int i = 0; i < this.f25592h.size(); i++) {
            this.f25592h.valueAt(i).m19884a(trackOutputProvider, j2);
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public boolean read(ExtractorInput extractorInput) throws IOException {
        int read = this.f25589e.read(extractorInput, f25588n);
        Assertions.checkState(read != 1);
        return read == 0;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public void release() {
        this.f25589e.release();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
        this.f25596l = seekMap;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int i, int i2) {
        C4860a c4860a = this.f25592h.get(i);
        if (c4860a == null) {
            Assertions.checkState(this.f25597m == null);
            c4860a = new C4860a(i, i2, i2 == this.f25590f ? this.f25591g : null);
            c4860a.m19884a(this.f25594j, this.f25595k);
            this.f25592h.put(i, c4860a);
        }
        return c4860a;
    }
}
