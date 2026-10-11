package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzacn implements zzaap {
    final /* synthetic */ zzaco zza;

    public /* synthetic */ zzacn(zzaco zzacoVar, zzacm zzacmVar) {
        this.zza = zzacoVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaap
    public final zzasi zza(final zzaqt zzaqtVar, final Executor executor) {
        zzadi zzadiVar;
        zzadiVar = this.zza.zze;
        return zzarx.zzo(zzarx.zzj(zzadiVar.zzb()), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzacl
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzacr zzacrVar;
                zzacn zzacnVar = zzacn.this;
                zzaqt zzaqtVar2 = zzaqtVar;
                Executor executor2 = executor;
                zzacrVar = zzacnVar.zza.zzc;
                return zzacrVar.zzj(zzaqtVar2, executor2, null);
            }
        }), zzasq.zzb());
    }
}
