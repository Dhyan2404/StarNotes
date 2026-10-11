package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.collection.LruCache;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzc;
import com.google.android.gms.internal.measurement.zzfr;
import com.google.android.gms.internal.measurement.zzgd;
import com.google.android.gms.internal.measurement.zzkb;
import com.google.android.gms.internal.measurement.zzm;
import com.google.android.gms.internal.measurement.zzv;
import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.measurement.internal.zzje;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sunia.HTREnginev2.bgp;
import com.sunia.HTREnginev2.hgp;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.jlp;
import com.sunia.HTREnginev2.kgp;
import com.sunia.HTREnginev2.klp;
import com.sunia.HTREnginev2.kqp;
import com.sunia.HTREnginev2.llp;
import com.sunia.HTREnginev2.lrp;
import com.sunia.HTREnginev2.mlp;
import com.sunia.HTREnginev2.okp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.Callable;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zzhl extends kqp implements bgp {

    /* renamed from: b */
    public final Map<String, Map<String, String>> f29817b;

    /* renamed from: c */
    @VisibleForTesting
    public final Map<String, Set<String>> f29818c;

    /* renamed from: d */
    @VisibleForTesting
    public final Map<String, Map<String, Boolean>> f29819d;

    /* renamed from: e */
    @VisibleForTesting
    public final Map<String, Map<String, Boolean>> f29820e;

    /* renamed from: f */
    public final Map<String, zzfr.zzd> f29821f;

    /* renamed from: g */
    public final Map<String, Map<String, Integer>> f29822g;

    /* renamed from: h */
    @VisibleForTesting
    public final LruCache<String, com.google.android.gms.internal.measurement.zzb> f29823h;

    /* renamed from: i */
    public final zzv f29824i;

    /* renamed from: j */
    public final Map<String, String> f29825j;

    /* renamed from: k */
    public final Map<String, String> f29826k;

    /* renamed from: l */
    public final Map<String, String> f29827l;

    public zzhl(zznv zznvVar) {
        super(zznvVar);
        this.f29817b = new ArrayMap();
        this.f29818c = new ArrayMap();
        this.f29819d = new ArrayMap();
        this.f29820e = new ArrayMap();
        this.f29821f = new ArrayMap();
        this.f29825j = new ArrayMap();
        this.f29826k = new ArrayMap();
        this.f29827l = new ArrayMap();
        this.f29822g = new ArrayMap();
        this.f29823h = new jlp(this, 20);
        this.f29824i = new llp(this);
    }

    /* renamed from: c */
    public static /* synthetic */ com.google.android.gms.internal.measurement.zzb m22458c(zzhl zzhlVar, String str) {
        zzhlVar.zzal();
        Preconditions.checkNotEmpty(str);
        if (!zzhlVar.zzk(str)) {
            return null;
        }
        if (!zzhlVar.f29821f.containsKey(str) || zzhlVar.f29821f.get(str) == null) {
            zzhlVar.m22465D(str);
        } else {
            zzhlVar.m22470j(str, zzhlVar.f29821f.get(str));
        }
        return zzhlVar.f29823h.snapshot().get(str);
    }

    /* renamed from: e */
    public static zzje.zza m22459e(zzfr.zza.zze zzeVar) {
        int i = mlp.f77733b[zzeVar.ordinal()];
        if (i == 1) {
            return zzje.zza.AD_STORAGE;
        }
        if (i == 2) {
            return zzje.zza.ANALYTICS_STORAGE;
        }
        if (i == 3) {
            return zzje.zza.AD_USER_DATA;
        }
        if (i != 4) {
            return null;
        }
        return zzje.zza.AD_PERSONALIZATION;
    }

    /* renamed from: g */
    public static Map<String, String> m22460g(zzfr.zzd zzdVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (zzdVar != null) {
            for (zzfr.zzh zzhVar : zzdVar.zzn()) {
                arrayMap.put(zzhVar.zzb(), zzhVar.zzc());
            }
        }
        return arrayMap;
    }

    @WorkerThread
    /* renamed from: A */
    public final boolean m22462A(String str) {
        zzt();
        m22465D(str);
        return this.f29818c.get(str) != null && this.f29818c.get(str).contains("google_signals");
    }

    @WorkerThread
    /* renamed from: B */
    public final boolean m22463B(String str) {
        zzt();
        m22465D(str);
        if (this.f29818c.get(str) != null) {
            return this.f29818c.get(str).contains("os_version") || this.f29818c.get(str).contains("device_info");
        }
        return false;
    }

    @WorkerThread
    /* renamed from: C */
    public final boolean m22464C(String str) {
        zzt();
        m22465D(str);
        return this.f29818c.get(str) != null && this.f29818c.get(str).contains("user_id");
    }

    @WorkerThread
    /* renamed from: D */
    public final void m22465D(String str) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        if (this.f29821f.get(str) == null) {
            kgp m54536q0 = zzh().m54536q0(str);
            if (m54536q0 != null) {
                zzfr.zzd.zza zzcd = m22467d(str, m54536q0.f75405a).zzcd();
                m22469i(str, zzcd);
                this.f29817b.put(str, m22460g((zzfr.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzcd.zzai())));
                this.f29821f.put(str, (zzfr.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzcd.zzai()));
                m22470j(str, (zzfr.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzcd.zzai()));
                this.f29825j.put(str, zzcd.zzc());
                this.f29826k.put(str, m54536q0.f75406b);
                this.f29827l.put(str, m54536q0.f75407c);
                return;
            }
            this.f29817b.put(str, null);
            this.f29819d.put(str, null);
            this.f29818c.put(str, null);
            this.f29820e.put(str, null);
            this.f29821f.put(str, null);
            this.f29825j.put(str, null);
            this.f29826k.put(str, null);
            this.f29827l.put(str, null);
            this.f29822g.put(str, null);
        }
    }

    @WorkerThread
    /* renamed from: b */
    public final long m22466b(String str) {
        String zza = zza(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(zza)) {
            return 0L;
        }
        try {
            return Long.parseLong(zza);
        } catch (NumberFormatException e) {
            this.zzj().zzu().zza("Unable to parse timezone offset. appId", zzgo.zza(str), e);
            return 0L;
        }
    }

    @WorkerThread
    /* renamed from: d */
    public final zzfr.zzd m22467d(String str, byte[] bArr) {
        if (bArr == null) {
            return zzfr.zzd.zzg();
        }
        try {
            zzfr.zzd zzdVar = (zzfr.zzd) ((com.google.android.gms.internal.measurement.zzjt) ((zzfr.zzd.zza) zzoo.m22692i(zzfr.zzd.zze(), bArr)).zzai());
            zzj().zzp().zza("Parsed config. version, gmp_app_id", zzdVar.zzr() ? Long.valueOf(zzdVar.zzc()) : null, zzdVar.zzp() ? zzdVar.zzi() : null);
            return zzdVar;
        } catch (zzkb e) {
            zzj().zzu().zza("Unable to merge remote config. appId", zzgo.zza(str), e);
            return zzfr.zzd.zzg();
        } catch (RuntimeException e2) {
            zzj().zzu().zza("Unable to merge remote config. appId", zzgo.zza(str), e2);
            return zzfr.zzd.zzg();
        }
    }

    @WorkerThread
    /* renamed from: f */
    public final zzjh m22468f(String str, zzje.zza zzaVar) {
        zzt();
        m22465D(str);
        zzfr.zza m22472l = m22472l(str);
        if (m22472l == null) {
            return zzjh.UNINITIALIZED;
        }
        for (zzfr.zza.C20577zza c20577zza : m22472l.zzf()) {
            if (m22459e(c20577zza.zzc()) == zzaVar) {
                int i = mlp.f77734c[c20577zza.zzb().ordinal()];
                return i != 1 ? i != 2 ? zzjh.UNINITIALIZED : zzjh.GRANTED : zzjh.DENIED;
            }
        }
        return zzjh.UNINITIALIZED;
    }

    @Override // com.sunia.HTREnginev2.lqp
    /* renamed from: g_ */
    public final /* bridge */ /* synthetic */ zzoo mo22451g_() {
        return super.mo22451g_();
    }

    /* renamed from: i */
    public final void m22469i(String str, zzfr.zzd.zza zzaVar) {
        HashSet hashSet = new HashSet();
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (zzaVar != null) {
            Iterator<zzfr.zzb> it2 = zzaVar.zze().iterator();
            while (it2.hasNext()) {
                hashSet.add(it2.next().zzb());
            }
            for (int i = 0; i < zzaVar.zza(); i++) {
                zzfr.zzc.zza zzcd = zzaVar.zza(i).zzcd();
                if (zzcd.zzb().isEmpty()) {
                    zzj().zzu().zza("EventConfig contained null event name");
                } else {
                    String zzb = zzcd.zzb();
                    String zzb2 = zzji.zzb(zzcd.zzb());
                    if (!TextUtils.isEmpty(zzb2)) {
                        zzcd = zzcd.zza(zzb2);
                        zzaVar.zza(i, zzcd);
                    }
                    if (zzcd.zze() && zzcd.zzc()) {
                        arrayMap.put(zzb, Boolean.TRUE);
                    }
                    if (zzcd.zzf() && zzcd.zzd()) {
                        arrayMap2.put(zzcd.zzb(), Boolean.TRUE);
                    }
                    if (zzcd.zzg()) {
                        if (zzcd.zza() < 2 || zzcd.zza() > 65535) {
                            zzj().zzu().zza("Invalid sampling rate. Event name, sample rate", zzcd.zzb(), Integer.valueOf(zzcd.zza()));
                        } else {
                            arrayMap3.put(zzcd.zzb(), Integer.valueOf(zzcd.zza()));
                        }
                    }
                }
            }
        }
        this.f29818c.put(str, hashSet);
        this.f29819d.put(str, arrayMap);
        this.f29820e.put(str, arrayMap2);
        this.f29822g.put(str, arrayMap3);
    }

    @WorkerThread
    /* renamed from: j */
    public final void m22470j(final String str, zzfr.zzd zzdVar) {
        if (zzdVar.zza() == 0) {
            this.f29823h.remove(str);
            return;
        }
        zzj().zzp().zza("EES programs found", Integer.valueOf(zzdVar.zza()));
        zzgd.zzc zzcVar = zzdVar.zzm().get(0);
        try {
            com.google.android.gms.internal.measurement.zzb zzbVar = new com.google.android.gms.internal.measurement.zzb();
            zzbVar.zza("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhn
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzm("internal.remoteConfig", new klp(zzhl.this, str));
                }
            });
            zzbVar.zza("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhm
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    final zzhl zzhlVar = zzhl.this;
                    final String str2 = str;
                    return new zzx("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhk
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            zzhl zzhlVar2 = zzhl.this;
                            String str3 = str2;
                            okp m54532o0 = zzhlVar2.zzh().m54532o0(str3);
                            HashMap hashMap = new HashMap();
                            hashMap.put("platform", "android");
                            hashMap.put(PrivilegedApp.f6526c, str3);
                            hashMap.put("gmp_version", 106000L);
                            if (m54532o0 != null) {
                                String m56057o = m54532o0.m56057o();
                                if (m56057o != null) {
                                    hashMap.put("app_version", m56057o);
                                }
                                hashMap.put("app_version_int", Long.valueOf(m54532o0.m56023U()));
                                hashMap.put("dynamite_version", Long.valueOf(m54532o0.m56072v0()));
                            }
                            return hashMap;
                        }
                    });
                }
            });
            zzbVar.zza("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.zzhp
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new com.google.android.gms.internal.measurement.zzr(zzhl.this.f29824i);
                }
            });
            zzbVar.zza(zzcVar);
            this.f29823h.put(str, zzbVar);
            zzj().zzp().zza("EES program loaded for appId, activities", str, Integer.valueOf(zzcVar.zza().zza()));
            Iterator<zzgd.zzb> it2 = zzcVar.zza().zzd().iterator();
            while (it2.hasNext()) {
                zzj().zzp().zza("EES program activity", it2.next().zzb());
            }
        } catch (zzc unused) {
            zzj().zzg().zza("Failed to load EES program. appId", str);
        }
    }

    @WorkerThread
    /* renamed from: k */
    public final int m22471k(String str, String str2) {
        Integer num;
        zzt();
        m22465D(str);
        Map<String, Integer> map = this.f29822g.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    @WorkerThread
    /* renamed from: l */
    public final zzfr.zza m22472l(String str) {
        zzt();
        m22465D(str);
        zzfr.zzd zzc = zzc(str);
        if (zzc == null || !zzc.zzo()) {
            return null;
        }
        return zzc.zzd();
    }

    @WorkerThread
    /* renamed from: m */
    public final zzje.zza m22473m(String str, zzje.zza zzaVar) {
        zzt();
        m22465D(str);
        zzfr.zza m22472l = m22472l(str);
        if (m22472l == null) {
            return null;
        }
        for (zzfr.zza.zzc zzcVar : m22472l.zze()) {
            if (zzaVar == m22459e(zzcVar.zzc())) {
                return m22459e(zzcVar.zzb());
            }
        }
        return null;
    }

    @WorkerThread
    /* renamed from: n */
    public final boolean m22474n(String str, zzje.zza zzaVar) {
        zzt();
        m22465D(str);
        zzfr.zza m22472l = m22472l(str);
        if (m22472l == null) {
            return false;
        }
        Iterator<zzfr.zza.C20577zza> it2 = m22472l.zzd().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            zzfr.zza.C20577zza next = it2.next();
            if (zzaVar == m22459e(next.zzc())) {
                if (next.zzb() == zzfr.zza.zzd.GRANTED) {
                    return true;
                }
            }
        }
        return false;
    }

    @WorkerThread
    /* renamed from: o */
    public final boolean m22475o(String str, String str2) {
        Boolean bool;
        zzt();
        m22465D(str);
        if ("ecommerce_purchase".equals(str2) || FirebaseAnalytics.Event.PURCHASE.equals(str2) || FirebaseAnalytics.Event.REFUND.equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f29820e.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @WorkerThread
    /* renamed from: p */
    public final boolean m22476p(String str, String str2) {
        Boolean bool;
        zzt();
        m22465D(str);
        if (m22481u(str) && zzos.m22729T(str2)) {
            return true;
        }
        if (m22483w(str) && zzos.m22730U(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f29819d.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @WorkerThread
    /* renamed from: q */
    public final String m22477q(String str) {
        zzt();
        m22465D(str);
        return this.f29825j.get(str);
    }

    @WorkerThread
    /* renamed from: r */
    public final Set<String> m22478r(String str) {
        zzt();
        m22465D(str);
        return this.f29818c.get(str);
    }

    @WorkerThread
    /* renamed from: s */
    public final SortedSet<String> m22479s(String str) {
        zzt();
        m22465D(str);
        TreeSet treeSet = new TreeSet();
        zzfr.zza m22472l = m22472l(str);
        if (m22472l == null) {
            return treeSet;
        }
        Iterator<zzfr.zza.zzf> it2 = m22472l.zzc().iterator();
        while (it2.hasNext()) {
            treeSet.add(it2.next().zzb());
        }
        return treeSet;
    }

    @WorkerThread
    /* renamed from: t */
    public final void m22480t(String str) {
        zzt();
        this.f29821f.remove(str);
    }

    /* renamed from: u */
    public final boolean m22481u(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    @WorkerThread
    /* renamed from: v */
    public final boolean m22482v(String str) {
        zzt();
        m22465D(str);
        zzfr.zza m22472l = m22472l(str);
        return m22472l == null || !m22472l.zzh() || m22472l.zzg();
    }

    /* renamed from: w */
    public final boolean m22483w(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_public"));
    }

    @WorkerThread
    /* renamed from: x */
    public final boolean m22484x(String str) {
        zzt();
        m22465D(str);
        return this.f29818c.get(str) != null && this.f29818c.get(str).contains("app_instance_id");
    }

    @WorkerThread
    /* renamed from: y */
    public final boolean m22485y(String str) {
        zzt();
        m22465D(str);
        if (this.f29818c.get(str) != null) {
            return this.f29818c.get(str).contains("device_model") || this.f29818c.get(str).contains("device_info");
        }
        return false;
    }

    @WorkerThread
    /* renamed from: z */
    public final boolean m22486z(String str) {
        zzt();
        m22465D(str);
        return this.f29818c.get(str) != null && this.f29818c.get(str).contains("enhanced_user_id");
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

    @Override // com.sunia.HTREnginev2.bgp
    @WorkerThread
    public final String zza(String str, String str2) {
        zzt();
        m22465D(str);
        Map<String, String> map = this.f29817b.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @WorkerThread
    public final zzfr.zzd zzc(String str) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        m22465D(str);
        return this.f29821f.get(str);
    }

    @WorkerThread
    public final String zzd(String str) {
        zzt();
        return this.f29827l.get(str);
    }

    @WorkerThread
    public final String zze(String str) {
        zzt();
        return this.f29826k.get(str);
    }

    @WorkerThread
    public final void zzi(String str) {
        zzt();
        this.f29826k.put(str, null);
    }

    public final boolean zzk(String str) {
        zzfr.zzd zzdVar;
        return (TextUtils.isEmpty(str) || (zzdVar = this.f29821f.get(str)) == null || zzdVar.zza() == 0) ? false : true;
    }

    @WorkerThread
    public final boolean zza(String str, byte[] bArr, String str2, String str3) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        zzfr.zzd.zza zzcd = m22467d(str, bArr).zzcd();
        if (zzcd == null) {
            return false;
        }
        m22469i(str, zzcd);
        m22470j(str, (zzfr.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzcd.zzai()));
        this.f29821f.put(str, (zzfr.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzcd.zzai()));
        this.f29825j.put(str, zzcd.zzc());
        this.f29826k.put(str, str2);
        this.f29827l.put(str, str3);
        this.f29817b.put(str, m22460g((zzfr.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzcd.zzai())));
        zzh().m54489F(str, new ArrayList(zzcd.zzd()));
        try {
            zzcd.zzb();
            bArr = ((zzfr.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzcd.zzai())).zzca();
        } catch (RuntimeException e) {
            zzj().zzu().zza("Unable to serialize reduced-size config. Storing full config instead. appId", zzgo.zza(str), e);
        }
        hgp zzh = zzh();
        Preconditions.checkNotEmpty(str);
        zzh.zzt();
        zzh.zzal();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        contentValues.put("e_tag", str3);
        try {
            if (zzh.m54513e().update(PrivilegedApp.f6535l, contentValues, "app_id = ?", new String[]{str}) == 0) {
                zzh.zzj().zzg().zza("Failed to update remote config (got 0). appId", zzgo.zza(str));
            }
        } catch (SQLiteException e2) {
            zzh.zzj().zzg().zza("Error storing remote config. appId", zzgo.zza(str), e2);
        }
        this.f29821f.put(str, (zzfr.zzd) ((com.google.android.gms.internal.measurement.zzjt) zzcd.zzai()));
        return true;
    }
}
