package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public final class zzarx extends zzarz {
    public static zzarv zza(Iterable iterable) {
        return new zzarv(false, zzajm.zzi(iterable), null);
    }

    public static zzarv zzb(Iterable iterable) {
        return new zzarv(true, zzajm.zzi(iterable), null);
    }

    @SafeVarargs
    public static zzarv zzc(zzasi... zzasiVarArr) {
        return new zzarv(true, zzajm.zzp(zzasiVarArr), null);
    }

    public static zzasi zzd(zzasi zzasiVar, Class cls, zzaft zzaftVar, Executor executor) {
        zzapx zzapxVar = new zzapx(zzasiVar, cls, zzaftVar);
        zzasiVar.zzp(zzapxVar, zzasq.zzd(executor, zzapxVar));
        return zzapxVar;
    }

    public static zzasi zze(zzasi zzasiVar, Class cls, zzaqt zzaqtVar, Executor executor) {
        zzapw zzapwVar = new zzapw(zzasiVar, cls, zzaqtVar);
        zzasiVar.zzp(zzapwVar, zzasq.zzd(executor, zzapwVar));
        return zzapwVar;
    }

    public static zzasi zzf() {
        zzasa zzasaVar = zzasa.zza;
        return zzasaVar != null ? zzasaVar : new zzasa();
    }

    public static zzasi zzg(Throwable th) {
        th.getClass();
        return new zzasb(th);
    }

    public static zzasi zzh(Object obj) {
        return obj == null ? zzasc.zza : new zzasc(obj);
    }

    public static zzasi zzi() {
        return zzasc.zza;
    }

    public static zzasi zzj(zzasi zzasiVar) {
        if (zzasiVar.isDone()) {
            return zzasiVar;
        }
        zzarw zzarwVar = new zzarw(zzasiVar);
        zzasiVar.zzp(zzarwVar, zzaqz.INSTANCE);
        return zzarwVar;
    }

    public static zzasi zzk(Runnable runnable, Executor executor) {
        zzasz zzd = zzasz.zzd(runnable, null);
        executor.execute(zzd);
        return zzd;
    }

    public static zzasi zzl(Callable callable, Executor executor) {
        zzasz zzaszVar = new zzasz(callable);
        executor.execute(zzaszVar);
        return zzaszVar;
    }

    public static zzasi zzm(zzaqs zzaqsVar, Executor executor) {
        zzasz zzaszVar = new zzasz(zzaqsVar);
        executor.execute(zzaszVar);
        return zzaszVar;
    }

    public static zzasi zzn(zzasi zzasiVar, zzaft zzaftVar, Executor executor) {
        zzaqh zzaqhVar = new zzaqh(zzasiVar, zzaftVar);
        zzasiVar.zzp(zzaqhVar, zzasq.zzd(executor, zzaqhVar));
        return zzaqhVar;
    }

    public static zzasi zzo(zzasi zzasiVar, zzaqt zzaqtVar, Executor executor) {
        int i = zzaqi.zzc;
        executor.getClass();
        zzaqg zzaqgVar = new zzaqg(zzasiVar, zzaqtVar);
        zzasiVar.zzp(zzaqgVar, zzasq.zzd(executor, zzaqgVar));
        return zzaqgVar;
    }

    public static Object zzp(Future future) throws ExecutionException {
        Object obj;
        zzagg.zzl(future.isDone(), "Future was expected to be done: %s", future);
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static void zzr(zzasi zzasiVar, zzarr zzarrVar, Executor executor) {
        zzarrVar.getClass();
        zzasiVar.zzp(new zzars(zzasiVar, zzarrVar), executor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void zzs(zzasi zzasiVar, Future future) {
        zzasiVar.getClass();
        if (future.isDone()) {
            return;
        }
        if (zzasiVar.isDone()) {
            zzt(zzasiVar, future);
            return;
        }
        zzart zzartVar = new zzart(zzasiVar, future);
        zzaqz zzaqzVar = zzaqz.INSTANCE;
        zzasiVar.zzp(zzartVar, zzaqzVar);
        future.zzp(zzartVar, zzaqzVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzt(@CheckForNull zzasi zzasiVar, @CheckForNull Future future) {
        if (zzasiVar instanceof zzaqa) {
            ((zzaqa) zzasiVar).zzr(future);
        } else {
            if (zzasiVar == null || !zzasiVar.isCancelled() || future == null) {
                return;
            }
            future.cancel(false);
        }
    }
}
