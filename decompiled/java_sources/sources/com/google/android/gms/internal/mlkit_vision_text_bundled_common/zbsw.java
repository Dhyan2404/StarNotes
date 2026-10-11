package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

/* loaded from: classes5.dex */
final class zbsw extends zbtb {
    private final int zbc;

    public zbsw(byte[] bArr, int i, int i2) {
        super(bArr);
        zbtc.zbh(0, i2, bArr.length);
        this.zbc = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtb, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtc
    public final byte zba(int i) {
        int i2 = this.zbc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return ((zbtb) this).zba[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtb, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtc
    public final byte zbb(int i) {
        return ((zbtb) this).zba[i];
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtb
    public final int zbc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtb, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtc
    public final int zbd() {
        return this.zbc;
    }
}
