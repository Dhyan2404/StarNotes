package com.sunia.HTREnginev2;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzjt;
import com.google.android.gms.internal.measurement.zzpu;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzag;
import com.google.android.gms.measurement.internal.zzaq;
import com.google.android.gms.measurement.internal.zzar;
import com.google.android.gms.measurement.internal.zzax;
import com.google.android.gms.measurement.internal.zzbc;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzfz;
import com.google.android.gms.measurement.internal.zzgo;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzje;
import com.google.android.gms.measurement.internal.zzji;
import com.google.android.gms.measurement.internal.zzjj;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzno;
import com.google.android.gms.measurement.internal.zznt;
import com.google.android.gms.measurement.internal.zznv;
import com.google.android.gms.measurement.internal.zzoo;
import com.google.android.gms.measurement.internal.zzos;
import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class hgp extends kqp {

    /* renamed from: d */
    public static final String[] f72183d = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: e */
    public static final String[] f72184e = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: f */
    public static final String[] f72185f = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;", "daily_registered_triggers_count", "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;"};

    /* renamed from: g */
    public static final String[] f72186g = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: h */
    public static final String[] f72187h = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: i */
    public static final String[] f72188i = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: j */
    public static final String[] f72189j = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: k */
    public static final String[] f72190k = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: l */
    public static final String[] f72191l = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};

    /* renamed from: m */
    public static final String[] f72192m = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};

    /* renamed from: b */
    public final ygp f72193b;

    /* renamed from: c */
    public final iqp f72194c;

    public hgp(zznv zznvVar) {
        super(zznvVar);
        this.f72194c = new iqp(zzb());
        this.f72193b = new ygp(this, zza(), "google_app_measurement.db");
    }

    @WorkerThread
    /* renamed from: w */
    public static void m54478w(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put(str, (Double) obj);
        }
    }

    /* renamed from: A */
    public final void m54479A(String str, Bundle bundle) {
        Preconditions.checkNotNull(bundle);
        zzt();
        zzal();
        zzar zzarVar = new zzar(this, str);
        for (List<ngp> zza = zzarVar.zza(); !zza.isEmpty(); zza = zzarVar.zza()) {
            for (ngp ngpVar : zza) {
                zzoo mo22451g_ = mo22451g_();
                zzfy.zzf zzfVar = ngpVar.f78639d;
                Bundle bundle2 = new Bundle();
                for (zzfy.zzh zzhVar : zzfVar.zzh()) {
                    if (zzhVar.zzj()) {
                        bundle2.putDouble(zzhVar.zzg(), zzhVar.zza());
                    } else if (zzhVar.zzk()) {
                        bundle2.putFloat(zzhVar.zzg(), zzhVar.zzb());
                    } else if (zzhVar.zzl()) {
                        bundle2.putLong(zzhVar.zzg(), zzhVar.zzd());
                    } else if (zzhVar.zzn()) {
                        bundle2.putString(zzhVar.zzg(), zzhVar.zzh());
                    } else if (zzhVar.zzi().isEmpty()) {
                        mo22451g_.zzj().zzg().zza("Unexpected parameter type for parameter", zzhVar);
                    } else {
                        bundle2.putParcelableArray(zzhVar.zzg(), zzoo.m22689K(zzhVar.zzi()));
                    }
                }
                String string = bundle2.getString("_o");
                bundle2.remove("_o");
                String zzg = zzfVar.zzg();
                if (string == null) {
                    string = "";
                }
                zzgs zzgsVar = new zzgs(zzg, string, bundle2, zzfVar.zzd());
                zzq().m22765l(zzgsVar.zzc, bundle);
                m54493H(ngpVar.f78636a, new zzbc(this.zzu, zzgsVar.zzb, str, ngpVar.f78639d.zzg(), ngpVar.f78639d.zzd(), ngpVar.f78639d.zzc(), zzgsVar.zzc), ngpVar.f78637b, ngpVar.f78638c);
            }
        }
    }

    @WorkerThread
    /* renamed from: A0 */
    public final List<yqp> m54480A0(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursor = m54513e().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return arrayList;
                }
                do {
                    String string = cursor.getString(0);
                    String string2 = cursor.getString(1);
                    if (string2 == null) {
                        string2 = "";
                    }
                    String str2 = string2;
                    long j = cursor.getLong(2);
                    try {
                        Object m54533p = m54533p(cursor, 3);
                        if (m54533p == null) {
                            zzj().zzg().zza("Read invalid user property value, ignoring it. appId", zzgo.zza(str));
                        } else {
                            arrayList.add(new yqp(str, str2, string, j, m54533p));
                        }
                    } catch (SQLiteException e) {
                        e = e;
                        zzj().zzg().zza("Error querying user properties. appId", zzgo.zza(str), e);
                        return Collections.emptyList();
                    }
                } while (cursor.moveToNext());
                cursor.close();
                return arrayList;
            } catch (SQLiteException e2) {
                e = e2;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* renamed from: B */
    public final void m54481B(String str, zzax zzaxVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzaxVar);
        zzt();
        zzal();
        if (zze().zza(zzbh.zzcr)) {
            zzje m54547w0 = m54547w0(str);
            zzje zzjeVar = zzje.zza;
            if (m54547w0 == zzjeVar) {
                m54518g0(str, zzjeVar);
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("dma_consent_settings", zzaxVar.zzf());
        m54487E("consent_settings", "app_id", contentValues);
    }

    /* renamed from: B0 */
    public final Map<Integer, zzfy.zzm> m54482B0(String str) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Cursor cursor = null;
        try {
            try {
                Cursor query = m54513e().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    Map<Integer, zzfy.zzm> emptyMap = Collections.emptyMap();
                    query.close();
                    return emptyMap;
                }
                ArrayMap arrayMap = new ArrayMap();
                do {
                    int i = query.getInt(0);
                    try {
                        arrayMap.put(Integer.valueOf(i), (zzfy.zzm) ((zzjt) ((zzfy.zzm.zza) zzoo.m22692i(zzfy.zzm.zze(), query.getBlob(1))).zzai()));
                    } catch (IOException e) {
                        zzj().zzg().zza("Failed to merge filter results. appId, audienceId, error", zzgo.zza(str), Integer.valueOf(i), e);
                    }
                } while (query.moveToNext());
                query.close();
                return arrayMap;
            } catch (SQLiteException e2) {
                zzj().zzg().zza("Database error querying filter results. appId", zzgo.zza(str), e2);
                Map<Integer, zzfy.zzm> emptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyMap2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: C */
    public final void m54483C(String str, zzje zzjeVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzjeVar);
        zzt();
        zzal();
        m54518g0(str, m54547w0(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("storage_consent_at_bundling", zzjeVar.zzf());
        m54487E("consent_settings", "app_id", contentValues);
    }

    /* renamed from: C0 */
    public final Map<Integer, List<zzfo.zzb>> m54484C0(String str) {
        Preconditions.checkNotEmpty(str);
        ArrayMap arrayMap = new ArrayMap();
        Cursor cursor = null;
        try {
            try {
                Cursor query = m54513e().query("event_filters", new String[]{"audience_id", "data"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    Map<Integer, List<zzfo.zzb>> emptyMap = Collections.emptyMap();
                    query.close();
                    return emptyMap;
                }
                do {
                    try {
                        zzfo.zzb zzbVar = (zzfo.zzb) ((zzjt) ((zzfo.zzb.zza) zzoo.m22692i(zzfo.zzb.zzc(), query.getBlob(1))).zzai());
                        if (zzbVar.zzk()) {
                            int i = query.getInt(0);
                            List list = (List) arrayMap.get(Integer.valueOf(i));
                            if (list == null) {
                                list = new ArrayList();
                                arrayMap.put(Integer.valueOf(i), list);
                            }
                            list.add(zzbVar);
                        }
                    } catch (IOException e) {
                        zzj().zzg().zza("Failed to merge filter. appId", zzgo.zza(str), e);
                    }
                } while (query.moveToNext());
                query.close();
                return arrayMap;
            } catch (SQLiteException e2) {
                zzj().zzg().zza("Database error querying filters. appId", zzgo.zza(str), e2);
                Map<Integer, List<zzfo.zzb>> emptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyMap2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    /* renamed from: D */
    public final void m54485D(String str, vhp vhpVar) {
        Preconditions.checkNotNull(vhpVar);
        zzt();
        zzal();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", vhpVar.f87510a);
        contentValues.put("name", vhpVar.f87511b);
        contentValues.put("lifetime_count", Long.valueOf(vhpVar.f87512c));
        contentValues.put("current_bundle_count", Long.valueOf(vhpVar.f87513d));
        contentValues.put("last_fire_timestamp", Long.valueOf(vhpVar.f87515f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(vhpVar.f87516g));
        contentValues.put("last_bundled_day", vhpVar.f87517h);
        contentValues.put("last_sampled_complex_event_id", vhpVar.f87518i);
        contentValues.put("last_sampling_rate", vhpVar.f87519j);
        contentValues.put("current_session_count", Long.valueOf(vhpVar.f87514e));
        Boolean bool = vhpVar.f87520k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (m54513e().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update event aggregates (got -1). appId", zzgo.zza(vhpVar.f87510a));
            }
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing event aggregates. appId", zzgo.zza(vhpVar.f87510a), e);
        }
    }

    /* renamed from: D0 */
    public final Map<Integer, List<Integer>> m54486D0(String str) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        ArrayMap arrayMap = new ArrayMap();
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m54513e().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str, str});
                if (!rawQuery.moveToFirst()) {
                    Map<Integer, List<Integer>> emptyMap = Collections.emptyMap();
                    rawQuery.close();
                    return emptyMap;
                }
                do {
                    int i = rawQuery.getInt(0);
                    List list = (List) arrayMap.get(Integer.valueOf(i));
                    if (list == null) {
                        list = new ArrayList();
                        arrayMap.put(Integer.valueOf(i), list);
                    }
                    list.add(Integer.valueOf(rawQuery.getInt(1)));
                } while (rawQuery.moveToNext());
                rawQuery.close();
                return arrayMap;
            } catch (SQLiteException e) {
                zzj().zzg().zza("Database error querying scoped filters. appId", zzgo.zza(str), e);
                Map<Integer, List<Integer>> emptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyMap2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    /* renamed from: E */
    public final void m54487E(String str, String str2, ContentValues contentValues) {
        try {
            SQLiteDatabase m54513e = m54513e();
            if (contentValues.getAsString(str2) == null) {
                zzj().zzm().zza("Value of the primary key is not set.", zzgo.zza(str2));
                return;
            }
            if (m54513e.update(str, contentValues, str2 + " = ?", new String[]{r1}) == 0 && m54513e.insertWithOnConflict(str, null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update table (got -1). key", zzgo.zza(str), zzgo.zza(str2));
            }
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing into table. key", zzgo.zza(str), zzgo.zza(str2), e);
        }
    }

    @WorkerThread
    /* renamed from: E0 */
    public final void m54488E0() {
        zzal();
        m54513e().beginTransaction();
    }

    @WorkerThread
    /* renamed from: F */
    public final void m54489F(String str, List<zzfo.zza> list) {
        boolean z;
        boolean z2;
        Preconditions.checkNotNull(list);
        for (int i = 0; i < list.size(); i++) {
            zzfo.zza.C20576zza zzcd = list.get(i).zzcd();
            if (zzcd.zza() != 0) {
                for (int i2 = 0; i2 < zzcd.zza(); i2++) {
                    zzfo.zzb.zza zzcd2 = zzcd.zza(i2).zzcd();
                    zzfo.zzb.zza zzaVar = (zzfo.zzb.zza) ((zzjt.zzb) zzcd2.clone());
                    String zzb = zzji.zzb(zzcd2.zzb());
                    if (zzb != null) {
                        zzaVar.zza(zzb);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    for (int i3 = 0; i3 < zzcd2.zza(); i3++) {
                        zzfo.zzc zza = zzcd2.zza(i3);
                        String zza2 = zzjk.zza(zza.zze());
                        if (zza2 != null) {
                            zzaVar.zza(i3, (zzfo.zzc) ((zzjt) zza.zzcd().zza(zza2).zzai()));
                            z2 = true;
                        }
                    }
                    if (z2) {
                        zzcd = zzcd.zza(i2, zzaVar);
                        list.set(i, (zzfo.zza) ((zzjt) zzcd.zzai()));
                    }
                }
            }
            if (zzcd.zzb() != 0) {
                for (int i4 = 0; i4 < zzcd.zzb(); i4++) {
                    zzfo.zze zzb2 = zzcd.zzb(i4);
                    String zza3 = zzjj.zza(zzb2.zze());
                    if (zza3 != null) {
                        zzcd = zzcd.zza(i4, zzb2.zzcd().zza(zza3));
                        list.set(i, (zzfo.zza) ((zzjt) zzcd.zzai()));
                    }
                }
            }
        }
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(list);
        SQLiteDatabase m54513e = m54513e();
        m54513e.beginTransaction();
        try {
            zzal();
            zzt();
            Preconditions.checkNotEmpty(str);
            SQLiteDatabase m54513e2 = m54513e();
            m54513e2.delete("property_filters", "app_id=?", new String[]{str});
            m54513e2.delete("event_filters", "app_id=?", new String[]{str});
            for (zzfo.zza zzaVar2 : list) {
                zzal();
                zzt();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(zzaVar2);
                if (zzaVar2.zzg()) {
                    int zza4 = zzaVar2.zza();
                    Iterator<zzfo.zzb> it2 = zzaVar2.zze().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (!it2.next().zzl()) {
                                zzj().zzu().zza("Event filter with no ID. Audience definition ignored. appId, audienceId", zzgo.zza(str), Integer.valueOf(zza4));
                                break;
                            }
                        } else {
                            Iterator<zzfo.zze> it3 = zzaVar2.zzf().iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    if (!it3.next().zzi()) {
                                        zzj().zzu().zza("Property filter with no ID. Audience definition ignored. appId, audienceId", zzgo.zza(str), Integer.valueOf(zza4));
                                        break;
                                    }
                                } else {
                                    Iterator<zzfo.zzb> it4 = zzaVar2.zze().iterator();
                                    while (true) {
                                        if (it4.hasNext()) {
                                            if (!m54501L(str, zza4, it4.next())) {
                                                z = false;
                                                break;
                                            }
                                        } else {
                                            z = true;
                                            break;
                                        }
                                    }
                                    if (z) {
                                        Iterator<zzfo.zze> it5 = zzaVar2.zzf().iterator();
                                        while (true) {
                                            if (it5.hasNext()) {
                                                if (!m54502M(str, zza4, it5.next())) {
                                                    z = false;
                                                    break;
                                                }
                                            } else {
                                                break;
                                            }
                                        }
                                    }
                                    if (!z) {
                                        zzal();
                                        zzt();
                                        Preconditions.checkNotEmpty(str);
                                        SQLiteDatabase m54513e3 = m54513e();
                                        m54513e3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(zza4)});
                                        m54513e3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(zza4)});
                                    }
                                }
                            }
                        }
                    }
                } else {
                    zzj().zzu().zza("Audience with no ID. appId", zzgo.zza(str));
                }
            }
            ArrayList arrayList = new ArrayList();
            for (zzfo.zza zzaVar3 : list) {
                arrayList.add(zzaVar3.zzg() ? Integer.valueOf(zzaVar3.zza()) : null);
            }
            m54522i0(str, arrayList);
            m54513e.setTransactionSuccessful();
        } finally {
            m54513e.endTransaction();
        }
    }

    /* renamed from: F0 */
    public final void m54490F0(String str) {
        zzt();
        zzal();
        try {
            m54513e().execSQL("delete from default_event_params where app_id=?", new String[]{str});
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error clearing default event params", e);
        }
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: G */
    public final void m54491G(List<Long> list) {
        zzt();
        zzal();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (m54506Q()) {
            String str = MotionUtils.f31761c + TextUtils.join(",", list) + MotionUtils.f31762d;
            if (m54514e0("SELECT COUNT(1) FROM queue WHERE rowid IN " + str + " AND retry_count =  2147483647 LIMIT 1", null) > 0) {
                zzj().zzu().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                m54513e().execSQL("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN " + str + " AND (retry_count IS NULL OR retry_count < 2147483647)");
            } catch (SQLiteException e) {
                zzj().zzg().zza("Error incrementing retry count. error", e);
            }
        }
    }

    /* renamed from: G0 */
    public final void m54492G0(String str) {
        vhp m54531n0;
        m54549x0("events_snapshot", str);
        Cursor cursor = null;
        try {
            try {
                cursor = m54513e().query("events", (String[]) Collections.singletonList("name").toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return;
                }
                do {
                    String string = cursor.getString(0);
                    if (string != null && (m54531n0 = m54531n0(str, string)) != null) {
                        m54485D("events_snapshot", m54531n0);
                    }
                } while (cursor.moveToNext());
                cursor.close();
            } catch (SQLiteException e) {
                zzj().zzg().zza("Error creating snapshot. appId", zzgo.zza(str), e);
                if (cursor != null) {
                    cursor.close();
                }
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: H */
    public final boolean m54493H(long j, zzbc zzbcVar, long j2, boolean z) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzbcVar);
        Preconditions.checkNotEmpty(zzbcVar.f29730a);
        byte[] zzca = mo22451g_().m22709g(zzbcVar).zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzbcVar.f29730a);
        contentValues.put("name", zzbcVar.f29731b);
        contentValues.put(NotificationCompat.CarExtender.f4980p, Long.valueOf(zzbcVar.f29733d));
        contentValues.put("metadata_fingerprint", Long.valueOf(j2));
        contentValues.put("data", zzca);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            long update = m54513e().update("raw_events", contentValues, "rowid = ?", new String[]{String.valueOf(j)});
            if (update == 1) {
                return true;
            }
            zzj().zzg().zza("Failed to update raw event. appId, updatedRows", zzgo.zza(zzbcVar.f29730a), Long.valueOf(update));
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error updating raw event. appId", zzgo.zza(zzbcVar.f29730a), e);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0098, code lost:
    
        if ("_v".equals(r0) != false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00f9  */
    /* renamed from: H0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m54494H0(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54494H0(java.lang.String):void");
    }

    @WorkerThread
    /* renamed from: I */
    public final boolean m54495I(zzfy.zzk zzkVar, boolean z) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzkVar);
        Preconditions.checkNotEmpty(zzkVar.zzz());
        Preconditions.checkState(zzkVar.zzbj());
        zzv();
        long currentTimeMillis = zzb().currentTimeMillis();
        if (zzkVar.zzm() < currentTimeMillis - zzag.zzm() || zzkVar.zzm() > zzag.zzm() + currentTimeMillis) {
            zzj().zzu().zza("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzgo.zza(zzkVar.zzz()), Long.valueOf(currentTimeMillis), Long.valueOf(zzkVar.zzm()));
        }
        try {
            byte[] m22702J = mo22451g_().m22702J(zzkVar.zzca());
            zzj().zzp().zza("Saving bundle, size", Integer.valueOf(m22702J.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzkVar.zzz());
            contentValues.put("bundle_end_timestamp", Long.valueOf(zzkVar.zzm()));
            contentValues.put("data", m22702J);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzkVar.zzbq()) {
                contentValues.put("retry_count", Integer.valueOf(zzkVar.zzg()));
            }
            try {
                if (m54513e().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzj().zzg().zza("Failed to insert bundle (got -1). appId", zzgo.zza(zzkVar.zzz()));
                return false;
            } catch (SQLiteException e) {
                zzj().zzg().zza("Error storing bundle. appId", zzgo.zza(zzkVar.zzz()), e);
                return false;
            }
        } catch (IOException e2) {
            zzj().zzg().zza("Data loss. Failed to serialize bundle. appId", zzgo.zza(zzkVar.zzz()), e2);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: I0 */
    public final boolean m54496I0(String str) {
        if (zzpu.zza() && !zze().zza(zzbh.zzcb)) {
            return false;
        }
        String m54508b0 = m54508b0();
        StringBuilder sb = new StringBuilder("SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=? AND NOT ");
        sb.append(m54508b0);
        return m54514e0(sb.toString(), new String[]{str}) != 0;
    }

    /* renamed from: J */
    public final boolean m54497J(zzbc zzbcVar, long j, boolean z) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzbcVar);
        Preconditions.checkNotEmpty(zzbcVar.f29730a);
        byte[] zzca = mo22451g_().m22709g(zzbcVar).zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzbcVar.f29730a);
        contentValues.put("name", zzbcVar.f29731b);
        contentValues.put(NotificationCompat.CarExtender.f4980p, Long.valueOf(zzbcVar.f29733d));
        contentValues.put("metadata_fingerprint", Long.valueOf(j));
        contentValues.put("data", zzca);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (m54513e().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert raw event (got -1). appId", zzgo.zza(zzbcVar.f29730a));
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing raw event. appId", zzgo.zza(zzbcVar.f29730a), e);
            return false;
        }
    }

    /* renamed from: J0 */
    public final boolean m54498J0(String str) {
        boolean z;
        boolean z2;
        Cursor cursor = null;
        try {
            try {
                cursor = m54513e().rawQuery("select timestamp from raw_events where app_id=? and name = '_f' limit 1;", new String[]{str});
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        } catch (SQLiteException e) {
            e = e;
            z = false;
        }
        if (!cursor.moveToFirst()) {
            cursor.close();
            return false;
        }
        z = zzb().currentTimeMillis() < cursor.getLong(0) + 15000;
        try {
            z2 = m54523j("select count(*) from raw_events where app_id=? and name not like '!_%' escape '!' limit 1;", new String[]{str}, 0L) > 0;
            cursor.close();
        } catch (SQLiteException e2) {
            e = e2;
            this.zzj().zzg().zza("Error checking backfill conditions", e);
            z2 = false;
            if (z) {
            }
        }
        return (z || z2) ? false : true;
    }

    @WorkerThread
    /* renamed from: K */
    public final boolean m54499K(yqp yqpVar) {
        Preconditions.checkNotNull(yqpVar);
        zzt();
        zzal();
        if (m54534p0(yqpVar.f90990a, yqpVar.f90992c) == null) {
            if (zzos.m22730U(yqpVar.f90992c)) {
                if (m54514e0("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{yqpVar.f90990a}) >= zze().zza(yqpVar.f90990a, zzbh.zzai, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(yqpVar.f90992c) && m54514e0("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{yqpVar.f90990a, yqpVar.f90991b}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", yqpVar.f90990a);
        contentValues.put("origin", yqpVar.f90991b);
        contentValues.put("name", yqpVar.f90992c);
        contentValues.put("set_timestamp", Long.valueOf(yqpVar.f90993d));
        m54478w(contentValues, "value", yqpVar.f90994e);
        try {
            if (m54513e().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert/update user property (got -1). appId", zzgo.zza(yqpVar.f90990a));
            return true;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing user property. appId", zzgo.zza(yqpVar.f90990a), e);
            return true;
        }
    }

    /* renamed from: K0 */
    public final boolean m54500K0() {
        return m54514e0("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    @WorkerThread
    /* renamed from: L */
    public final boolean m54501L(String str, int i, zzfo.zzb zzbVar) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbVar);
        if (zzbVar.zzf().isEmpty()) {
            zzj().zzu().zza("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzgo.zza(str), Integer.valueOf(i), String.valueOf(zzbVar.zzl() ? Integer.valueOf(zzbVar.zzb()) : null));
            return false;
        }
        byte[] zzca = zzbVar.zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzbVar.zzl() ? Integer.valueOf(zzbVar.zzb()) : null);
        contentValues.put("event_name", zzbVar.zzf());
        contentValues.put("session_scoped", zzbVar.zzm() ? Boolean.valueOf(zzbVar.zzj()) : null);
        contentValues.put("data", zzca);
        try {
            if (m54513e().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert event filter (got -1). appId", zzgo.zza(str));
            return true;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing event filter. appId", zzgo.zza(str), e);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: M */
    public final boolean m54502M(String str, int i, zzfo.zze zzeVar) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzeVar);
        if (zzeVar.zze().isEmpty()) {
            zzj().zzu().zza("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzgo.zza(str), Integer.valueOf(i), String.valueOf(zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null));
            return false;
        }
        byte[] zzca = zzeVar.zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null);
        contentValues.put("property_name", zzeVar.zze());
        contentValues.put("session_scoped", zzeVar.zzj() ? Boolean.valueOf(zzeVar.zzh()) : null);
        contentValues.put("data", zzca);
        try {
            if (m54513e().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert property filter (got -1). appId", zzgo.zza(str));
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing property filter. appId", zzgo.zza(str), e);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: N */
    public final boolean m54503N(String str, zzfy.zzj zzjVar, String str2, Map<String, String> map, zznt zzntVar) {
        int delete;
        zzt();
        zzal();
        Preconditions.checkNotNull(zzjVar);
        Preconditions.checkNotEmpty(str);
        if (zzpu.zza() && !zze().zza(zzbh.zzcb)) {
            return false;
        }
        zzt();
        zzal();
        if (m54506Q()) {
            long zza = zzn().zzb.zza();
            long elapsedRealtime = zzb().elapsedRealtime();
            if (Math.abs(elapsedRealtime - zza) > zzag.zzn()) {
                zzn().zzb.zza(elapsedRealtime);
                zzt();
                zzal();
                if (m54506Q() && (delete = m54513e().delete("upload_queue", m54508b0(), new String[0])) > 0) {
                    zzj().zzp().zza("Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted", Integer.valueOf(delete));
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(entry.getKey() + "=" + entry.getValue());
        }
        byte[] zzca = zzjVar.zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("measurement_batch", zzca);
        contentValues.put("upload_uri", str2);
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        if (size > 0) {
            sb.append((CharSequence) arrayList.get(0));
            int i = 1;
            while (i < size) {
                sb.append((CharSequence) "\r\n");
                Object obj = arrayList.get(i);
                i++;
                sb.append((CharSequence) obj);
            }
        }
        contentValues.put("upload_headers", sb.toString());
        contentValues.put("upload_type", Integer.valueOf(zzntVar.zza()));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzb().currentTimeMillis()));
        contentValues.put("retry_count", (Integer) 0);
        try {
            if (m54513e().insert("upload_queue", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert MeasurementBatch (got -1) to upload_queue. appId", str);
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing MeasurementBatch to upload_queue. appId", str, e);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: O */
    public final boolean m54504O(String str, zzno zznoVar) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zznoVar);
        Preconditions.checkNotEmpty(str);
        long currentTimeMillis = zzb().currentTimeMillis();
        long j = zznoVar.zzb;
        zzfz<Long> zzfzVar = zzbh.zzbh;
        if (j < currentTimeMillis - zzfzVar.zza(null).longValue() || zznoVar.zzb > zzfzVar.zza(null).longValue() + currentTimeMillis) {
            zzj().zzu().zza("Storing trigger URI outside of the max retention time span. appId, now, timestamp", zzgo.zza(str), Long.valueOf(currentTimeMillis), Long.valueOf(zznoVar.zzb));
        }
        zzj().zzp().zza("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", zznoVar.zza);
        contentValues.put("source", Integer.valueOf(zznoVar.zzc));
        contentValues.put("timestamp_millis", Long.valueOf(zznoVar.zzb));
        try {
            if (m54513e().insert("trigger_uris", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert trigger URI (got -1). appId", zzgo.zza(str));
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing trigger URI. appId", zzgo.zza(str), e);
            return false;
        }
    }

    /* renamed from: P */
    public final boolean m54505P(String str, Long l, long j, zzfy.zzf zzfVar) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzfVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        byte[] zzca = zzfVar.zzca();
        zzj().zzp().zza("Saving complex main event, appId, data size", zzi().zza(str), Integer.valueOf(zzca.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", zzca);
        try {
            if (m54513e().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert complex main event (got -1). appId", zzgo.zza(str));
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing complex main event. appId", zzgo.zza(str), e);
            return false;
        }
    }

    @VisibleForTesting
    /* renamed from: Q */
    public final boolean m54506Q() {
        return zza().getDatabasePath("google_app_measurement.db").exists();
    }

    /* renamed from: b */
    public final long m54507b() {
        Cursor cursor = null;
        try {
            try {
                cursor = m54513e().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return -1L;
                }
                long j = cursor.getLong(0);
                cursor.close();
                return j;
            } catch (SQLiteException e) {
                zzj().zzg().zza("Error querying raw events", e);
                if (cursor != null) {
                    cursor.close();
                }
                return -1L;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: b0 */
    public final String m54508b0() {
        long currentTimeMillis = zzb().currentTimeMillis();
        zznt zzntVar = zznt.GOOGLE_SIGNAL;
        return MotionUtils.f31761c + ("(upload_type = " + zzntVar.zza() + " AND (ABS(creation_timestamp - " + currentTimeMillis + ") > CAST(" + zzbh.zzaf.zza(null).longValue() + " AS INTEGER)))") + " OR " + ("(upload_type != " + zzntVar.zza() + " AND (ABS(creation_timestamp - " + currentTimeMillis + ") > CAST(" + zzag.zzm() + " AS INTEGER)))") + MotionUtils.f31762d;
    }

    @WorkerThread
    /* renamed from: c */
    public final long m54509c() {
        return m54523j("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    @WorkerThread
    /* renamed from: c0 */
    public final long m54510c0(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        return m54523j("select first_open_count from app2 where app_id=?", new String[]{str}, -1L);
    }

    @WorkerThread
    /* renamed from: d */
    public final long m54511d() {
        return m54523j("select max(timestamp) from raw_events", null, 0L);
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: d0 */
    public final long m54512d0(String str, String str2) {
        long m54523j;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        SQLiteDatabase m54513e = m54513e();
        m54513e.beginTransaction();
        long j = 0;
        try {
            try {
                m54523j = m54523j("select " + str2 + " from app2 where app_id=?", new String[]{str}, -1L);
                if (m54523j == -1) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put("first_open_count", (Integer) 0);
                    contentValues.put("previous_install_count", (Integer) 0);
                    if (m54513e.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        zzj().zzg().zza("Failed to insert column (got -1). appId", zzgo.zza(str), str2);
                        return -1L;
                    }
                    m54523j = 0;
                }
            } catch (SQLiteException e) {
                e = e;
            }
            try {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("app_id", str);
                contentValues2.put(str2, Long.valueOf(1 + m54523j));
                if (m54513e.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                    zzj().zzg().zza("Failed to update column (got 0). appId", zzgo.zza(str), str2);
                    return -1L;
                }
                m54513e.setTransactionSuccessful();
                return m54523j;
            } catch (SQLiteException e2) {
                long j2 = m54523j;
                e = e2;
                j = j2;
                zzj().zzg().zza("Error inserting column. appId", zzgo.zza(str), str2, e);
                m54513e.endTransaction();
                return j;
            }
        } finally {
            m54513e.endTransaction();
        }
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: e */
    public final SQLiteDatabase m54513e() {
        zzt();
        try {
            return this.f72193b.getWritableDatabase();
        } catch (SQLiteException e) {
            this.zzj().zzu().zza("Error opening database", e);
            throw e;
        }
    }

    @WorkerThread
    /* renamed from: e0 */
    public final long m54514e0(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m54513e().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = rawQuery.getLong(0);
                rawQuery.close();
                return j;
            } catch (SQLiteException e) {
                zzj().zzg().zza("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003b  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    @androidx.annotation.WorkerThread
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m54515f() {
        /*
            r4 = this;
            android.database.sqlite.SQLiteDatabase r0 = r4.m54513e()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L20 android.database.sqlite.SQLiteException -> L22
            boolean r2 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L1e java.lang.Throwable -> L37
            if (r2 == 0) goto L1a
            r2 = 0
            java.lang.String r4 = r0.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L1e java.lang.Throwable -> L37
            r0.close()
            return r4
        L1a:
            r0.close()
            return r1
        L1e:
            r2 = move-exception
            goto L24
        L20:
            r4 = move-exception
            goto L39
        L22:
            r2 = move-exception
            r0 = r1
        L24:
            com.google.android.gms.measurement.internal.zzgo r4 = r4.zzj()     // Catch: java.lang.Throwable -> L37
            com.google.android.gms.measurement.internal.zzgq r4 = r4.zzg()     // Catch: java.lang.Throwable -> L37
            java.lang.String r3 = "Database error getting next bundle app id"
            r4.zza(r3, r2)     // Catch: java.lang.Throwable -> L37
            if (r0 == 0) goto L36
            r0.close()
        L36:
            return r1
        L37:
            r4 = move-exception
            r1 = r0
        L39:
            if (r1 == 0) goto L3e
            r1.close()
        L3e:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54515f():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x00a1, code lost:
    
        zzj().zzg().zza("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x013d A[DONT_GENERATE] */
    @androidx.annotation.WorkerThread
    /* renamed from: f0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.sunia.HTREnginev2.yqp> m54516f0(java.lang.String r23, java.lang.String r24, java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54516f0(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    @WorkerThread
    /* renamed from: g */
    public final int m54517g(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        try {
            return m54513e().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            this.zzj().zzg().zza("Error deleting conditional property", zzgo.zza(str), this.zzi().zzc(str2), e);
            return 0;
        }
    }

    /* renamed from: g0 */
    public final void m54518g0(String str, zzje zzjeVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzjeVar);
        zzt();
        zzal();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzjeVar.zzf());
        contentValues.put("consent_source", Integer.valueOf(zzjeVar.zza()));
        m54487E("consent_settings", "app_id", contentValues);
    }

    /* renamed from: h */
    public final long m54519h(zzfy.zzk zzkVar) throws IOException {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzkVar);
        Preconditions.checkNotEmpty(zzkVar.zzz());
        byte[] zzca = zzkVar.zzca();
        long m22706d = mo22451g_().m22706d(zzca);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzkVar.zzz());
        contentValues.put("metadata_fingerprint", Long.valueOf(m22706d));
        contentValues.put("metadata", zzca);
        try {
            m54513e().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return m22706d;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing raw event metadata. appId", zzgo.zza(zzkVar.zzz()), e);
            throw e;
        }
    }

    /* renamed from: h0 */
    public final boolean m54520h0(String str, Bundle bundle) {
        zzt();
        zzal();
        byte[] zzca = mo22451g_().m22709g(new zzbc(this.zzu, "", str, "dep", 0L, 0L, bundle)).zzca();
        zzj().zzp().zza("Saving default event parameters, appId, data size", zzi().zza(str), Integer.valueOf(zzca.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", zzca);
        try {
            if (m54513e().insertWithOnConflict("default_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert default event parameters (got -1). appId", zzgo.zza(str));
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing default event parameters. appId", zzgo.zza(str), e);
            return false;
        }
    }

    /* renamed from: i */
    public final long m54521i(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        try {
            return m54513e().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, zze().zzb(str, zzbh.zzp))))});
        } catch (SQLiteException e) {
            this.zzj().zzg().zza("Error deleting over the limit events. appId", zzgo.zza(str), e);
            return 0L;
        }
    }

    /* renamed from: i0 */
    public final boolean m54522i0(String str, List<Integer> list) {
        Preconditions.checkNotEmpty(str);
        zzal();
        zzt();
        SQLiteDatabase m54513e = m54513e();
        try {
            long m54514e0 = m54514e0("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(2000, zze().zzb(str, zzbh.zzah)));
            if (m54514e0 <= max) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                Integer num = list.get(i);
                if (num == null) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String str2 = MotionUtils.f31761c + TextUtils.join(",", arrayList) + MotionUtils.f31762d;
            StringBuilder sb = new StringBuilder("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            sb.append(str2);
            sb.append(" order by rowid desc limit -1 offset ?)");
            return m54513e.delete("audience_filter_values", sb.toString(), new String[]{str, Integer.toString(max)}) > 0;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Database error querying filters. appId", zzgo.zza(str), e);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: j */
    public final long m54523j(String str, String[] strArr, long j) {
        Cursor cursor = null;
        try {
            try {
                cursor = m54513e().rawQuery(str, strArr);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return j;
                }
                long j2 = cursor.getLong(0);
                cursor.close();
                return j2;
            } catch (SQLiteException e) {
                this.zzj().zzg().zza("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: j0 */
    public final long m54524j0(String str) {
        Preconditions.checkNotEmpty(str);
        return m54523j("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x008b: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:29:0x008b */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008e  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.zzfy.zzf, java.lang.Long> m54525k(java.lang.String r8, java.lang.Long r9) {
        /*
            r7 = this;
            r7.zzt()
            r7.zzal()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r7.m54513e()     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            java.lang.String r2 = "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            r4 = 0
            r3[r4] = r8     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            java.lang.String r5 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            r6 = 1
            r3[r6] = r5     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            if (r2 != 0) goto L35
            com.google.android.gms.measurement.internal.zzgo r8 = r7.zzj()     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            com.google.android.gms.measurement.internal.zzgq r8 = r8.zzp()     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            java.lang.String r9 = "Main event not found"
            r8.zza(r9)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            r1.close()
            return r0
        L35:
            byte[] r2 = r1.getBlob(r4)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            long r3 = r1.getLong(r6)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            com.google.android.gms.internal.measurement.zzfy$zzf$zza r4 = com.google.android.gms.internal.measurement.zzfy.zzf.zze()     // Catch: java.io.IOException -> L5b android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            com.google.android.gms.internal.measurement.zzlb r2 = com.google.android.gms.measurement.internal.zzoo.m22692i(r4, r2)     // Catch: java.io.IOException -> L5b android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            com.google.android.gms.internal.measurement.zzfy$zzf$zza r2 = (com.google.android.gms.internal.measurement.zzfy.zzf.zza) r2     // Catch: java.io.IOException -> L5b android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            com.google.android.gms.internal.measurement.zzlc r2 = r2.zzai()     // Catch: java.io.IOException -> L5b android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            com.google.android.gms.internal.measurement.zzjt r2 = (com.google.android.gms.internal.measurement.zzjt) r2     // Catch: java.io.IOException -> L5b android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            com.google.android.gms.internal.measurement.zzfy$zzf r2 = (com.google.android.gms.internal.measurement.zzfy.zzf) r2     // Catch: java.io.IOException -> L5b android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            android.util.Pair r7 = android.util.Pair.create(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            r1.close()
            return r7
        L5b:
            r2 = move-exception
            com.google.android.gms.measurement.internal.zzgo r3 = r7.zzj()     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            com.google.android.gms.measurement.internal.zzgq r3 = r3.zzg()     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            java.lang.String r4 = "Failed to merge main event. appId, eventId"
            java.lang.Object r8 = com.google.android.gms.measurement.internal.zzgo.zza(r8)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            r3.zza(r4, r8, r9, r2)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L8a
            r1.close()
            return r0
        L71:
            r8 = move-exception
            goto L77
        L73:
            r7 = move-exception
            goto L8c
        L75:
            r8 = move-exception
            r1 = r0
        L77:
            com.google.android.gms.measurement.internal.zzgo r7 = r7.zzj()     // Catch: java.lang.Throwable -> L8a
            com.google.android.gms.measurement.internal.zzgq r7 = r7.zzg()     // Catch: java.lang.Throwable -> L8a
            java.lang.String r9 = "Error selecting main event"
            r7.zza(r9, r8)     // Catch: java.lang.Throwable -> L8a
            if (r1 == 0) goto L89
            r1.close()
        L89:
            return r0
        L8a:
            r7 = move-exception
            r0 = r1
        L8c:
            if (r0 == 0) goto L91
            r0.close()
        L91:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54525k(java.lang.String, java.lang.Long):android.util.Pair");
    }

    /* JADX WARN: Not initialized variable reg: 9, insn: 0x0147: MOVE (r8 I:??[OBJECT, ARRAY]) = (r9 I:??[OBJECT, ARRAY]), block:B:35:0x0147 */
    /* JADX WARN: Removed duplicated region for block: B:37:0x014a  */
    @androidx.annotation.WorkerThread
    /* renamed from: k0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzae m54526k0(java.lang.String r36, java.lang.String r37) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54526k0(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzae");
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x016c  */
    @androidx.annotation.WorkerThread
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzaq m54527l(long r23, java.lang.String r25, long r26, boolean r28, boolean r29, boolean r30, boolean r31, boolean r32, boolean r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54527l(long, java.lang.String, long, boolean, boolean, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.measurement.internal.zzaq");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x012b  */
    @androidx.annotation.WorkerThread
    /* renamed from: l0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.sunia.HTREnginev2.vhp m54528l0(java.lang.String r29, java.lang.String r30, java.lang.String r31) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54528l0(java.lang.String, java.lang.String, java.lang.String):com.sunia.HTREnginev2.vhp");
    }

    @WorkerThread
    /* renamed from: m */
    public final zzaq m54529m(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        return m54527l(j, str, 1L, false, false, z3, false, z5, z6, z7);
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0082: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:30:0x0082 */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0085  */
    /* renamed from: m0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m54530m0(java.lang.String r6) {
        /*
            r5 = this;
            r5.zzt()
            r5.zzal()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r5.m54513e()     // Catch: java.lang.Throwable -> L6a android.database.sqlite.SQLiteException -> L6c
            java.lang.String r2 = "select parameters from default_event_params where app_id=?"
            java.lang.String[] r3 = new java.lang.String[]{r6}     // Catch: java.lang.Throwable -> L6a android.database.sqlite.SQLiteException -> L6c
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L6a android.database.sqlite.SQLiteException -> L6c
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            if (r2 != 0) goto L2c
            com.google.android.gms.measurement.internal.zzgo r6 = r5.zzj()     // Catch: android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            com.google.android.gms.measurement.internal.zzgq r6 = r6.zzp()     // Catch: android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            java.lang.String r2 = "Default event parameters not found"
            r6.zza(r2)     // Catch: android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            r1.close()
            return r0
        L2c:
            r2 = 0
            byte[] r2 = r1.getBlob(r2)     // Catch: android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            com.google.android.gms.internal.measurement.zzfy$zzf$zza r3 = com.google.android.gms.internal.measurement.zzfy.zzf.zze()     // Catch: java.io.IOException -> L52 android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            com.google.android.gms.internal.measurement.zzlb r2 = com.google.android.gms.measurement.internal.zzoo.m22692i(r3, r2)     // Catch: java.io.IOException -> L52 android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            com.google.android.gms.internal.measurement.zzfy$zzf$zza r2 = (com.google.android.gms.internal.measurement.zzfy.zzf.zza) r2     // Catch: java.io.IOException -> L52 android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            com.google.android.gms.internal.measurement.zzlc r2 = r2.zzai()     // Catch: java.io.IOException -> L52 android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            com.google.android.gms.internal.measurement.zzjt r2 = (com.google.android.gms.internal.measurement.zzjt) r2     // Catch: java.io.IOException -> L52 android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            com.google.android.gms.internal.measurement.zzfy$zzf r2 = (com.google.android.gms.internal.measurement.zzfy.zzf) r2     // Catch: java.io.IOException -> L52 android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            r5.mo22451g_()     // Catch: android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            java.util.List r6 = r2.zzh()     // Catch: android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            android.os.Bundle r5 = com.google.android.gms.measurement.internal.zzoo.zza(r6)     // Catch: android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            r1.close()
            return r5
        L52:
            r2 = move-exception
            com.google.android.gms.measurement.internal.zzgo r3 = r5.zzj()     // Catch: android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            com.google.android.gms.measurement.internal.zzgq r3 = r3.zzg()     // Catch: android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            java.lang.String r4 = "Failed to retrieve default event parameters. appId"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.zzgo.zza(r6)     // Catch: android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            r3.zza(r4, r6, r2)     // Catch: android.database.sqlite.SQLiteException -> L68 java.lang.Throwable -> L81
            r1.close()
            return r0
        L68:
            r6 = move-exception
            goto L6e
        L6a:
            r5 = move-exception
            goto L83
        L6c:
            r6 = move-exception
            r1 = r0
        L6e:
            com.google.android.gms.measurement.internal.zzgo r5 = r5.zzj()     // Catch: java.lang.Throwable -> L81
            com.google.android.gms.measurement.internal.zzgq r5 = r5.zzg()     // Catch: java.lang.Throwable -> L81
            java.lang.String r2 = "Error selecting default event parameters"
            r5.zza(r2, r6)     // Catch: java.lang.Throwable -> L81
            if (r1 == 0) goto L80
            r1.close()
        L80:
            return r0
        L81:
            r5 = move-exception
            r0 = r1
        L83:
            if (r0 == 0) goto L88
            r0.close()
        L88:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54530m0(java.lang.String):android.os.Bundle");
    }

    @WorkerThread
    /* renamed from: n0 */
    public final vhp m54531n0(String str, String str2) {
        return m54528l0("events", str, str2);
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0433: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:120:0x0432 */
    /* JADX WARN: Removed duplicated region for block: B:100:0x036e A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0283 A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x022e A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:124:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0292 A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02aa A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02d3 A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02e8 A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0332 A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0358 A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03b2 A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x03de A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03fc A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TRY_LEAVE, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0399 A[Catch: SQLiteException -> 0x0411, all -> 0x0431, TryCatch #0 {all -> 0x0431, blocks: (B:5:0x0134, B:10:0x013e, B:12:0x014f, B:14:0x015b, B:16:0x0170, B:18:0x017d, B:20:0x0189, B:22:0x019e, B:24:0x01df, B:28:0x01e9, B:31:0x0233, B:33:0x0262, B:37:0x026c, B:40:0x0287, B:42:0x0292, B:43:0x02a4, B:45:0x02aa, B:47:0x02b6, B:49:0x02cd, B:51:0x02d3, B:53:0x02df, B:55:0x02e8, B:57:0x02f0, B:60:0x02f9, B:62:0x0311, B:64:0x031a, B:66:0x0332, B:68:0x033e, B:69:0x0350, B:71:0x0358, B:74:0x0361, B:77:0x0379, B:80:0x03a3, B:82:0x03b2, B:84:0x03ba, B:85:0x03c5, B:87:0x03cd, B:88:0x03d8, B:90:0x03de, B:92:0x03ea, B:93:0x03f3, B:95:0x03fc, B:99:0x0399, B:100:0x036e, B:103:0x0375, B:105:0x02c4, B:106:0x0283, B:108:0x022e, B:110:0x0197, B:111:0x0169, B:114:0x041a), top: B:2:0x000e }] */
    @androidx.annotation.WorkerThread
    /* renamed from: o0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.sunia.HTREnginev2.okp m54532o0(java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 1082
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54532o0(java.lang.String):com.sunia.HTREnginev2.okp");
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: p */
    public final Object m54533p(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            zzj().zzg().zza("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i));
        }
        if (type == 3) {
            return cursor.getString(i);
        }
        if (type != 4) {
            zzj().zzg().zza("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        zzj().zzg().zza("Loaded invalid blob type value, ignoring it");
        return null;
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0097: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:27:0x0097 */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009a  */
    @androidx.annotation.WorkerThread
    /* renamed from: p0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.sunia.HTREnginev2.yqp m54534p0(java.lang.String r14, java.lang.String r15) {
        /*
            r13 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r14)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r15)
            r13.zzt()
            r13.zzal()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r13.m54513e()     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            java.lang.String r3 = "user_attributes"
            r0 = 3
            java.lang.String[] r4 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            java.lang.String r0 = "set_timestamp"
            r10 = 0
            r4[r10] = r0     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            java.lang.String r0 = "value"
            r11 = 1
            r4[r11] = r0     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            java.lang.String r0 = "origin"
            r12 = 2
            r4[r12] = r0     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            java.lang.String r5 = "app_id=? and name=?"
            java.lang.String[] r6 = new java.lang.String[]{r14, r15}     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            boolean r0 = r2.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L96
            if (r0 != 0) goto L3c
            r2.close()
            return r1
        L3c:
            long r7 = r2.getLong(r10)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L96
            java.lang.Object r9 = r13.m54533p(r2, r11)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L96
            if (r9 != 0) goto L4a
            r2.close()
            return r1
        L4a:
            java.lang.String r5 = r2.getString(r12)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L96
            com.sunia.HTREnginev2.yqp r0 = new com.sunia.HTREnginev2.yqp     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L96
            r3 = r0
            r4 = r14
            r6 = r15
            r3.<init>(r4, r5, r6, r7, r9)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L96
            boolean r3 = r2.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L96
            if (r3 == 0) goto L6d
            com.google.android.gms.measurement.internal.zzgo r3 = r13.zzj()     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L96
            com.google.android.gms.measurement.internal.zzgq r3 = r3.zzg()     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L96
            java.lang.String r4 = "Got multiple records for user property, expected one. appId"
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzgo.zza(r14)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L96
            r3.zza(r4, r5)     // Catch: android.database.sqlite.SQLiteException -> L71 java.lang.Throwable -> L96
        L6d:
            r2.close()
            return r0
        L71:
            r0 = move-exception
            goto L77
        L73:
            r0 = move-exception
            goto L98
        L75:
            r0 = move-exception
            r2 = r1
        L77:
            com.google.android.gms.measurement.internal.zzgo r3 = r13.zzj()     // Catch: java.lang.Throwable -> L96
            com.google.android.gms.measurement.internal.zzgq r3 = r3.zzg()     // Catch: java.lang.Throwable -> L96
            java.lang.String r4 = "Error querying user property. appId"
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzgo.zza(r14)     // Catch: java.lang.Throwable -> L96
            com.google.android.gms.measurement.internal.zzgh r6 = r13.zzi()     // Catch: java.lang.Throwable -> L96
            java.lang.String r6 = r6.zzc(r15)     // Catch: java.lang.Throwable -> L96
            r3.zza(r4, r5, r6, r0)     // Catch: java.lang.Throwable -> L96
            if (r2 == 0) goto L95
            r2.close()
        L95:
            return r1
        L96:
            r0 = move-exception
            r1 = r2
        L98:
            if (r1 == 0) goto L9d
            r1.close()
        L9d:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54534p0(java.lang.String, java.lang.String):com.sunia.HTREnginev2.yqp");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0045  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    @androidx.annotation.WorkerThread
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> T m54535q(java.lang.String r3, java.lang.String[] r4, com.sunia.HTREnginev2.bhp<T> r5) {
        /*
            r2 = this;
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r2.m54513e()     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteException -> L2c
            android.database.Cursor r3 = r1.rawQuery(r3, r4)     // Catch: java.lang.Throwable -> L2a android.database.sqlite.SQLiteException -> L2c
            boolean r4 = r3.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L28 java.lang.Throwable -> L41
            if (r4 != 0) goto L20
            com.google.android.gms.measurement.internal.zzgo r4 = r2.zzj()     // Catch: android.database.sqlite.SQLiteException -> L28 java.lang.Throwable -> L41
            com.google.android.gms.measurement.internal.zzgq r4 = r4.zzp()     // Catch: android.database.sqlite.SQLiteException -> L28 java.lang.Throwable -> L41
            java.lang.String r5 = "No data found"
            r4.zza(r5)     // Catch: android.database.sqlite.SQLiteException -> L28 java.lang.Throwable -> L41
            r3.close()
            return r0
        L20:
            java.lang.Object r2 = r5.zza(r3)     // Catch: android.database.sqlite.SQLiteException -> L28 java.lang.Throwable -> L41
            r3.close()
            return r2
        L28:
            r4 = move-exception
            goto L2e
        L2a:
            r2 = move-exception
            goto L43
        L2c:
            r4 = move-exception
            r3 = r0
        L2e:
            com.google.android.gms.measurement.internal.zzgo r2 = r2.zzj()     // Catch: java.lang.Throwable -> L41
            com.google.android.gms.measurement.internal.zzgq r2 = r2.zzg()     // Catch: java.lang.Throwable -> L41
            java.lang.String r5 = "Error querying database."
            r2.zza(r5, r4)     // Catch: java.lang.Throwable -> L41
            if (r3 == 0) goto L40
            r3.close()
        L40:
            return r0
        L41:
            r2 = move-exception
            r0 = r3
        L43:
            if (r0 == 0) goto L48
            r0.close()
        L48:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54535q(java.lang.String, java.lang.String[], com.sunia.HTREnginev2.bhp):java.lang.Object");
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0089: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:27:0x0089 */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008c  */
    @androidx.annotation.WorkerThread
    /* renamed from: q0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.sunia.HTREnginev2.kgp m54536q0(java.lang.String r13) {
        /*
            r12 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r13)
            r12.zzt()
            r12.zzal()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r12.m54513e()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String r2 = "apps"
            r3 = 3
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String r4 = "remote_config"
            r9 = 0
            r3[r9] = r4     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String r4 = "config_last_modified_time"
            r10 = 1
            r3[r10] = r4     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String r4 = "e_tag"
            r11 = 2
            r3[r11] = r4     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String r4 = "app_id=?"
            java.lang.String[] r5 = new java.lang.String[]{r13}     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L6b java.lang.Throwable -> L88
            if (r2 != 0) goto L39
            r1.close()
            return r0
        L39:
            byte[] r2 = r1.getBlob(r9)     // Catch: android.database.sqlite.SQLiteException -> L6b java.lang.Throwable -> L88
            java.lang.String r3 = r1.getString(r10)     // Catch: android.database.sqlite.SQLiteException -> L6b java.lang.Throwable -> L88
            java.lang.String r4 = r1.getString(r11)     // Catch: android.database.sqlite.SQLiteException -> L6b java.lang.Throwable -> L88
            boolean r5 = r1.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L6b java.lang.Throwable -> L88
            if (r5 == 0) goto L5c
            com.google.android.gms.measurement.internal.zzgo r5 = r12.zzj()     // Catch: android.database.sqlite.SQLiteException -> L6b java.lang.Throwable -> L88
            com.google.android.gms.measurement.internal.zzgq r5 = r5.zzg()     // Catch: android.database.sqlite.SQLiteException -> L6b java.lang.Throwable -> L88
            java.lang.String r6 = "Got multiple records for app config, expected one. appId"
            java.lang.Object r7 = com.google.android.gms.measurement.internal.zzgo.zza(r13)     // Catch: android.database.sqlite.SQLiteException -> L6b java.lang.Throwable -> L88
            r5.zza(r6, r7)     // Catch: android.database.sqlite.SQLiteException -> L6b java.lang.Throwable -> L88
        L5c:
            if (r2 != 0) goto L62
            r1.close()
            return r0
        L62:
            com.sunia.HTREnginev2.kgp r5 = new com.sunia.HTREnginev2.kgp     // Catch: android.database.sqlite.SQLiteException -> L6b java.lang.Throwable -> L88
            r5.<init>(r2, r3, r4)     // Catch: android.database.sqlite.SQLiteException -> L6b java.lang.Throwable -> L88
            r1.close()
            return r5
        L6b:
            r2 = move-exception
            goto L71
        L6d:
            r12 = move-exception
            goto L8a
        L6f:
            r2 = move-exception
            r1 = r0
        L71:
            com.google.android.gms.measurement.internal.zzgo r12 = r12.zzj()     // Catch: java.lang.Throwable -> L88
            com.google.android.gms.measurement.internal.zzgq r12 = r12.zzg()     // Catch: java.lang.Throwable -> L88
            java.lang.String r3 = "Error querying remote config. appId"
            java.lang.Object r13 = com.google.android.gms.measurement.internal.zzgo.zza(r13)     // Catch: java.lang.Throwable -> L88
            r12.zza(r3, r13, r2)     // Catch: java.lang.Throwable -> L88
            if (r1 == 0) goto L87
            r1.close()
        L87:
            return r0
        L88:
            r12 = move-exception
            r0 = r1
        L8a:
            if (r0 == 0) goto L8f
            r0.close()
        L8f:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54536q0(java.lang.String):com.sunia.HTREnginev2.kgp");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0057  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m54537r(long r5) {
        /*
            r4 = this;
            r4.zzt()
            r4.zzal()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r4.m54513e()     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L3e
            java.lang.String r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L3e
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L3e
            r6 = 0
            r3[r6] = r5     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L3e
            android.database.Cursor r5 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L3e
            boolean r1 = r5.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L53
            if (r1 != 0) goto L32
            com.google.android.gms.measurement.internal.zzgo r6 = r4.zzj()     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L53
            com.google.android.gms.measurement.internal.zzgq r6 = r6.zzp()     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L53
            java.lang.String r1 = "No expired configs for apps with pending events"
            r6.zza(r1)     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L53
            r5.close()
            return r0
        L32:
            java.lang.String r4 = r5.getString(r6)     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L53
            r5.close()
            return r4
        L3a:
            r6 = move-exception
            goto L40
        L3c:
            r4 = move-exception
            goto L55
        L3e:
            r6 = move-exception
            r5 = r0
        L40:
            com.google.android.gms.measurement.internal.zzgo r4 = r4.zzj()     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.measurement.internal.zzgq r4 = r4.zzg()     // Catch: java.lang.Throwable -> L53
            java.lang.String r1 = "Error selecting expired configs"
            r4.zza(r1, r6)     // Catch: java.lang.Throwable -> L53
            if (r5 == 0) goto L52
            r5.close()
        L52:
            return r0
        L53:
            r4 = move-exception
            r0 = r5
        L55:
            if (r0 == 0) goto L5a
            r0.close()
        L5a:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54537r(long):java.lang.String");
    }

    /* renamed from: r0 */
    public final Map<Integer, List<zzfo.zzb>> m54538r0(String str, String str2) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        ArrayMap arrayMap = new ArrayMap();
        Cursor cursor = null;
        try {
            try {
                Cursor query = m54513e().query("event_filters", new String[]{"audience_id", "data"}, "app_id=? AND event_name=?", new String[]{str, str2}, null, null, null);
                if (!query.moveToFirst()) {
                    Map<Integer, List<zzfo.zzb>> emptyMap = Collections.emptyMap();
                    query.close();
                    return emptyMap;
                }
                do {
                    try {
                        zzfo.zzb zzbVar = (zzfo.zzb) ((zzjt) ((zzfo.zzb.zza) zzoo.m22692i(zzfo.zzb.zzc(), query.getBlob(1))).zzai());
                        int i = query.getInt(0);
                        List list = (List) arrayMap.get(Integer.valueOf(i));
                        if (list == null) {
                            list = new ArrayList();
                            arrayMap.put(Integer.valueOf(i), list);
                        }
                        list.add(zzbVar);
                    } catch (IOException e) {
                        zzj().zzg().zza("Failed to merge filter. appId", zzgo.zza(str), e);
                    }
                } while (query.moveToNext());
                query.close();
                return arrayMap;
            } catch (SQLiteException e2) {
                zzj().zzg().zza("Database error querying filters. appId", zzgo.zza(str), e2);
                Map<Integer, List<zzfo.zzb>> emptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyMap2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    /* renamed from: s */
    public final String m54539s(String str, String[] strArr, String str2) {
        Cursor cursor = null;
        try {
            try {
                cursor = m54513e().rawQuery(str, strArr);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return str2;
                }
                String string = cursor.getString(0);
                cursor.close();
                return string;
            } catch (SQLiteException e) {
                this.zzj().zzg().zza("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: s0 */
    public final zzax m54540s0(String str) {
        Preconditions.checkNotNull(str);
        zzt();
        zzal();
        return zzax.zza(m54539s("select dma_consent_settings from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0174 A[EDGE_INSN: B:60:0x0174->B:26:0x0174 BREAK  A[LOOP:0: B:17:0x005a->B:73:0x0171], SYNTHETIC] */
    @androidx.annotation.WorkerThread
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<android.util.Pair<com.google.android.gms.internal.measurement.zzfy.zzk, java.lang.Long>> m54541t(java.lang.String r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54541t(java.lang.String, int, int):java.util.List");
    }

    /* renamed from: t0 */
    public final Map<Integer, List<zzfo.zze>> m54542t0(String str, String str2) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        ArrayMap arrayMap = new ArrayMap();
        Cursor cursor = null;
        try {
            try {
                Cursor query = m54513e().query("property_filters", new String[]{"audience_id", "data"}, "app_id=? AND property_name=?", new String[]{str, str2}, null, null, null);
                if (!query.moveToFirst()) {
                    Map<Integer, List<zzfo.zze>> emptyMap = Collections.emptyMap();
                    query.close();
                    return emptyMap;
                }
                do {
                    try {
                        zzfo.zze zzeVar = (zzfo.zze) ((zzjt) ((zzfo.zze.zza) zzoo.m22692i(zzfo.zze.zzc(), query.getBlob(1))).zzai());
                        int i = query.getInt(0);
                        List list = (List) arrayMap.get(Integer.valueOf(i));
                        if (list == null) {
                            list = new ArrayList();
                            arrayMap.put(Integer.valueOf(i), list);
                        }
                        list.add(zzeVar);
                    } catch (IOException e) {
                        zzj().zzg().zza("Failed to merge filter", zzgo.zza(str), e);
                    }
                } while (query.moveToNext());
                query.close();
                return arrayMap;
            } catch (SQLiteException e2) {
                zzj().zzg().zza("Database error querying filters. appId", zzgo.zza(str), e2);
                Map<Integer, List<zzfo.zze>> emptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyMap2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    /* renamed from: u */
    public final List<zzae> m54543u(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(str3 + "*");
            sb.append(" and name glob ?");
        }
        return m54545v(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* renamed from: u0 */
    public final zzje m54544u0(String str) {
        Preconditions.checkNotNull(str);
        zzt();
        zzal();
        return zzje.zzb(m54539s("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008a, code lost:
    
        zzj().zzg().zza("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x016b  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzae> m54545v(java.lang.String r40, java.lang.String[] r41) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54545v(java.lang.String, java.lang.String[]):java.util.List");
    }

    @WorkerThread
    /* renamed from: v0 */
    public final void m54546v0(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        try {
            m54513e().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error deleting user property. appId", zzgo.zza(str), zzi().zzc(str2), e);
        }
    }

    /* renamed from: w0 */
    public final zzje m54547w0(String str) {
        Preconditions.checkNotNull(str);
        zzt();
        zzal();
        zzje zzjeVar = (zzje) m54535q("select consent_state, consent_source from consent_settings where app_id=? limit 1;", new String[]{str}, new bhp() { // from class: com.google.android.gms.measurement.internal.zzao
            @Override // com.sunia.HTREnginev2.bhp
            public final Object zza(Cursor cursor) {
                zzje zza;
                zza = zzje.zza(cursor.getString(0), cursor.getInt(1));
                return zza;
            }
        });
        return zzjeVar == null ? zzje.zza : zzjeVar;
    }

    @WorkerThread
    /* renamed from: x */
    public final void m54548x(vhp vhpVar) {
        m54485D("events", vhpVar);
    }

    /* renamed from: x0 */
    public final void m54549x0(String str, String str2) {
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        try {
            m54513e().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error deleting snapshot. appId", zzgo.zza(str2), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x0043, code lost:
    
        if (r7.zzg.m22633N(r0).zza(com.google.android.gms.measurement.internal.zzje.zza.ANALYTICS_STORAGE) != false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02d9  */
    @androidx.annotation.WorkerThread
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m54550y(com.sunia.HTREnginev2.okp r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 843
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54550y(com.sunia.HTREnginev2.okp, boolean, boolean):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0193  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r2v2 */
    @androidx.annotation.WorkerThread
    /* renamed from: y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzoj m54551y0(java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.hgp.m54551y0(java.lang.String):com.google.android.gms.measurement.internal.zzoj");
    }

    @WorkerThread
    /* renamed from: z */
    public final void m54552z(Long l) {
        zzt();
        zzal();
        Preconditions.checkNotNull(l);
        if ((!zzpu.zza() || zze().zza(zzbh.zzcb)) && m54506Q()) {
            if (m54514e0("SELECT COUNT(1) FROM upload_queue WHERE rowid = " + l + " AND retry_count =  2147483647 LIMIT 1", null) > 0) {
                zzj().zzu().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                m54513e().execSQL("UPDATE upload_queue SET retry_count = retry_count + 1 WHERE rowid = " + l + " AND retry_count < 2147483647");
            } catch (SQLiteException e) {
                zzj().zzg().zza("Error incrementing retry count. error", e);
            }
        }
    }

    /* renamed from: z0 */
    public final List<zzno> m54553z0(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursor = m54513e().query("trigger_uris", new String[]{"trigger_uri", "timestamp_millis", "source"}, "app_id=?", new String[]{str}, null, null, "rowid", null);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return arrayList;
                }
                do {
                    String string = cursor.getString(0);
                    if (string == null) {
                        string = "";
                    }
                    arrayList.add(new zzno(string, cursor.getLong(1), cursor.getInt(2)));
                } while (cursor.moveToNext());
                cursor.close();
                return arrayList;
            } catch (SQLiteException e) {
                zzj().zzg().zza("Error querying trigger uris. appId", zzgo.zza(str), e);
                List<zzno> emptyList = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
                return emptyList;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public final boolean zza(zzae zzaeVar) {
        Preconditions.checkNotNull(zzaeVar);
        zzt();
        zzal();
        String str = zzaeVar.zza;
        Preconditions.checkNotNull(str);
        if (m54534p0(str, zzaeVar.zzc.zza) == null && m54514e0("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", zzaeVar.zzb);
        contentValues.put("name", zzaeVar.zzc.zza);
        m54478w(contentValues, "value", Preconditions.checkNotNull(zzaeVar.zzc.zza()));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.valueOf(zzaeVar.zze));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzaeVar.zzf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzaeVar.zzh));
        zzq();
        contentValues.put("timed_out_event", zzos.m22722E(zzaeVar.zzg));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzaeVar.zzd));
        zzq();
        contentValues.put("triggered_event", zzos.m22722E(zzaeVar.zzi));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzaeVar.zzc.zzb));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzaeVar.zzj));
        zzq();
        contentValues.put("expired_event", zzos.m22722E(zzaeVar.zzk));
        try {
            if (m54513e().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert/update conditional user property (got -1)", zzgo.zza(str));
            return true;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing conditional user property", zzgo.zza(str), e);
            return true;
        }
    }

    @Override // com.sunia.HTREnginev2.kqp
    public final boolean zzc() {
        return false;
    }

    @WorkerThread
    public final void zzu() {
        zzal();
        m54513e().endTransaction();
    }

    @WorkerThread
    public final void zzv() {
        int delete;
        zzt();
        zzal();
        if (m54506Q()) {
            long zza = zzn().zza.zza();
            long elapsedRealtime = zzb().elapsedRealtime();
            if (Math.abs(elapsedRealtime - zza) > zzag.zzn()) {
                zzn().zza.zza(elapsedRealtime);
                zzt();
                zzal();
                if (!m54506Q() || (delete = m54513e().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzb().currentTimeMillis()), String.valueOf(zzag.zzm())})) <= 0) {
                    return;
                }
                zzj().zzp().zza("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
            }
        }
    }

    @WorkerThread
    public final void zzw() {
        zzal();
        m54513e().setTransactionSuccessful();
    }

    public final boolean zzx() {
        return m54514e0("select count(1) > 0 from raw_events", null) != 0;
    }

    public final boolean zzz() {
        return m54514e0("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }
}
