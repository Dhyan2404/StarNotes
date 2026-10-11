package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
abstract class zzbkb implements Iterator {
    zzbkc zza;
    zzbkc zzb = null;
    int zzc;
    final /* synthetic */ zzbkd zzd;

    public zzbkb(zzbkd zzbkdVar) {
        this.zzd = zzbkdVar;
        this.zza = zzbkdVar.zzd.zzd;
        this.zzc = zzbkdVar.zzc;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza != this.zzd.zzd;
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzbkc zzbkcVar = this.zzb;
        if (zzbkcVar == null) {
            throw new IllegalStateException();
        }
        this.zzd.zze(zzbkcVar, true);
        this.zzb = null;
        this.zzc = this.zzd.zzc;
    }

    public final zzbkc zza() {
        zzbkc zzbkcVar = this.zza;
        zzbkd zzbkdVar = this.zzd;
        if (zzbkcVar == zzbkdVar.zzd) {
            throw new NoSuchElementException();
        }
        if (zzbkdVar.zzc != this.zzc) {
            throw new ConcurrentModificationException();
        }
        this.zza = zzbkcVar.zzd;
        this.zzb = zzbkcVar;
        return zzbkcVar;
    }
}
