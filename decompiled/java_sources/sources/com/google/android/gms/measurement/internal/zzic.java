package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.BinderThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.internal.measurement.zzc;
import com.google.android.gms.internal.measurement.zznr;
import com.sunia.HTREnginev2.amp;
import com.sunia.HTREnginev2.bmp;
import com.sunia.HTREnginev2.cmp;
import com.sunia.HTREnginev2.dmp;
import com.sunia.HTREnginev2.emp;
import com.sunia.HTREnginev2.fmp;
import com.sunia.HTREnginev2.gmp;
import com.sunia.HTREnginev2.hmp;
import com.sunia.HTREnginev2.imp;
import com.sunia.HTREnginev2.jmp;
import com.sunia.HTREnginev2.kmp;
import com.sunia.HTREnginev2.lmp;
import com.sunia.HTREnginev2.mmp;
import com.sunia.HTREnginev2.nmp;
import com.sunia.HTREnginev2.omp;
import com.sunia.HTREnginev2.pmp;
import com.sunia.HTREnginev2.ylp;
import com.sunia.HTREnginev2.yqp;
import com.sunia.HTREnginev2.zlp;
import com.sunia.HTREnginev2.zmp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes5.dex */
public final class zzic extends zzge {

    /* renamed from: a */
    public final zznv f29882a;

    /* renamed from: b */
    public Boolean f29883b;

    /* renamed from: c */
    public String f29884c;

    public zzic(zznv zznvVar) {
        this(zznvVar, null);
    }

    /* renamed from: b */
    public final /* synthetic */ void m22509b(Bundle bundle, String str) {
        boolean zza = this.f29882a.zze().zza(zzbh.zzde);
        boolean zza2 = this.f29882a.zze().zza(zzbh.zzdg);
        if (bundle.isEmpty() && zza && zza2) {
            this.f29882a.zzf().m54490F0(str);
            return;
        }
        this.f29882a.zzf().m54520h0(str, bundle);
        if (zza2 && this.f29882a.zzf().m54498J0(str)) {
            this.f29882a.zzf().m54479A(str, bundle);
        }
    }

    @VisibleForTesting
    /* renamed from: c */
    public final void m22510c(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        if (this.f29882a.zzl().zzg()) {
            runnable.run();
        } else {
            this.f29882a.zzl().zzc(runnable);
        }
    }

