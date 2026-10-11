package org.apache.commons.codec.digest;

import java.util.zip.Checksum;

/* loaded from: classes9.dex */
public class XXHash32 implements Checksum {

    /* renamed from: h */
    public static final int f104709h = 16;

    /* renamed from: i */
    public static final int f104710i = 13;

    /* renamed from: j */
    public static final int f104711j = -1640531535;

    /* renamed from: k */
    public static final int f104712k = -2048144777;

    /* renamed from: l */
    public static final int f104713l = -1028477379;

    /* renamed from: m */
    public static final int f104714m = 668265263;

    /* renamed from: n */
    public static final int f104715n = 374761393;

    /* renamed from: a */
    public final byte[] f104716a;

    /* renamed from: b */
    public final int[] f104717b;

    /* renamed from: c */
    public final byte[] f104718c;

    /* renamed from: d */
    public final int f104719d;

    /* renamed from: e */
    public int f104720e;

    /* renamed from: f */
    public int f104721f;

    /* renamed from: g */
    public boolean f104722g;

    public XXHash32() {
        this(0);
    }

    /* renamed from: a */
    public static int m65753a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: b */
    public final void m65754b() {
        int[] iArr = this.f104717b;
        int i = this.f104719d;
        iArr[0] = (i - 1640531535) - 2048144777;
        iArr[1] = (-2048144777) + i;
        iArr[2] = i;
        iArr[3] = i - (-1640531535);
    }

    /* renamed from: c */
    public final void m65755c(byte[] bArr, int i) {
        int[] iArr = this.f104717b;
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int rotateLeft = Integer.rotateLeft(i2 + (m65753a(bArr, i) * (-2048144777)), 13) * (-1640531535);
        int rotateLeft2 = Integer.rotateLeft(i3 + (m65753a(bArr, i + 4) * (-2048144777)), 13) * (-1640531535);
        int rotateLeft3 = Integer.rotateLeft(i4 + (m65753a(bArr, i + 8) * (-2048144777)), 13) * (-1640531535);
        int rotateLeft4 = Integer.rotateLeft(i5 + (m65753a(bArr, i + 12) * (-2048144777)), 13) * (-1640531535);
        int[] iArr2 = this.f104717b;
        iArr2[0] = rotateLeft;
        iArr2[1] = rotateLeft2;
        iArr2[2] = rotateLeft3;
        iArr2[3] = rotateLeft4;
        this.f104722g = true;
    }

    @Override // java.util.zip.Checksum
    public long getValue() {
        int i = 0;
        int rotateLeft = (this.f104722g ? Integer.rotateLeft(this.f104717b[0], 1) + Integer.rotateLeft(this.f104717b[1], 7) + Integer.rotateLeft(this.f104717b[2], 12) + Integer.rotateLeft(this.f104717b[3], 18) : this.f104717b[2] + 374761393) + this.f104720e;
        int i2 = this.f104721f - 4;
        while (i <= i2) {
            rotateLeft = Integer.rotateLeft(rotateLeft + (m65753a(this.f104718c, i) * (-1028477379)), 17) * 668265263;
            i += 4;
        }
        while (i < this.f104721f) {
            rotateLeft = Integer.rotateLeft(rotateLeft + ((this.f104718c[i] & 255) * 374761393), 11) * (-1640531535);
            i++;
        }
        int i3 = ((rotateLeft >>> 15) ^ rotateLeft) * (-2048144777);
        int i4 = (i3 ^ (i3 >>> 13)) * (-1028477379);
        return (i4 ^ (i4 >>> 16)) & 4294967295L;
    }

    @Override // java.util.zip.Checksum
    public void reset() {
        m65754b();
        this.f104720e = 0;
        this.f104721f = 0;
        this.f104722g = false;
    }

    @Override // java.util.zip.Checksum
    public void update(int i) {
        byte[] bArr = this.f104716a;
        bArr[0] = (byte) (i & 255);
        update(bArr, 0, 1);
    }

    public XXHash32(int i) {
        this.f104716a = new byte[1];
        this.f104717b = new int[4];
        this.f104718c = new byte[16];
        this.f104719d = i;
        m65754b();
    }

    @Override // java.util.zip.Checksum
    public void update(byte[] bArr, int i, int i2) {
        if (i2 <= 0) {
            return;
        }
        this.f104720e += i2;
        int i3 = i + i2;
        int i4 = this.f104721f;
        if ((i4 + i2) - 16 < 0) {
            System.arraycopy(bArr, i, this.f104718c, i4, i2);
            this.f104721f += i2;
            return;
        }
        if (i4 > 0) {
            int i5 = 16 - i4;
            System.arraycopy(bArr, i, this.f104718c, i4, i5);
            m65755c(this.f104718c, 0);
            i += i5;
        }
        int i6 = i3 - 16;
        while (i <= i6) {
            m65755c(bArr, i);
            i += 16;
        }
        if (i < i3) {
            int i7 = i3 - i;
            this.f104721f = i7;
            System.arraycopy(bArr, i, this.f104718c, 0, i7);
            return;
        }
        this.f104721f = 0;
    }
}
