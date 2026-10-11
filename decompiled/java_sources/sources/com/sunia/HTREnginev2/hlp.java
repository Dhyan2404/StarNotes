package com.sunia.HTREnginev2;

import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzax;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzgz;
import com.google.android.gms.measurement.internal.zzhb;
import com.google.android.gms.measurement.internal.zzhc;
import com.google.android.gms.measurement.internal.zzhd;
import com.google.android.gms.measurement.internal.zzhe;
import com.google.android.gms.measurement.internal.zzhy;
import com.google.android.gms.measurement.internal.zzje;
import com.google.android.gms.measurement.internal.zznm;
import com.google.common.annotations.VisibleForTesting;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes5.dex */
public final class hlp extends bnp {

    /* renamed from: A */
    public static final Pair<String, Long> f72319A = new Pair<>("", 0L);

    /* renamed from: b */
    public SharedPreferences f72320b;

    /* renamed from: c */
    public Object f72321c;

    /* renamed from: d */
    public SharedPreferences f72322d;

    /* renamed from: e */
    public zzhe f72323e;

    /* renamed from: f */
    public final zzhb f72324f;

    /* renamed from: g */
    public final zzhb f72325g;

    /* renamed from: h */
    public final zzhd f72326h;

    /* renamed from: i */
    public String f72327i;

    /* renamed from: j */
    public boolean f72328j;

    /* renamed from: k */
    public long f72329k;

    /* renamed from: l */
    public final zzhb f72330l;

    /* renamed from: m */
    public final zzgz f72331m;

    /* renamed from: n */
    public final zzhd f72332n;

    /* renamed from: o */
    public final zzhc f72333o;

    /* renamed from: p */
    public final zzgz f72334p;

    /* renamed from: q */
    public final zzhb f72335q;

    /* renamed from: r */
    public final zzhb f72336r;

    /* renamed from: s */
    public boolean f72337s;

    /* renamed from: t */
    public zzgz f72338t;

    /* renamed from: u */
    public zzgz f72339u;

    /* renamed from: v */
    public zzhb f72340v;

    /* renamed from: w */
    public final zzhd f72341w;

    /* renamed from: x */
    public final zzhd f72342x;

    /* renamed from: y */
    public final zzhb f72343y;

    /* renamed from: z */
    public final zzhc f72344z;

    public hlp(zzhy zzhyVar) {
        super(zzhyVar);
        this.f72321c = new Object();
        this.f72330l = new zzhb(this, "session_timeout", 1800000L);
        this.f72331m = new zzgz(this, "start_new_session", true);
        this.f72335q = new zzhb(this, "last_pause_time", 0L);
        this.f72336r = new zzhb(this, "session_id", 0L);
        this.f72332n = new zzhd(this, "non_personalized_ads", null);
        this.f72333o = new zzhc(this, "last_received_uri_timestamps_by_source", null);
        this.f72334p = new zzgz(this, "allow_remote_dynamite", false);
        this.f72324f = new zzhb(this, "first_open_time", 0L);
        this.f72325g = new zzhb(this, "app_install_time", 0L);
        this.f72326h = new zzhd(this, "app_instance_id", null);
        this.f72338t = new zzgz(this, "app_backgrounded", false);
        this.f72339u = new zzgz(this, "deep_link_retrieval_complete", false);
        this.f72340v = new zzhb(this, "deep_link_retrieval_attempts", 0L);
        this.f72341w = new zzhd(this, "firebase_feature_rollouts", null);
        this.f72342x = new zzhd(this, "deferred_attribution_cache", null);
        this.f72343y = new zzhb(this, "deferred_attribution_cache_timestamp", 0L);
        this.f72344z = new zzhc(this, "default_event_parameters", null);
    }

