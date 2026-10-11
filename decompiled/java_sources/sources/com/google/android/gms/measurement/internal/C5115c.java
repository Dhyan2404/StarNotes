package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: com.google.android.gms.measurement.internal.c */
/* loaded from: classes5.dex */
public final class C5115c<V> extends FutureTask<V> implements Comparable<C5115c<V>> {

    /* renamed from: e */
    public final long f29666e;

    /* renamed from: f */
    public final boolean f29667f;

    /* renamed from: g */
    public final String f29668g;

    /* renamed from: h */
    public final /* synthetic */ zzhv f29669h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5115c(zzhv zzhvVar, Runnable runnable, boolean z, String str) {
        super(com.google.android.gms.internal.measurement.zzdg.zza().zza(runnable), null);
        AtomicLong atomicLong;
        this.f29669h = zzhvVar;
        Preconditions.checkNotNull(str);
        atomicLong = zzhv.f29835k;
        long andIncrement = atomicLong.getAndIncrement();
        this.f29666e = andIncrement;
        this.f29668g = str;
        this.f29667f = z;
        if (andIncrement == Long.MAX_VALUE) {
            zzhvVar.zzj().zzg().zza("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(@NonNull Object obj) {
        C5115c c5115c = (C5115c) obj;
        boolean z = this.f29667f;
        if (z != c5115c.f29667f) {
            return z ? -1 : 1;
        }
        long j = this.f29666e;
        long j2 = c5115c.f29666e;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.f29669h.zzj().zzn().zza("Two tasks share the same index. index", Long.valueOf(this.f29666e));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.f29669h.zzj().zzg().zza(this.f29668g, th);
        if ((th instanceof zzhu) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5115c(zzhv zzhvVar, Callable<V> callable, boolean z, String str) {
        super(com.google.android.gms.internal.measurement.zzdg.zza().zza(callable));
        AtomicLong atomicLong;
        this.f29669h = zzhvVar;
        Preconditions.checkNotNull(str);
        atomicLong = zzhv.f29835k;
        long andIncrement = atomicLong.getAndIncrement();
        this.f29666e = andIncrement;
        this.f29668g = str;
        this.f29667f = z;
        if (andIncrement == Long.MAX_VALUE) {
            zzhvVar.zzj().zzg().zza("Tasks index overflow");
        }
    }
}
