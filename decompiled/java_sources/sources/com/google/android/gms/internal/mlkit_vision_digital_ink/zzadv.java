package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzadv extends zzadp implements zzadm {
    private final Exception zza;
    private final boolean zzb;

    public zzadv(String str, zzadm zzadmVar, zzaeb zzaebVar, boolean z) {
        super(str, zzadmVar, zzaebVar, (Thread) null);
        this.zza = zzadmVar.zze();
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzadm
    public final zzaeh zzd(String str, zzaeb zzaebVar, boolean z) {
        if (z && !this.zzb) {
            int i = zzaeu.zzb;
        }
        boolean z2 = true;
        if ((!z || this.zzb) && !this.zzb) {
            z2 = false;
        }
        return new zzadv(str, this, zzaebVar, z2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzadm
    public final Exception zze() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaeh
    public final zzaeh zzg(String str, zzaeb zzaebVar, zzaev zzaevVar) {
        return zzd(str, zzaebVar, true);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaeh
    public final void zzh(boolean z) {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaeh
    public final void zzi(int i) {
    }

    public zzadv(String str, zzaeb zzaebVar, boolean z) {
        super(str, zzadq.zzb().zzc(), zzaebVar, (Thread) null);
        this.zza = zzadu.zza;
        this.zzb = false;
    }
}