    @WorkerThread
    /* renamed from: b */
    public final Pair<String, Boolean> m54567b(String str) {
        zzt();
        if (!m54580o().zza(zzje.zza.AD_STORAGE)) {
            return new Pair<>("", Boolean.FALSE);
        }
        long elapsedRealtime = zzb().elapsedRealtime();
        if (this.f72327i != null && elapsedRealtime < this.f72329k) {
            return new Pair<>(this.f72327i, Boolean.valueOf(this.f72328j));
        }
        this.f72329k = elapsedRealtime + zze().m22286e(str);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zza());
            this.f72327i = "";
            String id = advertisingIdInfo.getId();
            if (id != null) {
                this.f72327i = id;
            }
            this.f72328j = advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Exception e) {
            zzj().zzc().zza("Unable to get advertising id", e);
            this.f72327i = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.f72327i, Boolean.valueOf(this.f72328j));
    }

    /* renamed from: c */
    public final void m54568c(SparseArray<Long> sparseArray) {
        if (sparseArray == null) {
            this.f72333o.zza(null);
            return;
        }
        int[] iArr = new int[sparseArray.size()];
        long[] jArr = new long[sparseArray.size()];
        for (int i = 0; i < sparseArray.size(); i++) {
            iArr[i] = sparseArray.keyAt(i);
            jArr[i] = sparseArray.valueAt(i).longValue();
        }
        Bundle bundle = new Bundle();
        bundle.putIntArray("uriSources", iArr);
        bundle.putLongArray("uriTimestamps", jArr);
        this.f72333o.zza(bundle);
    }

    /* renamed from: d */
    public final boolean m54569d(long j) {
        return j - this.f72330l.zza() > this.f72335q.zza();
    }

    @WorkerThread
    /* renamed from: e */
    public final boolean m54570e(zzax zzaxVar) {
        zzt();
        if (!zzje.zza(zzaxVar.zza(), m54579n().zza())) {
            return false;
        }
        SharedPreferences.Editor edit = m54577l().edit();
        edit.putString("dma_consent_settings", zzaxVar.zzf());
        edit.apply();
        return true;
    }

    @WorkerThread
    /* renamed from: f */
    public final boolean m54571f(zzje zzjeVar) {
        zzt();
        int zza = zzjeVar.zza();
        if (!zza(zza)) {
            return false;
        }
        SharedPreferences.Editor edit = m54577l().edit();
        edit.putString("consent_settings", zzjeVar.zzf());
        edit.putInt("consent_source", zza);
        edit.apply();
        return true;
    }

    @WorkerThread
    /* renamed from: g */
    public final boolean m54572g(zznm zznmVar) {
        zzt();
        String string = m54577l().getString("stored_tcf_param", "");
        String m22604c = zznmVar.m22604c();
        if (m22604c.equals(string)) {
            return false;
        }
        SharedPreferences.Editor edit = m54577l().edit();
        edit.putString("stored_tcf_param", m22604c);
        edit.apply();
        return true;
    }

    @WorkerThread
    /* renamed from: h */
    public final void m54573h(Boolean bool) {
        zzt();
        SharedPreferences.Editor edit = m54577l().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled_from_api");
        }
        edit.apply();
    }

    @WorkerThread
    /* renamed from: i */
    public final void m54574i(String str) {
        zzt();
        SharedPreferences.Editor edit = m54577l().edit();
        edit.putString("admob_app_id", str);
        edit.apply();
    }

    @WorkerThread
    /* renamed from: j */
    public final SharedPreferences m54575j() {
        zzt();
        zzac();
        if (this.f72322d == null) {
            synchronized (this.f72321c) {
                if (this.f72322d == null) {
                    String str = zza().getPackageName() + "_preferences";
                    zzj().zzp().zza("Default prefs file", str);
                    this.f72322d = zza().getSharedPreferences(str, 0);
                }
            }
        }
        return this.f72322d;
    }

    @WorkerThread
    /* renamed from: k */
    public final void m54576k(String str) {
        zzt();
        SharedPreferences.Editor edit = m54577l().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: l */
    public final SharedPreferences m54577l() {
        zzt();
        zzac();
        Preconditions.checkNotNull(this.f72320b);
        return this.f72320b;
    }

    /* renamed from: m */
    public final SparseArray<Long> m54578m() {
        Bundle zza = this.f72333o.zza();
        if (zza == null) {
            return new SparseArray<>();
        }
        int[] intArray = zza.getIntArray("uriSources");
        long[] longArray = zza.getLongArray("uriTimestamps");
        if (intArray == null || longArray == null) {
            return new SparseArray<>();
        }
        if (intArray.length != longArray.length) {
            zzj().zzg().zza("Trigger URI source and timestamp array lengths do not match");
            return new SparseArray<>();
        }
        SparseArray<Long> sparseArray = new SparseArray<>();
        for (int i = 0; i < intArray.length; i++) {
            sparseArray.put(intArray[i], Long.valueOf(longArray[i]));
        }
        return sparseArray;
    }

    @WorkerThread
    /* renamed from: n */
    public final zzax m54579n() {
        zzt();
        return zzax.zza(m54577l().getString("dma_consent_settings", null));
    }

    @WorkerThread
    /* renamed from: o */
    public final zzje m54580o() {
        zzt();
        return zzje.zza(m54577l().getString("consent_settings", "G1"), m54577l().getInt("consent_source", 100));
    }

    @WorkerThread
    /* renamed from: p */
    public final Boolean m54581p() {
        zzt();
        if (m54577l().contains("use_service")) {
            return Boolean.valueOf(m54577l().getBoolean("use_service", false));
        }
        return null;
    }

    @WorkerThread
    /* renamed from: q */
    public final Boolean m54582q() {
        zzt();
        if (m54577l().contains("measurement_enabled_from_api")) {
            return Boolean.valueOf(m54577l().getBoolean("measurement_enabled_from_api", true));
        }
        return null;
    }

    @WorkerThread
    /* renamed from: r */
    public final Boolean m54583r() {
        zzt();
        if (m54577l().contains("measurement_enabled")) {
            return Boolean.valueOf(m54577l().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    @WorkerThread
    /* renamed from: s */
    public final String m54584s() {
        zzt();
        String string = m54577l().getString("previous_os_version", null);
        zzf().zzac();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor edit = m54577l().edit();
            edit.putString("previous_os_version", str);
            edit.apply();
        }
        return string;
    }

    @WorkerThread
    /* renamed from: t */
    public final String m54585t() {
        zzt();
        return m54577l().getString("gmp_app_id", null);
    }

    @WorkerThread
    /* renamed from: u */
    public final void m54586u() {
        zzt();
        Boolean m54583r = m54583r();
        SharedPreferences.Editor edit = m54577l().edit();
        edit.clear();
        edit.apply();
        if (m54583r != null) {
            zza(m54583r);
        }
    }

    @WorkerThread
    public final void zza(Boolean bool) {
        zzt();
        SharedPreferences.Editor edit = m54577l().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    @Override // com.sunia.HTREnginev2.bnp
    @EnsuresNonNull.List({@EnsuresNonNull({"this.preferences"}), @EnsuresNonNull({"this.monitoringSample"})})
    @WorkerThread
    public final void zzaa() {
        SharedPreferences sharedPreferences = zza().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f72320b = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.f72337s = z;
        if (!z) {
            SharedPreferences.Editor edit = this.f72320b.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f72323e = new zzhe(this, "health_monitor", Math.max(0L, zzbh.zzc.zza(null).longValue()));
    }

    @WorkerThread
    public final boolean zzab() {
        SharedPreferences sharedPreferences = this.f72320b;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    @WorkerThread
    public final void zzb(boolean z) {
        zzt();
        zzj().zzp().zza("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m54577l().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    @Override // com.sunia.HTREnginev2.bnp
    public final boolean zzh() {
        return true;
    }

    @WorkerThread
    public final String zzx() {
        zzt();
        return m54577l().getString("admob_app_id", null);
    }

    @WorkerThread
    public final void zza(boolean z) {
        zzt();
        SharedPreferences.Editor edit = m54577l().edit();
        edit.putBoolean("use_service", z);
        edit.apply();
    }

    @WorkerThread
    public final boolean zza(int i) {
        return zzje.zza(i, m54577l().getInt("consent_source", 100));
    }
}
