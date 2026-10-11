package com.google.android.gms.internal.mlkit_vision_digital_ink;

import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbrs implements zzasi {
    final WeakReference zza;
    private final zzbro zzb = new zzbrr(this);

    public zzbrs(zzbrp zzbrpVar) {
        this.zza = new WeakReference(zzbrpVar);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        zzbrp zzbrpVar = (zzbrp) this.zza.get();
        boolean cancel = this.zzb.cancel(z);
        if (!cancel || zzbrpVar == null) {
            return cancel;
        }
        zzbrpVar.zzb();
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException, ExecutionException {
        return this.zzb.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zzb.zzc instanceof zzbrf;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.zzb.isDone();
    }

    public final String toString() {
        return this.zzb.toString();
    }

    public final boolean zza(Object obj) {
        return this.zzb.zzc(null);
    }

    public final boolean zzb(Throwable th) {
        zzbro zzbroVar = this.zzb;
        if (!zzbro.zzb.zzd(zzbroVar, null, new zzbrh(th))) {
            return false;
        }
        zzbro.zzb(zzbroVar);
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi
    public final void zzp(@NonNull Runnable runnable, @NonNull Executor executor) {
        this.zzb.zzp(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.zzb.get(j, timeUnit);
    }
}