    @BinderThread
    /* renamed from: d */
    public final void m22511d(String str, boolean z) {
        boolean z2;
        if (TextUtils.isEmpty(str)) {
            this.f29882a.zzj().zzg().zza("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.f29883b == null) {
                    if (!"com.google.android.gms".equals(this.f29884c) && !UidVerifier.isGooglePlayServicesUid(this.f29882a.zza(), Binder.getCallingUid()) && !GoogleSignatureVerifier.getInstance(this.f29882a.zza()).isUidGoogleSigned(Binder.getCallingUid())) {
                        z2 = false;
                        this.f29883b = Boolean.valueOf(z2);
                    }
                    z2 = true;
                    this.f29883b = Boolean.valueOf(z2);
                }
                if (this.f29883b.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                this.f29882a.zzj().zzg().zza("Measurement Service called with invalid calling package. appId", zzgo.zza(str));
                throw e;
            }
        }
        if (this.f29884c == null && GooglePlayServicesUtilLight.uidHasPackageName(this.f29882a.zza(), Binder.getCallingUid(), str)) {
            this.f29884c = str;
        }
        if (str.equals(this.f29884c)) {
        } else {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }

    @VisibleForTesting
    /* renamed from: e */
    public final zzbf m22512e(zzbf zzbfVar, zzo zzoVar) {
        zzbe zzbeVar;
        boolean z = false;
        if ("_cmp".equals(zzbfVar.zza) && (zzbeVar = zzbfVar.zzb) != null && zzbeVar.zza() != 0) {
            String zzd = zzbfVar.zzb.zzd("_cis");
            if ("referrer broadcast".equals(zzd) || "referrer API".equals(zzd)) {
                z = true;
            }
        }
        if (!z) {
            return zzbfVar;
        }
        this.f29882a.zzj().zzo().zza("Event has been filtered ", zzbfVar.toString());
        return new zzbf("_cmpx", zzbfVar.zzb, zzbfVar.zzc, zzbfVar.zzd);
    }

    /* renamed from: f */
    public final /* synthetic */ void m22513f(Bundle bundle, String str) {
        if (bundle.isEmpty()) {
            this.f29882a.zzf().m54490F0(str);
        } else {
            this.f29882a.zzf().m54520h0(str, bundle);
            this.f29882a.zzf().m54479A(str, bundle);
        }
    }

    @BinderThread
    /* renamed from: g */
    public final void m22514g(zzo zzoVar, boolean z) {
        Preconditions.checkNotNull(zzoVar);
        Preconditions.checkNotEmpty(zzoVar.zza);
        m22511d(zzoVar.zza, false);
        this.f29882a.zzq().m22772y(zzoVar.zzb, zzoVar.zzp);
    }

    @VisibleForTesting
    /* renamed from: h */
    public final void m22515h(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        if (this.f29882a.zzl().zzg()) {
            runnable.run();
        } else {
            this.f29882a.zzl().zzb(runnable);
        }
    }

    /* renamed from: i */
    public final void m22516i(zzbf zzbfVar, zzo zzoVar) {
        boolean z;
        if (!this.f29882a.zzi().zzk(zzoVar.zza)) {
            m22517j(zzbfVar, zzoVar);
            return;
        }
        this.f29882a.zzj().zzp().zza("EES config found for", zzoVar.zza);
        zzhl zzi = this.f29882a.zzi();
        String str = zzoVar.zza;
        com.google.android.gms.internal.measurement.zzb zzbVar = TextUtils.isEmpty(str) ? null : zzi.f29823h.get(str);
        if (zzbVar == null) {
            this.f29882a.zzj().zzp().zza("EES not loaded for", zzoVar.zza);
            m22517j(zzbfVar, zzoVar);
            return;
        }
        try {
            Map<String, Object> m22716s = this.f29882a.zzp().m22716s(zzbfVar.zzb.zzb(), true);
            String zza = zzji.zza(zzbfVar.zza);
            if (zza == null) {
                zza = zzbfVar.zza;
            }
            z = zzbVar.zza(new com.google.android.gms.internal.measurement.zzad(zza, zzbfVar.zzd, m22716s));
        } catch (zzc unused) {
            this.f29882a.zzj().zzg().zza("EES error. appId, eventName", zzoVar.zzb, zzbfVar.zza);
            z = false;
        }
        if (!z) {
            this.f29882a.zzj().zzp().zza("EES was not applied to event", zzbfVar.zza);
            m22517j(zzbfVar, zzoVar);
            return;
        }
        if (zzbVar.zzd()) {
            this.f29882a.zzj().zzp().zza("EES edited event", zzbfVar.zza);
            m22517j(this.f29882a.zzp().m22710j(zzbVar.zza().zzb()), zzoVar);
        } else {
            m22517j(zzbfVar, zzoVar);
        }
        if (zzbVar.zzc()) {
            for (com.google.android.gms.internal.measurement.zzad zzadVar : zzbVar.zza().zzc()) {
                this.f29882a.zzj().zzp().zza("EES logging created event", zzadVar.zzb());
                m22517j(this.f29882a.zzp().m22710j(zzadVar), zzoVar);
            }
        }
    }

    /* renamed from: j */
    public final void m22517j(zzbf zzbfVar, zzo zzoVar) {
        this.f29882a.m22657h0();
        this.f29882a.m22669p(zzbfVar, zzoVar);
    }

    /* renamed from: k */
    public final /* synthetic */ void m22518k(zzo zzoVar) {
        this.f29882a.m22657h0();
        this.f29882a.m22651c0(zzoVar);
    }

    /* renamed from: l */
    public final /* synthetic */ void m22519l(zzo zzoVar) {
        this.f29882a.m22657h0();
        this.f29882a.m22653d0(zzoVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final zzaj zza(zzo zzoVar) {
        m22514g(zzoVar, false);
        Preconditions.checkNotEmpty(zzoVar.zza);
        try {
            return (zzaj) this.f29882a.zzl().zzb(new lmp(this, zzoVar)).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.f29882a.zzj().zzg().zza("Failed to get consent. appId", zzgo.zza(zzoVar.zza), e);
            return new zzaj(null);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final String zzb(zzo zzoVar) {
        m22514g(zzoVar, false);
        return this.f29882a.m22634O(zzoVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zzc(zzo zzoVar) {
        m22514g(zzoVar, false);
        m22515h(new bmp(this, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zzd(zzo zzoVar) {
        m22514g(zzoVar, false);
        m22515h(new ylp(this, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zze(zzo zzoVar) {
        Preconditions.checkNotEmpty(zzoVar.zza);
        m22511d(zzoVar.zza, false);
        m22515h(new jmp(this, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zzf(zzo zzoVar) {
        Preconditions.checkNotEmpty(zzoVar.zza);
        Preconditions.checkNotNull(zzoVar.zzt);
        m22510c(new imp(this, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zzg(final zzo zzoVar) {
        Preconditions.checkNotEmpty(zzoVar.zza);
        Preconditions.checkNotNull(zzoVar.zzt);
        m22510c(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzih
            @Override // java.lang.Runnable
            public final void run() {
                zzic.this.m22518k(zzoVar);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zzh(zzo zzoVar) {
        m22514g(zzoVar, false);
        m22515h(new zlp(this, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zzi(final zzo zzoVar) {
        Preconditions.checkNotEmpty(zzoVar.zza);
        Preconditions.checkNotNull(zzoVar.zzt);
        m22510c(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzif
            @Override // java.lang.Runnable
            public final void run() {
                zzic.this.m22519l(zzoVar);
            }
        });
    }

    public zzic(zznv zznvVar, String str) {
        Preconditions.checkNotNull(zznvVar);
        this.f29882a = zznvVar;
        this.f29884c = null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zzb(final Bundle bundle, zzo zzoVar) {
        if (zznr.zza() && this.f29882a.zze().zza(zzbh.zzdg)) {
            m22514g(zzoVar, false);
            final String str = zzoVar.zza;
            Preconditions.checkNotNull(str);
            m22515h(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzie
                @Override // java.lang.Runnable
                public final void run() {
                    zzic.this.m22513f(bundle, str);
                }
            });
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final List<zzno> zza(zzo zzoVar, Bundle bundle) {
        m22514g(zzoVar, false);
        Preconditions.checkNotNull(zzoVar.zza);
        try {
            return (List) this.f29882a.zzl().zza(new omp(this, zzoVar, bundle)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f29882a.zzj().zzg().zza("Failed to get trigger URIs. appId", zzgo.zza(zzoVar.zza), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final List<zzon> zza(zzo zzoVar, boolean z) {
        m22514g(zzoVar, false);
        String str = zzoVar.zza;
        Preconditions.checkNotNull(str);
        try {
            List<yqp> list = (List) this.f29882a.zzl().zza(new zmp(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (yqp yqpVar : list) {
                if (z || !zzos.m22729T(yqpVar.f90992c)) {
                    arrayList.add(new zzon(yqpVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f29882a.zzj().zzg().zza("Failed to get user properties. appId", zzgo.zza(zzoVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final List<zzae> zza(String str, String str2, zzo zzoVar) {
        m22514g(zzoVar, false);
        String str3 = zzoVar.zza;
        Preconditions.checkNotNull(str3);
        try {
            return (List) this.f29882a.zzl().zza(new hmp(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f29882a.zzj().zzg().zza("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final List<zzae> zza(String str, String str2, String str3) {
        m22511d(str, true);
        try {
            return (List) this.f29882a.zzl().zza(new gmp(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f29882a.zzj().zzg().zza("Failed to get conditional user properties as", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final List<zzon> zza(String str, String str2, boolean z, zzo zzoVar) {
        m22514g(zzoVar, false);
        String str3 = zzoVar.zza;
        Preconditions.checkNotNull(str3);
        try {
            List<yqp> list = (List) this.f29882a.zzl().zza(new fmp(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (yqp yqpVar : list) {
                if (z || !zzos.m22729T(yqpVar.f90992c)) {
                    arrayList.add(new zzon(yqpVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f29882a.zzj().zzg().zza("Failed to query user properties. appId", zzgo.zza(zzoVar.zza), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final List<zzon> zza(String str, String str2, String str3, boolean z) {
        m22511d(str, true);
        try {
            List<yqp> list = (List) this.f29882a.zzl().zza(new emp(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (yqp yqpVar : list) {
                if (z || !zzos.m22729T(yqpVar.f90992c)) {
                    arrayList.add(new zzon(yqpVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f29882a.zzj().zzg().zza("Failed to get user properties as. appId", zzgo.zza(str), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zza(zzbf zzbfVar, zzo zzoVar) {
        Preconditions.checkNotNull(zzbfVar);
        m22514g(zzoVar, false);
        m22515h(new kmp(this, zzbfVar, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zza(zzbf zzbfVar, String str, String str2) {
        Preconditions.checkNotNull(zzbfVar);
        Preconditions.checkNotEmpty(str);
        m22511d(str, true);
        m22515h(new nmp(this, zzbfVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zza(zzae zzaeVar, zzo zzoVar) {
        Preconditions.checkNotNull(zzaeVar);
        Preconditions.checkNotNull(zzaeVar.zzc);
        m22514g(zzoVar, false);
        zzae zzaeVar2 = new zzae(zzaeVar);
        zzaeVar2.zza = zzoVar.zza;
        m22515h(new dmp(this, zzaeVar2, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zza(zzae zzaeVar) {
        Preconditions.checkNotNull(zzaeVar);
        Preconditions.checkNotNull(zzaeVar.zzc);
        Preconditions.checkNotEmpty(zzaeVar.zza);
        m22511d(zzaeVar.zza, true);
        m22515h(new cmp(this, new zzae(zzaeVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zza(long j, String str, String str2, String str3) {
        m22515h(new amp(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zza(final Bundle bundle, zzo zzoVar) {
        m22514g(zzoVar, false);
        final String str = zzoVar.zza;
        Preconditions.checkNotNull(str);
        m22515h(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzig
            @Override // java.lang.Runnable
            public final void run() {
                zzic.this.m22509b(bundle, str);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final void zza(zzon zzonVar, zzo zzoVar) {
        Preconditions.checkNotNull(zzonVar);
        m22514g(zzoVar, false);
        m22515h(new pmp(this, zzonVar, zzoVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    @BinderThread
    public final byte[] zza(zzbf zzbfVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbfVar);
        m22511d(str, true);
        this.f29882a.zzj().zzc().zza("Log and bundle. event", this.f29882a.zzg().zza(zzbfVar.zza));
        long nanoTime = this.f29882a.zzb().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f29882a.zzl().zzb(new mmp(this, zzbfVar, str)).get();
            if (bArr == null) {
                this.f29882a.zzj().zzg().zza("Log and bundle returned null. appId", zzgo.zza(str));
                bArr = new byte[0];
            }
            this.f29882a.zzj().zzc().zza("Log and bundle processed. event, size, time_ms", this.f29882a.zzg().zza(zzbfVar.zza), Integer.valueOf(bArr.length), Long.valueOf((this.f29882a.zzb().nanoTime() / 1000000) - nanoTime));
            return bArr;
        } catch (InterruptedException | ExecutionException e) {
            this.f29882a.zzj().zzg().zza("Failed to log and bundle. appId, event, error", zzgo.zza(str), this.f29882a.zzg().zza(zzbfVar.zza), e);
            return null;
        }
    }
}
