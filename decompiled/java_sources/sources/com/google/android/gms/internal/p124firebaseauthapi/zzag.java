package com.google.android.gms.internal.p124firebaseauthapi;

/* loaded from: classes5.dex */
final class zzag extends zzaf {
    private final /* synthetic */ zzp zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzag(zzad zzadVar, zzac zzacVar, CharSequence charSequence, zzp zzpVar) {
        super(zzacVar, charSequence);
        this.zzb = zzpVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaf
    public final int zza(int i) {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaf
    public final int zzb(int i) {
        if (this.zzb.zza(i)) {
            return this.zzb.zzb();
        }
        return -1;
    }
}
