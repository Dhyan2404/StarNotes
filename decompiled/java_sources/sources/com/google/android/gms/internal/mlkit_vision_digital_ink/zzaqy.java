package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaqy extends zzaql {

    @CheckForNull
    private zzaqx zza;

    public zzaqy(zzajg zzajgVar, boolean z, Executor executor, zzaqs zzaqsVar) {
        super(zzajgVar, z, false);
        this.zza = new zzaqv(this, zzaqsVar, executor);
        zzv();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaql
    public final void zze() {
        zzaqx zzaqxVar = this.zza;
        if (zzaqxVar != null) {
            zzaqxVar.zzf();
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    public final void zzq() {
        zzaqx zzaqxVar = this.zza;
        if (zzaqxVar != null) {
            zzaqxVar.zzh();
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaql
    public final void zzy(int i) {
        super.zzy(i);
        if (i == 1) {
            this.zza = null;
        }
    }

    public zzaqy(zzajg zzajgVar, boolean z, Executor executor, Callable callable) {
        super(zzajgVar, z, false);
        this.zza = new zzaqw(this, callable, executor);
        zzv();
    }
}
