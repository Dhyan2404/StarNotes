package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzhv;
import java.lang.Thread;

/* loaded from: classes5.dex */
public final class nlp implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public final String f78773a;

    /* renamed from: b */
    public final /* synthetic */ zzhv f78774b;

    public nlp(zzhv zzhvVar, String str) {
        this.f78774b = zzhvVar;
        Preconditions.checkNotNull(str);
        this.f78773a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.f78774b.zzj().zzg().zza(this.f78773a, th);
    }
}
