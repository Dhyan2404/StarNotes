package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.jfp;
import com.sunia.HTREnginev2.ojp;
import com.sunia.HTREnginev2.xjp;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zzb extends xjp {

    /* renamed from: a */
    public final Map<String, Long> f29727a;

    /* renamed from: b */
    public final Map<String, Integer> f29728b;

    /* renamed from: c */
    public long f29729c;

    public zzb(zzhy zzhyVar) {
        super(zzhyVar);
        this.f29728b = new ArrayMap();
        this.f29727a = new ArrayMap();
    }

    /* renamed from: c */
    public static /* synthetic */ void m22298c(zzb zzbVar, String str, long j) {
        zzbVar.zzt();
        Preconditions.checkNotEmpty(str);
        if (zzbVar.f29728b.isEmpty()) {
            zzbVar.f29729c = j;
        }
        Integer num = zzbVar.f29728b.get(str);
        if (num != null) {
            zzbVar.f29728b.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (zzbVar.f29728b.size() >= 100) {
            zzbVar.zzj().zzu().zza("Too many ads visible");
        } else {
            zzbVar.f29728b.put(str, 1);
            zzbVar.f29727a.put(str, Long.valueOf(j));
        }
    }

    /* renamed from: f */
    public static /* synthetic */ void m22299f(zzb zzbVar, String str, long j) {
        zzbVar.zzt();
        Preconditions.checkNotEmpty(str);
        Integer num = zzbVar.f29728b.get(str);
        if (num == null) {
            zzbVar.zzj().zzg().zza("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        zzlk zza = zzbVar.zzn().zza(false);
        int intValue = num.intValue() - 1;
        if (intValue != 0) {
            zzbVar.f29728b.put(str, Integer.valueOf(intValue));
            return;
        }
        zzbVar.f29728b.remove(str);
        Long l = zzbVar.f29727a.get(str);
        if (l == null) {
            zzbVar.zzj().zzg().zza("First ad unit exposure time was never set");
        } else {
            long longValue = j - l.longValue();
            zzbVar.f29727a.remove(str);
            zzbVar.m22301d(str, longValue, zza);
        }
        if (zzbVar.f29728b.isEmpty()) {
            long j2 = zzbVar.f29729c;
            if (j2 == 0) {
                zzbVar.zzj().zzg().zza("First ad exposure time was never set");
            } else {
                zzbVar.m22300a(j - j2, zza);
                zzbVar.f29729c = 0L;
            }
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m22300a(long j, zzlk zzlkVar) {
        if (zzlkVar == null) {
            zzj().zzp().zza("Not logging ad exposure. No active activity");
            return;
        }
        if (j < 1000) {
            zzj().zzp().zza("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j);
        zzos.zza(zzlkVar, bundle, true);
        zzm().m22544I("am", "_xa", bundle);
    }

    @WorkerThread
    /* renamed from: d */
    public final void m22301d(String str, long j, zzlk zzlkVar) {
        if (zzlkVar == null) {
            zzj().zzp().zza("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j < 1000) {
            zzj().zzp().zza("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j);
        zzos.zza(zzlkVar, bundle, true);
        zzm().m22544I("am", "_xu", bundle);
    }

    @WorkerThread
    /* renamed from: e */
    public final void m22302e(long j) {
        Iterator<String> it2 = this.f29727a.keySet().iterator();
        while (it2.hasNext()) {
            this.f29727a.put(it2.next(), Long.valueOf(j));
        }
        if (this.f29727a.isEmpty()) {
            return;
        }
        this.f29729c = j;
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

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
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

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzgg zzg() {
        return super.zzg();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzgf zzh() {
        return super.zzh();
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

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzjq zzm() {
        return super.zzm();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzlj zzn() {
        return super.zzn();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzls zzo() {
        return super.zzo();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zznb zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.sunia.HTREnginev2.xjp, com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.sunia.HTREnginev2.xjp, com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.sunia.HTREnginev2.xjp, com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    public final void zza(String str, long j) {
        if (str != null && str.length() != 0) {
            zzl().zzb(new jfp(this, str, j));
        } else {
            zzj().zzg().zza("Ad unit id must be a non-empty string");
        }
    }

    public final void zzb(String str, long j) {
        if (str != null && str.length() != 0) {
            zzl().zzb(new ojp(this, str, j));
        } else {
            zzj().zzg().zza("Ad unit id must be a non-empty string");
        }
    }

    @WorkerThread
    public final void zza(long j) {
        zzlk zza = zzn().zza(false);
        for (String str : this.f29727a.keySet()) {
            m22301d(str, j - this.f29727a.get(str).longValue(), zza);
        }
        if (!this.f29727a.isEmpty()) {
            m22300a(j - this.f29729c, zza);
        }
        m22302e(j);
    }
}
