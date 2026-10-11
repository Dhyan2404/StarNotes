package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.Ac4Util;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.TrueHdSampleRechunker;
import com.google.android.exoplayer2.extractor.mp4.AbstractC4745a;
import com.google.android.exoplayer2.extractor.mp4.Mp4Extractor;
import com.google.android.exoplayer2.extractor.mp4.Track;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Function;
import com.sunia.HTREnginev2.cvm;
import com.sunia.HTREnginev2.pnj;
import com.sunia.HTREnginev2.qdm;
import com.sunia.HTREnginev2.ykn;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class Mp4Extractor implements Extractor, SeekMap {

    /* renamed from: A */
    public static final int f24003A = 2;

    /* renamed from: B */
    public static final int f24004B = 3;

    /* renamed from: C */
    public static final int f24005C = 0;

    /* renamed from: D */
    public static final int f24006D = 1;

    /* renamed from: E */
    public static final int f24007E = 2;

    /* renamed from: F */
    public static final long f24008F = 262144;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.lpj
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            Extractor[] m18983i;
            m18983i = Mp4Extractor.m18983i();
            return m18983i;
        }
    };
    public static final int FLAG_READ_MOTION_PHOTO_METADATA = 2;
    public static final int FLAG_READ_SEF_DATA = 4;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 1;

    /* renamed from: G */
    public static final long f24009G = 10485760;

    /* renamed from: y */
    public static final int f24010y = 0;

    /* renamed from: z */
    public static final int f24011z = 1;

    /* renamed from: a */
    public final int f24012a;

    /* renamed from: b */
    public final ParsableByteArray f24013b;

    /* renamed from: c */
    public final ParsableByteArray f24014c;

    /* renamed from: d */
    public final ParsableByteArray f24015d;

    /* renamed from: e */
    public final ParsableByteArray f24016e;

    /* renamed from: f */
    public final ArrayDeque<AbstractC4745a.a> f24017f;

    /* renamed from: g */
    public final qdm f24018g;

    /* renamed from: h */
    public final List<Metadata.Entry> f24019h;

    /* renamed from: i */
    public int f24020i;

    /* renamed from: j */
    public int f24021j;

    /* renamed from: k */
    public long f24022k;

    /* renamed from: l */
    public int f24023l;

    /* renamed from: m */
    @Nullable
    public ParsableByteArray f24024m;

    /* renamed from: n */
    public int f24025n;

    /* renamed from: o */
    public int f24026o;

    /* renamed from: p */
    public int f24027p;

    /* renamed from: q */
    public int f24028q;

    /* renamed from: r */
    public ExtractorOutput f24029r;

    /* renamed from: s */
    public C4743a[] f24030s;

    /* renamed from: t */
    public long[][] f24031t;

    /* renamed from: u */
    public int f24032u;

    /* renamed from: v */
    public long f24033v;

    /* renamed from: w */
    public int f24034w;

    /* renamed from: x */
    @Nullable
    public MotionPhotoMetadata f24035x;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Flags {
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.Mp4Extractor$a */
    /* loaded from: classes5.dex */
    public static final class C4743a {

        /* renamed from: a */
        public final Track f24036a;

        /* renamed from: b */
        public final ykn f24037b;

        /* renamed from: c */
        public final TrackOutput f24038c;

        /* renamed from: d */
        @Nullable
        public final TrueHdSampleRechunker f24039d;

        /* renamed from: e */
        public int f24040e;

        public C4743a(Track track, ykn yknVar, TrackOutput trackOutput) {
            this.f24036a = track;
            this.f24037b = yknVar;
            this.f24038c = trackOutput;
            this.f24039d = MimeTypes.AUDIO_TRUEHD.equals(track.format.sampleMimeType) ? new TrueHdSampleRechunker() : null;
        }
    }

    public Mp4Extractor() {
        this(0);
    }

    /* renamed from: c */
    public static int m18979c(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    /* renamed from: d */
    public static long[][] m18980d(C4743a[] c4743aArr) {
        long[][] jArr = new long[c4743aArr.length];
        int[] iArr = new int[c4743aArr.length];
        long[] jArr2 = new long[c4743aArr.length];
        boolean[] zArr = new boolean[c4743aArr.length];
        for (int i = 0; i < c4743aArr.length; i++) {
            jArr[i] = new long[c4743aArr[i].f24037b.f90836b];
            jArr2[i] = c4743aArr[i].f24037b.f90840f[0];
        }
        long j = 0;
        int i2 = 0;
        while (i2 < c4743aArr.length) {
            long j2 = Long.MAX_VALUE;
            int i3 = -1;
            for (int i4 = 0; i4 < c4743aArr.length; i4++) {
                if (!zArr[i4]) {
                    long j3 = jArr2[i4];
                    if (j3 <= j2) {
                        i3 = i4;
                        j2 = j3;
                    }
                }
            }
            int i5 = iArr[i3];
            long[] jArr3 = jArr[i3];
            jArr3[i5] = j;
            ykn yknVar = c4743aArr[i3].f24037b;
            j += yknVar.f90838d[i5];
            int i6 = i5 + 1;
            iArr[i3] = i6;
            if (i6 < jArr3.length) {
                jArr2[i3] = yknVar.f90840f[i6];
            } else {
                zArr[i3] = true;
                i2++;
            }
        }
        return jArr;
    }

    /* renamed from: f */
    public static int m18981f(ykn yknVar, long j) {
        int m58450a = yknVar.m58450a(j);
        return m58450a == -1 ? yknVar.m58451b(j) : m58450a;
    }

    /* renamed from: h */
    public static /* synthetic */ Track m18982h(Track track) {
        return track;
    }

    /* renamed from: i */
    public static /* synthetic */ Extractor[] m18983i() {
        return new Extractor[]{new Mp4Extractor()};
    }

    /* renamed from: j */
    public static long m18984j(ykn yknVar, long j, long j2) {
        int m18981f = m18981f(yknVar, j);
        return m18981f == -1 ? j2 : Math.min(yknVar.f90837c[m18981f], j2);
    }

    /* renamed from: n */
    public static int m18985n(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int m18979c = m18979c(parsableByteArray.readInt());
        if (m18979c != 0) {
            return m18979c;
        }
        parsableByteArray.skipBytes(4);
        while (parsableByteArray.bytesLeft() > 0) {
            int m18979c2 = m18979c(parsableByteArray.readInt());
            if (m18979c2 != 0) {
                return m18979c2;
            }
        }
        return 0;
    }

    /* renamed from: u */
    public static boolean m18986u(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473;
    }

    /* renamed from: v */
    public static boolean m18987v(int i) {
        return i == 1835296868 || i == 1836476516 || i == 1751411826 || i == 1937011556 || i == 1937011827 || i == 1937011571 || i == 1668576371 || i == 1701606260 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1953196132 || i == 1718909296 || i == 1969517665 || i == 1801812339 || i == 1768715124;
    }

    /* renamed from: e */
    public final void m18988e() {
        this.f24020i = 0;
        this.f24023l = 0;
    }

    /* renamed from: g */
    public final int m18989g(long j) {
        int i = -1;
        int i2 = -1;
        long j2 = Long.MAX_VALUE;
        boolean z = true;
        long j3 = Long.MAX_VALUE;
        boolean z2 = true;
        long j4 = Long.MAX_VALUE;
        for (int i3 = 0; i3 < ((C4743a[]) Util.castNonNull(this.f24030s)).length; i3++) {
            C4743a c4743a = this.f24030s[i3];
            int i4 = c4743a.f24040e;
            ykn yknVar = c4743a.f24037b;
            if (i4 != yknVar.f90836b) {
                long j5 = yknVar.f90837c[i4];
                long j6 = ((long[][]) Util.castNonNull(this.f24031t))[i3][i4];
                long j7 = j5 - j;
                boolean z3 = j7 < 0 || j7 >= 262144;
                if ((!z3 && z2) || (z3 == z2 && j7 < j4)) {
                    j4 = j7;
                    z2 = z3;
                    i2 = i3;
                    j3 = j6;
                }
                if (j6 < j2) {
                    z = z3;
                    i = i3;
                    j2 = j6;
                }
            }
        }
        return (j2 == Long.MAX_VALUE || !z || j3 < j2 + 10485760) ? i2 : i;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.f24033v;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        int m58451b;
        if (((C4743a[]) Assertions.checkNotNull(this.f24030s)).length == 0) {
            return new SeekMap.SeekPoints(SeekPoint.START);
        }
        int i = this.f24032u;
        if (i != -1) {
            ykn yknVar = this.f24030s[i].f24037b;
            int m18981f = m18981f(yknVar, j);
            if (m18981f == -1) {
                return new SeekMap.SeekPoints(SeekPoint.START);
            }
            long j6 = yknVar.f90840f[m18981f];
            j2 = yknVar.f90837c[m18981f];
            if (j6 >= j || m18981f >= yknVar.f90836b - 1 || (m58451b = yknVar.m58451b(j)) == -1 || m58451b == m18981f) {
                j5 = -1;
                j4 = -9223372036854775807L;
            } else {
                j4 = yknVar.f90840f[m58451b];
                j5 = yknVar.f90837c[m58451b];
            }
            j3 = j5;
            j = j6;
        } else {
            j2 = Long.MAX_VALUE;
            j3 = -1;
            j4 = -9223372036854775807L;
        }
        int i2 = 0;
        while (true) {
            C4743a[] c4743aArr = this.f24030s;
            if (i2 >= c4743aArr.length) {
                break;
            }
            if (i2 != this.f24032u) {
                ykn yknVar2 = c4743aArr[i2].f24037b;
                long m18984j = m18984j(yknVar2, j, j2);
                if (j4 != C4649C.TIME_UNSET) {
                    j3 = m18984j(yknVar2, j4, j3);
                }
                j2 = m18984j;
            }
            i2++;
        }
        SeekPoint seekPoint = new SeekPoint(j, j2);
        return j4 == C4649C.TIME_UNSET ? new SeekMap.SeekPoints(seekPoint) : new SeekMap.SeekPoints(seekPoint, new SeekPoint(j4, j3));
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f24029r = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    /* renamed from: k */
    public final void m18990k(ExtractorInput extractorInput) throws IOException {
        this.f24015d.reset(8);
        extractorInput.peekFully(this.f24015d.getData(), 0, 8);
        C4746b.m19021e(this.f24015d);
        extractorInput.skipFully(this.f24015d.getPosition());
        extractorInput.resetPeekPosition();
    }

    /* renamed from: l */
    public final void m18991l(long j) throws ParserException {
        while (!this.f24017f.isEmpty() && this.f24017f.peek().f24180C1 == j) {
            AbstractC4745a.a pop = this.f24017f.pop();
            if (pop.f24179a == 1836019574) {
                m18993o(pop);
                this.f24017f.clear();
                this.f24020i = 2;
            } else if (!this.f24017f.isEmpty()) {
                this.f24017f.peek().m19008d(pop);
            }
        }
        if (this.f24020i != 2) {
            m18988e();
        }
    }

    /* renamed from: m */
    public final void m18992m() {
        if (this.f24034w != 2 || (this.f24012a & 2) == 0) {
            return;
        }
        ExtractorOutput extractorOutput = (ExtractorOutput) Assertions.checkNotNull(this.f24029r);
        extractorOutput.track(0, 4).format(new Format.Builder().setMetadata(this.f24035x == null ? null : new Metadata(this.f24035x)).build());
        extractorOutput.endTracks();
        extractorOutput.seekMap(new SeekMap.Unseekable(C4649C.TIME_UNSET));
    }

    /* renamed from: o */
    public final void m18993o(AbstractC4745a.a aVar) throws ParserException {
        Metadata metadata;
        Metadata metadata2;
        ArrayList arrayList;
        List<ykn> list;
        int i;
        int i2;
        ArrayList arrayList2 = new ArrayList();
        boolean z = this.f24034w == 1;
        GaplessInfoHolder gaplessInfoHolder = new GaplessInfoHolder();
        AbstractC4745a.b m19012h = aVar.m19012h(AbstractC4745a.f24112d1);
        if (m19012h != null) {
            Pair<Metadata, Metadata> m19014B = C4746b.m19014B(m19012h);
            Metadata metadata3 = (Metadata) m19014B.first;
            Metadata metadata4 = (Metadata) m19014B.second;
            if (metadata3 != null) {
                gaplessInfoHolder.setFromMetadata(metadata3);
            }
            metadata = metadata4;
            metadata2 = metadata3;
        } else {
            metadata = null;
            metadata2 = null;
        }
        AbstractC4745a.a m19011g = aVar.m19011g(1835365473);
        Metadata m19030n = m19011g != null ? C4746b.m19030n(m19011g) : null;
        List<ykn> m19013A = C4746b.m19013A(aVar, gaplessInfoHolder, C4649C.TIME_UNSET, null, (this.f24012a & 1) != 0, z, new Function() { // from class: com.sunia.HTREnginev2.mpj
            @Override // com.google.common.base.Function, java.util.function.Function
            public final Object apply(Object obj) {
                Track m18982h;
                m18982h = Mp4Extractor.m18982h((Track) obj);
                return m18982h;
            }
        });
        ExtractorOutput extractorOutput = (ExtractorOutput) Assertions.checkNotNull(this.f24029r);
        int size = m19013A.size();
        int i3 = 0;
        int i4 = -1;
        long j = C4649C.TIME_UNSET;
        while (i3 < size) {
            ykn yknVar = m19013A.get(i3);
            if (yknVar.f90836b == 0) {
                list = m19013A;
                i = size;
                arrayList = arrayList2;
            } else {
                Track track = yknVar.f90835a;
                int i5 = i4;
                arrayList = arrayList2;
                long j2 = track.durationUs;
                if (j2 == C4649C.TIME_UNSET) {
                    j2 = yknVar.f90842h;
                }
                long max = Math.max(j, j2);
                list = m19013A;
                i = size;
                C4743a c4743a = new C4743a(track, yknVar, extractorOutput.track(i3, track.type));
                int i6 = MimeTypes.AUDIO_TRUEHD.equals(track.format.sampleMimeType) ? yknVar.f90839e * 16 : yknVar.f90839e + 30;
                Format.Builder buildUpon = track.format.buildUpon();
                buildUpon.setMaxInputSize(i6);
                if (track.type == 2 && j2 > 0 && (i2 = yknVar.f90836b) > 1) {
                    buildUpon.setFrameRate(i2 / (((float) j2) / 1000000.0f));
                }
                pnj.m56347k(track.type, gaplessInfoHolder, buildUpon);
                int i7 = track.type;
                Metadata[] metadataArr = new Metadata[2];
                metadataArr[0] = metadata;
                metadataArr[1] = this.f24019h.isEmpty() ? null : new Metadata(this.f24019h);
                pnj.m56348l(i7, metadata2, m19030n, buildUpon, metadataArr);
                c4743a.f24038c.format(buildUpon.build());
                int i8 = i5;
                if (track.type == 2 && i8 == -1) {
                    i8 = arrayList.size();
                }
                i4 = i8;
                arrayList.add(c4743a);
                j = max;
            }
            i3++;
            arrayList2 = arrayList;
            m19013A = list;
            size = i;
        }
        this.f24032u = i4;
        this.f24033v = j;
        C4743a[] c4743aArr = (C4743a[]) arrayList2.toArray(new C4743a[0]);
        this.f24030s = c4743aArr;
        this.f24031t = m18980d(c4743aArr);
        extractorOutput.endTracks();
        extractorOutput.seekMap(this);
    }

    /* renamed from: p */
    public final void m18994p(long j) {
        if (this.f24021j == 1836086884) {
            int i = this.f24023l;
            this.f24035x = new MotionPhotoMetadata(0L, j, C4649C.TIME_UNSET, j + i, this.f24022k - i);
        }
    }

    /* renamed from: q */
    public final boolean m18995q(ExtractorInput extractorInput) throws IOException {
        AbstractC4745a.a peek;
        if (this.f24023l == 0) {
            if (!extractorInput.readFully(this.f24016e.getData(), 0, 8, true)) {
                m18992m();
                return false;
            }
            this.f24023l = 8;
            this.f24016e.setPosition(0);
            this.f24022k = this.f24016e.readUnsignedInt();
            this.f24021j = this.f24016e.readInt();
        }
        long j = this.f24022k;
        if (j == 1) {
            extractorInput.readFully(this.f24016e.getData(), 8, 8);
            this.f24023l += 8;
            this.f24022k = this.f24016e.readUnsignedLongToLong();
        } else if (j == 0) {
            long length = extractorInput.getLength();
            if (length == -1 && (peek = this.f24017f.peek()) != null) {
                length = peek.f24180C1;
            }
            if (length != -1) {
                this.f24022k = (length - extractorInput.getPosition()) + this.f24023l;
            }
        }
        if (this.f24022k < this.f24023l) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        if (m18986u(this.f24021j)) {
            long position = extractorInput.getPosition();
            long j2 = this.f24022k;
            int i = this.f24023l;
            long j3 = (position + j2) - i;
            if (j2 != i && this.f24021j == 1835365473) {
                m18990k(extractorInput);
            }
            this.f24017f.push(new AbstractC4745a.a(this.f24021j, j3));
            if (this.f24022k == this.f24023l) {
                m18991l(j3);
            } else {
                m18988e();
            }
        } else if (m18987v(this.f24021j)) {
            Assertions.checkState(this.f24023l == 8);
            Assertions.checkState(this.f24022k <= 2147483647L);
            ParsableByteArray parsableByteArray = new ParsableByteArray((int) this.f24022k);
            System.arraycopy(this.f24016e.getData(), 0, parsableByteArray.getData(), 0, 8);
            this.f24024m = parsableByteArray;
            this.f24020i = 1;
        } else {
            m18994p(extractorInput.getPosition() - this.f24023l);
            this.f24024m = null;
            this.f24020i = 1;
        }
        return true;
    }

    /* renamed from: r */
    public final boolean m18996r(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        boolean z;
        long j = this.f24022k - this.f24023l;
        long position = extractorInput.getPosition() + j;
        ParsableByteArray parsableByteArray = this.f24024m;
        if (parsableByteArray != null) {
            extractorInput.readFully(parsableByteArray.getData(), this.f24023l, (int) j);
            if (this.f24021j == 1718909296) {
                this.f24034w = m18985n(parsableByteArray);
            } else if (!this.f24017f.isEmpty()) {
                this.f24017f.peek().m19009e(new AbstractC4745a.b(this.f24021j, parsableByteArray));
            }
        } else {
            if (j >= 262144) {
                positionHolder.position = extractorInput.getPosition() + j;
                z = true;
                m18991l(position);
                return (z || this.f24020i == 2) ? false : true;
            }
            extractorInput.skipFully((int) j);
        }
        z = false;
        m18991l(position);
        if (z) {
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        while (true) {
            int i = this.f24020i;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        return m18997s(extractorInput, positionHolder);
                    }
                    if (i == 3) {
                        return m18998t(extractorInput, positionHolder);
                    }
                    throw new IllegalStateException();
                }
                if (m18996r(extractorInput, positionHolder)) {
                    return 1;
                }
            } else if (!m18995q(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    /* renamed from: s */
    public final int m18997s(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i;
        PositionHolder positionHolder2;
        long position = extractorInput.getPosition();
        if (this.f24025n == -1) {
            int m18989g = m18989g(position);
            this.f24025n = m18989g;
            if (m18989g == -1) {
                return -1;
            }
        }
        C4743a c4743a = ((C4743a[]) Util.castNonNull(this.f24030s))[this.f24025n];
        TrackOutput trackOutput = c4743a.f24038c;
        int i2 = c4743a.f24040e;
        ykn yknVar = c4743a.f24037b;
        long j = yknVar.f90837c[i2];
        int i3 = yknVar.f90838d[i2];
        TrueHdSampleRechunker trueHdSampleRechunker = c4743a.f24039d;
        long j2 = (j - position) + this.f24026o;
        if (j2 < 0) {
            i = 1;
            positionHolder2 = positionHolder;
        } else {
            if (j2 < 262144) {
                if (c4743a.f24036a.sampleTransformation == 1) {
                    j2 += 8;
                    i3 -= 8;
                }
                extractorInput.skipFully((int) j2);
                Track track = c4743a.f24036a;
                if (track.nalUnitLengthFieldLength == 0) {
                    if (MimeTypes.AUDIO_AC4.equals(track.format.sampleMimeType)) {
                        if (this.f24027p == 0) {
                            Ac4Util.getAc4SampleHeader(i3, this.f24015d);
                            trackOutput.sampleData(this.f24015d, 7);
                            this.f24027p += 7;
                        }
                        i3 += 7;
                    } else if (trueHdSampleRechunker != null) {
                        trueHdSampleRechunker.startSample(extractorInput);
                    }
                    while (true) {
                        int i4 = this.f24027p;
                        if (i4 >= i3) {
                            break;
                        }
                        int sampleData = trackOutput.sampleData((DataReader) extractorInput, i3 - i4, false);
                        this.f24026o += sampleData;
                        this.f24027p += sampleData;
                        this.f24028q -= sampleData;
                    }
                } else {
                    byte[] data = this.f24014c.getData();
                    data[0] = 0;
                    data[1] = 0;
                    data[2] = 0;
                    int i5 = c4743a.f24036a.nalUnitLengthFieldLength;
                    int i6 = 4 - i5;
                    while (this.f24027p < i3) {
                        int i7 = this.f24028q;
                        if (i7 == 0) {
                            extractorInput.readFully(data, i6, i5);
                            this.f24026o += i5;
                            this.f24014c.setPosition(0);
                            int readInt = this.f24014c.readInt();
                            if (readInt < 0) {
                                throw ParserException.createForMalformedContainer("Invalid NAL length", null);
                            }
                            this.f24028q = readInt;
                            this.f24013b.setPosition(0);
                            trackOutput.sampleData(this.f24013b, 4);
                            this.f24027p += 4;
                            i3 += i6;
                        } else {
                            int sampleData2 = trackOutput.sampleData((DataReader) extractorInput, i7, false);
                            this.f24026o += sampleData2;
                            this.f24027p += sampleData2;
                            this.f24028q -= sampleData2;
                        }
                    }
                }
                int i8 = i3;
                ykn yknVar2 = c4743a.f24037b;
                long j3 = yknVar2.f90840f[i2];
                int i9 = yknVar2.f90841g[i2];
                if (trueHdSampleRechunker != null) {
                    trueHdSampleRechunker.sampleMetadata(trackOutput, j3, i9, i8, 0, null);
                    if (i2 + 1 == c4743a.f24037b.f90836b) {
                        trueHdSampleRechunker.outputPendingSampleMetadata(trackOutput, null);
                    }
                } else {
                    trackOutput.sampleMetadata(j3, i9, i8, 0, null);
                }
                c4743a.f24040e++;
                this.f24025n = -1;
                this.f24026o = 0;
                this.f24027p = 0;
                this.f24028q = 0;
                return 0;
            }
            positionHolder2 = positionHolder;
            i = 1;
        }
        positionHolder2.position = j;
        return i;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.f24017f.clear();
        this.f24023l = 0;
        this.f24025n = -1;
        this.f24026o = 0;
        this.f24027p = 0;
        this.f24028q = 0;
        if (j == 0) {
            if (this.f24020i != 3) {
                m18988e();
                return;
            } else {
                this.f24018g.m56686g();
                this.f24019h.clear();
                return;
            }
        }
        C4743a[] c4743aArr = this.f24030s;
        if (c4743aArr != null) {
            for (C4743a c4743a : c4743aArr) {
                m18999w(c4743a, j2);
                TrueHdSampleRechunker trueHdSampleRechunker = c4743a.f24039d;
                if (trueHdSampleRechunker != null) {
                    trueHdSampleRechunker.reset();
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        return cvm.m53529e(extractorInput, (this.f24012a & 2) != 0);
    }

    /* renamed from: t */
    public final int m18998t(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int m56683c = this.f24018g.m56683c(extractorInput, positionHolder, this.f24019h);
        if (m56683c == 1 && positionHolder.position == 0) {
            m18988e();
        }
        return m56683c;
    }

    /* renamed from: w */
    public final void m18999w(C4743a c4743a, long j) {
        ykn yknVar = c4743a.f24037b;
        int m58450a = yknVar.m58450a(j);
        if (m58450a == -1) {
            m58450a = yknVar.m58451b(j);
        }
        c4743a.f24040e = m58450a;
    }

    public Mp4Extractor(int i) {
        this.f24012a = i;
        this.f24020i = (i & 4) != 0 ? 3 : 0;
        this.f24018g = new qdm();
        this.f24019h = new ArrayList();
        this.f24016e = new ParsableByteArray(16);
        this.f24017f = new ArrayDeque<>();
        this.f24013b = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.f24014c = new ParsableByteArray(4);
        this.f24015d = new ParsableByteArray();
        this.f24025n = -1;
    }
}
