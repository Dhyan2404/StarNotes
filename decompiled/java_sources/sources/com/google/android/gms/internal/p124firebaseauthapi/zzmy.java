package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public class zzmy<P> implements zzbt<P> {
    final String zza;
    final zzuw.zzb zzb;
    private final Class<P> zzc;
    private final zzaky<? extends zzakp> zzd;

    public zzmy(String str, Class<P> cls, zzuw.zzb zzbVar, zzaky<? extends zzakp> zzakyVar) {
        this.zzd = zzakyVar;
        this.zza = str;
        this.zzc = cls;
        this.zzb = zzbVar;
    }

    public static <P> zzbt<P> zza(String str, Class<P> cls, zzuw.zzb zzbVar, zzaky<? extends zzakp> zzakyVar) {
        return new zzmy(str, cls, zzbVar, zzakyVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbt
    public final P zzb(zzaho zzahoVar) throws GeneralSecurityException {
        return (P) zznp.zza().zza((zznp) zzns.zza().zza((zzns) zzou.zza(this.zza, zzahoVar, this.zzb, zzvs.RAW, null), zzbr.zza()), (Class) this.zzc);
    }

    public static <P> zzcj<P> zza(String str, Class<P> cls, zzaky<? extends zzakp> zzakyVar) {
        return new zzmx(str, cls, zzakyVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbt
    public final zzuw zza(zzaho zzahoVar) throws GeneralSecurityException {
        zzou zzouVar = (zzou) zzns.zza().zza(zzni.zza().zza(zzns.zza().zza((zzns) zzot.zza((zzvc) ((zzaje) zzvc.zza().zza(this.zza).zza(zzahoVar).zza(zzvs.RAW).zzf()))), (Integer) null), zzou.class, zzbr.zza());
        return (zzuw) ((zzaje) zzuw.zza().zza(zzouVar.zzf()).zza(zzouVar.zzd()).zza(zzouVar.zza()).zzf());
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbt
    public final String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbt
    public final Class<P> zza() {
        return this.zzc;
    }
}
