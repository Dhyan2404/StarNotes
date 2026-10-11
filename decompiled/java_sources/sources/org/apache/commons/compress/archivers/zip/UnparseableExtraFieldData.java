package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;

/* loaded from: classes12.dex */
public final class UnparseableExtraFieldData implements ZipExtraField {

    /* renamed from: g */
    public static final ZipShort f105842g = new ZipShort(44225);

    /* renamed from: e */
    public byte[] f105843e;

    /* renamed from: f */
    public byte[] f105844f;

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        byte[] bArr = this.f105844f;
        return bArr == null ? getLocalFileDataData() : ZipUtil.m66568e(bArr);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        return this.f105844f == null ? getLocalFileDataLength() : new ZipShort(this.f105844f.length);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return f105842g;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        return ZipUtil.m66568e(this.f105843e);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        byte[] bArr = this.f105843e;
        return new ZipShort(bArr == null ? 0 : bArr.length);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) {
        this.f105844f = Arrays.copyOfRange(bArr, i, i + i2);
        if (this.f105843e == null) {
            parseFromLocalFileData(bArr, i, i2);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i, int i2) {
        this.f105843e = Arrays.copyOfRange(bArr, i, i2 + i);
    }
}
