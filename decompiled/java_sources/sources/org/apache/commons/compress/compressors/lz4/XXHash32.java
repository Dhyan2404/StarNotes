package org.apache.commons.compress.compressors.lz4;

import java.util.zip.Checksum;
import org.apache.commons.compress.utils.ByteUtils;

/* loaded from: classes12.dex */
public class XXHash32 implements Checksum {

    /* renamed from: g */
    public static final int f106234g = 16;

    /* renamed from: h */
    public static final int f106235h = 13;

    /* renamed from: i */
    public static final int f106236i = -1640531535;

    /* renamed from: j */
    public static final int f106237j = -2048144777;

    /* renamed from: k */
    public static final int f106238k = -1028477379;

    /* renamed from: l */
    public static final int f106239l = 668265263;

    /* renamed from: m */
    public static final int f106240m = 374761393;

    /* renamed from: a */
    public final byte[] f106241a;

    /* renamed from: b */
    public final int[] f106242b;

    /* renamed from: c */
    public final byte[] f106243c;

    /* renamed from: d */
    public final int f106244d;

    /* renamed from: e */
    public int f106245e;

    /* renamed from: f */
    public int f106246f;

    public XXHash32() {
        this(0);
    }

    /* renamed from: a */
    public static int m66769a(byte[] bArr, int i) {
        return (int) (ByteUtils.fromLittleEndian(bArr, i, 4) & 4294967295L);
    }

    /* renamed from: b */
    public final void m66770b() {
        int[] iArr = this.f106242b;
        int i = this.f106244d;
        iArr[0] = (i - 1640531535) - 2048144777;
        iArr[1] = (-2048144777) + i;
        iArr[2] = i;
        iArr[3] = i - (-1640531535);
    }

    /* renamed from: c */
    public final void m66771c(byte[] bArr, int i) {
        int[] iArr = this.f106242b;
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int rotateLeft = Integer.rotateLeft(i2 + (m66769a(bArr, i) * (-2048144777)), 13) * (-1640531535);
        int rotateLeft2 = Integer.rotateLeft(i3 + (m66769a(bArr, i + 4) * (-2048144777)), 13) * (-1640531535);
        int rotateLeft3 = Integer.rotateLeft(i4 + (m66769a(bArr, i + 8) * (-2048144777)), 13) * (-1640531535);
        int rotateLeft4 = Integer.rotateLeft(i5 + (m66769a(bArr, i + 12) * (-2048144777)), 13) * (-1640531535);
        int[] iArr2 = this.f106242b;
        iArr2[0] = rotateLeft;
        iArr2[1] = rotateLeft2;
        iArr2[2] = rotateLeft3;
        iArr2[3] = rotateLeft4;
        this.f106246f = 0;
    }

    @Override // java.util.zip.Checksum
    public long getValue() {
        int i = 0;
        int rotateLeft = (this.f106245e > 16 ? Integer.rotateLeft(this.f106242b[0], 1) + Integer.rotateLeft(this.f106242b[1], 7) + Integer.rotateLeft(this.f106242b[2], 12) + Integer.rotateLeft(this.f106242b[3], 18) : this.f106242b[2] + 374761393) + this.f106245e;
        int i2 = this.f106246f - 4;
        while (i <= i2) {
            rotateLeft = Integer.rotateLeft(rotateLeft + (m66769a(this.f106243c, i) * (-1028477379)), 17) * 668265263;
            i += 4;
        }
        while (i < this.f106246f) {
            rotateLeft = Integer.rotateLeft(rotateLeft + ((this.f106243c[i] & 255) * 374761393), 11) * (-1640531535);
            i++;
        }
        int i3 = ((rotateLeft >>> 15) ^ rotateLeft) * (-2048144777);
        int i4 = (i3 ^ (i3 >>> 13)) * (-1028477379);
        return (i4 ^ (i4 >>> 16)) & 4294967295L;
    }

    @Override // java.util.zip.Checksum
    public void reset() {
        m66770b();
        this.f106245e = 0;
        this.f106246f = 0;
    }

    @Override // java.util.zip.Checksum
    public void update(int i) {
        byte[] bArr = this.f106241a;
        bArr[0] = (byte) (i & 255);
        update(bArr, 0, 1);
    }

    public XXHash32(int i) {
        this.f106241a = new byte[1];
        this.f106242b = new int[4];
        this.f106243c = new byte[16];
        this.f106244d = i;
        m66770b();
    }

    @Override // java.util.zip.Checksum
    public void update(byte[] bArr, int i, int i2) {
        if (i2 <= 0) {
            return;
        }
        this.f106245e += i2;
        int i3 = i + i2;
        int i4 = this.f106246f;
        if (i4 + i2 < 16) {
            System.arraycopy(bArr, i, this.f106243c, i4, i2);
            this.f106246f += i2;
            return;
        }
        if (i4 > 0) {
            int i5 = 16 - i4;
            System.arraycopy(bArr, i, this.f106243c, i4, i5);
            m66771c(this.f106243c, 0);
            i += i5;
        }
        int i6 = i3 - 16;
        while (i <= i6) {
            m66771c(bArr, i);
            i += 16;
        }
        if (i < i3) {
            int i7 = i3 - i;
            this.f106246f = i7;
            System.arraycopy(bArr, i, this.f106243c, 0, i7);
        }
    }
}
