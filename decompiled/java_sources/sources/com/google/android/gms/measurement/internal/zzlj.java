package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sunia.HTREnginev2.cjp;
import com.sunia.HTREnginev2.elp;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.pop;
import com.sunia.HTREnginev2.qop;
import com.sunia.HTREnginev2.rop;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zzlj extends elp {

    /* renamed from: b */
    public volatile zzlk f29945b;

    /* renamed from: c */
    public volatile zzlk f29946c;

    /* renamed from: d */
    public final Map<Integer, zzlk> f29947d;

    /* renamed from: e */
    @GuardedBy("activityLock")
    public Activity f29948e;

    /* renamed from: f */
    @GuardedBy("activityLock")
    public volatile boolean f29949f;

    /* renamed from: g */
    public volatile zzlk f29950g;

    /* renamed from: h */
    public zzlk f29951h;

    /* renamed from: i */
    @GuardedBy("activityLock")
    public boolean f29952i;

    /* renamed from: j */
    public final Object f29953j;

    @VisibleForTesting
    protected zzlk zza;

    public zzlj(zzhy zzhyVar) {
        super(zzhyVar);
        this.f29953j = new Object();
        this.f29947d = new ConcurrentHashMap();
    }

    /* renamed from: e */
    public static /* synthetic */ void m22563e(zzlj zzljVar, Bundle bundle, zzlk zzlkVar, zzlk zzlkVar2, long j) {
        if (bundle != null) {
            bundle.remove(FirebaseAnalytics.Param.SCREEN_NAME);
            bundle.remove(FirebaseAnalytics.Param.SCREEN_CLASS);
        }
        zzljVar.m22569i(zzlkVar, zzlkVar2, j, true, zzljVar.zzq().m22762h(null, FirebaseAnalytics.Event.SCREEN_VIEW, bundle, null, false));
    }

    @VisibleForTesting
    /* renamed from: c */
    public final String m22567c(Class<?> cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return str;
        }
        String[] split = canonicalName.split("\\.");
        String str2 = split.length > 0 ? split[split.length - 1] : "";
        return str2.length() > zze().m22282a(null, false) ? str2.substring(0, zze().m22282a(null, false)) : str2;
    }

    @MainThread
    /* renamed from: d */
    public final void m22568d(Activity activity, zzlk zzlkVar, boolean z) {
        zzlk zzlkVar2;
        zzlk zzlkVar3 = this.f29945b == null ? this.f29946c : this.f29945b;
        if (zzlkVar.zzb == null) {
            zzlkVar2 = new zzlk(zzlkVar.zza, activity != null ? m22567c(activity.getClass(), "Activity") : null, zzlkVar.zzc, zzlkVar.zze, zzlkVar.zzf);
        } else {
            zzlkVar2 = zzlkVar;
        }
        this.f29946c = this.f29945b;
        this.f29945b = zzlkVar2;
        zzl().zzb(new pop(this, zzlkVar2, zzlkVar3, zzb().elapsedRealtime(), z));
    }

    /* JADX WARN: Type inference failed for: r8v4, types: [android.os.BaseBundle] */
    /* JADX WARN: Type inference failed for: r8v5, types: [long, android.os.BaseBundle] */
    @WorkerThread
    /* renamed from: i */
    public final void m22569i(zzlk zzlkVar, zzlk zzlkVar2, long j, boolean z, Bundle bundle) {
        long j2;
        zzt();
        boolean z2 = false;
        boolean z3 = (zzlkVar2 != null && zzlkVar2.zzc == zzlkVar.zzc && Objects.equals(zzlkVar2.zzb, zzlkVar.zzb) && Objects.equals(zzlkVar2.zza, zzlkVar.zza)) ? false : true;
        if (z && this.zza != null) {
            z2 = true;
        }
        if (z3) {
            zzos.zza(zzlkVar, bundle != null ? new Bundle(bundle) : new Bundle(), true);
            if (zzlkVar2 != null) {
                String str = zzlkVar2.zza;
                if (str != null) {
                    "_pn".putString("_pn", str);
                }
                String str2 = zzlkVar2.zzb;
                if (str2 != null) {
                    "_pc".putString("_pc", str2);
                }
                ?? r8 = zzlkVar2.zzc;
                r8.putLong("_pi", r8);
            }
            ?? r82 = 0;
            if (z2) {
                long m22274a = zzp().zzb.m22274a(j);
                if (m22274a > 0) {
                    zzq().zza((Bundle) null, m22274a);
                }
            }
            if (!zze().zzw()) {
                r82.putLong("_mst", 1L);
            }
            String str3 = zzlkVar.zze ? "app" : "auto";
            long currentTimeMillis = zzb().currentTimeMillis();
            if (zzlkVar.zze) {
                currentTimeMillis = zzlkVar.zzf;
                if (currentTimeMillis != 0) {
                    j2 = currentTimeMillis;
                    zzm().m22551r(str3, "_vs", j2, null);
                }
            }
            j2 = currentTimeMillis;
            zzm().m22551r(str3, "_vs", j2, null);
        }
        if (z2) {
            m22570j(this.zza, true, j);
        }
        this.zza = zzlkVar;
        if (zzlkVar.zze) {
            this.f29951h = zzlkVar;
        }
        zzo().zza(zzlkVar);
    }

    @WorkerThread
    /* renamed from: j */
    public final void m22570j(zzlk zzlkVar, boolean z, long j) {
        zzc().zza(zzb().elapsedRealtime());
        if (!zzp().zza(zzlkVar != null && zzlkVar.f29954a, z, j) || zzlkVar == null) {
            return;
        }
        zzlkVar.f29954a = false;
    }

    @MainThread
    /* renamed from: k */
    public final zzlk m22571k(@NonNull Activity activity) {
        Preconditions.checkNotNull(activity);
        zzlk zzlkVar = this.f29947d.get(Integer.valueOf(activity.hashCode()));
        if (zzlkVar == null) {
            zzlk zzlkVar2 = new zzlk(null, m22567c(activity.getClass(), "Activity"), zzq().zzn());
            this.f29947d.put(Integer.valueOf(activity.hashCode()), zzlkVar2);
            zzlkVar = zzlkVar2;
        }
        return this.f29950g != null ? this.f29950g : zzlkVar;
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final zzlk zzaa() {
        return this.f29945b;
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

    @Override // com.sunia.HTREnginev2.elp
    public final boolean zzz() {
        return false;
    }

    @WorkerThread
    public final zzlk zza(boolean z) {
        zzu();
        zzt();
        if (!z) {
            return this.zza;
        }
        zzlk zzlkVar = this.zza;
        return zzlkVar != null ? zzlkVar : this.f29951h;
    }

    @MainThread
    public final void zzb(Activity activity) {
        synchronized (this.f29953j) {
            this.f29952i = false;
            this.f29949f = true;
        }
        long elapsedRealtime = zzb().elapsedRealtime();
        if (!zze().zzw()) {
            this.f29945b = null;
            zzl().zzb(new RunnableC5122j(this, elapsedRealtime));
        } else {
            zzlk m22571k = m22571k(activity);
            this.f29946c = this.f29945b;
            this.f29945b = null;
            zzl().zzb(new RunnableC5124l(this, m22571k, elapsedRealtime));
        }
    }

    @MainThread
    public final void zzc(Activity activity) {
        synchronized (this.f29953j) {
            this.f29952i = true;
            if (activity != this.f29948e) {
                synchronized (this.f29953j) {
                    this.f29948e = activity;
                    this.f29949f = false;
                }
                if (zze().zzw()) {
                    this.f29950g = null;
                    zzl().zzb(new rop(this));
                }
            }
        }
        if (!zze().zzw()) {
            this.f29945b = this.f29950g;
            zzl().zzb(new RunnableC5123k(this));
        } else {
            m22568d(activity, m22571k(activity), false);
            zzb zzc = zzc();
            zzc.zzl().zzb(new cjp(zzc, zzc.zzb().elapsedRealtime()));
        }
    }

    @MainThread
    public final void zza(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!zze().zzw() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f29947d.put(Integer.valueOf(activity.hashCode()), new zzlk(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    @MainThread
    public final void zza(Activity activity) {
        synchronized (this.f29953j) {
            if (activity == this.f29948e) {
                this.f29948e = null;
            }
        }
        if (zze().zzw()) {
            this.f29947d.remove(Integer.valueOf(activity.hashCode()));
        }
    }

    @MainThread
    public final void zzb(Activity activity, Bundle bundle) {
        zzlk zzlkVar;
        if (!zze().zzw() || bundle == null || (zzlkVar = this.f29947d.get(Integer.valueOf(activity.hashCode()))) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zzlkVar.zzc);
        bundle2.putString("name", zzlkVar.zza);
        bundle2.putString("referrer_name", zzlkVar.zzb);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @Deprecated
    public final void zza(@NonNull Activity activity, @Size(max = 36, min = 1) String str, @Size(max = 36, min = 1) String str2) {
        if (!zze().zzw()) {
            zzj().zzv().zza("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        zzlk zzlkVar = this.f29945b;
        if (zzlkVar == null) {
            zzj().zzv().zza("setCurrentScreen cannot be called while no activity active");
            return;
        }
        if (this.f29947d.get(Integer.valueOf(activity.hashCode())) == null) {
            zzj().zzv().zza("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = m22567c(activity.getClass(), "Activity");
        }
        boolean equals = Objects.equals(zzlkVar.zzb, str2);
        boolean equals2 = Objects.equals(zzlkVar.zza, str);
        if (equals && equals2) {
            zzj().zzv().zza("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null && (str.length() <= 0 || str.length() > zze().m22282a(null, false))) {
            zzj().zzv().zza("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null && (str2.length() <= 0 || str2.length() > zze().m22282a(null, false))) {
            zzj().zzv().zza("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        zzj().zzp().zza("Setting current screen to name, class", str == null ? "null" : str, str2);
        zzlk zzlkVar2 = new zzlk(str, str2, zzq().zzn());
        this.f29947d.put(Integer.valueOf(activity.hashCode()), zzlkVar2);
        m22568d(activity, zzlkVar2, true);
    }

    public final void zza(Bundle bundle, long j) {
        String str;
        synchronized (this.f29953j) {
            if (!this.f29952i) {
                zzj().zzv().zza("Cannot log screen view event when the app is in the background.");
                return;
            }
            String str2 = null;
            if (bundle != null) {
                String string = bundle.getString(FirebaseAnalytics.Param.SCREEN_NAME);
                if (string != null && (string.length() <= 0 || string.length() > zze().m22282a(null, false))) {
                    zzj().zzv().zza("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                    return;
                }
                String string2 = bundle.getString(FirebaseAnalytics.Param.SCREEN_CLASS);
                if (string2 != null && (string2.length() <= 0 || string2.length() > zze().m22282a(null, false))) {
                    zzj().zzv().zza("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                    return;
                } else {
                    str2 = string2;
                    str = string;
                }
            } else {
                str = null;
            }
            if (str2 == null) {
                Activity activity = this.f29948e;
                str2 = activity != null ? m22567c(activity.getClass(), "Activity") : "Activity";
            }
            String str3 = str2;
            zzlk zzlkVar = this.f29945b;
            if (this.f29949f && zzlkVar != null) {
                this.f29949f = false;
                boolean equals = Objects.equals(zzlkVar.zzb, str3);
                boolean equals2 = Objects.equals(zzlkVar.zza, str);
                if (equals && equals2) {
                    zzj().zzv().zza("Ignoring call to log screen view event with duplicate parameters.");
                    return;
                }
            }
            zzj().zzp().zza("Logging screen view with name, class", str == null ? "null" : str, str3 == null ? "null" : str3);
            zzlk zzlkVar2 = this.f29945b == null ? this.f29946c : this.f29945b;
            zzlk zzlkVar3 = new zzlk(str, str3, zzq().zzn(), true, j);
            this.f29945b = zzlkVar3;
            this.f29946c = zzlkVar2;
            this.f29950g = zzlkVar3;
            zzl().zzb(new qop(this, bundle, zzlkVar3, zzlkVar2, zzb().elapsedRealtime()));
        }
    }
}
