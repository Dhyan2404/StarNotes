package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.sunia.HTREnginev2.bgp;
import com.sunia.HTREnginev2.hlp;
import java.lang.reflect.InvocationTargetException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zzag extends C5116d {

    /* renamed from: a */
    public Boolean f29705a;

    /* renamed from: b */
    public String f29706b;

    /* renamed from: c */
    public bgp f29707c;

    /* renamed from: d */
    public Boolean f29708d;

    public zzag(zzhy zzhyVar) {
        super(zzhyVar);
        this.f29707c = new bgp() { // from class: com.google.android.gms.measurement.internal.zzaf
            @Override // com.sunia.HTREnginev2.bgp
            public final String zza(String str, String str2) {
                return null;
            }
        };
    }

    public static long zzg() {
        return zzbh.zzd.zza(null).longValue();
    }

    public static long zzh() {
        return zzbh.zzk.zza(null).intValue();
    }

    public static long zzm() {
        return zzbh.zzae.zza(null).longValue();
    }

    public static long zzn() {
        return zzbh.zzz.zza(null).longValue();
    }

    /* renamed from: a */
    public final int m22282a(String str, boolean z) {
        if (z) {
            return zza(str, zzbh.zzat, 100, 500);
        }
        return 500;
    }

    /* renamed from: b */
    public final void m22283b(bgp bgpVar) {
        this.f29707c = bgpVar;
    }

    @VisibleForTesting
    /* renamed from: c */
    public final Bundle m22284c() {
        try {
            if (zza().getPackageManager() == null) {
                zzj().zzg().zza("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(zza()).getApplicationInfo(zza().getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            zzj().zzg().zza("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            zzj().zzg().zza("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    /* renamed from: d */
    public final int m22285d(String str, boolean z) {
        return Math.max(m22282a(str, z), 256);
    }

    @WorkerThread
    /* renamed from: e */
    public final long m22286e(String str) {
        return zzc(str, zzbh.zza);
    }

    @VisibleForTesting
    /* renamed from: f */
    public final Boolean m22287f(@Size(min = 1) String str) {
        Preconditions.checkNotEmpty(str);
        Bundle m22284c = m22284c();
        if (m22284c == null) {
            zzj().zzg().zza("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (m22284c.containsKey(str)) {
            return Boolean.valueOf(m22284c.getBoolean(str));
        }
        return null;
    }

    @WorkerThread
    /* renamed from: g */
    public final String m22288g(String str) {
        return zzd(str, zzbh.zzan);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x002a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.VisibleForTesting
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m22289h(@androidx.annotation.Size(min = 1) java.lang.String r4) {
        /*
            r3 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r4)
            android.os.Bundle r0 = r3.m22284c()
            r1 = 0
            if (r0 != 0) goto L19
            com.google.android.gms.measurement.internal.zzgo r4 = r3.zzj()
            com.google.android.gms.measurement.internal.zzgq r4 = r4.zzg()
            java.lang.String r0 = "Failed to load metadata: Metadata bundle is null"
            r4.zza(r0)
        L17:
            r4 = r1
            goto L28
        L19:
            boolean r2 = r0.containsKey(r4)
            if (r2 != 0) goto L20
            goto L17
        L20:
            int r4 = r0.getInt(r4)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
        L28:
            if (r4 != 0) goto L2b
            return r1
        L2b:
            android.content.Context r0 = r3.zza()     // Catch: android.content.res.Resources.NotFoundException -> L43
            android.content.res.Resources r0 = r0.getResources()     // Catch: android.content.res.Resources.NotFoundException -> L43
            int r4 = r4.intValue()     // Catch: android.content.res.Resources.NotFoundException -> L43
            java.lang.String[] r4 = r0.getStringArray(r4)     // Catch: android.content.res.Resources.NotFoundException -> L43
            if (r4 != 0) goto L3e
            return r1
        L3e:
            java.util.List r3 = java.util.Arrays.asList(r4)     // Catch: android.content.res.Resources.NotFoundException -> L43
            return r3
        L43:
            r4 = move-exception
            com.google.android.gms.measurement.internal.zzgo r3 = r3.zzj()
            com.google.android.gms.measurement.internal.zzgq r3 = r3.zzg()
            java.lang.String r0 = "Failed to load string array from metadata: resource not found"
            r3.zza(r0, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzag.m22289h(java.lang.String):java.util.List");
    }

    @WorkerThread
    /* renamed from: i */
    public final boolean m22290i() {
        if (this.f29705a == null) {
            Boolean m22287f = m22287f("app_measurement_lite");
            this.f29705a = m22287f;
            if (m22287f == null) {
                this.f29705a = Boolean.FALSE;
            }
        }
        return this.f29705a.booleanValue() || !this.zzu.zzag();
    }

    @WorkerThread
    public final double zza(String str, zzfz<Double> zzfzVar) {
        if (TextUtils.isEmpty(str)) {
            return zzfzVar.zza(null).doubleValue();
        }
        String zza = this.f29707c.zza(str, zzfzVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzfzVar.zza(null).doubleValue();
        }
        try {
            return zzfzVar.zza(Double.valueOf(Double.parseDouble(zza))).doubleValue();
        } catch (NumberFormatException unused) {
            return zzfzVar.zza(null).doubleValue();
        }
    }

    public final int zzb(@Size(min = 1) String str) {
        return zza(str, zzbh.zzak, 25, 100);
    }

    public final int zzc() {
        return zzq().zza(201500000, true) ? 100 : 25;
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

    public final String zzo() {
        return zza("debug.firebase.analytics.app", "");
    }

    public final String zzp() {
        return zza("debug.deferred.deeplink", "");
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

    public final String zzu() {
        return this.f29706b;
    }

    public final boolean zzv() {
        Boolean m22287f = m22287f("google_analytics_adid_collection_enabled");
        return m22287f == null || m22287f.booleanValue();
    }

    public final boolean zzw() {
        Boolean m22287f = m22287f("google_analytics_automatic_screen_reporting_enabled");
        return m22287f == null || m22287f.booleanValue();
    }

    public final boolean zzx() {
        Boolean m22287f = m22287f("firebase_analytics_collection_deactivated");
        return m22287f != null && m22287f.booleanValue();
    }

    @EnsuresNonNull({"this.isMainProcess"})
    public final boolean zzz() {
        if (this.f29708d == null) {
            synchronized (this) {
                if (this.f29708d == null) {
                    ApplicationInfo applicationInfo = zza().getApplicationInfo();
                    String myProcessName = ProcessUtils.getMyProcessName();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f29708d = Boolean.valueOf(str != null && str.equals(myProcessName));
                    }
                    if (this.f29708d == null) {
                        this.f29708d = Boolean.TRUE;
                        zzj().zzg().zza("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f29708d.booleanValue();
    }

    @WorkerThread
    public final int zzb(String str, zzfz<Integer> zzfzVar) {
        if (TextUtils.isEmpty(str)) {
            return zzfzVar.zza(null).intValue();
        }
        String zza = this.f29707c.zza(str, zzfzVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzfzVar.zza(null).intValue();
        }
        try {
            return zzfzVar.zza(Integer.valueOf(Integer.parseInt(zza))).intValue();
        } catch (NumberFormatException unused) {
            return zzfzVar.zza(null).intValue();
        }
    }

    @WorkerThread
    public final int zzc(@Size(min = 1) String str) {
        return zzb(str, zzbh.zzo);
    }

    @WorkerThread
    public final String zzd(String str, zzfz<String> zzfzVar) {
        if (TextUtils.isEmpty(str)) {
            return zzfzVar.zza(null);
        }
        return zzfzVar.zza(this.f29707c.zza(str, zzfzVar.zza()));
    }

    public final boolean zze(String str, zzfz<Boolean> zzfzVar) {
        return zzf(str, zzfzVar);
    }

    @WorkerThread
    public final boolean zzf(String str, zzfz<Boolean> zzfzVar) {
        if (TextUtils.isEmpty(str)) {
            return zzfzVar.zza(null).booleanValue();
        }
        String zza = this.f29707c.zza(str, zzfzVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzfzVar.zza(null).booleanValue();
        }
        return zzfzVar.zza(Boolean.valueOf("1".equals(zza))).booleanValue();
    }

    @WorkerThread
    public final boolean zzi(String str) {
        return zzf(str, zzbh.zzam);
    }

    public final boolean zzj(String str) {
        return "1".equals(this.f29707c.zza(str, "gaia_collection_enabled"));
    }

    public final boolean zzk(String str) {
        return "1".equals(this.f29707c.zza(str, "measurement.event_sampling_enabled"));
    }

    @WorkerThread
    public final long zzc(String str, zzfz<Long> zzfzVar) {
        if (TextUtils.isEmpty(str)) {
            return zzfzVar.zza(null).longValue();
        }
        String zza = this.f29707c.zza(str, zzfzVar.zza());
        if (TextUtils.isEmpty(zza)) {
            return zzfzVar.zza(null).longValue();
        }
        try {
            return zzfzVar.zza(Long.valueOf(Long.parseLong(zza))).longValue();
        } catch (NumberFormatException unused) {
            return zzfzVar.zza(null).longValue();
        }
    }

    public final void zzh(String str) {
        this.f29706b = str;
    }

    public final int zza(@Size(min = 1) String str) {
        return zza(str, zzbh.zzaj, 500, 2000);
    }

    @WorkerThread
    public final int zza(String str, zzfz<Integer> zzfzVar, int i, int i2) {
        return Math.max(Math.min(zzb(str, zzfzVar), i2), i);
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    public final zzjh zzc(String str, boolean z) {
        Object obj;
        Preconditions.checkNotEmpty(str);
        Bundle m22284c = m22284c();
        if (m22284c == null) {
            zzj().zzg().zza("Failed to load metadata: Metadata bundle is null");
            obj = null;
        } else {
            obj = m22284c.get(str);
        }
        if (obj == null) {
            return zzjh.UNINITIALIZED;
        }
        if (Boolean.TRUE.equals(obj)) {
            return zzjh.GRANTED;
        }
        if (Boolean.FALSE.equals(obj)) {
            return zzjh.DENIED;
        }
        if (z && "eu_consent_policy".equals(obj)) {
            return zzjh.POLICY;
        }
        zzj().zzu().zza("Invalid manifest metadata for", str);
        return zzjh.UNINITIALIZED;
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final String zza(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
            Preconditions.checkNotNull(str3);
            return str3;
        } catch (ClassNotFoundException e) {
            zzj().zzg().zza("Could not find SystemProperties class", e);
            return str2;
        } catch (IllegalAccessException e2) {
            zzj().zzg().zza("Could not access SystemProperties.get()", e2);
            return str2;
        } catch (NoSuchMethodException e3) {
            zzj().zzg().zza("Could not find SystemProperties.get() method", e3);
            return str2;
        } catch (InvocationTargetException e4) {
            zzj().zzg().zza("SystemProperties.get() threw an exception", e4);
            return str2;
        }
    }

    public final boolean zza(zzfz<Boolean> zzfzVar) {
        return zzf(null, zzfzVar);
    }
}
