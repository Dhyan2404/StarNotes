package com.google.android.gms.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzjm;
import com.google.android.gms.measurement.internal.zzlb;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.android.gms.measurement.a */
/* loaded from: classes5.dex */
public final class C5108a extends AppMeasurement.AbstractC5107a {

    /* renamed from: a */
    public final zzlb f29649a;

    public C5108a(zzlb zzlbVar) {
        super();
        Preconditions.checkNotNull(zzlbVar);
        this.f29649a = zzlbVar;
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC5107a
    /* renamed from: a */
    public final Boolean mo22258a() {
        return (Boolean) this.f29649a.zza(4);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC5107a
    /* renamed from: b */
    public final Map<String, Object> mo22259b(boolean z) {
        return this.f29649a.zza((String) null, (String) null, z);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC5107a
    /* renamed from: c */
    public final Double mo22260c() {
        return (Double) this.f29649a.zza(2);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC5107a
    /* renamed from: d */
    public final Integer mo22261d() {
        return (Integer) this.f29649a.zza(3);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC5107a
    /* renamed from: e */
    public final Long mo22262e() {
        return (Long) this.f29649a.zza(1);
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC5107a
    /* renamed from: f */
    public final String mo22263f() {
        return (String) this.f29649a.zza(0);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final int zza(String str) {
        return this.f29649a.zza(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(String str) {
        this.f29649a.zzb(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzc(String str) {
        this.f29649a.zzc(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final long zzf() {
        return this.f29649a.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzg() {
        return this.f29649a.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzh() {
        return this.f29649a.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzi() {
        return this.f29649a.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzj() {
        return this.f29649a.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final Object zza(int i) {
        return this.f29649a.zza(i);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(String str, String str2, Bundle bundle) {
        this.f29649a.zzb(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final List<Bundle> zza(String str, String str2) {
        return this.f29649a.zza(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(zzjl zzjlVar) {
        this.f29649a.zzb(zzjlVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final Map<String, Object> zza(String str, String str2, boolean z) {
        return this.f29649a.zza(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(String str, String str2, Bundle bundle) {
        this.f29649a.zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(String str, String str2, Bundle bundle, long j) {
        this.f29649a.zza(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(zzjl zzjlVar) {
        this.f29649a.zza(zzjlVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(Bundle bundle) {
        this.f29649a.zza(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(zzjm zzjmVar) {
        this.f29649a.zza(zzjmVar);
    }
}
