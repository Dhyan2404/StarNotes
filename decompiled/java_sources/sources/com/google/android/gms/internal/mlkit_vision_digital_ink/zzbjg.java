package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbjg implements zzbke {
    final /* synthetic */ Class zza;

    public zzbjg(zzbjq zzbjqVar, Class cls) {
        this.zza = cls;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbke
    public final Object zza() {
        try {
            return zzbkp.zzc.zza(this.zza);
        } catch (Exception e) {
            throw new RuntimeException("Unable to create instance of " + String.valueOf(this.zza) + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e);
        }
    }
}
