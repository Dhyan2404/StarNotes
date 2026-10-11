package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;
import org.apache.commons.compress.utils.ByteUtils;

/* loaded from: classes12.dex */
public class Zip64ExtendedInformationExtraField implements ZipExtraField {

    /* renamed from: j */
    public static final ZipShort f105872j = new ZipShort(1);

    /* renamed from: k */
    public static final String f105873k = "Zip64 extended information must contain both size values in the local file header.";

    /* renamed from: e */
    public ZipEightByteInteger f105874e;

    /* renamed from: f */
    public ZipEightByteInteger f105875f;

    /* renamed from: g */
    public ZipEightByteInteger f105876g;

    /* renamed from: h */
    public ZipLong f105877h;

    /* renamed from: i */
    public byte[] f105878i;

    public Zip64ExtendedInformationExtraField() {
    }

    /* renamed from: a */
    public final int m66427a(byte[] bArr) {
        int i;
        ZipEightByteInteger zipEightByteInteger = this.f105874e;
        if (zipEightByteInteger != null) {
            System.arraycopy(zipEightByteInteger.getBytes(), 0, bArr, 0, 8);
            i = 8;
        } else {
            i = 0;
        }
        ZipEightByteInteger zipEightByteInteger2 = this.f105875f;
        if (zipEightByteInteger2 == null) {
            return i;
        }
        System.arraycopy(zipEightByteInteger2.getBytes(), 0, bArr, i, 8);
        return i + 8;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        byte[] bArr = new byte[getCentralDirectoryLength().getValue()];
        int m66427a = m66427a(bArr);
        ZipEightByteInteger zipEightByteInteger = this.f105876g;
        if (zipEightByteInteger != null) {
            System.arraycopy(zipEightByteInteger.getBytes(), 0, bArr, m66427a, 8);
            m66427a += 8;
        }
        ZipLong zipLong = this.f105877h;
        if (zipLong != null) {
            System.arraycopy(zipLong.getBytes(), 0, bArr, m66427a, 4);
        }
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        return new ZipShort((this.f105874e != null ? 8 : 0) + (this.f105875f != null ? 8 : 0) + (this.f105876g == null ? 0 : 8) + (this.f105877h != null ? 4 : 0));
    }

    public ZipEightByteInteger getCompressedSize() {
        return this.f105875f;
    }

    public ZipLong getDiskStartNumber() {
        return this.f105877h;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return f105872j;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        ZipEightByteInteger zipEightByteInteger = this.f105874e;
        if (zipEightByteInteger == null && this.f105875f == null) {
            return ByteUtils.EMPTY_BYTE_ARRAY;
        }
        if (zipEightByteInteger == null || this.f105875f == null) {
            throw new IllegalArgumentException(f105873k);
        }
        byte[] bArr = new byte[16];
        m66427a(bArr);
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        return new ZipShort(this.f105874e != null ? 16 : 0);
    }

    public ZipEightByteInteger getRelativeHeaderOffset() {
        return this.f105876g;
    }

    public ZipEightByteInteger getSize() {
        return this.f105874e;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) throws ZipException {
        byte[] bArr2 = new byte[i2];
        this.f105878i = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        if (i2 >= 28) {
            parseFromLocalFileData(bArr, i, i2);
            return;
        }
        if (i2 != 24) {
            if (i2 % 8 == 4) {
                this.f105877h = new ZipLong(bArr, (i + i2) - 4);
            }
        } else {
            this.f105874e = new ZipEightByteInteger(bArr, i);
            int i3 = i + 8;
            this.f105875f = new ZipEightByteInteger(bArr, i3);
            this.f105876g = new ZipEightByteInteger(bArr, i3 + 8);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i, int i2) throws ZipException {
        if (i2 == 0) {
            return;
        }
        if (i2 < 16) {
            throw new ZipException(f105873k);
        }
        this.f105874e = new ZipEightByteInteger(bArr, i);
        int i3 = i + 8;
        this.f105875f = new ZipEightByteInteger(bArr, i3);
        int i4 = i3 + 8;
        int i5 = i2 - 16;
        if (i5 >= 8) {
            this.f105876g = new ZipEightByteInteger(bArr, i4);
            i4 += 8;
            i5 -= 8;
        }
        if (i5 >= 4) {
            this.f105877h = new ZipLong(bArr, i4);
        }
    }

    public void reparseCentralDirectoryData(boolean z, boolean z2, boolean z3, boolean z4) throws ZipException {
        byte[] bArr = this.f105878i;
        if (bArr != null) {
            int i = 0;
            int i2 = (z ? 8 : 0) + (z2 ? 8 : 0) + (z3 ? 8 : 0) + (z4 ? 4 : 0);
            if (bArr.length < i2) {
                throw new ZipException("Central directory zip64 extended information extra field's length doesn't match central directory data.  Expected length " + i2 + " but is " + this.f105878i.length);
            }
            if (z) {
                this.f105874e = new ZipEightByteInteger(this.f105878i, 0);
                i = 8;
            }
            if (z2) {
                this.f105875f = new ZipEightByteInteger(this.f105878i, i);
                i += 8;
            }
            if (z3) {
                this.f105876g = new ZipEightByteInteger(this.f105878i, i);
                i += 8;
            }
            if (z4) {
                this.f105877h = new ZipLong(this.f105878i, i);
            }
        }
    }

    public void setCompressedSize(ZipEightByteInteger zipEightByteInteger) {
        this.f105875f = zipEightByteInteger;
    }

    public void setDiskStartNumber(ZipLong zipLong) {
        this.f105877h = zipLong;
    }

    public void setRelativeHeaderOffset(ZipEightByteInteger zipEightByteInteger) {
        this.f105876g = zipEightByteInteger;
    }

    public void setSize(ZipEightByteInteger zipEightByteInteger) {
        this.f105874e = zipEightByteInteger;
    }

    public Zip64ExtendedInformationExtraField(ZipEightByteInteger zipEightByteInteger, ZipEightByteInteger zipEightByteInteger2) {
        this(zipEightByteInteger, zipEightByteInteger2, null, null);
    }

    public Zip64ExtendedInformationExtraField(ZipEightByteInteger zipEightByteInteger, ZipEightByteInteger zipEightByteInteger2, ZipEightByteInteger zipEightByteInteger3, ZipLong zipLong) {
        this.f105874e = zipEightByteInteger;
        this.f105875f = zipEightByteInteger2;
        this.f105876g = zipEightByteInteger3;
        this.f105877h = zipLong;
    }
}
