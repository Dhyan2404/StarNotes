package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.Clock;
import com.sunia.HTREnginev2.hgp;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.kqp;
import com.sunia.HTREnginev2.lrp;
import com.sunia.HTREnginev2.vpp;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zzmw extends kqp {

    /* renamed from: b */
    public final Map<String, vpp> f29967b;
    public final zzhb zza;
    public final zzhb zzb;
    public final zzhb zzc;
    public final zzhb zzd;
    public final zzhb zze;
    public final zzhb zzf;

    public zzmw(zznv zznvVar) {
        super(zznvVar);
        this.f29967b = new HashMap();
        hlp zzk = zzk();
        Objects.requireNonNull(zzk);
        this.zza = new zzhb(zzk, "last_delete_stale", 0L);
        hlp zzk2 = zzk();
        Objects.requireNonNull(zzk2);
        this.zzb = new zzhb(zzk2, "last_delete_stale_batch", 0L);
        hlp zzk3 = zzk();
        Objects.requireNonNull(zzk3);
        this.zzc = new zzhb(zzk3, "backoff", 0L);
        hlp zzk4 = zzk();
        Objects.requireNonNull(zzk4);
        this.zzd = new zzhb(zzk4, "last_upload", 0L);
        hlp zzk5 = zzk();
        Objects.requireNonNull(zzk5);
        this.zze = new zzhb(zzk5, "last_upload_attempt", 0L);
        hlp zzk6 = zzk();
        Objects.requireNonNull(zzk6);
        this.zzf = new zzhb(zzk6, "midnight_offset", 0L);
    }

    @WorkerThread
    @Deprecated
    /* renamed from: b */
    public final Pair<String, Boolean> m22589b(String str) {
        vpp vppVar;
        AdvertisingIdClient.Info info;
        zzt();
        long elapsedRealtime = zzb().elapsedRealtime();
        vpp vppVar2 = this.f29967b.get(str);
        if (vppVar2 != null && elapsedRealtime < vppVar2.f87804c) {
            return new Pair<>(vppVar2.f87802a, Boolean.valueOf(vppVar2.f87803b));
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        long m22286e = zze().m22286e(str) + elapsedRealtime;
        try {
            try {
                info = AdvertisingIdClient.getAdvertisingIdInfo(zza());
            } catch (PackageManager.NameNotFoundException unused) {
                if (vppVar2 != null && elapsedRealtime < vppVar2.f87804c + zze().zzc(str, zzbh.zzb)) {
                    return new Pair<>(vppVar2.f87802a, Boolean.valueOf(vppVar2.f87803b));
                }
                info = null;
            }
        } catch (Exception e) {
            zzj().zzc().zza("Unable to get advertising id", e);
            vppVar = new vpp("", false, m22286e);
        }
        if (info == null) {
            return new Pair<>("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
        }
        String id = info.getId();
        vppVar = id != null ? new vpp(id, info.isLimitAdTrackingEnabled(), m22286e) : new vpp("", info.isLimitAdTrackingEnabled(), m22286e);
        this.f29967b.put(str, vppVar);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(vppVar.f87802a, Boolean.valueOf(vppVar.f87803b));
    }

    @WorkerThread
    /* renamed from: c */
    public final Pair<String, Boolean> m22590c(String str, zzje zzjeVar) {
        return zzjeVar.zzg() ? m22589b(str) : new Pair<>("", Boolean.FALSE);
    }

    @WorkerThread
    @Deprecated
    /* renamed from: d */
    public final String m22591d(String str, boolean z) {
        zzt();
        String str2 = z ? (String) m22589b(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest m22733a0 = zzos.m22733a0();
        if (m22733a0 == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, m22733a0.digest(str2.getBytes())));
    }

    @Override // com.sunia.HTREnginev2.lqp
    /* renamed from: g_ */
    public final /* bridge */ /* synthetic */ zzoo mo22451g_() {
        return super.mo22451g_();
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

    @Override // com.sunia.HTREnginev2.kqp
    public final boolean zzc() {
        return false;
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

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ lrp zzg() {
        return super.zzg();
    }

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ hgp zzh() {
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

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ zzhl zzm() {
        return super.zzm();
    }

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ zzmw zzn() {
        return super.zzn();
    }

    @Override // com.sunia.HTREnginev2.lqp
    public final /* bridge */ /* synthetic */ zznu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }
}
