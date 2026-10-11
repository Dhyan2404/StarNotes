package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class zzxv {
    private final byte[] zza;

    private zzxv(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.zza = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i2);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzxv) {
            return Arrays.equals(((zzxv) obj).zza, this.zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        return "Bytes(" + zzxl.zza(this.zza) + MotionUtils.f31762d;
    }

    public final int zza() {
        return this.zza.length;
    }

    public final byte[] zzb() {
        byte[] bArr = this.zza;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static zzxv zza(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            if (length > bArr.length) {
                length = bArr.length;
            }
            return new zzxv(bArr, 0, length);
        }
        throw new NullPointerException("data must be non-null");
    }
}
