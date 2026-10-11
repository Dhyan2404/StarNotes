package com.google.android.gms.internal.mlkit_vision_digital_ink;

import androidx.annotation.Nullable;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes5.dex */
public class zzbro implements zzasi {
    static final zzbre zzb;
    public static final /* synthetic */ int zzf = 0;
    private static final Object zzh;

    @Nullable
    volatile Object zzc;

    @Nullable
    volatile zzbri zzd;

    @Nullable
    volatile zzbrn zze;
    static final boolean zza = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    private static final Logger zzg = Logger.getLogger(zzbro.class.getName());

    static {
        zzbre zzbrmVar;
        try {
            zzbrmVar = new zzbrk(AtomicReferenceFieldUpdater.newUpdater(zzbrn.class, Thread.class, "zzb"), AtomicReferenceFieldUpdater.newUpdater(zzbrn.class, zzbrn.class, "zzc"), AtomicReferenceFieldUpdater.newUpdater(zzbro.class, zzbrn.class, "zze"), AtomicReferenceFieldUpdater.newUpdater(zzbro.class, zzbri.class, "zzd"), AtomicReferenceFieldUpdater.newUpdater(zzbro.class, Object.class, "zzc"));
            th = null;
        } catch (Throwable th) {
            th = th;
            zzbrmVar = new zzbrm();
        }
        Throwable th2 = th;
        zzb = zzbrmVar;
        if (th2 != null) {
            zzg.logp(Level.SEVERE, "com.google.mlkit.shared.mdd.concurrent.AbstractResolvableFuture", Constants.STATIC_INITIALIZER_NAME, "SafeAtomicHelper is broken!", th2);
        }
        zzh = new Object();
    }

    public static void zzb(zzbro zzbroVar) {
        zzbrn zzbrnVar;
        zzbri zzbriVar;
        do {
            zzbrnVar = zzbroVar.zze;
        } while (!zzb.zze(zzbroVar, zzbrnVar, zzbrn.zza));
        while (zzbrnVar != null) {
            Thread thread = zzbrnVar.zzb;
            if (thread != null) {
                zzbrnVar.zzb = null;
                LockSupport.unpark(thread);
            }
            zzbrnVar = zzbrnVar.zzc;
        }
        do {
            zzbriVar = zzbroVar.zzd;
        } while (!zzb.zzc(zzbroVar, zzbriVar, zzbri.zza));
        zzbri zzbriVar2 = null;
        while (zzbriVar != null) {
            zzbri zzbriVar3 = zzbriVar.zzd;
            zzbriVar.zzd = zzbriVar2;
            zzbriVar2 = zzbriVar;
            zzbriVar = zzbriVar3;
        }
        while (zzbriVar2 != null) {
            zzbri zzbriVar4 = zzbriVar2.zzd;
            Runnable runnable = zzbriVar2.zzb;
            if (runnable instanceof zzbrl) {
                zzbro zzbroVar2 = ((zzbrl) runnable).zza;
                throw null;
            }
            zze(runnable, zzbriVar2.zzc);
            zzbriVar2 = zzbriVar4;
        }
    }

