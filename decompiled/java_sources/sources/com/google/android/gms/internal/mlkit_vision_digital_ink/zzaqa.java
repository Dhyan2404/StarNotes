package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.ojk;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;
import sun.misc.Unsafe;

/* loaded from: classes5.dex */
public abstract class zzaqa<V> extends zzata implements zzasi<V> {
    private static final Object zzc;
    static final boolean zzd;
    private static final Logger zzfb;
    private static final zza zzfc;

    @CheckForNull
    private volatile zzd listeners;

    @CheckForNull
    private volatile Object value;

    @CheckForNull
    private volatile zzk waiters;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public abstract class zza {
        public /* synthetic */ zza(zzapz zzapzVar) {
        }

        public abstract zzd zza(zzaqa zzaqaVar, zzd zzdVar);

        public abstract zzk zzb(zzaqa zzaqaVar, zzk zzkVar);

        public abstract void zzc(zzk zzkVar, @CheckForNull zzk zzkVar2);

        public abstract void zzd(zzk zzkVar, Thread thread);

        public abstract boolean zze(zzaqa zzaqaVar, @CheckForNull zzd zzdVar, zzd zzdVar2);

        public abstract boolean zzf(zzaqa zzaqaVar, @CheckForNull Object obj, Object obj2);

        public abstract boolean zzg(zzaqa zzaqaVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class zzb {

        @CheckForNull
        static final zzb zza;

        @CheckForNull
        static final zzb zzb;
        final boolean zzc;

        @CheckForNull
        final Throwable zzd;

        static {
            if (zzaqa.zzd) {
                zzb = null;
                zza = null;
            } else {
                zzb = new zzb(false, null);
                zza = new zzb(true, null);
            }
        }

        public zzb(boolean z, @CheckForNull Throwable th) {
            this.zzc = z;
            this.zzd = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class zzc {
        static final zzc zza = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zzc.1
            {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable zzb;

        public zzc(Throwable th) {
            th.getClass();
            this.zzb = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class zzd {
        static final zzd zza = new zzd();

        @CheckForNull
        zzd next;

        @CheckForNull
        final Runnable zzb;

        @CheckForNull
        final Executor zzc;

        public zzd() {
            this.zzb = null;
            this.zzc = null;
        }

        public zzd(Runnable runnable, Executor executor) {
            this.zzb = runnable;
            this.zzc = executor;
        }
    }

    /* loaded from: classes5.dex */
    final class zze extends zza {
        final AtomicReferenceFieldUpdater<zzk, Thread> zza;
        final AtomicReferenceFieldUpdater<zzk, zzk> zzb;
        final AtomicReferenceFieldUpdater<zzaqa, zzk> zzc;
        final AtomicReferenceFieldUpdater<zzaqa, zzd> zzd;
        final AtomicReferenceFieldUpdater<zzaqa, Object> zze;

        public zze(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super(null);
            this.zza = atomicReferenceFieldUpdater;
            this.zzb = atomicReferenceFieldUpdater2;
            this.zzc = atomicReferenceFieldUpdater3;
            this.zzd = atomicReferenceFieldUpdater4;
            this.zze = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final zzd zza(zzaqa zzaqaVar, zzd zzdVar) {
            return this.zzd.getAndSet(zzaqaVar, zzdVar);
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final zzk zzb(zzaqa zzaqaVar, zzk zzkVar) {
            return this.zzc.getAndSet(zzaqaVar, zzkVar);
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final void zzc(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            this.zzb.lazySet(zzkVar, zzkVar2);
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final void zzd(zzk zzkVar, Thread thread) {
            this.zza.lazySet(zzkVar, thread);
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final boolean zze(zzaqa zzaqaVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            return zzaqb.zza(this.zzd, zzaqaVar, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final boolean zzf(zzaqa zzaqaVar, @CheckForNull Object obj, Object obj2) {
            return zzaqb.zza(this.zze, zzaqaVar, obj, obj2);
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final boolean zzg(zzaqa zzaqaVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            return zzaqb.zza(this.zzc, zzaqaVar, zzkVar, zzkVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class zzf<V> implements Runnable {
        final zzaqa<V> zza;
        final zzasi<? extends V> zzb;

        public zzf(zzaqa zzaqaVar, zzasi zzasiVar) {
            this.zza = zzaqaVar;
            this.zzb = zzasiVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((zzaqa) this.zza).value != this) {
                return;
            }
            if (zzaqa.zzfc.zzf(this.zza, this, zzaqa.zzd(this.zzb))) {
                zzaqa.zzy(this.zza, false);
            }
        }
    }

    /* loaded from: classes5.dex */
    final class zzg extends zza {
        public /* synthetic */ zzg(zzaqc zzaqcVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final zzd zza(zzaqa zzaqaVar, zzd zzdVar) {
            zzd zzdVar2;
            synchronized (zzaqaVar) {
                zzdVar2 = zzaqaVar.listeners;
                if (zzdVar2 != zzdVar) {
                    zzaqaVar.listeners = zzdVar;
                }
            }
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final zzk zzb(zzaqa zzaqaVar, zzk zzkVar) {
            zzk zzkVar2;
            synchronized (zzaqaVar) {
                zzkVar2 = zzaqaVar.waiters;
                if (zzkVar2 != zzkVar) {
                    zzaqaVar.waiters = zzkVar;
                }
            }
            return zzkVar2;
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final void zzc(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            zzkVar.next = zzkVar2;
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final void zzd(zzk zzkVar, Thread thread) {
            zzkVar.thread = thread;
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final boolean zze(zzaqa zzaqaVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            synchronized (zzaqaVar) {
                if (zzaqaVar.listeners != zzdVar) {
                    return false;
                }
                zzaqaVar.listeners = zzdVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final boolean zzf(zzaqa zzaqaVar, @CheckForNull Object obj, Object obj2) {
            synchronized (zzaqaVar) {
                if (zzaqaVar.value != obj) {
                    return false;
                }
                zzaqaVar.value = obj2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final boolean zzg(zzaqa zzaqaVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            synchronized (zzaqaVar) {
                if (zzaqaVar.waiters != zzkVar) {
                    return false;
                }
                zzaqaVar.waiters = zzkVar2;
                return true;
            }
        }

        private zzg() {
            super(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface zzh<V> extends zzasi<V> {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public abstract class zzi<V> extends zzaqa<V> implements zzh<V> {
    }

    /* loaded from: classes5.dex */
    final class zzj extends zza {
        static final Unsafe zza;
        static final long zzb;
        static final long zzc;
        static final long zzd;
        static final long zze;
        static final long zzf;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e) {
                    throw new RuntimeException("Could not initialize intrinsics", e.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zzj.1
                    public static final Unsafe zza() throws Exception {
                        for (Field field : Unsafe.class.getDeclaredFields()) {
                            field.setAccessible(true);
                            Object obj = field.get(null);
                            if (Unsafe.class.isInstance(obj)) {
                                return (Unsafe) Unsafe.class.cast(obj);
                            }
                        }
                        throw new NoSuchFieldError("the Unsafe");
                    }

                    @Override // java.security.PrivilegedExceptionAction
                    public final /* bridge */ /* synthetic */ Unsafe run() throws Exception {
                        return zza();
                    }
                });
            }
            try {
                zzc = unsafe.objectFieldOffset(zzaqa.class.getDeclaredField("waiters"));
                zzb = unsafe.objectFieldOffset(zzaqa.class.getDeclaredField("listeners"));
                zzd = unsafe.objectFieldOffset(zzaqa.class.getDeclaredField("value"));
                zze = unsafe.objectFieldOffset(zzk.class.getDeclaredField("thread"));
                zzf = unsafe.objectFieldOffset(zzk.class.getDeclaredField(Constants.NEXT));
                zza = unsafe;
            } catch (NoSuchFieldException e2) {
                throw new RuntimeException(e2);
            } catch (RuntimeException e3) {
                throw e3;
            }
        }

        public /* synthetic */ zzj(zzaqe zzaqeVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final zzd zza(zzaqa zzaqaVar, zzd zzdVar) {
            zzd zzdVar2;
            do {
                zzdVar2 = zzaqaVar.listeners;
                if (zzdVar == zzdVar2) {
                    return zzdVar2;
                }
            } while (!zze(zzaqaVar, zzdVar2, zzdVar));
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final zzk zzb(zzaqa zzaqaVar, zzk zzkVar) {
            zzk zzkVar2;
            do {
                zzkVar2 = zzaqaVar.waiters;
                if (zzkVar == zzkVar2) {
                    return zzkVar2;
                }
            } while (!zzg(zzaqaVar, zzkVar2, zzkVar));
            return zzkVar2;
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final void zzc(zzk zzkVar, @CheckForNull zzk zzkVar2) {
            zza.putObject(zzkVar, zzf, zzkVar2);
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final void zzd(zzk zzkVar, Thread thread) {
            zza.putObject(zzkVar, zze, thread);
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final boolean zze(zzaqa zzaqaVar, @CheckForNull zzd zzdVar, zzd zzdVar2) {
            return zzaqd.zza(zza, zzaqaVar, zzb, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final boolean zzf(zzaqa zzaqaVar, @CheckForNull Object obj, Object obj2) {
            return zzaqd.zza(zza, zzaqaVar, zzd, obj, obj2);
        }

        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa.zza
        public final boolean zzg(zzaqa zzaqaVar, @CheckForNull zzk zzkVar, @CheckForNull zzk zzkVar2) {
            return zzaqd.zza(zza, zzaqaVar, zzc, zzkVar, zzkVar2);
        }

        private zzj() {
            super(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class zzk {
        static final zzk zza = new zzk(false);

        @CheckForNull
        volatile zzk next;

        @CheckForNull
        volatile Thread thread;

        public zzk(boolean z) {
        }

        public zzk() {
            zzaqa.zzfc.zzd(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        boolean z;
        Throwable th;
        Throwable th2;
        zza zzgVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        zzd = z;
        zzfb = Logger.getLogger(zzaqa.class.getName());
        Object[] objArr = 0;
        try {
            zzgVar = new zzj(null);
            th2 = null;
            th = null;
        } catch (Error | RuntimeException e) {
            try {
                th = null;
                th2 = e;
                zzgVar = new zze(AtomicReferenceFieldUpdater.newUpdater(zzk.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(zzk.class, zzk.class, Constants.NEXT), AtomicReferenceFieldUpdater.newUpdater(zzaqa.class, zzk.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(zzaqa.class, zzd.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(zzaqa.class, Object.class, "value"));
            } catch (Error | RuntimeException e2) {
                th = e2;
                th2 = e;
                zzgVar = new zzg(objArr == true ? 1 : 0);
            }
        }
        zzfc = zzgVar;
        if (th != null) {
            Logger logger = zzfb;
            Level level = Level.SEVERE;
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", com.sun.org.apache.bcel.internal.Constants.STATIC_INITIALIZER_NAME, "UnsafeAtomicHelper is broken!", th2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", com.sun.org.apache.bcel.internal.Constants.STATIC_INITIALIZER_NAME, "SafeAtomicHelper is broken!", th);
        }
        zzc = new Object();
    }

    private final void zzA(zzk zzkVar) {
        zzkVar.thread = null;
        while (true) {
            zzk zzkVar2 = this.waiters;
            if (zzkVar2 != zzk.zza) {
                zzk zzkVar3 = null;
                while (zzkVar2 != null) {
                    zzk zzkVar4 = zzkVar2.next;
                    if (zzkVar2.thread != null) {
                        zzkVar3 = zzkVar2;
                    } else if (zzkVar3 != null) {
                        zzkVar3.next = zzkVar4;
                        if (zzkVar3.thread == null) {
                            break;
                        }
                    } else if (!zzfc.zzg(this, zzkVar2, zzkVar4)) {
                        break;
                    }
                    zzkVar2 = zzkVar4;
                }
                return;
            }
            return;
        }
    }

    private static final Object zzB(Object obj) throws ExecutionException {
        if (obj instanceof zzb) {
            Throwable th = ((zzb) obj).zzd;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof zzc) {
            throw new ExecutionException(((zzc) obj).zzb);
        }
        if (obj == zzc) {
            return null;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object zzd(zzasi zzasiVar) {
        Throwable zzk2;
        if (zzasiVar instanceof zzh) {
            Object obj = ((zzaqa) zzasiVar).value;
            if (obj instanceof zzb) {
                zzb zzbVar = (zzb) obj;
                if (zzbVar.zzc) {
                    Throwable th = zzbVar.zzd;
                    obj = th != null ? new zzb(false, th) : zzb.zzb;
                }
            }
            obj.getClass();
            return obj;
        }
        if ((zzasiVar instanceof zzata) && (zzk2 = ((zzata) zzasiVar).zzk()) != null) {
            return new zzc(zzk2);
        }
        boolean isCancelled = zzasiVar.isCancelled();
        if ((!zzd) && isCancelled) {
            zzb zzbVar2 = zzb.zzb;
            zzbVar2.getClass();
            return zzbVar2;
        }
        try {
            Object zze2 = zze(zzasiVar);
            if (!isCancelled) {
                return zze2 == null ? zzc : zze2;
            }
            return new zzb(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + String.valueOf(zzasiVar)));
        } catch (Error | RuntimeException e) {
            return new zzc(e);
        } catch (CancellationException e2) {
            return !isCancelled ? new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(zzasiVar)), e2)) : new zzb(false, e2);
        } catch (ExecutionException e3) {
            return isCancelled ? new zzb(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(zzasiVar)), e3)) : new zzc(e3.getCause());
        }
    }

    private static Object zze(Future future) throws ExecutionException {
        Object obj;
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

    private final void zzv(StringBuilder sb) {
        try {
            Object zze2 = zze(this);
            sb.append("SUCCESS, result=[");
            if (zze2 == null) {
                sb.append("null");
            } else if (zze2 == this) {
                sb.append("this future");
            } else {
                sb.append(zze2.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(zze2)));
            }
            sb.append(IteratorUtils.f104924b);
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e2) {
            sb.append("FAILURE, cause=[");
            sb.append(e2.getCause());
            sb.append(IteratorUtils.f104924b);
        }
    }

    private final void zzw(StringBuilder sb) {
        String concat;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.value;
        if (obj instanceof zzf) {
            sb.append(", setFuture=[");
            zzx(sb, ((zzf) obj).zzb);
            sb.append(IteratorUtils.f104924b);
        } else {
            try {
                concat = zzagz.zza(zza());
            } catch (RuntimeException | StackOverflowError e) {
                concat = "Exception thrown from implementation: ".concat(String.valueOf(e.getClass()));
            }
            if (concat != null) {
                sb.append(", info=[");
                sb.append(concat);
                sb.append(IteratorUtils.f104924b);
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            zzv(sb);
        }
    }

    private final void zzx(StringBuilder sb, @CheckForNull Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException | StackOverflowError e) {
            sb.append("Exception thrown from implementation: ");
            sb.append(e.getClass());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzy(zzaqa zzaqaVar, boolean z) {
        zzd zzdVar = null;
        while (true) {
            for (zzk zzb2 = zzfc.zzb(zzaqaVar, zzk.zza); zzb2 != null; zzb2 = zzb2.next) {
                Thread thread = zzb2.thread;
                if (thread != null) {
                    zzb2.thread = null;
                    LockSupport.unpark(thread);
                }
            }
            if (z) {
                zzaqaVar.zzq();
            }
            zzaqaVar.zzb();
            zzd zzdVar2 = zzdVar;
            zzd zza2 = zzfc.zza(zzaqaVar, zzd.zza);
            zzd zzdVar3 = zzdVar2;
            while (zza2 != null) {
                zzd zzdVar4 = zza2.next;
                zza2.next = zzdVar3;
                zzdVar3 = zza2;
                zza2 = zzdVar4;
            }
            while (zzdVar3 != null) {
                zzdVar = zzdVar3.next;
                Runnable runnable = zzdVar3.zzb;
                runnable.getClass();
                if (runnable instanceof zzf) {
                    zzf zzfVar = (zzf) runnable;
                    zzaqaVar = zzfVar.zza;
                    if (zzaqaVar.value == zzfVar) {
                        if (zzfc.zzf(zzaqaVar, zzfVar, zzd(zzfVar.zzb))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = zzdVar3.zzc;
                    executor.getClass();
                    zzz(runnable, executor);
                }
                zzdVar3 = zzdVar;
            }
            return;
            z = false;
        }
    }

    private static void zzz(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            zzfb.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        zzb zzbVar;
        Object obj = this.value;
        if (!(obj instanceof zzf) && !(obj == null)) {
            return false;
        }
        if (zzd) {
            zzbVar = new zzb(z, new CancellationException("Future.cancel() was called."));
        } else {
            zzbVar = z ? zzb.zza : zzb.zzb;
            zzbVar.getClass();
        }
        boolean z2 = false;
        while (true) {
            if (zzfc.zzf(this, obj, zzbVar)) {
                zzy(this, z);
                if (!(obj instanceof zzf)) {
                    break;
                }
                zzasi<? extends V> zzasiVar = ((zzf) obj).zzb;
                if (!(zzasiVar instanceof zzh)) {
                    zzasiVar.cancel(z);
                    break;
                }
                this = (zzaqa) zzasiVar;
                obj = this.value;
                if (!(obj == null) && !(obj instanceof zzf)) {
                    break;
                }
                z2 = true;
            } else {
                obj = this.value;
                if (!(obj instanceof zzf)) {
                    return z2;
                }
            }
        }
        return true;
    }

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.value;
            if ((obj2 != null) & (!(obj2 instanceof zzf))) {
                return zzB(obj2);
            }
            zzk zzkVar = this.waiters;
            if (zzkVar != zzk.zza) {
                zzk zzkVar2 = new zzk();
                do {
                    zza zzaVar = zzfc;
                    zzaVar.zzc(zzkVar2, zzkVar);
                    if (zzaVar.zzg(this, zzkVar, zzkVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.value;
                            } else {
                                zzA(zzkVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof zzf))));
                        return zzB(obj);
                    }
                    zzkVar = this.waiters;
                } while (zzkVar != zzk.zza);
            }
            Object obj3 = this.value;
            obj3.getClass();
            return zzB(obj3);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.value instanceof zzb;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (this.value != null) & (!(r2 instanceof zzf));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            zzv(sb);
        } else {
            zzw(sb);
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckForNull
    public String zza() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public void zzb() {
    }

    public boolean zzc(zzasi zzasiVar) {
        zzc zzcVar;
        zzasiVar.getClass();
        Object obj = this.value;
        if (obj == null) {
            if (zzasiVar.isDone()) {
                if (!zzfc.zzf(this, null, zzd(zzasiVar))) {
                    return false;
                }
                zzy(this, false);
                return true;
            }
            zzf zzfVar = new zzf(this, zzasiVar);
            if (zzfc.zzf(this, null, zzfVar)) {
                try {
                    zzasiVar.zzp(zzfVar, zzaqz.INSTANCE);
                } catch (Error | RuntimeException e) {
                    try {
                        zzcVar = new zzc(e);
                    } catch (Error | RuntimeException unused) {
                        zzcVar = zzc.zza;
                    }
                    zzfc.zzf(this, zzfVar, zzcVar);
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof zzb) {
            zzasiVar.cancel(((zzb) obj).zzc);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzata
    @CheckForNull
    public final Throwable zzk() {
        if (!(this instanceof zzh)) {
            return null;
        }
        Object obj = this.value;
        if (obj instanceof zzc) {
            return ((zzc) obj).zzb;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi
    public void zzp(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzagg.zzc(runnable, "Runnable was null.");
        zzagg.zzc(executor, "Executor was null.");
        if (!isDone() && (zzdVar = this.listeners) != zzd.zza) {
            zzd zzdVar2 = new zzd(runnable, executor);
            do {
                zzdVar2.next = zzdVar;
                if (zzfc.zze(this, zzdVar, zzdVar2)) {
                    return;
                } else {
                    zzdVar = this.listeners;
                }
            } while (zzdVar != zzd.zza);
        }
        zzz(runnable, executor);
    }

    public void zzq() {
    }

    public final void zzr(@CheckForNull Future future) {
        if ((future != null) && isCancelled()) {
            future.cancel(zzu());
        }
    }

    public boolean zzs(Object obj) {
        if (obj == null) {
            obj = zzc;
        }
        if (!zzfc.zzf(this, null, obj)) {
            return false;
        }
        zzy(this, false);
        return true;
    }

    public final boolean zzt(Throwable th) {
        th.getClass();
        if (!zzfc.zzf(this, null, new zzc(th))) {
            return false;
        }
        zzy(this, false);
        return true;
    }

    public final boolean zzu() {
        Object obj = this.value;
        return (obj instanceof zzb) && ((zzb) obj).zzc;
    }

    @Override // java.util.concurrent.Future
    public Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.value;
            boolean z = true;
            if ((obj != null) & (!(obj instanceof zzf))) {
                return zzB(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                zzk zzkVar = this.waiters;
                if (zzkVar != zzk.zza) {
                    zzk zzkVar2 = new zzk();
                    do {
                        zza zzaVar = zzfc;
                        zzaVar.zzc(zzkVar2, zzkVar);
                        if (zzaVar.zzg(this, zzkVar, zzkVar2)) {
                            do {
                                LockSupport.parkNanos(this, Math.min(nanos, ojk.f79805a));
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.value;
                                    if ((obj2 != null) & (!(obj2 instanceof zzf))) {
                                        return zzB(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    zzA(zzkVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            zzA(zzkVar2);
                        } else {
                            zzkVar = this.waiters;
                        }
                    } while (zzkVar != zzk.zza);
                }
                Object obj3 = this.value;
                obj3.getClass();
                return zzB(obj3);
            }
            while (nanos > 0) {
                Object obj4 = this.value;
                if ((obj4 != null) & (!(obj4 instanceof zzf))) {
                    return zzB(obj4);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String zzaqaVar = toString();
            String obj5 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj5.toLowerCase(locale);
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
            throw new TimeoutException(str + " for " + zzaqaVar);
        }
        throw new InterruptedException();
    }
}
