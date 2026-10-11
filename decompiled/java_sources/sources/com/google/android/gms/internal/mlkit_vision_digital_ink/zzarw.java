package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa;
import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzarw extends zzaqa.zzi implements Runnable {

    @CheckForNull
    private zzasi zza;

    public zzarw(zzasi zzasiVar) {
        this.zza = zzasiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzasi zzasiVar = this.zza;
        if (zzasiVar != null) {
            zzc(zzasiVar);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    @CheckForNull
    public final String zza() {
        zzasi zzasiVar = this.zza;
        if (zzasiVar == null) {
            return null;
        }
        return "delegate=[" + zzasiVar.toString() + IteratorUtils.f104924b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    public final void zzb() {
        this.zza = null;
    }
}
