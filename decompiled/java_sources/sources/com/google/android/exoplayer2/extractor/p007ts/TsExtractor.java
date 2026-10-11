package com.google.android.exoplayer2.extractor.p007ts;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.p007ts.TsExtractor;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.don;
import com.sunia.HTREnginev2.eon;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class TsExtractor implements Extractor {

    /* renamed from: A */
    public static final int f24641A = 5;
    public static final int DEFAULT_TIMESTAMP_SEARCH_BYTES = 112800;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.fon
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            Extractor[] m19181s;
            m19181s = TsExtractor.m19181s();
            return m19181s;
        }
    };
    public static final int MODE_HLS = 2;
    public static final int MODE_MULTI_PMT = 0;
    public static final int MODE_SINGLE_PMT = 1;
    public static final int TS_PACKET_SIZE = 188;
    public static final int TS_STREAM_TYPE_AAC_ADTS = 15;
    public static final int TS_STREAM_TYPE_AAC_LATM = 17;
    public static final int TS_STREAM_TYPE_AC3 = 129;
    public static final int TS_STREAM_TYPE_AC4 = 172;
    public static final int TS_STREAM_TYPE_AIT = 257;
    public static final int TS_STREAM_TYPE_DC2_H262 = 128;
    public static final int TS_STREAM_TYPE_DTS = 138;
    public static final int TS_STREAM_TYPE_DVBSUBS = 89;
    public static final int TS_STREAM_TYPE_E_AC3 = 135;
    public static final int TS_STREAM_TYPE_H262 = 2;
    public static final int TS_STREAM_TYPE_H263 = 16;
    public static final int TS_STREAM_TYPE_H264 = 27;
    public static final int TS_STREAM_TYPE_H265 = 36;
    public static final int TS_STREAM_TYPE_HDMV_DTS = 130;
    public static final int TS_STREAM_TYPE_ID3 = 21;
    public static final int TS_STREAM_TYPE_MPA = 3;
    public static final int TS_STREAM_TYPE_MPA_LSF = 4;
    public static final int TS_STREAM_TYPE_SPLICE_INFO = 134;
    public static final int TS_SYNC_BYTE = 71;

    /* renamed from: t */
    public static final int f24642t = 0;

    /* renamed from: u */
    public static final int f24643u = 8192;

    /* renamed from: v */
    public static final long f24644v = 1094921523;

    /* renamed from: w */
    public static final long f24645w = 1161904947;

    /* renamed from: x */
    public static final long f24646x = 1094921524;

    /* renamed from: y */
    public static final long f24647y = 1212503619;

    /* renamed from: z */
    public static final int f24648z = 9400;

    /* renamed from: a */
    public final int f24649a;

    /* renamed from: b */
    public final int f24650b;

    /* renamed from: c */
    public final List<TimestampAdjuster> f24651c;

    /* renamed from: d */
    public final ParsableByteArray f24652d;

    /* renamed from: e */
    public final SparseIntArray f24653e;

    /* renamed from: f */
    public final TsPayloadReader.Factory f24654f;

    /* renamed from: g */
    public final SparseArray<TsPayloadReader> f24655g;

    /* renamed from: h */
    public final SparseBooleanArray f24656h;

    /* renamed from: i */
    public final SparseBooleanArray f24657i;

    /* renamed from: j */
    public final eon f24658j;

    /* renamed from: k */
    public don f24659k;

    /* renamed from: l */
    public ExtractorOutput f24660l;

    /* renamed from: m */
    public int f24661m;

    /* renamed from: n */
    public boolean f24662n;

    /* renamed from: o */
    public boolean f24663o;

    /* renamed from: p */
    public boolean f24664p;

    /* renamed from: q */
    @Nullable
    public TsPayloadReader f24665q;

    /* renamed from: r */
    public int f24666r;

    /* renamed from: s */
    public int f24667s;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Mode {
    }

    /* renamed from: com.google.android.exoplayer2.extractor.ts.TsExtractor$a */
    /* loaded from: classes5.dex */
    public class C4754a implements SectionPayloadReader {

        /* renamed from: a */
        public final ParsableBitArray f24668a = new ParsableBitArray(new byte[4]);

        public C4754a() {
        }

        @Override // com.google.android.exoplayer2.extractor.p007ts.SectionPayloadReader
        public void consume(ParsableByteArray parsableByteArray) {
            if (parsableByteArray.readUnsignedByte() == 0 && (parsableByteArray.readUnsignedByte() & 128) != 0) {
                parsableByteArray.skipBytes(6);
                int bytesLeft = parsableByteArray.bytesLeft() / 4;
                for (int i = 0; i < bytesLeft; i++) {
                    parsableByteArray.readBytes(this.f24668a, 4);
                    int readBits = this.f24668a.readBits(16);
                    this.f24668a.skipBits(3);
                    if (readBits == 0) {
                        this.f24668a.skipBits(13);
                    } else {
                        int readBits2 = this.f24668a.readBits(13);
                        if (TsExtractor.this.f24655g.get(readBits2) == null) {
                            TsExtractor.this.f24655g.put(readBits2, new SectionReader(new C4755b(readBits2)));
                            TsExtractor.m19171g(TsExtractor.this);
                        }
                    }
                }
                if (TsExtractor.this.f24649a != 2) {
                    TsExtractor.this.f24655g.remove(0);
                }
            }
        }

        @Override // com.google.android.exoplayer2.extractor.p007ts.SectionPayloadReader
        public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.ts.TsExtractor$b */
    /* loaded from: classes5.dex */
    public class C4755b implements SectionPayloadReader {

        /* renamed from: f */
        public static final int f24670f = 5;

        /* renamed from: g */
        public static final int f24671g = 10;

        /* renamed from: h */
        public static final int f24672h = 106;

        /* renamed from: i */
        public static final int f24673i = 111;

        /* renamed from: j */
        public static final int f24674j = 122;

        /* renamed from: k */
        public static final int f24675k = 123;

        /* renamed from: l */
        public static final int f24676l = 127;

        /* renamed from: m */
        public static final int f24677m = 89;

        /* renamed from: n */
        public static final int f24678n = 21;

        /* renamed from: a */
        public final ParsableBitArray f24679a = new ParsableBitArray(new byte[5]);

        /* renamed from: b */
        public final SparseArray<TsPayloadReader> f24680b = new SparseArray<>();

        /* renamed from: c */
        public final SparseIntArray f24681c = new SparseIntArray();

        /* renamed from: d */
        public final int f24682d;

        public C4755b(int i) {
            this.f24682d = i;
        }

        /* renamed from: a */
        public final TsPayloadReader.EsInfo m19187a(ParsableByteArray parsableByteArray, int i) {
            int position = parsableByteArray.getPosition();
            int i2 = i + position;
            int i3 = -1;
            String str = null;
            ArrayList arrayList = null;
            while (parsableByteArray.getPosition() < i2) {
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                int position2 = parsableByteArray.getPosition() + parsableByteArray.readUnsignedByte();
                if (position2 > i2) {
                    break;
                }
                if (readUnsignedByte == 5) {
                    long readUnsignedInt = parsableByteArray.readUnsignedInt();
                    if (readUnsignedInt != TsExtractor.f24644v) {
                        if (readUnsignedInt != TsExtractor.f24645w) {
                            if (readUnsignedInt != TsExtractor.f24646x) {
                                if (readUnsignedInt == TsExtractor.f24647y) {
                                    i3 = 36;
                                }
                            }
                            i3 = 172;
                        }
                        i3 = 135;
                    }
                    i3 = 129;
                } else {
                    if (readUnsignedByte != 106) {
                        if (readUnsignedByte != 122) {
                            if (readUnsignedByte == 127) {
                                if (parsableByteArray.readUnsignedByte() != 21) {
                                }
                                i3 = 172;
                            } else if (readUnsignedByte == 123) {
                                i3 = 138;
                            } else if (readUnsignedByte == 10) {
                                str = parsableByteArray.readString(3).trim();
                            } else if (readUnsignedByte == 89) {
                                ArrayList arrayList2 = new ArrayList();
                                while (parsableByteArray.getPosition() < position2) {
                                    String trim = parsableByteArray.readString(3).trim();
                                    int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                                    byte[] bArr = new byte[4];
                                    parsableByteArray.readBytes(bArr, 0, 4);
                                    arrayList2.add(new TsPayloadReader.DvbSubtitleInfo(trim, readUnsignedByte2, bArr));
                                }
                                arrayList = arrayList2;
                                i3 = 89;
                            } else if (readUnsignedByte == 111) {
                                i3 = 257;
                            }
                        }
                        i3 = 135;
                    }
                    i3 = 129;
                }
                parsableByteArray.skipBytes(position2 - parsableByteArray.getPosition());
            }
            parsableByteArray.setPosition(i2);
            return new TsPayloadReader.EsInfo(i3, str, arrayList, Arrays.copyOfRange(parsableByteArray.getData(), position, i2));
        }

        @Override // com.google.android.exoplayer2.extractor.p007ts.SectionPayloadReader
        public void consume(ParsableByteArray parsableByteArray) {
            TimestampAdjuster timestampAdjuster;
            if (parsableByteArray.readUnsignedByte() != 2) {
                return;
            }
            if (TsExtractor.this.f24649a == 1 || TsExtractor.this.f24649a == 2 || TsExtractor.this.f24661m == 1) {
                timestampAdjuster = (TimestampAdjuster) TsExtractor.this.f24651c.get(0);
            } else {
                timestampAdjuster = new TimestampAdjuster(((TimestampAdjuster) TsExtractor.this.f24651c.get(0)).getFirstSampleTimestampUs());
                TsExtractor.this.f24651c.add(timestampAdjuster);
            }
            if ((parsableByteArray.readUnsignedByte() & 128) == 0) {
                return;
            }
            parsableByteArray.skipBytes(1);
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            int i = 3;
            parsableByteArray.skipBytes(3);
            parsableByteArray.readBytes(this.f24679a, 2);
            this.f24679a.skipBits(3);
            int i2 = 13;
            TsExtractor.this.f24667s = this.f24679a.readBits(13);
            parsableByteArray.readBytes(this.f24679a, 2);
            int i3 = 4;
            this.f24679a.skipBits(4);
            parsableByteArray.skipBytes(this.f24679a.readBits(12));
            if (TsExtractor.this.f24649a == 2 && TsExtractor.this.f24665q == null) {
                TsPayloadReader.EsInfo esInfo = new TsPayloadReader.EsInfo(21, null, null, Util.EMPTY_BYTE_ARRAY);
                TsExtractor tsExtractor = TsExtractor.this;
                tsExtractor.f24665q = tsExtractor.f24654f.createPayloadReader(21, esInfo);
                if (TsExtractor.this.f24665q != null) {
                    TsExtractor.this.f24665q.init(timestampAdjuster, TsExtractor.this.f24660l, new TsPayloadReader.TrackIdGenerator(readUnsignedShort, 21, 8192));
                }
            }
            this.f24680b.clear();
            this.f24681c.clear();
            int bytesLeft = parsableByteArray.bytesLeft();
            while (bytesLeft > 0) {
                parsableByteArray.readBytes(this.f24679a, 5);
                int readBits = this.f24679a.readBits(8);
                this.f24679a.skipBits(i);
                int readBits2 = this.f24679a.readBits(i2);
                this.f24679a.skipBits(i3);
                int readBits3 = this.f24679a.readBits(12);
                TsPayloadReader.EsInfo m19187a = m19187a(parsableByteArray, readBits3);
                if (readBits == 6 || readBits == 5) {
                    readBits = m19187a.streamType;
                }
                bytesLeft -= readBits3 + 5;
                int i4 = TsExtractor.this.f24649a == 2 ? readBits : readBits2;
                if (!TsExtractor.this.f24656h.get(i4)) {
                    TsPayloadReader createPayloadReader = (TsExtractor.this.f24649a == 2 && readBits == 21) ? TsExtractor.this.f24665q : TsExtractor.this.f24654f.createPayloadReader(readBits, m19187a);
                    if (TsExtractor.this.f24649a != 2 || readBits2 < this.f24681c.get(i4, 8192)) {
                        this.f24681c.put(i4, readBits2);
                        this.f24680b.put(i4, createPayloadReader);
                    }
                }
                i = 3;
                i3 = 4;
                i2 = 13;
            }
            int size = this.f24681c.size();
            for (int i5 = 0; i5 < size; i5++) {
                int keyAt = this.f24681c.keyAt(i5);
                int valueAt = this.f24681c.valueAt(i5);
                TsExtractor.this.f24656h.put(keyAt, true);
                TsExtractor.this.f24657i.put(valueAt, true);
                TsPayloadReader valueAt2 = this.f24680b.valueAt(i5);
                if (valueAt2 != null) {
                    if (valueAt2 != TsExtractor.this.f24665q) {
                        valueAt2.init(timestampAdjuster, TsExtractor.this.f24660l, new TsPayloadReader.TrackIdGenerator(readUnsignedShort, keyAt, 8192));
                    }
                    TsExtractor.this.f24655g.put(valueAt, valueAt2);
                }
            }
            if (TsExtractor.this.f24649a == 2) {
                if (TsExtractor.this.f24662n) {
                    return;
                }
                TsExtractor.this.f24660l.endTracks();
                TsExtractor.this.f24661m = 0;
                TsExtractor.this.f24662n = true;
                return;
            }
            TsExtractor.this.f24655g.remove(this.f24682d);
            TsExtractor tsExtractor2 = TsExtractor.this;
            tsExtractor2.f24661m = tsExtractor2.f24649a == 1 ? 0 : TsExtractor.this.f24661m - 1;
            if (TsExtractor.this.f24661m == 0) {
                TsExtractor.this.f24660l.endTracks();
                TsExtractor.this.f24662n = true;
            }
        }

        @Override // com.google.android.exoplayer2.extractor.p007ts.SectionPayloadReader
        public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }
    }

    public TsExtractor() {
        this(0);
    }

    /* renamed from: g */
    public static /* synthetic */ int m19171g(TsExtractor tsExtractor) {
        int i = tsExtractor.f24661m;
        tsExtractor.f24661m = i + 1;
        return i;
    }

    /* renamed from: s */
    public static /* synthetic */ Extractor[] m19181s() {
        return new Extractor[]{new TsExtractor()};
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f24660l = extractorOutput;
    }

    /* renamed from: q */
    public final boolean m19182q(ExtractorInput extractorInput) throws IOException {
        byte[] data = this.f24652d.getData();
        if (9400 - this.f24652d.getPosition() < 188) {
            int bytesLeft = this.f24652d.bytesLeft();
            if (bytesLeft > 0) {
                System.arraycopy(data, this.f24652d.getPosition(), data, 0, bytesLeft);
            }
            this.f24652d.reset(data, bytesLeft);
        }
        while (this.f24652d.bytesLeft() < 188) {
            int limit = this.f24652d.limit();
            int read = extractorInput.read(data, limit, 9400 - limit);
            if (read == -1) {
                return false;
            }
            this.f24652d.setLimit(limit + read);
        }
        return true;
    }

    /* renamed from: r */
    public final int m19183r() throws ParserException {
        int position = this.f24652d.getPosition();
        int limit = this.f24652d.limit();
        int findSyncBytePosition = TsUtil.findSyncBytePosition(this.f24652d.getData(), position, limit);
        this.f24652d.setPosition(findSyncBytePosition);
        int i = findSyncBytePosition + 188;
        if (i > limit) {
            int i2 = this.f24666r + (findSyncBytePosition - position);
            this.f24666r = i2;
            if (this.f24649a == 2 && i2 > 376) {
                throw ParserException.createForMalformedContainer("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.f24666r = 0;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        long length = extractorInput.getLength();
        if (this.f24662n) {
            if (((length == -1 || this.f24649a == 2) ? false : true) && !this.f24658j.m53993d()) {
                return this.f24658j.m53994e(extractorInput, positionHolder, this.f24667s);
            }
            m19184t(length);
            if (this.f24664p) {
                this.f24664p = false;
                seek(0L, 0L);
                if (extractorInput.getPosition() != 0) {
                    positionHolder.position = 0L;
                    return 1;
                }
            }
            don donVar = this.f24659k;
            if (donVar != null && donVar.isSeeking()) {
                return this.f24659k.handlePendingSeek(extractorInput, positionHolder);
            }
        }
        if (!m19182q(extractorInput)) {
            return -1;
        }
        int m19183r = m19183r();
        int limit = this.f24652d.limit();
        if (m19183r > limit) {
            return 0;
        }
        int readInt = this.f24652d.readInt();
        if ((8388608 & readInt) != 0) {
            this.f24652d.setPosition(m19183r);
            return 0;
        }
        int i = ((4194304 & readInt) != 0 ? 1 : 0) | 0;
        int i2 = (2096896 & readInt) >> 8;
        boolean z = (readInt & 32) != 0;
        TsPayloadReader tsPayloadReader = (readInt & 16) != 0 ? this.f24655g.get(i2) : null;
        if (tsPayloadReader == null) {
            this.f24652d.setPosition(m19183r);
            return 0;
        }
        if (this.f24649a != 2) {
            int i3 = readInt & 15;
            int i4 = this.f24653e.get(i2, i3 - 1);
            this.f24653e.put(i2, i3);
            if (i4 == i3) {
                this.f24652d.setPosition(m19183r);
                return 0;
            }
            if (i3 != ((i4 + 1) & 15)) {
                tsPayloadReader.seek();
            }
        }
        if (z) {
            int readUnsignedByte = this.f24652d.readUnsignedByte();
            i |= (this.f24652d.readUnsignedByte() & 64) != 0 ? 2 : 0;
            this.f24652d.skipBytes(readUnsignedByte - 1);
        }
        boolean z2 = this.f24662n;
        if (m19186v(i2)) {
            this.f24652d.setLimit(m19183r);
            tsPayloadReader.consume(this.f24652d, i);
            this.f24652d.setLimit(limit);
        }
        if (this.f24649a != 2 && !z2 && this.f24662n && length != -1) {
            this.f24664p = true;
        }
        this.f24652d.setPosition(m19183r);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        don donVar;
        Assertions.checkState(this.f24649a != 2);
        int size = this.f24651c.size();
        for (int i = 0; i < size; i++) {
            TimestampAdjuster timestampAdjuster = this.f24651c.get(i);
            boolean z = timestampAdjuster.getTimestampOffsetUs() == C4649C.TIME_UNSET;
            if (!z) {
                long firstSampleTimestampUs = timestampAdjuster.getFirstSampleTimestampUs();
                z = (firstSampleTimestampUs == C4649C.TIME_UNSET || firstSampleTimestampUs == 0 || firstSampleTimestampUs == j2) ? false : true;
            }
            if (z) {
                timestampAdjuster.reset(j2);
            }
        }
        if (j2 != 0 && (donVar = this.f24659k) != null) {
            donVar.setSeekTargetUs(j2);
        }
        this.f24652d.reset(0);
        this.f24653e.clear();
        for (int i2 = 0; i2 < this.f24655g.size(); i2++) {
            this.f24655g.valueAt(i2).seek();
        }
        this.f24666r = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        boolean z;
        byte[] data = this.f24652d.getData();
        extractorInput.peekFully(data, 0, don.f68078d);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    z = true;
                    break;
                }
                if (data[(i2 * 188) + i] != 71) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (z) {
                extractorInput.skipFully(i);
                return true;
            }
        }
        return false;
    }

    /* renamed from: t */
    public final void m19184t(long j) {
        if (this.f24663o) {
            return;
        }
        this.f24663o = true;
        if (this.f24658j.m53991b() == C4649C.TIME_UNSET) {
            this.f24660l.seekMap(new SeekMap.Unseekable(this.f24658j.m53991b()));
            return;
        }
        don donVar = new don(this.f24658j.m53992c(), this.f24658j.m53991b(), j, this.f24667s, this.f24650b);
        this.f24659k = donVar;
        this.f24660l.seekMap(donVar.getSeekMap());
    }

    /* renamed from: u */
    public final void m19185u() {
        this.f24656h.clear();
        this.f24655g.clear();
        SparseArray<TsPayloadReader> createInitialPayloadReaders = this.f24654f.createInitialPayloadReaders();
        int size = createInitialPayloadReaders.size();
        for (int i = 0; i < size; i++) {
            this.f24655g.put(createInitialPayloadReaders.keyAt(i), createInitialPayloadReaders.valueAt(i));
        }
        this.f24655g.put(0, new SectionReader(new C4754a()));
        this.f24665q = null;
    }

    /* renamed from: v */
    public final boolean m19186v(int i) {
        return this.f24649a == 2 || this.f24662n || !this.f24657i.get(i, false);
    }

    public TsExtractor(int i) {
        this(1, i, DEFAULT_TIMESTAMP_SEARCH_BYTES);
    }

    public TsExtractor(int i, int i2, int i3) {
        this(i, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(i2), i3);
    }

    public TsExtractor(int i, TimestampAdjuster timestampAdjuster, TsPayloadReader.Factory factory) {
        this(i, timestampAdjuster, factory, DEFAULT_TIMESTAMP_SEARCH_BYTES);
    }

    public TsExtractor(int i, TimestampAdjuster timestampAdjuster, TsPayloadReader.Factory factory, int i2) {
        this.f24654f = (TsPayloadReader.Factory) Assertions.checkNotNull(factory);
        this.f24650b = i2;
        this.f24649a = i;
        if (i != 1 && i != 2) {
            ArrayList arrayList = new ArrayList();
            this.f24651c = arrayList;
            arrayList.add(timestampAdjuster);
        } else {
            this.f24651c = Collections.singletonList(timestampAdjuster);
        }
        this.f24652d = new ParsableByteArray(new byte[f24648z], 0);
        this.f24656h = new SparseBooleanArray();
        this.f24657i = new SparseBooleanArray();
        this.f24655g = new SparseArray<>();
        this.f24653e = new SparseIntArray();
        this.f24658j = new eon(i2);
        this.f24660l = ExtractorOutput.PLACEHOLDER;
        this.f24667s = -1;
        m19185u();
    }
}
