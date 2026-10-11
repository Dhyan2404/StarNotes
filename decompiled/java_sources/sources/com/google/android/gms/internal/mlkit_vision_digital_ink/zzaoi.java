package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class zzaoi extends zzaok {
    private final ByteBuffer zza = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    private final zzaoo zzf(int i) {
        try {
            zzc(this.zza.array(), 0, i);
            return this;
        } finally {
            this.zza.clear();
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaok
    public final zzaoo zza(char c) {
        this.zza.putChar(c);
        zzf(2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaok, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoo
    public final zzaoo zzb(long j) {
        this.zza.putLong(j);
        zzf(8);
        return this;
    }

    public void zzc(byte[] bArr, int i, int i2) {
        throw null;
    }
}
