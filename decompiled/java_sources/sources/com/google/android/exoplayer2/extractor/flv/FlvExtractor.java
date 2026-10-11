package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.flv.FlvExtractor;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.sunia.HTREnginev2.h6m;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class FlvExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.qog
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            Extractor[] m18846d;
            m18846d = FlvExtractor.m18846d();
            return m18846d;
        }
    };

    /* renamed from: q */
    public static final int f23607q = 1;

    /* renamed from: r */
    public static final int f23608r = 2;

    /* renamed from: s */
    public static final int f23609s = 3;

    /* renamed from: t */
    public static final int f23610t = 4;

    /* renamed from: u */
    public static final int f23611u = 9;

    /* renamed from: v */
    public static final int f23612v = 11;

    /* renamed from: w */
    public static final int f23613w = 8;

    /* renamed from: x */
    public static final int f23614x = 9;

    /* renamed from: y */
    public static final int f23615y = 18;

    /* renamed from: z */
    public static final int f23616z = 4607062;

    /* renamed from: f */
    public ExtractorOutput f23622f;

    /* renamed from: h */
    public boolean f23624h;

    /* renamed from: i */
    public long f23625i;

    /* renamed from: j */
    public int f23626j;

    /* renamed from: k */
    public int f23627k;

    /* renamed from: l */
    public int f23628l;

    /* renamed from: m */
    public long f23629m;

    /* renamed from: n */
    public boolean f23630n;

    /* renamed from: o */
    public C4734a f23631o;

    /* renamed from: p */
    public C4735b f23632p;

    /* renamed from: a */
    public final ParsableByteArray f23617a = new ParsableByteArray(4);

    /* renamed from: b */
    public final ParsableByteArray f23618b = new ParsableByteArray(9);

    /* renamed from: c */
    public final ParsableByteArray f23619c = new ParsableByteArray(11);

    /* renamed from: d */
    public final ParsableByteArray f23620d = new ParsableByteArray();

    /* renamed from: e */
    public final h6m f23621e = new h6m();

    /* renamed from: g */
    public int f23623g = 1;

    /* renamed from: d */
    public static /* synthetic */ Extractor[] m18846d() {
        return new Extractor[]{new FlvExtractor()};
    }

    @RequiresNonNull({"extractorOutput"})
    /* renamed from: b */
    public final void m18847b() {
        if (this.f23630n) {
            return;
        }
        this.f23622f.seekMap(new SeekMap.Unseekable(C4649C.TIME_UNSET));
        this.f23630n = true;
    }

    /* renamed from: c */
    public final long m18848c() {
        if (this.f23624h) {
            return this.f23625i + this.f23629m;
        }
        if (this.f23621e.m54431e() == C4649C.TIME_UNSET) {
            return 0L;
        }
        return this.f23629m;
    }

    /* renamed from: e */
    public final ParsableByteArray m18849e(ExtractorInput extractorInput) throws IOException {
        if (this.f23628l > this.f23620d.capacity()) {
            ParsableByteArray parsableByteArray = this.f23620d;
            parsableByteArray.reset(new byte[Math.max(parsableByteArray.capacity() * 2, this.f23628l)], 0);
        } else {
            this.f23620d.setPosition(0);
        }
        this.f23620d.setLimit(this.f23628l);
        extractorInput.readFully(this.f23620d.getData(), 0, this.f23628l);
        return this.f23620d;
    }

    @RequiresNonNull({"extractorOutput"})
    /* renamed from: f */
    public final boolean m18850f(ExtractorInput extractorInput) throws IOException {
        if (!extractorInput.readFully(this.f23618b.getData(), 0, 9, true)) {
            return false;
        }
        this.f23618b.setPosition(0);
        this.f23618b.skipBytes(4);
        int readUnsignedByte = this.f23618b.readUnsignedByte();
        boolean z = (readUnsignedByte & 4) != 0;
        boolean z2 = (readUnsignedByte & 1) != 0;
        if (z && this.f23631o == null) {
            this.f23631o = new C4734a(this.f23622f.track(8, 1));
        }
        if (z2 && this.f23632p == null) {
            this.f23632p = new C4735b(this.f23622f.track(9, 2));
        }
        this.f23622f.endTracks();
        this.f23626j = (this.f23618b.readInt() - 9) + 4;
        this.f23623g = 2;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008b  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput"})
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m18851g(com.google.android.exoplayer2.extractor.ExtractorInput r10) throws java.io.IOException {
        /*
            r9 = this;
            long r0 = r9.m18848c()
            int r2 = r9.f23627k
            r3 = 8
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = 1
            if (r2 != r3) goto L23
            com.google.android.exoplayer2.extractor.flv.a r3 = r9.f23631o
            if (r3 == 0) goto L23
            r9.m18847b()
            com.google.android.exoplayer2.extractor.flv.a r2 = r9.f23631o
            com.google.android.exoplayer2.util.ParsableByteArray r10 = r9.m18849e(r10)
            boolean r10 = r2.m18854a(r10, r0)
        L21:
            r0 = r6
            goto L75
        L23:
            r3 = 9
            if (r2 != r3) goto L39
            com.google.android.exoplayer2.extractor.flv.b r3 = r9.f23632p
            if (r3 == 0) goto L39
            r9.m18847b()
            com.google.android.exoplayer2.extractor.flv.b r2 = r9.f23632p
            com.google.android.exoplayer2.util.ParsableByteArray r10 = r9.m18849e(r10)
            boolean r10 = r2.m18854a(r10, r0)
            goto L21
        L39:
            r3 = 18
            if (r2 != r3) goto L6e
            boolean r2 = r9.f23630n
            if (r2 != 0) goto L6e
            com.sunia.HTREnginev2.h6m r2 = r9.f23621e
            com.google.android.exoplayer2.util.ParsableByteArray r10 = r9.m18849e(r10)
            boolean r10 = r2.m18854a(r10, r0)
            com.sunia.HTREnginev2.h6m r0 = r9.f23621e
            long r0 = r0.m54431e()
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 == 0) goto L21
            com.google.android.exoplayer2.extractor.ExtractorOutput r2 = r9.f23622f
            com.google.android.exoplayer2.extractor.IndexSeekMap r3 = new com.google.android.exoplayer2.extractor.IndexSeekMap
            com.sunia.HTREnginev2.h6m r7 = r9.f23621e
            long[] r7 = r7.m54432f()
            com.sunia.HTREnginev2.h6m r8 = r9.f23621e
            long[] r8 = r8.m54433g()
            r3.<init>(r7, r8, r0)
            r2.seekMap(r3)
            r9.f23630n = r6
            goto L21
        L6e:
            int r0 = r9.f23628l
            r10.skipFully(r0)
            r10 = 0
            r0 = r10
        L75:
            boolean r1 = r9.f23624h
            if (r1 != 0) goto L8f
            if (r10 == 0) goto L8f
            r9.f23624h = r6
            com.sunia.HTREnginev2.h6m r10 = r9.f23621e
            long r1 = r10.m54431e()
            int r10 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r10 != 0) goto L8b
            long r1 = r9.f23629m
            long r1 = -r1
            goto L8d
        L8b:
            r1 = 0
        L8d:
            r9.f23625i = r1
        L8f:
            r10 = 4
            r9.f23626j = r10
            r10 = 2
            r9.f23623g = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.flv.FlvExtractor.m18851g(com.google.android.exoplayer2.extractor.ExtractorInput):boolean");
    }

    /* renamed from: h */
    public final boolean m18852h(ExtractorInput extractorInput) throws IOException {
        if (!extractorInput.readFully(this.f23619c.getData(), 0, 11, true)) {
            return false;
        }
        this.f23619c.setPosition(0);
        this.f23627k = this.f23619c.readUnsignedByte();
        this.f23628l = this.f23619c.readUnsignedInt24();
        this.f23629m = this.f23619c.readUnsignedInt24();
        this.f23629m = ((this.f23619c.readUnsignedByte() << 24) | this.f23629m) * 1000;
        this.f23619c.skipBytes(3);
        this.f23623g = 4;
        return true;
    }

    /* renamed from: i */
    public final void m18853i(ExtractorInput extractorInput) throws IOException {
        extractorInput.skipFully(this.f23626j);
        this.f23626j = 0;
        this.f23623g = 3;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f23622f = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.checkStateNotNull(this.f23622f);
        while (true) {
            int i = this.f23623g;
            if (i != 1) {
                if (i == 2) {
                    m18853i(extractorInput);
                } else if (i != 3) {
                    if (i != 4) {
                        throw new IllegalStateException();
                    }
                    if (m18851g(extractorInput)) {
                        return 0;
                    }
                } else if (!m18852h(extractorInput)) {
                    return -1;
                }
            } else if (!m18850f(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        if (j == 0) {
            this.f23623g = 1;
            this.f23624h = false;
        } else {
            this.f23623g = 3;
        }
        this.f23626j = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        extractorInput.peekFully(this.f23617a.getData(), 0, 3);
        this.f23617a.setPosition(0);
        if (this.f23617a.readUnsignedInt24() != 4607062) {
            return false;
        }
        extractorInput.peekFully(this.f23617a.getData(), 0, 2);
        this.f23617a.setPosition(0);
        if ((this.f23617a.readUnsignedShort() & 250) != 0) {
            return false;
        }
        extractorInput.peekFully(this.f23617a.getData(), 0, 4);
        this.f23617a.setPosition(0);
        int readInt = this.f23617a.readInt();
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(readInt);
        extractorInput.peekFully(this.f23617a.getData(), 0, 4);
        this.f23617a.setPosition(0);
        return this.f23617a.readInt() == 0;
    }
}
