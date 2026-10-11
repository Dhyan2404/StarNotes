package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzlj implements zzarr {
    final /* synthetic */ zzcr zza;
    final /* synthetic */ zzll zzb;

    public zzlj(zzll zzllVar, zzcr zzcrVar) {
        this.zzb = zzllVar;
        this.zza = zzcrVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzarr
    public final void zza(Throwable th) {
        Context context;
        zzagb zzagbVar;
        zzyg zzygVar;
        zzuw.zzd(th, "%s: Unable to create symlink structure, cleaning up symlinks...", "FileGroupManager");
        try {
            zzll zzllVar = this.zzb;
            context = zzllVar.zza;
            zzagbVar = zzllVar.zzg;
            zzcr zzcrVar = this.zza;
            zzygVar = zzllVar.zzd;
            zzvu.zzf(context, zzagbVar, zzcrVar, zzygVar);
        } catch (IOException e) {
            zzuw.zzd(e, "%s: Unable to clean up symlink structure after failure", "FileGroupManager");
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzarr
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
    }
}
