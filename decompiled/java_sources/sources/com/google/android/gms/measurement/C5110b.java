package com.google.android.gms.measurement;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.zzhy;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzjm;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzon;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.android.gms.measurement.b */
/* loaded from: classes5.dex */
public final class C5110b extends AppMeasurement.AbstractC5107a {

    /* renamed from: a */
    public final zzhy f29651a;

    /* renamed from: b */
    public final zzjq f29652b;

    public C5110b(@NonNull zzhy zzhyVar) {
        super();
        Preconditions.checkNotNull(zzhyVar);
        this.f29651a = zzhyVar;
        this.f29652b = zzhyVar.zzp();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC5107a
    /* renamed from: a */
    public final Boolean mo22258a() {
        return this.f29652b.zzac();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC5107a
    /* renamed from: b */
    public final Map<String, Object> mo22259b(boolean z) {
        List<zzon> zza = this.f29652b.zza(z);
        ArrayMap arrayMap = new ArrayMap(zza.size());
        for (zzon zzonVar : zza) {
            Object zza2 = zzonVar.zza();
            if (zza2 != null) {
                arrayMap.put(zzonVar.zza, zza2);
            }
        }
        return arrayMap;
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC5107a
    /* renamed from: c */
    public final Double mo22260c() {
        return this.f29652b.zzad();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC5107a
    /* renamed from: d */
    public final Integer mo22261d() {
        return this.f29652b.zzae();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC5107a
    /* renamed from: e */
    public final Long mo22262e() {
        return this.f29652b.zzaf();
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.AbstractC5107a
    /* renamed from: f */
    public final String mo22263f() {
        return this.f29652b.zzak();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final int zza(String str) {
        return zzjq.zza(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(String str) {
        this.f29651a.zze().zza(str, this.f29651a.zzb().elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzc(String str) {
        this.f29651a.zze().zzb(str, this.f29651a.zzb().elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final long zzf() {
        return this.f29651a.zzt().zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzg() {
        return this.f29652b.zzag();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzh() {
        return this.f29652b.zzah();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzi() {
        return this.f29652b.zzai();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final String zzj() {
        return this.f29652b.zzag();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final Object zza(int i) {
        if (i == 0) {
            return mo22263f();
        }
        if (i == 1) {
            return mo22262e();
        }
        if (i == 2) {
            return mo22260c();
        }
        if (i == 3) {
            return mo22261d();
        }
        if (i != 4) {
            return null;
        }
        return mo22258a();
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(String str, String str2, Bundle bundle) {
        this.f29652b.zzb(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zzb(zzjl zzjlVar) {
        this.f29652b.zzb(zzjlVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final List<Bundle> zza(String str, String str2) {
        return this.f29652b.zza(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final Map<String, Object> zza(String str, String str2, boolean z) {
        return this.f29652b.zza(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(String str, String str2, Bundle bundle) {
        this.f29651a.zzp().zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(String str, String str2, Bundle bundle, long j) {
        this.f29652b.zza(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(zzjl zzjlVar) {
        this.f29652b.zza(zzjlVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(Bundle bundle) {
        this.f29652b.zzb(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlb
    public final void zza(zzjm zzjmVar) {
        this.f29652b.zza(zzjmVar);
    }
}
