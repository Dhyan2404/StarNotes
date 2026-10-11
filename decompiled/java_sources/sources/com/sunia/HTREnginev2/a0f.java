package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorUtil;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class a0f implements bfk {

    /* renamed from: m */
    public static final int f64152m = 72000;

    /* renamed from: n */
    public static final int f64153n = 100000;

    /* renamed from: o */
    public static final int f64154o = 30000;

    /* renamed from: p */
    public static final int f64155p = 0;

    /* renamed from: q */
    public static final int f64156q = 1;

    /* renamed from: r */
    public static final int f64157r = 2;

    /* renamed from: s */
    public static final int f64158s = 3;

    /* renamed from: t */
    public static final int f64159t = 4;

    /* renamed from: a */
    public final afk f64160a;

    /* renamed from: b */
    public final long f64161b;

    /* renamed from: c */
    public final long f64162c;

    /* renamed from: d */
    public final e0n f64163d;

    /* renamed from: e */
    public int f64164e;

    /* renamed from: f */
    public long f64165f;

    /* renamed from: g */
    public long f64166g;

    /* renamed from: h */
    public long f64167h;

    /* renamed from: i */
    public long f64168i;

    /* renamed from: j */
    public long f64169j;

    /* renamed from: k */
    public long f64170k;

    /* renamed from: l */
    public long f64171l;

    /* renamed from: com.sunia.HTREnginev2.a0f$b */
    /* loaded from: classes5.dex */
    public final class C13464b implements SeekMap {
        public C13464b() {
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            return a0f.this.f64163d.m53887b(a0f.this.f64165f);
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j) {
            return new SeekMap.SeekPoints(new SeekPoint(j, Util.constrainValue((a0f.this.f64161b + ((a0f.this.f64163d.m53888c(j) * (a0f.this.f64162c - a0f.this.f64161b)) / a0f.this.f64165f)) - 30000, a0f.this.f64161b, a0f.this.f64162c - 1)));
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }
    }

    public a0f(e0n e0nVar, long j, long j2, long j3, long j4, boolean z) {
        Assertions.checkArgument(j >= 0 && j2 > j);
        this.f64163d = e0nVar;
        this.f64161b = j;
        this.f64162c = j2;
        if (j3 == j2 - j || z) {
            this.f64165f = j4;
            this.f64164e = 4;
        } else {
            this.f64164e = 0;
        }
        this.f64160a = new afk();
    }

    @Override // com.sunia.HTREnginev2.bfk
    /* renamed from: b */
    public void mo52918b(long j) {
        this.f64167h = Util.constrainValue(j, 0L, this.f64165f - 1);
        this.f64164e = 2;
        this.f64168i = this.f64161b;
        this.f64169j = this.f64162c;
        this.f64170k = 0L;
        this.f64171l = this.f64165f;
    }

    @Override // com.sunia.HTREnginev2.bfk
    @Nullable
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public C13464b mo52917a() {
        if (this.f64165f != 0) {
            return new C13464b();
        }
        return null;
    }

    /* renamed from: h */
    public final long m52920h(ExtractorInput extractorInput) throws IOException {
        if (this.f64168i == this.f64169j) {
            return -1L;
        }
        long position = extractorInput.getPosition();
        if (!this.f64160a.m53013d(extractorInput, this.f64169j)) {
            long j = this.f64168i;
            if (j != position) {
                return j;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f64160a.m53010a(extractorInput, false);
        extractorInput.resetPeekPosition();
        long j2 = this.f64167h;
        afk afkVar = this.f64160a;
        long j3 = afkVar.f64648c;
        long j4 = j2 - j3;
        int i = afkVar.f64653h + afkVar.f64654i;
        if (0 <= j4 && j4 < 72000) {
            return -1L;
        }
        if (j4 < 0) {
            this.f64169j = position;
            this.f64171l = j3;
        } else {
            this.f64168i = extractorInput.getPosition() + i;
            this.f64170k = this.f64160a.f64648c;
        }
        long j5 = this.f64169j;
        long j6 = this.f64168i;
        if (j5 - j6 < 100000) {
            this.f64169j = j6;
            return j6;
        }
        long position2 = extractorInput.getPosition() - (i * (j4 <= 0 ? 2L : 1L));
        long j7 = this.f64169j;
        long j8 = this.f64168i;
        return Util.constrainValue(position2 + ((j4 * (j7 - j8)) / (this.f64171l - this.f64170k)), j8, j7 - 1);
    }

    @VisibleForTesting
    /* renamed from: i */
    public long m52921i(ExtractorInput extractorInput) throws IOException {
        this.f64160a.m53011b();
        if (!this.f64160a.m53012c(extractorInput)) {
            throw new EOFException();
        }
        this.f64160a.m53010a(extractorInput, false);
        afk afkVar = this.f64160a;
        extractorInput.skipFully(afkVar.f64653h + afkVar.f64654i);
        long j = this.f64160a.f64648c;
        while (true) {
            afk afkVar2 = this.f64160a;
            if ((afkVar2.f64647b & 4) == 4 || !afkVar2.m53012c(extractorInput) || extractorInput.getPosition() >= this.f64162c || !this.f64160a.m53010a(extractorInput, true)) {
                break;
            }
            afk afkVar3 = this.f64160a;
            if (!ExtractorUtil.skipFullyQuietly(extractorInput, afkVar3.f64653h + afkVar3.f64654i)) {
                break;
            }
            j = this.f64160a.f64648c;
        }
        return j;
    }

    /* renamed from: j */
    public final void m52922j(ExtractorInput extractorInput) throws IOException {
        while (true) {
            this.f64160a.m53012c(extractorInput);
            this.f64160a.m53010a(extractorInput, false);
            afk afkVar = this.f64160a;
            if (afkVar.f64648c > this.f64167h) {
                extractorInput.resetPeekPosition();
                return;
            } else {
                extractorInput.skipFully(afkVar.f64653h + afkVar.f64654i);
                this.f64168i = extractorInput.getPosition();
                this.f64170k = this.f64160a.f64648c;
            }
        }
    }

    @Override // com.sunia.HTREnginev2.bfk
    public long read(ExtractorInput extractorInput) throws IOException {
        int i = this.f64164e;
        if (i == 0) {
            long position = extractorInput.getPosition();
            this.f64166g = position;
            this.f64164e = 1;
            long j = this.f64162c - 65307;
            if (j > position) {
                return j;
            }
        } else if (i != 1) {
            if (i == 2) {
                long m52920h = m52920h(extractorInput);
                if (m52920h != -1) {
                    return m52920h;
                }
                this.f64164e = 3;
            } else if (i != 3) {
                if (i == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            m52922j(extractorInput);
            this.f64164e = 4;
            return -(this.f64170k + 2);
        }
        this.f64165f = m52921i(extractorInput);
        this.f64164e = 4;
        return this.f64166g;
    }
}
