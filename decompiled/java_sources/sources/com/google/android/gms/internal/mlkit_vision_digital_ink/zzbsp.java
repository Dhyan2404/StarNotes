package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
final class zzbsp extends zzbsr {
    final /* synthetic */ zzbsz zza;
    private int zzb = 0;
    private final int zzc;

    public zzbsp(zzbsz zzbszVar) {
        this.zza = zzbszVar;
        this.zzc = zzbszVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbst
    public final byte zza() {
        int i = this.zzb;
        if (i >= this.zzc) {
            throw new NoSuchElementException();
        }
        this.zzb = i + 1;
        return this.zza.zzb(i);
    }
}
