package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.util.Assertions;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class arj {

    /* renamed from: a */
    public final int f65027a;

    /* renamed from: b */
    public boolean f65028b;

    /* renamed from: c */
    public boolean f65029c;

    /* renamed from: d */
    public byte[] f65030d;

    /* renamed from: e */
    public int f65031e;

    public arj(int i, int i2) {
        this.f65027a = i;
        byte[] bArr = new byte[i2 + 3];
        this.f65030d = bArr;
        bArr[2] = 1;
    }

    /* renamed from: a */
    public void m53091a(byte[] bArr, int i, int i2) {
        if (this.f65028b) {
            int i3 = i2 - i;
            byte[] bArr2 = this.f65030d;
            int length = bArr2.length;
            int i4 = this.f65031e;
            if (length < i4 + i3) {
                this.f65030d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f65030d, this.f65031e, i3);
            this.f65031e += i3;
        }
    }

    /* renamed from: b */
    public boolean m53092b(int i) {
        if (!this.f65028b) {
            return false;
        }
        this.f65031e -= i;
        this.f65028b = false;
        this.f65029c = true;
        return true;
    }

    /* renamed from: c */
    public boolean m53093c() {
        return this.f65029c;
    }

    /* renamed from: d */
    public void m53094d() {
        this.f65028b = false;
        this.f65029c = false;
    }

    /* renamed from: e */
    public void m53095e(int i) {
        Assertions.checkState(!this.f65028b);
        boolean z = i == this.f65027a;
        this.f65028b = z;
        if (z) {
            this.f65031e = 3;
            this.f65029c = false;
        }
    }
}
