package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public class zzbud extends zzbub implements zzbvv {
    public zzbud(zzbue zzbueVar) {
        super(zzbueVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbub
    public final void zzB() {
        super.zzB();
        if (((zzbue) this.zza).zza != zzbtw.zze()) {
            zzbue zzbueVar = (zzbue) this.zza;
            zzbueVar.zza = zzbueVar.zza.clone();
        }
    }

    public final zzbud zze(zzbtp zzbtpVar, Object obj) {
        int i = zzbui.zzd;
        zzbug zzbugVar = (zzbug) zzbtpVar;
        if (zzbugVar.zza != zzw()) {
            throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
        }
        if (!this.zza.zzag()) {
            zzB();
        }
        zzbtw zzbtwVar = ((zzbue) this.zza).zza;
        if (zzbtwVar.zzl()) {
            zzbtwVar = zzbtwVar.clone();
            ((zzbue) this.zza).zza = zzbtwVar;
        }
        zzbuf zzbufVar = zzbugVar.zzd;
        if (zzbufVar.zzb.zzb() == zzbxt.ENUM) {
            obj = Integer.valueOf(((zzbuk) obj).zza());
        }
        zzbtwVar.zzj(zzbufVar, obj);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbub, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvt
    /* renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final zzbue zzy() {
        if (!((zzbue) this.zza).zzag()) {
            return (zzbue) this.zza;
        }
        ((zzbue) this.zza).zza.zzh();
        return (zzbue) super.zzy();
    }
}
