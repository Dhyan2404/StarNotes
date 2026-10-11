package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzmx<P> extends zzmy<P> implements zzcj<P> {
    public zzmx(String str, Class<P> cls, zzaky<? extends zzakp> zzakyVar) {
        super(str, cls, zzuw.zzb.ASYMMETRIC_PRIVATE, zzakyVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzcj
    public final zzuw zzc(zzaho zzahoVar) throws GeneralSecurityException {
        Object zza = zzns.zza().zza((zzns) zzou.zza(this.zza, zzahoVar, this.zzb, zzvs.RAW, null), zzbr.zza());
        if (!(zza instanceof zzck)) {
            throw new GeneralSecurityException("Key not private key");
        }
        zzou zzouVar = (zzou) zzns.zza().zza(((zzck) zza).zzb(), zzou.class, zzbr.zza());
        return (zzuw) ((zzaje) zzuw.zza().zza(zzouVar.zzf()).zza(zzouVar.zzd()).zza(zzouVar.zza()).zzf());
    }
}
