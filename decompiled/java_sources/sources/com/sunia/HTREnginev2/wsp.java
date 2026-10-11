package com.sunia.HTREnginev2;

import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzoe;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzoo;

/* loaded from: classes5.dex */
public final class wsp extends lfp {

    /* renamed from: g */
    public zzfo.zze f88960g;

    /* renamed from: h */
    public final /* synthetic */ lrp f88961h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wsp(lrp lrpVar, String str, int i, zzfo.zze zzeVar) {
        super(str, i);
        this.f88961h = lrpVar;
        this.f88960g = zzeVar;
    }

    @Override // com.sunia.HTREnginev2.lfp
    /* renamed from: a */
    public final int mo55422a() {
        return this.f88960g.zza();
    }

    @Override // com.sunia.HTREnginev2.lfp
    /* renamed from: i */
    public final boolean mo55423i() {
        return false;
    }

    @Override // com.sunia.HTREnginev2.lfp
    /* renamed from: j */
    public final boolean mo55424j() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: k */
    public final boolean m58136k(Long l, Long l2, zzfy.zzo zzoVar, boolean z) {
        Object[] objArr = zzoe.zza() && this.f88961h.zze().zzf(this.f76423a, zzbh.zzbn);
        boolean zzf = this.f88960g.zzf();
        boolean zzg = this.f88960g.zzg();
        boolean zzh = this.f88960g.zzh();
        Object[] objArr2 = zzf || zzg || zzh;
        Boolean bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        if (z && objArr2 != true) {
            this.f88961h.zzj().zzp().zza("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.f76424b), this.f88960g.zzi() ? Integer.valueOf(this.f88960g.zza()) : null);
            return true;
        }
        zzfo.zzc zzb = this.f88960g.zzb();
        boolean zzf2 = zzb.zzf();
        if (zzoVar.zzk()) {
            if (zzb.zzh()) {
                bool = lfp.m55417d(lfp.m55416c(zzoVar.zzc(), zzb.zzc()), zzf2);
            } else {
                this.f88961h.zzj().zzu().zza("No number filter for long property. property", this.f88961h.zzi().zzc(zzoVar.zzg()));
            }
        } else if (zzoVar.zzi()) {
            if (zzb.zzh()) {
                bool = lfp.m55417d(lfp.m55415b(zzoVar.zza(), zzb.zzc()), zzf2);
            } else {
                this.f88961h.zzj().zzu().zza("No number filter for double property. property", this.f88961h.zzi().zzc(zzoVar.zzg()));
            }
        } else if (!zzoVar.zzm()) {
            this.f88961h.zzj().zzu().zza("User property has no value, property", this.f88961h.zzi().zzc(zzoVar.zzg()));
        } else if (zzb.zzj()) {
            bool = lfp.m55417d(lfp.m55420g(zzoVar.zzh(), zzb.zzd(), this.f88961h.zzj()), zzf2);
        } else if (!zzb.zzh()) {
            this.f88961h.zzj().zzu().zza("No string or number filter defined. property", this.f88961h.zzi().zzc(zzoVar.zzg()));
        } else if (zzoo.m22688I(zzoVar.zzh())) {
            bool = lfp.m55417d(lfp.m55418e(zzoVar.zzh(), zzb.zzc()), zzf2);
        } else {
            this.f88961h.zzj().zzu().zza("Invalid user property value for Numeric number filter. property, value", this.f88961h.zzi().zzc(zzoVar.zzg()), zzoVar.zzh());
        }
        this.f88961h.zzj().zzp().zza("Property filter result", bool == null ? "null" : bool);
        if (bool == null) {
            return false;
        }
        this.f76425c = Boolean.TRUE;
        if (zzh && !bool.booleanValue()) {
            return true;
        }
        if (!z || this.f88960g.zzf()) {
            this.f76426d = bool;
        }
        if (bool.booleanValue() && objArr2 != false && zzoVar.zzl()) {
            long zzd = zzoVar.zzd();
            if (l != null) {
                zzd = l.longValue();
            }
            if (objArr != false && this.f88960g.zzf() && !this.f88960g.zzg() && l2 != null) {
                zzd = l2.longValue();
            }
            if (this.f88960g.zzg()) {
                this.f76428f = Long.valueOf(zzd);
            } else {
                this.f76427e = Long.valueOf(zzd);
            }
        }
        return true;
    }
}
