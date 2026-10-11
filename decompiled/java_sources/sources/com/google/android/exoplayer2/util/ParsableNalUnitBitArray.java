package com.google.android.exoplayer2.util;

/* loaded from: classes5.dex */
public final class ParsableNalUnitBitArray {

    /* renamed from: a */
    public byte[] f28418a;

    /* renamed from: b */
    public int f28419b;

    /* renamed from: c */
    public int f28420c;

    /* renamed from: d */
    public int f28421d;

    public ParsableNalUnitBitArray(byte[] bArr, int i, int i2) {
        reset(bArr, i, i2);
    }

    /* renamed from: a */
    public final void m21517a() {
        int i;
        int i2 = this.f28420c;
        Assertions.checkState(i2 >= 0 && (i2 < (i = this.f28419b) || (i2 == i && this.f28421d == 0)));
    }

    /* renamed from: b */
    public final int m21518b() {
        int i = 0;
        while (!readBit()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? readBits(i) : 0);
    }

    /* renamed from: c */
    public final boolean m21519c(int i) {
        if (2 <= i && i < this.f28419b) {
            byte[] bArr = this.f28418a;
            if (bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean canReadBits(int i) {
        int i2 = this.f28420c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.f28421d + i) - (i3 * 8);
        if (i5 > 7) {
            i4++;
            i5 -= 8;
        }
        while (true) {
            i2++;
            if (i2 > i4 || i4 >= this.f28419b) {
                break;
            }
            if (m21519c(i2)) {
                i4++;
                i2 += 2;
            }
        }
        int i6 = this.f28419b;
        if (i4 >= i6) {
            return i4 == i6 && i5 == 0;
        }
        return true;
    }

    public boolean canReadExpGolombCodedNum() {
        int i = this.f28420c;
        int i2 = this.f28421d;
        int i3 = 0;
        while (this.f28420c < this.f28419b && !readBit()) {
            i3++;
        }
        boolean z = this.f28420c == this.f28419b;
        this.f28420c = i;
        this.f28421d = i2;
        return !z && canReadBits((i3 * 2) + 1);
    }

    public boolean readBit() {
        boolean z = (this.f28418a[this.f28420c] & (128 >> this.f28421d)) != 0;
        skipBit();
        return z;
    }

    public int readBits(int i) {
        int i2;
        this.f28421d += i;
        int i3 = 0;
        while (true) {
            i2 = this.f28421d;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.f28421d = i4;
            byte[] bArr = this.f28418a;
            int i5 = this.f28420c;
            i3 |= (bArr[i5] & 255) << i4;
            if (!m21519c(i5 + 1)) {
                r3 = 1;
            }
            this.f28420c = i5 + r3;
        }
        byte[] bArr2 = this.f28418a;
        int i6 = this.f28420c;
        int i7 = ((-1) >>> (32 - i)) & (i3 | ((bArr2[i6] & 255) >> (8 - i2)));
        if (i2 == 8) {
            this.f28421d = 0;
            this.f28420c = i6 + (m21519c(i6 + 1) ? 2 : 1);
        }
        m21517a();
        return i7;
    }

    public int readSignedExpGolombCodedInt() {
        int m21518b = m21518b();
        return (m21518b % 2 == 0 ? -1 : 1) * ((m21518b + 1) / 2);
    }

    public int readUnsignedExpGolombCodedInt() {
        return m21518b();
    }

    public void reset(byte[] bArr, int i, int i2) {
        this.f28418a = bArr;
        this.f28420c = i;
        this.f28419b = i2;
        this.f28421d = 0;
        m21517a();
    }

    public void skipBit() {
        int i = this.f28421d + 1;
        this.f28421d = i;
        if (i == 8) {
            this.f28421d = 0;
            int i2 = this.f28420c;
            this.f28420c = i2 + (m21519c(i2 + 1) ? 2 : 1);
        }
        m21517a();
    }

    public void skipBits(int i) {
        int i2 = this.f28420c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f28420c = i4;
        int i5 = this.f28421d + (i - (i3 * 8));
        this.f28421d = i5;
        if (i5 > 7) {
            this.f28420c = i4 + 1;
            this.f28421d = i5 - 8;
        }
        while (true) {
            i2++;
            if (i2 > this.f28420c) {
                m21517a();
                return;
            } else if (m21519c(i2)) {
                this.f28420c++;
                i2 += 2;
            }
        }
    }
}
