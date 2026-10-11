package org.apache.commons.compress.archivers.zip;

/* loaded from: classes12.dex */
public final class GeneralPurposeBit implements Cloneable {
    public static final int UFT8_NAMES_FLAG = 2048;

    /* renamed from: k */
    public static final int f105783k = 1;

    /* renamed from: l */
    public static final int f105784l = 2;

    /* renamed from: m */
    public static final int f105785m = 4;

    /* renamed from: n */
    public static final int f105786n = 8;

    /* renamed from: o */
    public static final int f105787o = 64;

    /* renamed from: e */
    public boolean f105788e;

    /* renamed from: f */
    public boolean f105789f;

    /* renamed from: g */
    public boolean f105790g;

    /* renamed from: h */
    public boolean f105791h;

    /* renamed from: i */
    public int f105792i;

    /* renamed from: j */
    public int f105793j;

    public static GeneralPurposeBit parse(byte[] bArr, int i) {
        int value = ZipShort.getValue(bArr, i);
        GeneralPurposeBit generalPurposeBit = new GeneralPurposeBit();
        generalPurposeBit.useDataDescriptor((value & 8) != 0);
        generalPurposeBit.useUTF8ForNames((value & 2048) != 0);
        generalPurposeBit.useStrongEncryption((value & 64) != 0);
        generalPurposeBit.useEncryption((value & 1) != 0);
        generalPurposeBit.f105792i = (value & 2) != 0 ? 8192 : 4096;
        generalPurposeBit.f105793j = (value & 4) != 0 ? 3 : 2;
        return generalPurposeBit;
    }

    /* renamed from: a */
    public int m66396a() {
        return this.f105793j;
    }

    /* renamed from: b */
    public int m66397b() {
        return this.f105792i;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException("GeneralPurposeBit is not Cloneable?", e);
        }
    }

    public byte[] encode() {
        byte[] bArr = new byte[2];
        encode(bArr, 0);
        return bArr;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GeneralPurposeBit)) {
            return false;
        }
        GeneralPurposeBit generalPurposeBit = (GeneralPurposeBit) obj;
        return generalPurposeBit.f105790g == this.f105790g && generalPurposeBit.f105791h == this.f105791h && generalPurposeBit.f105788e == this.f105788e && generalPurposeBit.f105789f == this.f105789f;
    }

    public int hashCode() {
        return (((((((this.f105790g ? 1 : 0) * 17) + (this.f105791h ? 1 : 0)) * 13) + (this.f105788e ? 1 : 0)) * 7) + (this.f105789f ? 1 : 0)) * 3;
    }

    public void useDataDescriptor(boolean z) {
        this.f105789f = z;
    }

    public void useEncryption(boolean z) {
        this.f105790g = z;
    }

    public void useStrongEncryption(boolean z) {
        this.f105791h = z;
        if (z) {
            useEncryption(true);
        }
    }

    public void useUTF8ForNames(boolean z) {
        this.f105788e = z;
    }

    public boolean usesDataDescriptor() {
        return this.f105789f;
    }

    public boolean usesEncryption() {
        return this.f105790g;
    }

    public boolean usesStrongEncryption() {
        return this.f105790g && this.f105791h;
    }

    public boolean usesUTF8ForNames() {
        return this.f105788e;
    }

    public void encode(byte[] bArr, int i) {
        ZipShort.putShort((this.f105789f ? 8 : 0) | (this.f105788e ? 2048 : 0) | (this.f105790g ? 1 : 0) | (this.f105791h ? 64 : 0), bArr, i);
    }
}
