package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public abstract class zzaom {
    private static final char[] zza = "0123456789abcdef".toCharArray();

    public static zzaom zze(byte[] bArr) {
        return new zzaol(bArr);
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzaom) {
            zzaom zzaomVar = (zzaom) obj;
            if (zzb() == zzaomVar.zzb() && zzc(zzaomVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (zzb() >= 32) {
            return zza();
        }
        byte[] zzd = zzd();
        int i = zzd[0] & 255;
        for (int i2 = 1; i2 < zzd.length; i2++) {
            i |= (zzd[i2] & 255) << (i2 * 8);
        }
        return i;
    }

    public final String toString() {
        byte[] zzd = zzd();
        int length = zzd.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b : zzd) {
            char[] cArr = zza;
            sb.append(cArr[(b >> 4) & 15]);
            sb.append(cArr[b & 15]);
        }
        return sb.toString();
    }

    public abstract int zza();

    public abstract int zzb();

    public abstract boolean zzc(zzaom zzaomVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] zzd() {
        throw null;
    }
}
