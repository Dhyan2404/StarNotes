package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import com.sunia.HTREnginev2.cpp;
import com.sunia.HTREnginev2.dpp;
import com.sunia.HTREnginev2.ehp;
import com.sunia.HTREnginev2.elp;
import com.sunia.HTREnginev2.epp;
import com.sunia.HTREnginev2.fpp;
import com.sunia.HTREnginev2.gpp;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.hpp;
import com.sunia.HTREnginev2.ipp;
import com.sunia.HTREnginev2.iqp;
import com.sunia.HTREnginev2.jpp;
import com.sunia.HTREnginev2.kpp;
import com.sunia.HTREnginev2.lpp;
import com.sunia.HTREnginev2.mpp;
import com.sunia.HTREnginev2.npp;
import com.sunia.HTREnginev2.opp;
import com.sunia.HTREnginev2.ppp;
import com.sunia.HTREnginev2.sop;
import com.sunia.HTREnginev2.top;
import com.sunia.HTREnginev2.uop;
import com.sunia.HTREnginev2.vop;
import com.sunia.HTREnginev2.wop;
import com.sunia.HTREnginev2.xop;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zzls extends elp {

    /* renamed from: b */
    public final zzmq f29956b;

    /* renamed from: c */
    public zzgb f29957c;

    /* renamed from: d */
    public volatile Boolean f29958d;

    /* renamed from: e */
    public final ehp f29959e;

    /* renamed from: f */
    public final iqp f29960f;

    /* renamed from: g */
    public final List<Runnable> f29961g;

    /* renamed from: h */
    public final ehp f29962h;

    public zzls(zzhy zzhyVar) {
        super(zzhyVar);
        this.f29961g = new ArrayList();
        this.f29960f = new iqp(zzhyVar.zzb());
        this.f29956b = new zzmq(this);
        this.f29959e = new sop(this, zzhyVar);
        this.f29962h = new ipp(this, zzhyVar);
    }

    /* renamed from: d */
    public static /* synthetic */ void m22573d(zzls zzlsVar, ComponentName componentName) {
        zzlsVar.zzt();
        if (zzlsVar.f29957c != null) {
            zzlsVar.f29957c = null;
            zzlsVar.zzj().zzp().zza("Disconnected from device MeasurementService", componentName);
            zzlsVar.zzt();
            zzlsVar.zzae();
        }
    }

    /* renamed from: p */
    public static /* synthetic */ void m22577p(zzls zzlsVar) {
        zzlsVar.zzt();
        if (zzlsVar.zzal()) {
            zzlsVar.zzj().zzp().zza("Inactivity, disconnecting from the service");
            zzlsVar.zzaf();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0138 A[ADDED_TO_REGION, SYNTHETIC] */
    @androidx.annotation.WorkerThread
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m22579c(com.google.android.gms.measurement.internal.zzgb r37, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable r38, com.google.android.gms.measurement.internal.zzo r39) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzls.m22579c(com.google.android.gms.measurement.internal.zzgb, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable, com.google.android.gms.measurement.internal.zzo):void");
    }

    /* renamed from: f */
    public final Boolean m22580f() {
        return this.f29958d;
    }

    /* renamed from: g */
    public final /* synthetic */ void m22581g() {
        zzgb zzgbVar = this.f29957c;
        if (zzgbVar == null) {
            zzj().zzg().zza("Failed to send Dma consent settings to service");
            return;
        }
        try {
            zzo m22587n = m22587n(false);
            Preconditions.checkNotNull(m22587n);
            zzgbVar.zzg(m22587n);
            zzar();
        } catch (RemoteException e) {
            zzj().zzg().zza("Failed to send Dma consent settings to the service", e);
        }
    }

    /* renamed from: h */
    public final /* synthetic */ void m22582h() {
        zzgb zzgbVar = this.f29957c;
        if (zzgbVar == null) {
            zzj().zzg().zza("Failed to send storage consent settings to service");
            return;
        }
        try {
            zzo m22587n = m22587n(false);
            Preconditions.checkNotNull(m22587n);
            zzgbVar.zzi(m22587n);
            zzar();
        } catch (RemoteException e) {
            zzj().zzg().zza("Failed to send storage consent settings to the service", e);
        }
    }

    @WorkerThread
    /* renamed from: i */
    public final boolean m22583i() {
        zzt();
        zzu();
        return !m22586l() || zzq().zzg() >= 200900;
    }

    @WorkerThread
    /* renamed from: j */
    public final boolean m22584j() {
        zzt();
        zzu();
        return !m22586l() || zzq().zzg() >= zzbh.zzbt.zza(null).intValue();
    }

    @WorkerThread
    /* renamed from: k */
    public final boolean m22585k() {
        zzt();
        zzu();
        return !m22586l() || zzq().zzg() >= 241200;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00f5  */
    @androidx.annotation.WorkerThread
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m22586l() {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzls.m22586l():boolean");
    }

    @WorkerThread
    /* renamed from: n */
    public final zzo m22587n(boolean z) {
        return zzg().m22428b(z ? zzj().zzx() : null);
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @WorkerThread
    public final zzaj zzaa() {
        zzt();
        zzu();
        zzgb zzgbVar = this.f29957c;
        if (zzgbVar == null) {
            zzae();
            zzj().zzc().zza("Failed to get consents; not connected to service yet.");
            return null;
        }
        zzo m22587n = m22587n(false);
        Preconditions.checkNotNull(m22587n);
        try {
            zzaj zza = zzgbVar.zza(m22587n);
            zzar();
            return zza;
        } catch (RemoteException e) {
            zzj().zzg().zza("Failed to get consents; remote exception", e);
            return null;
        }
    }

    @WorkerThread
    public final void zzac() {
        zzt();
        zzu();
        zza(new gpp(this, m22587n(true)));
    }

    @WorkerThread
    public final void zzad() {
        zzt();
        zzu();
        zzo m22587n = m22587n(true);
        zzh().zzab();
        zza(new dpp(this, m22587n));
    }

    @WorkerThread
    public final void zzae() {
        zzt();
        zzu();
        if (zzal()) {
            return;
        }
        if (m22586l()) {
            this.f29956b.zza();
            return;
        }
        if (zze().m22290i()) {
            return;
        }
        List<ResolveInfo> queryIntentServices = zza().getPackageManager().queryIntentServices(new Intent().setClassName(zza(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (!((queryIntentServices == null || queryIntentServices.isEmpty()) ? false : true)) {
            zzj().zzg().zza("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        intent.setComponent(new ComponentName(zza(), "com.google.android.gms.measurement.AppMeasurementService"));
        this.f29956b.zza(intent);
    }

    @WorkerThread
    public final void zzaf() {
        zzt();
        zzu();
        this.f29956b.zzb();
        try {
            ConnectionTracker.getInstance().unbindService(zza(), this.f29956b);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f29957c = null;
    }

    @WorkerThread
    public final void zzai() {
        zzt();
        zzu();
        zzo m22587n = m22587n(false);
        zzh().zzaa();
        zza(new cpp(this, m22587n));
    }

    @WorkerThread
    public final void zzaj() {
        zzt();
        zzu();
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlu
            @Override // java.lang.Runnable
            public final void run() {
                zzls.this.m22581g();
            }
        });
    }

    @WorkerThread
    public final void zzak() {
        zzt();
        zzu();
        zza(new jpp(this, m22587n(true)));
    }

    @WorkerThread
    public final boolean zzal() {
        zzt();
        zzu();
        return this.f29957c != null;
    }

    @WorkerThread
    public final void zzaq() {
        zzt();
        zzj().zzp().zza("Processing queued up service tasks", Integer.valueOf(this.f29961g.size()));
        Iterator<Runnable> it2 = this.f29961g.iterator();
        while (it2.hasNext()) {
            try {
                it2.next().run();
            } catch (RuntimeException e) {
                zzj().zzg().zza("Task exception while flushing queue", e);
            }
        }
        this.f29961g.clear();
        this.f29962h.m53966a();
    }

    @WorkerThread
    public final void zzar() {
        zzt();
        this.f29960f.m54770c();
        this.f29959e.m53967b(zzbh.zzal.zza(null).longValue());
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
    public final void zza(com.google.android.gms.internal.measurement.zzdo zzdoVar) {
        zzt();
        zzu();
        zza(new epp(this, m22587n(false), zzdoVar));
    }

    @WorkerThread
    public final void zzb(boolean z) {
        zzt();
        zzu();
        if ((!com.google.android.gms.internal.measurement.zznm.zza() || !zze().zza(zzbh.zzcx)) && z) {
            zzh().zzaa();
        }
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlr
            @Override // java.lang.Runnable
            public final void run() {
                zzls.this.m22582h();
            }
        });
    }

    @WorkerThread
    public final void zza(AtomicReference<String> atomicReference) {
        zzt();
        zzu();
        zza(new xop(this, atomicReference, m22587n(false)));
    }

    @WorkerThread
    public final void zza(com.google.android.gms.internal.measurement.zzdo zzdoVar, String str, String str2) {
        zzt();
        zzu();
        zza(new ppp(this, str, str2, m22587n(false), zzdoVar));
    }

    @WorkerThread
    public final void zza(AtomicReference<List<zzae>> atomicReference, String str, String str2, String str3) {
        zzt();
        zzu();
        zza(new mpp(this, atomicReference, str, str2, str3, m22587n(false)));
    }

    @WorkerThread
    public final void zza(AtomicReference<List<zzno>> atomicReference, Bundle bundle) {
        zzt();
        zzu();
        zza(new wop(this, atomicReference, m22587n(false), bundle));
    }

    @WorkerThread
    public final void zza(AtomicReference<List<zzon>> atomicReference, boolean z) {
        zzt();
        zzu();
        zza(new top(this, atomicReference, m22587n(false), z));
    }

    @WorkerThread
    public final void zza(com.google.android.gms.internal.measurement.zzdo zzdoVar, String str, String str2, boolean z) {
        zzt();
        zzu();
        zza(new uop(this, str, str2, m22587n(false), z, zzdoVar));
    }

    @WorkerThread
    public final void zza(AtomicReference<List<zzon>> atomicReference, String str, String str2, String str3, boolean z) {
        zzt();
        zzu();
        zza(new opp(this, atomicReference, str, str2, str3, m22587n(false), z));
    }

    @WorkerThread
    public final void zza(zzbf zzbfVar, String str) {
        Preconditions.checkNotNull(zzbfVar);
        zzt();
        zzu();
        zza(new RunnableC5126n(this, true, m22587n(true), zzh().zza(zzbfVar), zzbfVar, str));
    }

    @WorkerThread
    public final void zza(com.google.android.gms.internal.measurement.zzdo zzdoVar, zzbf zzbfVar, String str) {
        zzt();
        zzu();
        if (zzq().zza(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE) != 0) {
            zzj().zzu().zza("Not bundling data. Service unavailable or out of date");
            zzq().zza(zzdoVar, new byte[0]);
        } else {
            zza(new kpp(this, zzbfVar, str, zzdoVar));
        }
    }

    @WorkerThread
    public final void zza(Runnable runnable) throws IllegalStateException {
        zzt();
        if (zzal()) {
            runnable.run();
        } else {
            if (this.f29961g.size() >= 1000) {
                zzj().zzg().zza("Discarding data. Max runnable queue size reached");
                return;
            }
            this.f29961g.add(runnable);
            this.f29962h.m53967b(60000L);
            zzae();
        }
    }

    @WorkerThread
    public final void zza(zzae zzaeVar) {
        Preconditions.checkNotNull(zzaeVar);
        zzt();
        zzu();
        zza(new npp(this, true, m22587n(true), zzh().zza(zzaeVar), new zzae(zzaeVar), zzaeVar));
    }

    @WorkerThread
    public final void zza(boolean z) {
        zzt();
        zzu();
        if ((!com.google.android.gms.internal.measurement.zznm.zza() || !zze().zza(zzbh.zzcx)) && z) {
            zzh().zzaa();
        }
        if (m22584j()) {
            zza(new lpp(this, m22587n(false)));
        }
    }

    @WorkerThread
    public final void zza(zzlk zzlkVar) {
        zzt();
        zzu();
        zza(new fpp(this, zzlkVar));
    }

    @WorkerThread
    public final void zza(Bundle bundle) {
        zzt();
        zzu();
        zza(new hpp(this, m22587n(false), bundle));
    }

    @WorkerThread
    public final void zza(zzgb zzgbVar) {
        zzt();
        Preconditions.checkNotNull(zzgbVar);
        this.f29957c = zzgbVar;
        zzar();
        zzaq();
    }

    @WorkerThread
    public final void zza(zzon zzonVar) {
        zzt();
        zzu();
        zza(new vop(this, m22587n(true), zzh().zza(zzonVar), zzonVar));
    }
}
