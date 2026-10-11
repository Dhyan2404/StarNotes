package com.google.android.gms.measurement.internal;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzpz;
import com.google.android.gms.measurement.internal.zzje;
import com.sunia.HTREnginev2.elp;
import com.sunia.HTREnginev2.hlp;
import java.math.BigInteger;
import java.util.List;
import java.util.Locale;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zzgg extends elp {

    /* renamed from: b */
    public String f29746b;

    /* renamed from: c */
    public String f29747c;

    /* renamed from: d */
    public int f29748d;

    /* renamed from: e */
    public String f29749e;

    /* renamed from: f */
    public long f29750f;

    /* renamed from: g */
    public long f29751g;

    /* renamed from: h */
    public List<String> f29752h;

    /* renamed from: i */
    public String f29753i;

    /* renamed from: j */
    public int f29754j;

    /* renamed from: k */
    public String f29755k;

    /* renamed from: l */
    public String f29756l;

    /* renamed from: m */
    public String f29757m;

    /* renamed from: n */
    public long f29758n;

    /* renamed from: o */
    public String f29759o;

    public zzgg(zzhy zzhyVar, long j) {
        super(zzhyVar);
        this.f29758n = 0L;
        this.f29759o = null;
        this.f29751g = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0163  */
    @androidx.annotation.WorkerThread
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzo m22428b(java.lang.String r52) {
        /*
            Method dump skipped, instructions count: 545
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgg.m22428b(java.lang.String):com.google.android.gms.measurement.internal.zzo");
    }

    @WorkerThread
    /* renamed from: c */
    public final int m22429c() {
        zzu();
        return this.f29754j;
    }

    @WorkerThread
    /* renamed from: d */
    public final int m22430d() {
        zzu();
        return this.f29748d;
    }

    @WorkerThread
    /* renamed from: e */
    public final String m22431e() {
        zzu();
        return this.f29756l;
    }

    @WorkerThread
    /* renamed from: f */
    public final String m22432f() {
        zzu();
        Preconditions.checkNotNull(this.f29746b);
        return this.f29746b;
    }

    @WorkerThread
    /* renamed from: g */
    public final String m22433g() {
        zzt();
        zzu();
        Preconditions.checkNotNull(this.f29755k);
        return this.f29755k;
    }

    @WorkerThread
    /* renamed from: h */
    public final List<String> m22434h() {
        return this.f29752h;
    }

    @WorkerThread
    /* renamed from: i */
    public final void m22435i() {
        String format;
        zzt();
        if (zzk().m54580o().zza(zzje.zza.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            zzq().m22756b0().nextBytes(bArr);
            format = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            zzj().zzc().zza("Analytics Storage consent is not granted");
            format = null;
        }
        zzgq zzc = zzj().zzc();
        Object[] objArr = new Object[1];
        objArr[0] = format == null ? "null" : "not null";
        zzc.zza(String.format("Resetting session stitching token to %s", objArr));
        this.f29757m = format;
        this.f29758n = zzb().currentTimeMillis();
    }

    /* renamed from: j */
    public final boolean m22436j(String str) {
        String str2 = this.f29759o;
        boolean z = (str2 == null || str2.equals(str)) ? false : true;
        this.f29759o = str;
        return z;
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @VisibleForTesting
    @WorkerThread
    public final String zzah() {
        if (zzpz.zza() && zze().zza(zzbh.zzbr)) {
            zzj().zzp().zza("Disabled IID for tests.");
            return null;
        }
        try {
            Class<?> loadClass = zza().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            if (loadClass == null) {
                return null;
            }
            try {
                Object invoke = loadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, zza());
                if (invoke == null) {
                    return null;
                }
                try {
                    return (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(invoke, new Object[0]);
                } catch (Exception unused) {
                    zzj().zzv().zza("Failed to retrieve Firebase Instance Id");
                    return null;
                }
            } catch (Exception unused2) {
                zzj().zzw().zza("Failed to obtain Firebase Analytics instance");
                return null;
            }
        } catch (ClassNotFoundException unused3) {
        }
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0191 A[Catch: IllegalStateException -> 0x01c7, TryCatch #3 {IllegalStateException -> 0x01c7, blocks: (B:18:0x016c, B:21:0x0189, B:23:0x0191, B:25:0x01aa, B:27:0x01be, B:28:0x01c3, B:30:0x01c1), top: B:17:0x016c }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01aa A[Catch: IllegalStateException -> 0x01c7, TryCatch #3 {IllegalStateException -> 0x01c7, blocks: (B:18:0x016c, B:21:0x0189, B:23:0x0191, B:25:0x01aa, B:27:0x01be, B:28:0x01c3, B:30:0x01c1), top: B:17:0x016c }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x014c  */
    @Override // com.sunia.HTREnginev2.elp
    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"appId", "appStore", "appName", "gmpAppId", "gaAppId"})
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzx() {
        /*
            Method dump skipped, instructions count: 580
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgg.zzx():void");
    }

    @Override // com.sunia.HTREnginev2.elp
    public final boolean zzz() {
        return true;
    }
}
