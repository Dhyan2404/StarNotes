package com.onyx.harfbuzz.internal.sfnt;

import androidx.annotation.NonNull;

/* loaded from: classes9.dex */
public class DataTable extends AbstractSfntTable {

    /* renamed from: a */
    @NonNull
    public final byte[] f62822a;

    public DataTable(@NonNull byte[] bArr) {
        this.f62822a = bArr;
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    @NonNull
    public byte[] readBytes(int i, int i2) {
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f62822a, i, bArr, 0, i2);
        return bArr;
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public short readInt16(int i) {
        byte[] bArr = this.f62822a;
        return (short) (((bArr[i + 1] & 255) << 0) | ((bArr[i + 0] & 255) << 8));
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public int readInt32(int i) {
        byte[] bArr = this.f62822a;
        return ((bArr[i + 3] & 255) << 0) | ((bArr[i + 0] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public long readInt64(int i) {
        return (readUInt32(i + 4) << 0) | (readUInt32(i + 0) << 32);
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public byte readInt8(int i) {
        return this.f62822a[i];
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public int readUInt16(int i) {
        byte[] bArr = this.f62822a;
        return (((bArr[i + 1] & 255) << 0) | ((bArr[i + 0] & 255) << 8)) & 65535;
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public long readUInt32(int i) {
        byte[] bArr = this.f62822a;
        return (((bArr[i + 3] & 255) << 0) | ((bArr[i + 0] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8)) & 4294967295L;
    }

    @Override // com.onyx.harfbuzz.internal.sfnt.SfntTable
    public short readUInt8(int i) {
        return (short) (this.f62822a[i] & 255);
    }
}
