package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzov;
import com.sunia.HTREnginev2.anp;
import com.sunia.HTREnginev2.bnp;
import com.sunia.HTREnginev2.cnp;
import com.sunia.HTREnginev2.elp;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.mop;
import com.sunia.HTREnginev2.nop;
import com.sunia.HTREnginev2.rkp;
import com.sunia.HTREnginev2.xlp;
import java.net.URL;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.dataflow.qual.Pure;
import org.checkerframework.dataflow.qual.SideEffectFree;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class zzhy implements anp {

    /* renamed from: I */
    public static volatile zzhy f29845I;

    /* renamed from: A */
    public volatile Boolean f29846A;

    /* renamed from: B */
    @VisibleForTesting
    public Boolean f29847B;

    /* renamed from: C */
    @VisibleForTesting
    public Boolean f29848C;

    /* renamed from: D */
    public volatile boolean f29849D;

    /* renamed from: E */
    public int f29850E;

    /* renamed from: F */
    public int f29851F;

    /* renamed from: H */
    @VisibleForTesting
    public final long f29853H;

    /* renamed from: a */
    public final Context f29854a;

    /* renamed from: b */
    public final String f29855b;

    /* renamed from: c */
    public final String f29856c;

    /* renamed from: d */
    public final String f29857d;

    /* renamed from: e */
    public final boolean f29858e;

    /* renamed from: f */
    public final zzab f29859f;

    /* renamed from: g */
    public final zzag f29860g;

    /* renamed from: h */
    public final hlp f29861h;

    /* renamed from: i */
    public final zzgo f29862i;

    /* renamed from: j */
    public final zzhv f29863j;

    /* renamed from: k */
    public final zznb f29864k;

    /* renamed from: l */
    public final zzos f29865l;

    /* renamed from: m */
    public final zzgh f29866m;

    /* renamed from: n */
    public final Clock f29867n;

    /* renamed from: o */
    public final zzlj f29868o;

    /* renamed from: p */
    public final zzjq f29869p;

    /* renamed from: q */
    public final zzb f29870q;

    /* renamed from: r */
    public final zzle f29871r;

    /* renamed from: s */
    public final String f29872s;

    /* renamed from: t */
    public zzgf f29873t;

    /* renamed from: u */
    public zzls f29874u;

    /* renamed from: v */
    public zzaz f29875v;

    /* renamed from: w */
    public zzgg f29876w;

    /* renamed from: y */
    public Boolean f29878y;

    /* renamed from: z */
    public long f29879z;

    /* renamed from: x */
    public boolean f29877x = false;

    /* renamed from: G */
    public AtomicInteger f29852G = new AtomicInteger(0);

    public zzhy(zzjo zzjoVar) {
        Bundle bundle;
        boolean z = false;
        Preconditions.checkNotNull(zzjoVar);
        zzab zzabVar = new zzab(zzjoVar.f29897a);
        this.f29859f = zzabVar;
        rkp.f83201a = zzabVar;
        Context context = zzjoVar.f29897a;
        this.f29854a = context;
        this.f29855b = zzjoVar.f29898b;
        this.f29856c = zzjoVar.f29899c;
        this.f29857d = zzjoVar.f29900d;
        this.f29858e = zzjoVar.f29904h;
        this.f29846A = zzjoVar.f29901e;
        this.f29872s = zzjoVar.f29906j;
        this.f29849D = true;
        com.google.android.gms.internal.measurement.zzdw zzdwVar = zzjoVar.f29903g;
        if (zzdwVar != null && (bundle = zzdwVar.zzg) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.f29847B = (Boolean) obj;
            }
            Object obj2 = zzdwVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.f29848C = (Boolean) obj2;
            }
        }
        com.google.android.gms.internal.measurement.zzhj.zzb(context);
        Clock defaultClock = DefaultClock.getInstance();
        this.f29867n = defaultClock;
        Long l = zzjoVar.f29905i;
        this.f29853H = l != null ? l.longValue() : defaultClock.currentTimeMillis();
        this.f29860g = new zzag(this);
        hlp hlpVar = new hlp(this);
        hlpVar.zzad();
        this.f29861h = hlpVar;
        zzgo zzgoVar = new zzgo(this);
        zzgoVar.zzad();
        this.f29862i = zzgoVar;
        zzos zzosVar = new zzos(this);
        zzosVar.zzad();
        this.f29865l = zzosVar;
        this.f29866m = new zzgh(new cnp(zzjoVar, this));
        this.f29870q = new zzb(this);
        zzlj zzljVar = new zzlj(this);
        zzljVar.zzv();
        this.f29868o = zzljVar;
        zzjq zzjqVar = new zzjq(this);
        zzjqVar.zzv();
        this.f29869p = zzjqVar;
        zznb zznbVar = new zznb(this);
        zznbVar.zzv();
        this.f29864k = zznbVar;
        zzle zzleVar = new zzle(this);
        zzleVar.zzad();
        this.f29871r = zzleVar;
        zzhv zzhvVar = new zzhv(this);
        zzhvVar.zzad();
        this.f29863j = zzhvVar;
        com.google.android.gms.internal.measurement.zzdw zzdwVar2 = zzjoVar.f29903g;
        if (zzdwVar2 != null && zzdwVar2.zzb != 0) {
            z = true;
        }
        boolean z2 = !z;
        if (context.getApplicationContext() instanceof Application) {
            zzp().zzb(z2);
        } else {
            zzj().zzu().zza("Application context is not an Application");
        }
        zzhvVar.zzb(new xlp(this, zzjoVar));
    }

    /* renamed from: a */
    public static /* synthetic */ void m22497a(zzhy zzhyVar, zzjo zzjoVar) {
        zzhyVar.zzl().zzt();
        zzaz zzazVar = new zzaz(zzhyVar);
        zzazVar.zzad();
        zzhyVar.f29875v = zzazVar;
        zzgg zzggVar = new zzgg(zzhyVar, zzjoVar.f29902f);
        zzggVar.zzv();
        zzhyVar.f29876w = zzggVar;
        zzgf zzgfVar = new zzgf(zzhyVar);
        zzgfVar.zzv();
        zzhyVar.f29873t = zzgfVar;
        zzls zzlsVar = new zzls(zzhyVar);
        zzlsVar.zzv();
        zzhyVar.f29874u = zzlsVar;
        zzhyVar.f29865l.zzae();
        zzhyVar.f29861h.zzae();
        zzhyVar.f29876w.zzw();
        zzhyVar.zzj().zzo().zza("App measurement initialized, version", 106000L);
        zzhyVar.zzj().zzo().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String m22432f = zzggVar.m22432f();
        if (TextUtils.isEmpty(zzhyVar.f29855b)) {
            if (zzhyVar.zzt().m22750P(m22432f, zzhyVar.f29860g.zzu())) {
                zzhyVar.zzj().zzo().zza("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                zzhyVar.zzj().zzo().zza("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app " + m22432f);
            }
        }
        zzhyVar.zzj().zzc().zza("Debug-level message logging enabled");
        if (zzhyVar.f29850E != zzhyVar.f29852G.get()) {
            zzhyVar.zzj().zzg().zza("Not all components initialized", Integer.valueOf(zzhyVar.f29850E), Integer.valueOf(zzhyVar.f29852G.get()));
        }
        zzhyVar.f29877x = true;
    }

    /* renamed from: b */
    public static void m22498b(C5116d c5116d) {
        if (c5116d == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    /* renamed from: c */
    public static void m22499c(elp elpVar) {
        if (elpVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (elpVar.m53976a()) {
            return;
        }
        throw new IllegalStateException("Component not initialized: " + String.valueOf(elpVar.getClass()));
    }

    /* renamed from: d */
    public static void m22500d(bnp bnpVar) {
        if (bnpVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (bnpVar.m53287a()) {
            return;
        }
        throw new IllegalStateException("Component not initialized: " + String.valueOf(bnpVar.getClass()));
    }

    /* renamed from: e */
    public final /* synthetic */ void m22501e(String str, int i, Throwable th, byte[] bArr, Map map) {
        if (!((i == 200 || i == 204 || i == 304) && th == null)) {
            zzj().zzu().zza("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i), th);
            return;
        }
        zzn().f72339u.zza(true);
        if (bArr == null || bArr.length == 0) {
            zzj().zzc().zza("Deferred Deep Link response empty.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            String optString = jSONObject.optString("deeplink", "");
            if (TextUtils.isEmpty(optString)) {
                zzj().zzc().zza("Deferred Deep Link is empty.");
                return;
            }
            String optString2 = jSONObject.optString("gclid", "");
            String optString3 = jSONObject.optString("gbraid", "");
            String optString4 = jSONObject.optString("gad_source", "");
            double optDouble = jSONObject.optDouble(NotificationCompat.CarExtender.f4980p, 0.0d);
            Bundle bundle = new Bundle();
            if (zzov.zza() && this.f29860g.zza(zzbh.zzct)) {
                if (!zzt().zzi(optString)) {
                    zzj().zzu().zza("Deferred Deep Link validation failed. gclid, gbraid, deep link", optString2, optString3, optString);
                    return;
                }
                if (!TextUtils.isEmpty(optString3)) {
                    bundle.putString("gbraid", optString3);
                }
                if (!TextUtils.isEmpty(optString4)) {
                    bundle.putString("gad_source", optString4);
                }
            } else if (!zzt().zzi(optString)) {
                zzj().zzu().zza("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                return;
            }
            if (zzov.zza()) {
                this.f29860g.zza(zzbh.zzct);
            }
            bundle.putString("gclid", optString2);
            bundle.putString("_cis", "ddp");
            this.f29869p.m22544I("auto", "_cmp", bundle);
            zzos zzt = zzt();
            if (TextUtils.isEmpty(optString) || !zzt.m22770w(optString, optDouble)) {
                return;
            }
            zzt.zza().sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
        } catch (JSONException e) {
            zzj().zzg().zza("Failed to parse the Deferred Deep Link response. exception", e);
        }
    }

    @WorkerThread
    /* renamed from: f */
    public final void m22502f(boolean z) {
        this.f29846A = Boolean.valueOf(z);
    }

    /* renamed from: g */
    public final void m22503g() {
        this.f29850E++;
    }

    @Pure
    /* renamed from: h */
    public final zzle m22504h() {
        m22500d(this.f29871r);
        return this.f29871r;
    }

    @SideEffectFree
    /* renamed from: i */
    public final zzhv m22505i() {
        return this.f29863j;
    }

    /* renamed from: j */
    public final void m22506j() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    /* renamed from: k */
    public final void m22507k() {
        this.f29852G.incrementAndGet();
    }

    @Override // com.sunia.HTREnginev2.anp
    @Pure
    public final Context zza() {
        return this.f29854a;
    }

    @WorkerThread
    public final boolean zzab() {
        return this.f29846A != null && this.f29846A.booleanValue();
    }

    @WorkerThread
    public final boolean zzac() {
        return zzc() == 0;
    }

    @WorkerThread
    public final boolean zzad() {
        zzl().zzt();
        return this.f29849D;
    }

    @Pure
    public final boolean zzae() {
        return TextUtils.isEmpty(this.f29855b);
    }

    @WorkerThread
    public final boolean zzaf() {
        if (!this.f29877x) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
        zzl().zzt();
        Boolean bool = this.f29878y;
        if (bool == null || this.f29879z == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.f29867n.elapsedRealtime() - this.f29879z) > 1000)) {
            this.f29879z = this.f29867n.elapsedRealtime();
            boolean z = true;
            Boolean valueOf = Boolean.valueOf(zzt().m22751Q("android.permission.INTERNET") && zzt().m22751Q(DefaultConnectivityMonitorFactory.f15198b) && (Wrappers.packageManager(this.f29854a).isCallerInstantApp() || this.f29860g.m22290i() || (zzos.m22737r(this.f29854a) && zzos.m22738s(this.f29854a, false))));
            this.f29878y = valueOf;
            if (valueOf.booleanValue()) {
                if (!zzt().m22772y(zzh().m22433g(), zzh().m22431e()) && TextUtils.isEmpty(zzh().m22431e())) {
                    z = false;
                }
                this.f29878y = Boolean.valueOf(z);
            }
        }
        return this.f29878y.booleanValue();
    }

    @Pure
    public final boolean zzag() {
        return this.f29858e;
    }

    @WorkerThread
    public final boolean zzah() {
        zzl().zzt();
        m22500d(m22504h());
        String m22432f = zzh().m22432f();
        if (!this.f29860g.zzv()) {
            zzj().zzp().zza("ADID collection is disabled from Manifest. Skipping");
            return false;
        }
        Pair<String, Boolean> m54567b = zzn().m54567b(m22432f);
        if (((Boolean) m54567b.second).booleanValue() || TextUtils.isEmpty((CharSequence) m54567b.first)) {
            zzj().zzp().zza("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return false;
        }
        if (!m22504h().zzc()) {
            zzj().zzu().zza("Network is not available for Deferred Deep Link request. Skipping");
            return false;
        }
        StringBuilder sb = new StringBuilder();
        zzls zzr = zzr();
        zzr.zzt();
        zzr.zzu();
        if (!zzr.m22586l() || zzr.zzq().zzg() >= 234200) {
            zzaj zzab = zzp().zzab();
            Bundle bundle = zzab != null ? zzab.zza : null;
            if (bundle == null) {
                int i = this.f29851F;
                this.f29851F = i + 1;
                boolean z = i < 10;
                zzj().zzc().zza("Failed to retrieve DMA consent from the service, " + (z ? "Retrying." : "Skipping.") + " retryCount", Integer.valueOf(this.f29851F));
                return z;
            }
            zzje zza = zzje.zza(bundle, 100);
            sb.append("&gcs=");
            sb.append(zza.zze());
            zzax zza2 = zzax.zza(bundle, 100);
            sb.append("&dma=");
            sb.append(zza2.zzd() == Boolean.FALSE ? 0 : 1);
            if (!TextUtils.isEmpty(zza2.zze())) {
                sb.append("&dma_cps=");
                sb.append(zza2.zze());
            }
            int i2 = zzax.zza(bundle) == Boolean.TRUE ? 0 : 1;
            sb.append("&npa=");
            sb.append(i2);
            zzj().zzp().zza("Consent query parameters to Bow", sb);
        }
        zzos zzt = zzt();
        zzh();
        URL zza3 = zzt.zza(106000L, m22432f, (String) m54567b.first, zzn().f72340v.zza() - 1, sb.toString());
        if (zza3 != null) {
            zzle m22504h = m22504h();
            mop mopVar = new mop() { // from class: com.google.android.gms.measurement.internal.zzia
                @Override // com.sunia.HTREnginev2.mop
                public final void zza(String str, int i3, Throwable th, byte[] bArr, Map map) {
                    zzhy.this.m22501e(str, i3, th, bArr, map);
                }
            };
            m22504h.zzt();
            m22504h.zzac();
            Preconditions.checkNotNull(zza3);
            Preconditions.checkNotNull(mopVar);
            m22504h.zzl().zza(new nop(m22504h, m22432f, zza3, null, null, mopVar));
        }
        return false;
    }

    @Override // com.sunia.HTREnginev2.anp
    @Pure
    public final Clock zzb() {
        return this.f29867n;
    }

    @WorkerThread
    public final int zzc() {
        zzl().zzt();
        if (this.f29860g.zzx()) {
            return 1;
        }
        Boolean bool = this.f29848C;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        if (!zzad()) {
            return 8;
        }
        Boolean m54583r = zzn().m54583r();
        if (m54583r != null) {
            return m54583r.booleanValue() ? 0 : 3;
        }
        Boolean m22287f = this.f29860g.m22287f("firebase_analytics_collection_enabled");
        if (m22287f != null) {
            return m22287f.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.f29847B;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (this.f29846A == null || this.f29846A.booleanValue()) ? 0 : 7;
    }

    @Override // com.sunia.HTREnginev2.anp
    @Pure
    public final zzab zzd() {
        return this.f29859f;
    }

    @Pure
    public final zzb zze() {
        zzb zzbVar = this.f29870q;
        if (zzbVar != null) {
            return zzbVar;
        }
        throw new IllegalStateException("Component not created");
    }

    @Pure
    public final zzag zzf() {
        return this.f29860g;
    }

    @Pure
    public final zzaz zzg() {
        m22500d(this.f29875v);
        return this.f29875v;
    }

    @Pure
    public final zzgg zzh() {
        m22499c(this.f29876w);
        return this.f29876w;
    }

    @Pure
    public final zzgf zzi() {
        m22499c(this.f29873t);
        return this.f29873t;
    }

    @Override // com.sunia.HTREnginev2.anp
    @Pure
    public final zzgo zzj() {
        m22500d(this.f29862i);
        return this.f29862i;
    }

    @Pure
    public final zzgh zzk() {
        return this.f29866m;
    }

    @Override // com.sunia.HTREnginev2.anp
    @Pure
    public final zzhv zzl() {
        m22500d(this.f29863j);
        return this.f29863j;
    }

    public final zzgo zzm() {
        zzgo zzgoVar = this.f29862i;
        if (zzgoVar == null || !zzgoVar.m53287a()) {
            return null;
        }
        return this.f29862i;
    }

    @Pure
    public final hlp zzn() {
        m22498b(this.f29861h);
        return this.f29861h;
    }

    @Pure
    public final zzjq zzp() {
        m22499c(this.f29869p);
        return this.f29869p;
    }

    @Pure
    public final zzlj zzq() {
        m22499c(this.f29868o);
        return this.f29868o;
    }

    @Pure
    public final zzls zzr() {
        m22499c(this.f29874u);
        return this.f29874u;
    }

    @Pure
    public final zznb zzs() {
        m22499c(this.f29864k);
        return this.f29864k;
    }

    @Pure
    public final zzos zzt() {
        m22498b(this.f29865l);
        return this.f29865l;
    }

    @Pure
    public final String zzu() {
        return this.f29855b;
    }

    @Pure
    public final String zzv() {
        return this.f29856c;
    }

    @Pure
    public final String zzw() {
        return this.f29857d;
    }

    @Pure
    public final String zzx() {
        return this.f29872s;
    }

    public static zzhy zza(Context context, com.google.android.gms.internal.measurement.zzdw zzdwVar, Long l) {
        Bundle bundle;
        if (zzdwVar != null && (zzdwVar.zze == null || zzdwVar.zzf == null)) {
            zzdwVar = new com.google.android.gms.internal.measurement.zzdw(zzdwVar.zza, zzdwVar.zzb, zzdwVar.zzc, zzdwVar.zzd, null, null, zzdwVar.zzg, null);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (f29845I == null) {
            synchronized (zzhy.class) {
                if (f29845I == null) {
                    f29845I = new zzhy(new zzjo(context, zzdwVar, l));
                }
            }
        } else if (zzdwVar != null && (bundle = zzdwVar.zzg) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.checkNotNull(f29845I);
            f29845I.m22502f(zzdwVar.zzg.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.checkNotNull(f29845I);
        return f29845I;
    }

    @WorkerThread
    public final void zzb(boolean z) {
        zzl().zzt();
        this.f29849D = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x00da, code lost:
    
        if (r1.zzi() != false) goto L37;
     */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.measurement.zzdw r12) {
        /*
            Method dump skipped, instructions count: 1084
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzhy.zza(com.google.android.gms.internal.measurement.zzdw):void");
    }
}
