package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
final class zzwk implements zzwj {
    private final /* synthetic */ zzdz zza;

    public zzwk(zzdz zzdzVar) {
        this.zza = zzdzVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzwj
    public final int zza() {
        return this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzwj
    public final zzlx zza(byte[] bArr) throws GeneralSecurityException {
        return new zzlx(zzwf.zza(zzds.zzb().zza(this.zza).zza(zzxw.zza(bArr, zzbr.zza())).zza()));
    }
}
