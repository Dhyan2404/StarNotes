package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public abstract class e0n {

    /* renamed from: n */
    public static final int f68439n = 0;

    /* renamed from: o */
    public static final int f68440o = 1;

    /* renamed from: p */
    public static final int f68441p = 2;

    /* renamed from: q */
    public static final int f68442q = 3;

    /* renamed from: b */
    public TrackOutput f68444b;

    /* renamed from: c */
    public ExtractorOutput f68445c;

    /* renamed from: d */
    public bfk f68446d;

    /* renamed from: e */
    public long f68447e;

    /* renamed from: f */
    public long f68448f;

    /* renamed from: g */
    public long f68449g;

    /* renamed from: h */
    public int f68450h;

    /* renamed from: i */
    public int f68451i;

    /* renamed from: k */
    public long f68453k;

    /* renamed from: l */
    public boolean f68454l;

    /* renamed from: m */
    public boolean f68455m;

    /* renamed from: a */
    public final zek f68443a = new zek();

    /* renamed from: j */
    public C13650b f68452j = new C13650b();

    /* renamed from: com.sunia.HTREnginev2.e0n$b */
    /* loaded from: classes5.dex */
    public static class C13650b {

        /* renamed from: a */
        public Format f68456a;

        /* renamed from: b */
        public bfk f68457b;
    }

    /* renamed from: com.sunia.HTREnginev2.e0n$c */
    /* loaded from: classes5.dex */
    public static final class C13651c implements bfk {
        public C13651c() {
        }

        @Override // com.sunia.HTREnginev2.bfk
        /* renamed from: a */
        public SeekMap mo52917a() {
            return new SeekMap.Unseekable(C4649C.TIME_UNSET);
        }

        @Override // com.sunia.HTREnginev2.bfk
        /* renamed from: b */
        public void mo52918b(long j) {
        }

        @Override // com.sunia.HTREnginev2.bfk
        public long read(ExtractorInput extractorInput) {
            return -1L;
        }
    }

    @EnsuresNonNull({"trackOutput", "extractorOutput"})
    /* renamed from: a */
    public final void m53886a() {
        Assertions.checkStateNotNull(this.f68444b);
        Util.castNonNull(this.f68445c);
    }

    /* renamed from: b */
    public long m53887b(long j) {
        return (j * 1000000) / this.f68451i;
    }

    /* renamed from: c */
    public long m53888c(long j) {
        return (this.f68451i * j) / 1000000;
    }

    /* renamed from: d */
    public void m53889d(ExtractorOutput extractorOutput, TrackOutput trackOutput) {
        this.f68445c = extractorOutput;
        this.f68444b = trackOutput;
        mo53897l(true);
    }

    /* renamed from: e */
    public void mo53890e(long j) {
        this.f68449g = j;
    }

    /* renamed from: f */
    public abstract long mo53891f(ParsableByteArray parsableByteArray);

    /* renamed from: g */
    public final int m53892g(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        m53886a();
        int i = this.f68450h;
        if (i == 0) {
            return m53895j(extractorInput);
        }
        if (i == 1) {
            extractorInput.skipFully((int) this.f68448f);
            this.f68450h = 2;
            return 0;
        }
        if (i == 2) {
            Util.castNonNull(this.f68446d);
            return m53896k(extractorInput, positionHolder);
        }
        if (i == 3) {
            return -1;
        }
        throw new IllegalStateException();
    }

    @EnsuresNonNullIf(expression = {"setupData.format"}, result = true)
    /* renamed from: h */
    public final boolean m53893h(ExtractorInput extractorInput) throws IOException {
        while (this.f68443a.m58670d(extractorInput)) {
            this.f68453k = extractorInput.getPosition() - this.f68448f;
            if (!mo53894i(this.f68443a.m58669c(), this.f68448f, this.f68452j)) {
                return true;
            }
            this.f68448f = extractorInput.getPosition();
        }
        this.f68450h = 3;
        return false;
    }

    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /* renamed from: i */
    public abstract boolean mo53894i(ParsableByteArray parsableByteArray, long j, C13650b c13650b) throws IOException;

    @RequiresNonNull({"trackOutput"})
    /* renamed from: j */
    public final int m53895j(ExtractorInput extractorInput) throws IOException {
        if (!m53893h(extractorInput)) {
            return -1;
        }
        Format format = this.f68452j.f68456a;
        this.f68451i = format.sampleRate;
        if (!this.f68455m) {
            this.f68444b.format(format);
            this.f68455m = true;
        }
        bfk bfkVar = this.f68452j.f68457b;
        if (bfkVar != null) {
            this.f68446d = bfkVar;
        } else if (extractorInput.getLength() == -1) {
            this.f68446d = new C13651c();
        } else {
            afk m58668b = this.f68443a.m58668b();
            this.f68446d = new a0f(this, this.f68448f, extractorInput.getLength(), m58668b.f64653h + m58668b.f64654i, m58668b.f64648c, (m58668b.f64647b & 4) != 0);
        }
        this.f68450h = 2;
        this.f68443a.m58672f();
        return 0;
    }

    @RequiresNonNull({"trackOutput", "oggSeeker", "extractorOutput"})
    /* renamed from: k */
    public final int m53896k(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        long read = this.f68446d.read(extractorInput);
        if (read >= 0) {
            positionHolder.position = read;
            return 1;
        }
        if (read < -1) {
            mo53890e(-(read + 2));
        }
        if (!this.f68454l) {
            this.f68445c.seekMap((SeekMap) Assertions.checkStateNotNull(this.f68446d.mo52917a()));
            this.f68454l = true;
        }
        if (this.f68453k <= 0 && !this.f68443a.m58670d(extractorInput)) {
            this.f68450h = 3;
            return -1;
        }
        this.f68453k = 0L;
        ParsableByteArray m58669c = this.f68443a.m58669c();
        long mo53891f = mo53891f(m58669c);
        if (mo53891f >= 0) {
            long j = this.f68449g;
            if (j + mo53891f >= this.f68447e) {
                long m53887b = m53887b(j);
                this.f68444b.sampleData(m58669c, m58669c.limit());
                this.f68444b.sampleMetadata(m53887b, 1, m58669c.limit(), 0, null);
                this.f68447e = -1L;
            }
        }
        this.f68449g += mo53891f;
        return 0;
    }

    /* renamed from: l */
    public void mo53897l(boolean z) {
        if (z) {
            this.f68452j = new C13650b();
            this.f68448f = 0L;
            this.f68450h = 0;
        } else {
            this.f68450h = 1;
        }
        this.f68447e = -1L;
        this.f68449g = 0L;
    }

    /* renamed from: m */
    public final void m53898m(long j, long j2) {
        this.f68443a.m58671e();
        if (j == 0) {
            mo53897l(!this.f68454l);
        } else if (this.f68450h != 0) {
            this.f68447e = m53888c(j2);
            ((bfk) Util.castNonNull(this.f68446d)).mo52918b(this.f68447e);
            this.f68450h = 2;
        }
    }
}
