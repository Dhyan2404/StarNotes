package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class zek {

    /* renamed from: a */
    public final afk f91670a = new afk();

    /* renamed from: b */
    public final ParsableByteArray f91671b = new ParsableByteArray(new byte[afk.f64642n], 0);

    /* renamed from: c */
    public int f91672c = -1;

    /* renamed from: d */
    public int f91673d;

    /* renamed from: e */
    public boolean f91674e;

    /* renamed from: a */
    public final int m58667a(int i) {
        int i2;
        int i3 = 0;
        this.f91673d = 0;
        do {
            int i4 = this.f91673d;
            int i5 = i + i4;
            afk afkVar = this.f91670a;
            if (i5 >= afkVar.f64652g) {
                break;
            }
            int[] iArr = afkVar.f64655j;
            this.f91673d = i4 + 1;
            i2 = iArr[i4 + i];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }

    /* renamed from: b */
    public afk m58668b() {
        return this.f91670a;
    }

    /* renamed from: c */
    public ParsableByteArray m58669c() {
        return this.f91671b;
    }

    /* renamed from: d */
    public boolean m58670d(ExtractorInput extractorInput) throws IOException {
        int i;
        Assertions.checkState(extractorInput != null);
        if (this.f91674e) {
            this.f91674e = false;
            this.f91671b.reset(0);
        }
        while (!this.f91674e) {
            if (this.f91672c < 0) {
                if (!this.f91670a.m53012c(extractorInput) || !this.f91670a.m53010a(extractorInput, true)) {
                    return false;
                }
                afk afkVar = this.f91670a;
                int i2 = afkVar.f64653h;
                if ((afkVar.f64647b & 1) == 1 && this.f91671b.limit() == 0) {
                    i2 += m58667a(0);
                    i = this.f91673d + 0;
                } else {
                    i = 0;
                }
                if (!ExtractorUtil.skipFullyQuietly(extractorInput, i2)) {
                    return false;
                }
                this.f91672c = i;
            }
            int m58667a = m58667a(this.f91672c);
            int i3 = this.f91672c + this.f91673d;
            if (m58667a > 0) {
                ParsableByteArray parsableByteArray = this.f91671b;
                parsableByteArray.ensureCapacity(parsableByteArray.limit() + m58667a);
                if (!ExtractorUtil.readFullyQuietly(extractorInput, this.f91671b.getData(), this.f91671b.limit(), m58667a)) {
                    return false;
                }
                ParsableByteArray parsableByteArray2 = this.f91671b;
                parsableByteArray2.setLimit(parsableByteArray2.limit() + m58667a);
                this.f91674e = this.f91670a.f64655j[i3 + (-1)] != 255;
            }
            if (i3 == this.f91670a.f64652g) {
                i3 = -1;
            }
            this.f91672c = i3;
        }
        return true;
    }

    /* renamed from: e */
    public void m58671e() {
        this.f91670a.m53011b();
        this.f91671b.reset(0);
        this.f91672c = -1;
        this.f91674e = false;
    }

    /* renamed from: f */
    public void m58672f() {
        if (this.f91671b.getData().length == 65025) {
            return;
        }
        ParsableByteArray parsableByteArray = this.f91671b;
        parsableByteArray.reset(Arrays.copyOf(parsableByteArray.getData(), Math.max(afk.f64642n, this.f91671b.limit())), this.f91671b.limit());
    }
}
