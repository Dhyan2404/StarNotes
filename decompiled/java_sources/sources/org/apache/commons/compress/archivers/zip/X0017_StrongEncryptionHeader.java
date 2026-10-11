package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;
import java.util.zip.ZipException;
import org.apache.commons.compress.archivers.zip.PKWareExtraHeader;

/* loaded from: classes12.dex */
public class X0017_StrongEncryptionHeader extends PKWareExtraHeader {

    /* renamed from: h */
    public int f105859h;

    /* renamed from: i */
    public PKWareExtraHeader.EncryptionAlgorithm f105860i;

    /* renamed from: j */
    public int f105861j;

    /* renamed from: k */
    public int f105862k;

    /* renamed from: l */
    public long f105863l;

    /* renamed from: m */
    public PKWareExtraHeader.HashAlgorithm f105864m;

    /* renamed from: n */
    public int f105865n;

    /* renamed from: o */
    public byte[] f105866o;

    /* renamed from: p */
    public byte[] f105867p;

    /* renamed from: q */
    public byte[] f105868q;

    /* renamed from: r */
    public byte[] f105869r;

    /* renamed from: s */
    public byte[] f105870s;

    /* renamed from: t */
    public byte[] f105871t;

    public X0017_StrongEncryptionHeader() {
        super(new ZipShort(23));
    }

    /* renamed from: a */
    public final void m66426a(String str, int i, int i2, int i3) throws ZipException {
        if (i2 + i <= i3) {
            return;
        }
        throw new ZipException("Invalid X0017_StrongEncryptionHeader: " + str + " " + i + " doesn't fit into " + i3 + " bytes of data at position " + i2);
    }

    public PKWareExtraHeader.EncryptionAlgorithm getEncryptionAlgorithm() {
        return this.f105860i;
    }

    public PKWareExtraHeader.HashAlgorithm getHashAlgorithm() {
        return this.f105864m;
    }

    public long getRecordCount() {
        return this.f105863l;
    }

    public void parseCentralDirectoryFormat(byte[] bArr, int i, int i2) throws ZipException {
        assertMinimalLength(12, i2);
        this.f105859h = ZipShort.getValue(bArr, i);
        this.f105860i = PKWareExtraHeader.EncryptionAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i + 2));
        this.f105861j = ZipShort.getValue(bArr, i + 4);
        this.f105862k = ZipShort.getValue(bArr, i + 6);
        long value = ZipLong.getValue(bArr, i + 8);
        this.f105863l = value;
        if (value > 0) {
            assertMinimalLength(16, i2);
            this.f105864m = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i + 12));
            this.f105865n = ZipShort.getValue(bArr, i + 14);
        }
    }

    public void parseFileFormat(byte[] bArr, int i, int i2) throws ZipException {
        assertMinimalLength(4, i2);
        int value = ZipShort.getValue(bArr, i);
        m66426a("ivSize", value, 4, i2);
        int i3 = i + 4;
        assertMinimalLength(i3, value);
        this.f105866o = Arrays.copyOfRange(bArr, i3, value);
        int i4 = value + 16;
        assertMinimalLength(i4, i2);
        int i5 = i + value;
        this.f105859h = ZipShort.getValue(bArr, i5 + 6);
        this.f105860i = PKWareExtraHeader.EncryptionAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i5 + 8));
        this.f105861j = ZipShort.getValue(bArr, i5 + 10);
        this.f105862k = ZipShort.getValue(bArr, i5 + 12);
        int value2 = ZipShort.getValue(bArr, i5 + 14);
        m66426a("erdSize", value2, i4, i2);
        int i6 = i5 + 16;
        assertMinimalLength(i6, value2);
        this.f105867p = Arrays.copyOfRange(bArr, i6, value2);
        int i7 = value + 20 + value2;
        assertMinimalLength(i7, i2);
        long value3 = ZipLong.getValue(bArr, i6 + value2);
        this.f105863l = value3;
        if (value3 == 0) {
            assertMinimalLength(i7 + 2, i2);
            int value4 = ZipShort.getValue(bArr, i5 + 20 + value2);
            m66426a("vSize", value4, value + 22 + value2, i2);
            if (value4 < 4) {
                throw new ZipException("Invalid X0017_StrongEncryptionHeader: vSize " + value4 + " is too small to hold CRC");
            }
            int i8 = i5 + 22 + value2;
            int i9 = value4 - 4;
            assertMinimalLength(i8, i9);
            this.f105870s = Arrays.copyOfRange(bArr, i8, i9);
            int i10 = (i8 + value4) - 4;
            assertMinimalLength(i10, 4);
            this.f105871t = Arrays.copyOfRange(bArr, i10, 4);
            return;
        }
        assertMinimalLength(i7 + 6, i2);
        this.f105864m = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i5 + 20 + value2));
        int i11 = i5 + 22 + value2;
        this.f105865n = ZipShort.getValue(bArr, i11);
        int i12 = i5 + 24 + value2;
        int value5 = ZipShort.getValue(bArr, i12);
        int i13 = this.f105865n;
        if (value5 < i13) {
            throw new ZipException("Invalid X0017_StrongEncryptionHeader: resize " + value5 + " is too small to hold hashSize" + this.f105865n);
        }
        this.f105868q = new byte[i13];
        this.f105869r = new byte[value5 - i13];
        m66426a("resize", value5, value + 24 + value2, i2);
        System.arraycopy(bArr, i12, this.f105868q, 0, this.f105865n);
        int i14 = this.f105865n;
        System.arraycopy(bArr, i12 + i14, this.f105869r, 0, value5 - i14);
        assertMinimalLength(value + 26 + value2 + value5 + 2, i2);
        int value6 = ZipShort.getValue(bArr, i5 + 26 + value2 + value5);
        if (value6 < 4) {
            throw new ZipException("Invalid X0017_StrongEncryptionHeader: vSize " + value6 + " is too small to hold CRC");
        }
        m66426a("vSize", value6, value + 22 + value2 + value5, i2);
        int i15 = value6 - 4;
        byte[] bArr2 = new byte[i15];
        this.f105870s = bArr2;
        this.f105871t = new byte[4];
        int i16 = i11 + value5;
        System.arraycopy(bArr, i16, bArr2, 0, i15);
        System.arraycopy(bArr, (i16 + value6) - 4, this.f105871t, 0, 4);
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) throws ZipException {
        super.parseFromCentralDirectoryData(bArr, i, i2);
        parseCentralDirectoryFormat(bArr, i, i2);
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i, int i2) throws ZipException {
        super.parseFromLocalFileData(bArr, i, i2);
        parseFileFormat(bArr, i, i2);
    }
}
