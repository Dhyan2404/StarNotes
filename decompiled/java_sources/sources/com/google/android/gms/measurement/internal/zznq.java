package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.util.Clock;
import com.sunia.HTREnginev2.ehp;
import com.sunia.HTREnginev2.hgp;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.jqp;
import com.sunia.HTREnginev2.kqp;
import com.sunia.HTREnginev2.lrp;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zznq extends kqp {

    /* renamed from: b */
    public final AlarmManager f29982b;

    /* renamed from: c */
    public ehp f29983c;

    /* renamed from: d */
    public Integer f29984d;

    public zznq(zznv zznvVar) {
        super(zznvVar);
        this.f29982b = (AlarmManager) zza().getSystemService(NotificationCompat.CATEGORY_ALARM);
    }

    /* renamed from: b */
    public final int m22607b() {
        if (this.f29984d == null) {
            this.f29984d = Integer.valueOf(("measurement" + zza().getPackageName()).hashCode());
        }
        return this.f29984d.intValue();
    }

    /* renamed from: c */
    public final PendingIntent m22608c() {
        Context zza = zza();
        return com.google.android.gms.internal.measurement.zzcw.zza(zza, 0, new Intent().setClassName(zza, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), com.google.android.gms.internal.measurement.zzcw.zza);
    }

    /* renamed from: d */
    public final ehp m22609d() {
        if (this.f29983c == null) {
            this.f29983c = new jqp(this, this.zzg.m22655g0());
        }
        return this.f29983c;
    }

    @TargetApi(24)
    /* renamed from: e */
    public final void m22610e() {
        JobScheduler jobScheduler = (JobScheduler) zza().getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(m22607b());
        }
    }

    @Override // com.sunia.HTREnginev2.lqp
    /* renamed from: g_ */
    public final /* bridge */ /* synthetic */ zzoo mo22451g_() {
        return super.mo22451g_();
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
        AlarmManager alarmManager = this.f29982b;
        if (alarmManager != null) {
            alarmManager.cancel(m22608c());
        }
        m22610e();
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

    public final void zzu() {
        zzal();
        zzj().zzp().zza("Unscheduling upload");
        AlarmManager alarmManager = this.f29982b;
        if (alarmManager != null) {
            alarmManager.cancel(m22608c());
        }
        m22609d().m53966a();
        m22610e();
    }

    public final void zza(long j) {
        zzal();
        Context zza = zza();
        if (!zzos.m22737r(zza)) {
            zzj().zzc().zza("Receiver not registered/enabled");
        }
        if (!zzos.m22738s(zza, false)) {
            zzj().zzc().zza("Service not registered/enabled");
        }
        zzu();
        zzj().zzp().zza("Scheduling upload, millis", Long.valueOf(j));
        zzb().elapsedRealtime();
        if (j < Math.max(0L, zzbh.zzy.zza(null).longValue()) && !m22609d().m53968e()) {
            m22609d().m53967b(j);
        }
        Context zza2 = zza();
        ComponentName componentName = new ComponentName(zza2, "com.google.android.gms.measurement.AppMeasurementJobService");
        int m22607b = m22607b();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        com.google.android.gms.internal.measurement.zzcv.zza(zza2, new JobInfo.Builder(m22607b, componentName).setMinimumLatency(j).setOverrideDeadline(j << 1).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }
}
