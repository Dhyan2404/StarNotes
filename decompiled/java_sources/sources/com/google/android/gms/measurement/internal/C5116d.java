package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.sunia.HTREnginev2.anp;
import com.sunia.HTREnginev2.hlp;
import org.checkerframework.dataflow.qual.Pure;

/* renamed from: com.google.android.gms.measurement.internal.d */
/* loaded from: classes5.dex */
public class C5116d implements anp {
    protected final zzhy zzu;

    public C5116d(zzhy zzhyVar) {
        Preconditions.checkNotNull(zzhyVar);
        this.zzu = zzhyVar;
    }

    @Override // com.sunia.HTREnginev2.anp
    @Pure
    public Context zza() {
        return this.zzu.zza();
    }

    @Override // com.sunia.HTREnginev2.anp
    @Pure
    public Clock zzb() {
        return this.zzu.zzb();
    }

    @Override // com.sunia.HTREnginev2.anp
    @Pure
    public zzab zzd() {
        return this.zzu.zzd();
    }

    @Pure
    public zzag zze() {
        return this.zzu.zzf();
    }

    @Pure
    public zzaz zzf() {
        return this.zzu.zzg();
    }

    @Pure
    public zzgh zzi() {
        return this.zzu.zzk();
    }

    @Override // com.sunia.HTREnginev2.anp
    @Pure
    public zzgo zzj() {
        return this.zzu.zzj();
    }

    @Pure
    public hlp zzk() {
        return this.zzu.zzn();
    }

    @Override // com.sunia.HTREnginev2.anp
    @Pure
    public zzhv zzl() {
        return this.zzu.zzl();
    }

    @Pure
    public zzos zzq() {
        return this.zzu.zzt();
    }

    public void zzr() {
        this.zzu.zzl().zzr();
    }

    public void zzs() {
        this.zzu.m22506j();
    }

    public void zzt() {
        this.zzu.zzl().zzt();
    }
}
