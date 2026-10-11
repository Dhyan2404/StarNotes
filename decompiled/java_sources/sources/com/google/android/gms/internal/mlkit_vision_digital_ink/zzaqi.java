package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class zzaqi extends zzarl implements Runnable {
    public static final /* synthetic */ int zzc = 0;

    @CheckForNull
    zzasi zza;

    @CheckForNull
    Object zzb;

    public zzaqi(zzasi zzasiVar, Object obj) {
        zzasiVar.getClass();
        this.zza = zzasiVar;
        obj.getClass();
        this.zzb = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzasi zzasiVar = this.zza;
        Object obj = this.zzb;
        if ((isCancelled() | (zzasiVar == null)) || (obj == null)) {
            return;
        }
        this.zza = null;
        if (zzasiVar.isCancelled()) {
            zzc(zzasiVar);
            return;
        }
        try {
            try {
                Object zzd = zzd(obj, zzarx.zzp(zzasiVar));
                this.zzb = null;
                zze(zzd);
            } catch (Throwable th) {
                try {
                    zzasr.zza(th);
                    zzt(th);
                } finally {
                    this.zzb = null;
                }
            }
        } catch (Error e) {
            zzt(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e2) {
            zzt(e2);
        } catch (ExecutionException e3) {
            zzt(e3.getCause());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    @CheckForNull
    public final String zza() {
        String str;
        zzasi zzasiVar = this.zza;
        Object obj = this.zzb;
        String zza = super.zza();
        if (zzasiVar != null) {
            str = "inputFuture=[" + zzasiVar.toString() + "], ";
        } else {
            str = "";
        }
        if (obj == null) {
            if (zza != null) {
                return str.concat(zza);
            }
            return null;
        }
        return str + "function=[" + obj.toString() + IteratorUtils.f104924b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    public final void zzb() {
        zzr(this.zza);
        this.zza = null;
        this.zzb = null;
    }

    public abstract Object zzd(Object obj, Object obj2) throws Exception;

    public abstract void zze(Object obj);
}
