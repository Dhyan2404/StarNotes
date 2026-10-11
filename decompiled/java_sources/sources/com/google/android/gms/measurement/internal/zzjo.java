package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;

@VisibleForTesting
/* loaded from: classes5.dex */
public final class zzjo {

    /* renamed from: a */
    public final Context f29897a;

    /* renamed from: b */
    @Nullable
    public String f29898b;

    /* renamed from: c */
    @Nullable
    public String f29899c;

    /* renamed from: d */
    @Nullable
    public String f29900d;

    /* renamed from: e */
    @Nullable
    public Boolean f29901e;

    /* renamed from: f */
    public long f29902f;

    /* renamed from: g */
    @Nullable
    public com.google.android.gms.internal.measurement.zzdw f29903g;

    /* renamed from: h */
    public boolean f29904h;

    /* renamed from: i */
    @Nullable
    public Long f29905i;

    /* renamed from: j */
    @Nullable
    public String f29906j;

    @VisibleForTesting
    public zzjo(Context context, @Nullable com.google.android.gms.internal.measurement.zzdw zzdwVar, @Nullable Long l) {
        this.f29904h = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.f29897a = applicationContext;
        this.f29905i = l;
        if (zzdwVar != null) {
            this.f29903g = zzdwVar;
            this.f29898b = zzdwVar.zzf;
            this.f29899c = zzdwVar.zze;
            this.f29900d = zzdwVar.zzd;
            this.f29904h = zzdwVar.zzc;
            this.f29902f = zzdwVar.zzb;
            this.f29906j = zzdwVar.zzh;
            Bundle bundle = zzdwVar.zzg;
            if (bundle != null) {
                this.f29901e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
