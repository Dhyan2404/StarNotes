package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;

/* loaded from: classes12.dex */
public class UnrecognizedExtraField implements ZipExtraField {

    /* renamed from: e */
    public ZipShort f105845e;

    /* renamed from: f */
    public byte[] f105846f;

    /* renamed from: g */
    public byte[] f105847g;

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        byte[] bArr = this.f105847g;
        return bArr != null ? ZipUtil.m66568e(bArr) : getLocalFileDataData();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        return this.f105847g != null ? new ZipShort(this.f105847g.length) : getLocalFileDataLength();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return this.f105845e;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        return ZipUtil.m66568e(this.f105846f);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        byte[] bArr = this.f105846f;
        return new ZipShort(bArr != null ? bArr.length : 0);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) {
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i, i2 + i);
        setCentralDirectoryData(copyOfRange);
        if (this.f105846f == null) {
            setLocalFileDataData(copyOfRange);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i, int i2) {
        setLocalFileDataData(Arrays.copyOfRange(bArr, i, i2 + i));
    }

    public void setCentralDirectoryData(byte[] bArr) {
        this.f105847g = ZipUtil.m66568e(bArr);
    }

    public void setHeaderId(ZipShort zipShort) {
        this.f105845e = zipShort;
    }

    public void setLocalFileDataData(byte[] bArr) {
        this.f105846f = ZipUtil.m66568e(bArr);
    }
}
