package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.tasks.OnFailureListener;
import java.time.Duration;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes5.dex */
public final class zzgm {

    /* renamed from: d */
    public static zzgm f29766d;

    /* renamed from: e */
    public static final Duration f29767e = Duration.ofMinutes(30);

    /* renamed from: a */
    public final zzhy f29768a;

    /* renamed from: b */
    public final TelemetryLoggingClient f29769b;

    /* renamed from: c */
    public final AtomicLong f29770c = new AtomicLong(-1);

    public zzgm(Context context, zzhy zzhyVar) {
        this.f29769b = TelemetryLogging.getClient(context, TelemetryLoggingOptions.builder().setApi("measurement:api").build());
        this.f29768a = zzhyVar;
    }

    /* renamed from: a */
    public static zzgm m22439a(zzhy zzhyVar) {
        if (f29766d == null) {
            f29766d = new zzgm(zzhyVar.zza(), zzhyVar);
        }
        return f29766d;
    }

    /* renamed from: b */
    public final /* synthetic */ void m22440b(long j, Exception exc) {
        this.f29770c.set(j);
    }

    public final synchronized void zza(int i, int i2, long j, long j2, int i3) {
        final long elapsedRealtime = this.f29768a.zzb().elapsedRealtime();
        if (this.f29770c.get() == -1 || elapsedRealtime - this.f29770c.get() > f29767e.toMillis()) {
            this.f29769b.log(new TelemetryData(0, Arrays.asList(new MethodInvocation(36301, i2, 0, j, j2, null, null, 0, i3)))).addOnFailureListener(new OnFailureListener() { // from class: com.google.android.gms.measurement.internal.zzgl
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    zzgm.this.m22440b(elapsedRealtime, exc);
                }
            });
        }
    }
}
