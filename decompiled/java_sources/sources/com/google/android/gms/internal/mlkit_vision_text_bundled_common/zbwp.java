package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import sun.misc.Unsafe;

/* loaded from: classes5.dex */
final class zbwp extends zbwr {
    public zbwp(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwr
    public final double zba(Object obj, long j) {
        return Double.longBitsToDouble(this.zba.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwr
    public final float zbb(Object obj, long j) {
        return Float.intBitsToFloat(this.zba.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwr
    public final void zbc(Object obj, long j, boolean z) {
        if (zbws.zbb) {
            zbws.zbD(obj, j, r3 ? (byte) 1 : (byte) 0);
        } else {
            zbws.zbE(obj, j, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwr
    public final void zbd(Object obj, long j, byte b) {
        if (zbws.zbb) {
            zbws.zbD(obj, j, b);
        } else {
            zbws.zbE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwr
    public final void zbe(Object obj, long j, double d) {
        this.zba.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwr
    public final void zbf(Object obj, long j, float f) {
        this.zba.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwr
    public final boolean zbg(Object obj, long j) {
        return zbws.zbb ? zbws.zbt(obj, j) : zbws.zbu(obj, j);
    }
}
