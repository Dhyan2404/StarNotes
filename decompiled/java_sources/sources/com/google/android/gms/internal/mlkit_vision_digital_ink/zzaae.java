package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzaae implements zzyf {
    private zzzf[] zza;

    private zzaae() {
    }

    public static zzaae zza() {
        return new zzaae();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzyf
    public final /* bridge */ /* synthetic */ Object zzb(zzye zzyeVar) throws IOException {
        List zzg = zzyeVar.zzg(zzyeVar.zzd().zzs(zzyeVar.zza()));
        zzzf[] zzzfVarArr = this.zza;
        if (zzzfVarArr != null) {
            zzzfVarArr[0].zza(zzg);
        }
        return (OutputStream) zzg.get(0);
    }

    public final zzaae zzc(zzzf... zzzfVarArr) {
        this.zza = zzzfVarArr;
        return this;
    }
}
