package com.google.android.gms.measurement.internal;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.sunia.HTREnginev2.bnp;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.nlp;
import com.sunia.HTREnginev2.olp;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zzhv extends bnp {

    /* renamed from: k */
    public static final AtomicLong f29835k = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: b */
    @Nullable
    public olp f29836b;

    /* renamed from: c */
    @Nullable
    public olp f29837c;

    /* renamed from: d */
    public final PriorityBlockingQueue<C5115c<?>> f29838d;

    /* renamed from: e */
    public final BlockingQueue<C5115c<?>> f29839e;

    /* renamed from: f */
    public final Thread.UncaughtExceptionHandler f29840f;

    /* renamed from: g */
    public final Thread.UncaughtExceptionHandler f29841g;

    /* renamed from: h */
    public final Object f29842h;

    /* renamed from: i */
    public final Semaphore f29843i;

    /* renamed from: j */
    public volatile boolean f29844j;

    public zzhv(zzhy zzhyVar) {
        super(zzhyVar);
        this.f29842h = new Object();
        this.f29843i = new Semaphore(2);
        this.f29838d = new PriorityBlockingQueue<>();
        this.f29839e = new LinkedBlockingQueue();
        this.f29840f = new nlp(this, "Thread death: Uncaught exception on worker thread");
        this.f29841g = new nlp(this, "Thread death: Uncaught exception on network thread");
    }

    @Nullable
    /* renamed from: c */
    public final <T> T m22495c(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            zzl().zzb(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException unused) {
                zzj().zzu().zza("Interrupted waiting for " + str);
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            zzj().zzu().zza("Timed out waiting for " + str);
        }
        return t;
    }

    /* renamed from: e */
    public final void m22496e(C5115c<?> c5115c) {
        synchronized (this.f29842h) {
            this.f29838d.add(c5115c);
            olp olpVar = this.f29836b;
            if (olpVar == null) {
                olp olpVar2 = new olp(this, "Measurement Worker", this.f29838d);
                this.f29836b = olpVar2;
                olpVar2.setUncaughtExceptionHandler(this.f29840f);
                this.f29836b.start();
            } else {
                olpVar.m56082a();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    public final void zzc(Runnable runnable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(runnable);
        m22496e(new C5115c<>(this, runnable, true, "Task exception on worker thread"));
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ zzab zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzag zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    public final boolean zzg() {
        return Thread.currentThread() == this.f29836b;
    }

    @Override // com.sunia.HTREnginev2.bnp
    public final boolean zzh() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzgh zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ zzgo zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ hlp zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ zzhv zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    public final void zzr() {
        if (Thread.currentThread() != this.f29837c) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    public final void zzt() {
        if (Thread.currentThread() != this.f29836b) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public final <V> Future<V> zza(Callable<V> callable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(callable);
        C5115c<?> c5115c = new C5115c<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f29836b) {
            if (!this.f29838d.isEmpty()) {
                zzj().zzu().zza("Callable skipped the worker queue.");
            }
            c5115c.run();
        } else {
            m22496e(c5115c);
        }
        return c5115c;
    }

    public final <V> Future<V> zzb(Callable<V> callable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(callable);
        C5115c<?> c5115c = new C5115c<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f29836b) {
            c5115c.run();
        } else {
            m22496e(c5115c);
        }
        return c5115c;
    }

    public final void zzb(Runnable runnable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(runnable);
        m22496e(new C5115c<>(this, runnable, false, "Task exception on worker thread"));
    }

    public final void zza(Runnable runnable) throws IllegalStateException {
        zzac();
        Preconditions.checkNotNull(runnable);
        C5115c<?> c5115c = new C5115c<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.f29842h) {
            this.f29839e.add(c5115c);
            olp olpVar = this.f29837c;
            if (olpVar == null) {
                olp olpVar2 = new olp(this, "Measurement Network", this.f29839e);
                this.f29837c = olpVar2;
                olpVar2.setUncaughtExceptionHandler(this.f29841g);
                this.f29837c.start();
            } else {
                olpVar.m56082a();
            }
        }
    }
}
