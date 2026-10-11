package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaol extends zzaom implements Serializable {
    final byte[] zza;

    public zzaol(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaom
    public final int zza() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        if (length < 4) {
            throw new IllegalStateException(zzagz.zzb("HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", Integer.valueOf(length)));
        }
        int i = bArr[0] & 255;
        int i2 = bArr[1] & 255;
        int i3 = bArr[2] & 255;
        return ((bArr[3] & 255) << 24) | i | (i2 << 8) | (i3 << 16);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaom
    public final int zzb() {
        return this.zza.length * 8;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaom
    public final boolean zzc(zzaom zzaomVar) {
        if (this.zza.length != zzaomVar.zzd().length) {
            return false;
        }
        boolean z = true;
        int i = 0;
        while (true) {
            byte[] bArr = this.zza;
            if (i >= bArr.length) {
                return z;
            }
            z &= bArr[i] == zzaomVar.zzd()[i];
            i++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaom
    public final byte[] zzd() {
        return this.zza;
    }
}
