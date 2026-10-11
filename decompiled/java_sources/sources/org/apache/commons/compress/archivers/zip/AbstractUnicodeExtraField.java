package org.apache.commons.compress.archivers.zip;

import java.nio.charset.StandardCharsets;
import java.util.zip.CRC32;
import java.util.zip.ZipException;

/* loaded from: classes12.dex */
public abstract class AbstractUnicodeExtraField implements ZipExtraField {

    /* renamed from: e */
    public long f105767e;

    /* renamed from: f */
    public byte[] f105768f;

    /* renamed from: g */
    public byte[] f105769g;

    public AbstractUnicodeExtraField() {
    }

    /* renamed from: a */
    public final void m66395a() {
        byte[] bArr = this.f105768f;
        if (bArr == null) {
            return;
        }
        byte[] bArr2 = new byte[bArr.length + 5];
        this.f105769g = bArr2;
        bArr2[0] = 1;
        System.arraycopy(ZipLong.getBytes(this.f105767e), 0, this.f105769g, 1, 4);
        byte[] bArr3 = this.f105768f;
        System.arraycopy(bArr3, 0, this.f105769g, 5, bArr3.length);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        if (this.f105769g == null) {
            m66395a();
        }
        byte[] bArr = this.f105769g;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        if (this.f105769g == null) {
            m66395a();
        }
        byte[] bArr = this.f105769g;
        return new ZipShort(bArr != null ? bArr.length : 0);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        return getCentralDirectoryData();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        return getCentralDirectoryLength();
    }

    public long getNameCRC32() {
        return this.f105767e;
    }

    public byte[] getUnicodeName() {
        byte[] bArr = this.f105768f;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) throws ZipException {
        parseFromLocalFileData(bArr, i, i2);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i, int i2) throws ZipException {
        if (i2 < 5) {
            throw new ZipException("UniCode path extra data must have at least 5 bytes.");
        }
        byte b = bArr[i];
        if (b != 1) {
            throw new ZipException("Unsupported version [" + ((int) b) + "] for UniCode path extra data.");
        }
        this.f105767e = ZipLong.getValue(bArr, i + 1);
        int i3 = i2 - 5;
        byte[] bArr2 = new byte[i3];
        this.f105768f = bArr2;
        System.arraycopy(bArr, i + 5, bArr2, 0, i3);
        this.f105769g = null;
    }

    public void setNameCRC32(long j) {
        this.f105767e = j;
        this.f105769g = null;
    }

    public void setUnicodeName(byte[] bArr) {
        if (bArr != null) {
            byte[] bArr2 = new byte[bArr.length];
            this.f105768f = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        } else {
            this.f105768f = null;
        }
        this.f105769g = null;
    }

    public AbstractUnicodeExtraField(String str, byte[] bArr, int i, int i2) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, i, i2);
        this.f105767e = crc32.getValue();
        this.f105768f = str.getBytes(StandardCharsets.UTF_8);
    }

    public AbstractUnicodeExtraField(String str, byte[] bArr) {
        this(str, bArr, 0, bArr.length);
    }
}