    private final void zzd(StringBuilder sb) {
        V v;
        boolean z = false;
        while (true) {
            try {
                try {
                    v = get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (RuntimeException e) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e2) {
                sb.append("FAILURE, cause=[");
                sb.append(e2.getCause());
                sb.append(IteratorUtils.f104924b);
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        sb.append(v == this ? "this future" : String.valueOf(v));
        sb.append(IteratorUtils.f104924b);
    }

    private static void zze(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            zzg.logp(Level.SEVERE, "com.google.mlkit.shared.mdd.concurrent.AbstractResolvableFuture", "executeListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e);
        }
    }

    private final void zzf(zzbrn zzbrnVar) {
        zzbrnVar.zzb = null;
        while (true) {
            zzbrn zzbrnVar2 = this.zze;
            if (zzbrnVar2 != zzbrn.zza) {
                zzbrn zzbrnVar3 = null;
                while (zzbrnVar2 != null) {
                    zzbrn zzbrnVar4 = zzbrnVar2.zzc;
                    if (zzbrnVar2.zzb != null) {
                        zzbrnVar3 = zzbrnVar2;
                    } else if (zzbrnVar3 != null) {
                        zzbrnVar3.zzc = zzbrnVar4;
                        if (zzbrnVar3.zzb == null) {
                            break;
                        }
                    } else if (!zzb.zze(this, zzbrnVar2, zzbrnVar4)) {
                        break;
                    }
                    zzbrnVar2 = zzbrnVar4;
                }
                return;
            }
            return;
        }
    }

    private static final Object zzg(Object obj) throws ExecutionException {
        if (obj instanceof zzbrf) {
            Throwable th = ((zzbrf) obj).zzc;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof zzbrh) {
            throw new ExecutionException(((zzbrh) obj).zzb);
        }
        if (obj == zzh) {
            return null;
        }
        return obj;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.zzc;
        if ((obj instanceof zzbrl) | (obj == null)) {
            zzbrf zzbrfVar = zza ? new zzbrf(z, new CancellationException("Future.cancel() was called.")) : z ? zzbrf.zza : zzbrf.zzb;
            while (!zzb.zzd(this, obj, zzbrfVar)) {
                obj = this.zzc;
                if (!(obj instanceof zzbrl)) {
                }
            }
            zzb(this);
            if (!(obj instanceof zzbrl)) {
                return true;
            }
            zzasi zzasiVar = ((zzbrl) obj).zzb;
            throw null;
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.zzc;
            if ((obj2 != null) & (!(obj2 instanceof zzbrl))) {
                return zzg(obj2);
            }
            zzbrn zzbrnVar = this.zze;
            if (zzbrnVar != zzbrn.zza) {
                zzbrn zzbrnVar2 = new zzbrn();
                do {
                    zzbre zzbreVar = zzb;
                    zzbreVar.zza(zzbrnVar2, zzbrnVar);
                    if (zzbreVar.zze(this, zzbrnVar, zzbrnVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.zzc;
                            } else {
                                zzf(zzbrnVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof zzbrl))));
                        return zzg(obj);
                    }
                    zzbrnVar = this.zze;
                } while (zzbrnVar != zzbrn.zza);
            }
            return zzg(this.zzc);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zzc instanceof zzbrf;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (this.zzc != null) & (!(r2 instanceof zzbrl));
    }

    public final String toString() {
        String concat;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.zzc instanceof zzbrf) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            zzd(sb);
        } else {
            try {
                concat = zza();
            } catch (RuntimeException e) {
                concat = "Exception thrown from implementation: ".concat(String.valueOf(e.getClass()));
            }
            if (concat != null && !concat.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(concat);
                sb.append(IteratorUtils.f104924b);
            } else if (isDone()) {
                zzd(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public String zza() {
        Object obj = this.zzc;
        if (obj instanceof zzbrl) {
            zzasi zzasiVar = ((zzbrl) obj).zzb;
            return "setFuture=[null]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public boolean zzc(@Nullable Object obj) {
        if (!zzb.zzd(this, null, zzh)) {
            return false;
        }
        zzb(this);
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi
    public final void zzp(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        zzbri zzbriVar = this.zzd;
        if (zzbriVar != zzbri.zza) {
            zzbri zzbriVar2 = new zzbri(runnable, executor);
            do {
                zzbriVar2.zzd = zzbriVar;
                if (zzb.zzc(this, zzbriVar, zzbriVar2)) {
                    return;
                } else {
                    zzbriVar = this.zzd;
                }
            } while (zzbriVar != zzbri.zza);
        }
        zze(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.zzc;
            boolean z = true;
            if ((obj != null) & (!(obj instanceof zzbrl))) {
                return zzg(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                zzbrn zzbrnVar = this.zze;
                if (zzbrnVar != zzbrn.zza) {
                    zzbrn zzbrnVar2 = new zzbrn();
                    do {
                        zzbre zzbreVar = zzb;
                        zzbreVar.zza(zzbrnVar2, zzbrnVar);
                        if (zzbreVar.zze(this, zzbrnVar, zzbrnVar2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.zzc;
                                    if ((obj2 != null) & (!(obj2 instanceof zzbrl))) {
                                        return zzg(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    zzf(zzbrnVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            zzf(zzbrnVar2);
                        } else {
                            zzbrnVar = this.zze;
                        }
                    } while (zzbrnVar != zzbrn.zza);
                }
                return zzg(this.zzc);
            }
            while (nanos > 0) {
                Object obj3 = this.zzc;
                if ((obj3 != null) & (!(obj3 instanceof zzbrl))) {
                    return zzg(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String zzbroVar = toString();
            String obj4 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj4.toLowerCase(locale);
            String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String concat = str.concat(" (plus ");
                long j2 = -nanos;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                if (convert != 0 && nanos2 <= 1000) {
                    z = false;
                }
                if (convert > 0) {
                    String str2 = concat + convert + " " + lowerCase;
                    if (z) {
                        str2 = str2.concat(",");
                    }
                    concat = str2.concat(" ");
                }
                if (z) {
                    concat = concat + nanos2 + " nanoseconds ";
                }
                str = concat.concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(str.concat(" but future completed as timeout expired"));
            }
            throw new TimeoutException(str + " for " + zzbroVar);
        }
        throw new InterruptedException();
    }
}
