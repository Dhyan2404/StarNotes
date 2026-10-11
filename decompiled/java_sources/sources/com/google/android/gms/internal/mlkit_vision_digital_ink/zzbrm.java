package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzbrm extends zzbre {
    public zzbrm() {
        super(null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbre
    public final void zza(zzbrn zzbrnVar, zzbrn zzbrnVar2) {
        zzbrnVar.zzc = zzbrnVar2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbre
    public final void zzb(zzbrn zzbrnVar, Thread thread) {
        zzbrnVar.zzb = thread;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbre
    public final boolean zzc(zzbro zzbroVar, zzbri zzbriVar, zzbri zzbriVar2) {
        synchronized (zzbroVar) {
            if (zzbroVar.zzd != zzbriVar) {
                return false;
            }
            zzbroVar.zzd = zzbriVar2;
            return true;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbre
    public final boolean zzd(zzbro zzbroVar, Object obj, Object obj2) {
        synchronized (zzbroVar) {
            if (zzbroVar.zzc != obj) {
                return false;
            }
            zzbroVar.zzc = obj2;
            return true;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbre
    public final boolean zze(zzbro zzbroVar, zzbrn zzbrnVar, zzbrn zzbrnVar2) {
        synchronized (zzbroVar) {
            if (zzbroVar.zze != zzbrnVar) {
                return false;
            }
            zzbroVar.zze = zzbrnVar2;
            return true;
        }
    }
}
