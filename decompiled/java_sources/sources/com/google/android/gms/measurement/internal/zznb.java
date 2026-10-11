package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.Clock;
import com.sunia.HTREnginev2.elp;
import com.sunia.HTREnginev2.gqp;
import com.sunia.HTREnginev2.hlp;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zznb extends elp {

    /* renamed from: b */
    public Handler f29976b;

    /* renamed from: c */
    public boolean f29977c;

    /* renamed from: d */
    public final gqp f29978d;
    protected final C5128p zza;
    protected final C5127o zzb;

    public zznb(zzhy zzhyVar) {
        super(zzhyVar);
        this.f29977c = true;
        this.zza = new C5128p(this);
        this.zzb = new C5127o(this);
        this.f29978d = new gqp(this);
    }

    /* renamed from: c */
    public static /* synthetic */ void m22597c(zznb zznbVar, long j) {
        zznbVar.zzt();
        zznbVar.m22601e();
        zznbVar.zzj().zzp().zza("Activity paused, time", Long.valueOf(j));
        zznbVar.f29978d.m54337b(j);
        if (zznbVar.zze().zzw()) {
            zznbVar.zzb.m22277e(j);
        }
    }

    /* renamed from: g */
    public static /* synthetic */ void m22599g(zznb zznbVar, long j) {
        zznbVar.zzt();
        zznbVar.m22601e();
        zznbVar.zzj().zzp().zza("Activity resumed, time", Long.valueOf(j));
        if (zznbVar.zze().zza(zzbh.zzco)) {
            if (zznbVar.zze().zzw() || zznbVar.f29977c) {
                zznbVar.zzb.m22278f(j);
            }
        } else if (zznbVar.zze().zzw() || zznbVar.zzk().f72338t.zza()) {
            zznbVar.zzb.m22278f(j);
        }
        zznbVar.f29978d.m54336a();
        C5128p c5128p = zznbVar.zza;
        c5128p.f29704a.zzt();
        if (c5128p.f29704a.zzu.zzac()) {
            c5128p.m22280b(c5128p.f29704a.zzb().currentTimeMillis(), false);
        }
    }

    @WorkerThread
    /* renamed from: d */
    public final boolean m22600d() {
        zzt();
        return this.f29977c;
    }

    @WorkerThread
    /* renamed from: e */
    public final void m22601e() {
        zzt();
        if (this.f29976b == null) {
            this.f29976b = new com.google.android.gms.internal.measurement.zzdh(Looper.getMainLooper());
        }
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
    public final void zza(boolean z) {
        zzt();
        this.f29977c = z;
    }

    public final boolean zza(boolean z, boolean z2, long j) {
        return this.zzb.m22276d(z, z2, j);
    }
}
