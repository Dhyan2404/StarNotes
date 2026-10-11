package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class vkn {

    /* renamed from: a */
    public f0f f87632a;

    /* renamed from: b */
    public long f87633b;

    /* renamed from: c */
    public long f87634c;

    /* renamed from: d */
    public long f87635d;

    /* renamed from: e */
    public int f87636e;

    /* renamed from: f */
    public int f87637f;

    /* renamed from: l */
    public boolean f87643l;

    /* renamed from: n */
    @Nullable
    public TrackEncryptionBox f87645n;

    /* renamed from: p */
    public boolean f87647p;

    /* renamed from: q */
    public long f87648q;

    /* renamed from: r */
    public boolean f87649r;

    /* renamed from: g */
    public long[] f87638g = new long[0];

    /* renamed from: h */
    public int[] f87639h = new int[0];

    /* renamed from: i */
    public int[] f87640i = new int[0];

    /* renamed from: j */
    public long[] f87641j = new long[0];

    /* renamed from: k */
    public boolean[] f87642k = new boolean[0];

    /* renamed from: m */
    public boolean[] f87644m = new boolean[0];

    /* renamed from: o */
    public final ParsableByteArray f87646o = new ParsableByteArray();

    /* renamed from: a */
    public void m57838a(ExtractorInput extractorInput) throws IOException {
        extractorInput.readFully(this.f87646o.getData(), 0, this.f87646o.limit());
        this.f87646o.setPosition(0);
        this.f87647p = false;
    }

    /* renamed from: b */
    public void m57839b(ParsableByteArray parsableByteArray) {
        parsableByteArray.readBytes(this.f87646o.getData(), 0, this.f87646o.limit());
        this.f87646o.setPosition(0);
        this.f87647p = false;
    }

    /* renamed from: c */
    public long m57840c(int i) {
        return this.f87641j[i];
    }

    /* renamed from: d */
    public void m57841d(int i) {
        this.f87646o.reset(i);
        this.f87643l = true;
        this.f87647p = true;
    }

    /* renamed from: e */
    public void m57842e(int i, int i2) {
        this.f87636e = i;
        this.f87637f = i2;
        if (this.f87639h.length < i) {
            this.f87638g = new long[i];
            this.f87639h = new int[i];
        }
        if (this.f87640i.length < i2) {
            int i3 = (i2 * 125) / 100;
            this.f87640i = new int[i3];
            this.f87641j = new long[i3];
            this.f87642k = new boolean[i3];
            this.f87644m = new boolean[i3];
        }
    }

    /* renamed from: f */
    public void m57843f() {
        this.f87636e = 0;
        this.f87648q = 0L;
        this.f87649r = false;
        this.f87643l = false;
        this.f87647p = false;
        this.f87645n = null;
    }

    /* renamed from: g */
    public boolean m57844g(int i) {
        return this.f87643l && this.f87644m[i];
    }
}
