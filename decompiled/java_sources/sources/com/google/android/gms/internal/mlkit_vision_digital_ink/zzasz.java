package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzasz extends zzarl implements RunnableFuture {

    @CheckForNull
    private volatile zzash zza;

    public zzasz(zzaqs zzaqsVar) {
        this.zza = new zzasx(this, zzaqsVar);
    }

    public static zzasz zzd(Runnable runnable, Object obj) {
        return new zzasz(Executors.callable(runnable, obj));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzash zzashVar = this.zza;
        if (zzashVar != null) {
            zzashVar.run();
        }
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    @CheckForNull
    public final String zza() {
        zzash zzashVar = this.zza;
        if (zzashVar == null) {
            return super.zza();
        }
        return "task=[" + zzashVar.toString() + IteratorUtils.f104924b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    public final void zzb() {
        zzash zzashVar;
        if (zzu() && (zzashVar = this.zza) != null) {
            zzashVar.zzh();
        }
        this.zza = null;
    }

    public zzasz(Callable callable) {
        this.zza = new zzasy(this, callable);
    }
}
