package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;
import com.blankj.utilcode.util.LogUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes5.dex */
public final class zznm implements zzrq {
    private final zzrw zza;
    private final zzqp zzb;
    private final zzqp zzc;
    private final Uri zzd;
    private final Uri zze;
    private final zzpt zzf;
    private final zzyg zzg;
    private final Executor zzh;
    private final zzbq zzi;
    private final zzuz zzj;

    public zznm(Context context, zzuz zzuzVar, zzrw zzrwVar, zzqp zzqpVar, zzqp zzqpVar2, Uri uri, Uri uri2, zzpt zzptVar, zzyg zzygVar, Executor executor, zzbq zzbqVar, byte[] bArr) {
        this.zzj = zzuzVar;
        this.zza = zzrwVar;
        this.zzb = zzqpVar;
        this.zzc = zzqpVar2;
        this.zzd = uri;
        this.zze = uri2;
        this.zzf = zzptVar;
        this.zzg = zzygVar;
        this.zzh = executor;
        this.zzi = zzbqVar;
    }

    private final zzasi zzA(zzvt zzvtVar, zzvt zzvtVar2, int i) {
        this.zzi.zzh();
        if (zzuw.zzr(10000L)) {
            zzvtVar.equals(zzvtVar2);
        }
        return zzvtVar.zzf() ? zzarx.zzh(zzvtVar.zzc()) : zzarx.zzg((Throwable) zzvtVar.zzd());
    }

    private final zzasi zzx(zzasi zzasiVar) {
        zznc zzncVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznc
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzvt.zza(obj);
            }
        };
        zzasi zzn = zzarx.zzn(zzasiVar, zzaeq.zza(zzncVar), this.zzh);
        zzne zzneVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzne
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzvt.zzb((Exception) obj);
            }
        };
        return zzarx.zzd(zzn, Exception.class, zzaeq.zza(zzneVar), this.zzh);
    }

    private static zzasi zzy() {
        return zzarx.zzg(new IllegalStateException("Migration flag had unexpected state"));
    }

    private final void zzz(Uri uri) throws IOException {
        if (this.zzg.zzi(uri)) {
            this.zzg.zzf(uri);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zza() {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzf.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zza();
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzy() : this.zzc.zza();
        }
        return zzarx.zzo(zzx(this.zza.zza()), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmu
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zze((zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzb() {
        final zznk zznkVar = new Comparator() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznk
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return zzwe.zze((zzea) obj).compareTo(zzwe.zze((zzea) obj2));
            }
        };
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzf.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzb();
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzy() : this.zzc.zzb();
        }
        final int i = 1106;
        final int i2 = 1103;
        return zzarx.zzo(zzx(this.zza.zzb()), zzaeq.zzc(new zzaqt(zznkVar, i, i2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznl
            public final /* synthetic */ Comparator zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zzw(this.zzb, 1106, 1103, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzc() {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzf.zza().ordinal();
        if (ordinal == 1) {
            try {
                try {
                    zzz(this.zzd);
                    return this.zza.zzc();
                } finally {
                    zzz(this.zze);
                }
            } catch (IOException e) {
                return zzarx.zzg(e);
            }
        }
        if (ordinal != 2) {
            if (ordinal != 3) {
                return zzy();
            }
            try {
                zzz(this.zzd);
                return this.zzc.zzc();
            } catch (IOException e2) {
                return zzarx.zzg(e2);
            }
        }
        try {
            zzasi zzc = this.zza.zzc();
            zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzna
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zznm.this.zzi((Boolean) obj);
                }
            };
            return zzarx.zzo(zzc, zzaeq.zzc(zzaqtVar), this.zzh);
        } catch (IOException e3) {
            return zzarx.zzg(e3);
        }
    }

    public final /* synthetic */ zzasi zzd(zzvt zzvtVar, zzvt zzvtVar2) throws Exception {
        return zzA(zzvtVar, zzvtVar2, 1104);
    }

    public final /* synthetic */ zzasi zze(final zzvt zzvtVar) throws Exception {
        zzasi zzx = zzx(this.zzb.zza());
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzni
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zzd(zzvtVar, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzx, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzf(zzea zzeaVar, zzee zzeeVar, final Boolean bool) throws Exception {
        zzasi zzu = this.zzb.zzu(zzeaVar, zzeeVar);
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznb
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                Boolean bool2 = bool;
                boolean z = false;
                if (((Boolean) obj).booleanValue() && bool2.booleanValue()) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        };
        return zzarx.zzn(zzu, zzaeq.zza(zzaftVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzg(List list, List list2, final Boolean bool) throws Exception {
        zzasi zzh = zzarx.zzh(Boolean.TRUE);
        for (int i = 0; i < list.size(); i++) {
            final zzea zzeaVar = (zzea) list.get(i);
            final zzee zzeeVar = (zzee) zzarx.zzp((Future) list2.get(i));
            zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzng
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zznm.this.zzf(zzeaVar, zzeeVar, (Boolean) obj);
                }
            };
            zzh = zzarx.zzo(zzh, zzaeq.zzc(zzaqtVar), this.zzh);
        }
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznh
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                Boolean bool2 = bool;
                boolean z = false;
                if (((Boolean) obj).booleanValue() && bool2.booleanValue()) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        };
        return zzarx.zzn(zzh, zzaeq.zza(zzaftVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzh(final Boolean bool, final List list) throws Exception {
        final ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(this.zza.zzr((zzea) it2.next()));
        }
        return zzwx.zza(arrayList).zzb(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznj
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zznm.this.zzg(list, arrayList, bool);
            }
        }, this.zzh);
    }

    public final /* synthetic */ zzasi zzi(final Boolean bool) throws Exception {
        zzasi zzb = this.zza.zzb();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmz
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zzh(bool, (List) obj);
            }
        };
        return zzarx.zzo(zzb, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzj(zzvt zzvtVar, zzvt zzvtVar2) throws Exception {
        return zzA(zzvtVar, zzvtVar2, LogUtils.f13811p);
    }

    public final /* synthetic */ zzasi zzk(zzea zzeaVar, final zzvt zzvtVar) throws Exception {
        zzasi zzx = zzx(this.zzb.zzr(zzeaVar));
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmr
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zzj(zzvtVar, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzx, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzl(zzvt zzvtVar, zzvt zzvtVar2) throws Exception {
        return zzA(zzvtVar, zzvtVar2, LogUtils.f13811p);
    }

    public final /* synthetic */ zzasi zzm(zzaka zzakaVar, final zzvt zzvtVar) throws Exception {
        zzasi zzx = zzx(this.zzb.zzs(zzakaVar));
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmy
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zzl(zzvtVar, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzx, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzn(zzvt zzvtVar, zzvt zzvtVar2) throws Exception {
        return zzA(zzvtVar, zzvtVar2, 1102);
    }

    public final /* synthetic */ zzasi zzo(zzea zzeaVar, final zzvt zzvtVar) throws Exception {
        zzasi zzx = zzx(this.zzb.zzt(zzeaVar));
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmt
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zzn(zzvtVar, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzx, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzp(zzvt zzvtVar, zzvt zzvtVar2) throws Exception {
        return zzA(zzvtVar, zzvtVar2, 1101);
    }

    public final /* synthetic */ zzasi zzq(zzea zzeaVar, zzee zzeeVar, final zzvt zzvtVar) throws Exception {
        zzasi zzx = zzx(this.zzb.zzu(zzeaVar, zzeeVar));
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmw
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zzp(zzvtVar, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzx, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzr(final zzea zzeaVar) {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzf.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzr(zzeaVar);
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzy() : this.zzc.zzr(zzeaVar);
        }
        return zzarx.zzo(zzx(this.zza.zzr(zzeaVar)), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmv
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zzk(zzeaVar, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzs(final zzaka zzakaVar) {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzf.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzs(zzakaVar);
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzy() : this.zzc.zzs(zzakaVar);
        }
        return zzarx.zzo(zzx(this.zza.zzs(zzakaVar)), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmx
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zzm(zzakaVar, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzt(final zzea zzeaVar) {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzf.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzt(zzeaVar);
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzy() : this.zzc.zzt(zzeaVar);
        }
        return zzarx.zzo(zzx(this.zza.zzt(zzeaVar)), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznf
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zzo(zzeaVar, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzu(final zzea zzeaVar, final zzee zzeeVar) {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzf.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzu(zzeaVar, zzeeVar);
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzy() : this.zzc.zzu(zzeaVar, zzeeVar);
        }
        return zzarx.zzo(zzx(this.zza.zzu(zzeaVar, zzeeVar)), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzms
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zzq(zzeaVar, zzeeVar, (zzvt) obj);
            }
        }), this.zzh);
    }

    public final /* synthetic */ zzasi zzv(zzvt zzvtVar, Comparator comparator, int i, int i2, zzvt zzvtVar2) throws Exception {
        this.zzi.zzh();
        if (zzuw.zzr(10000L)) {
            zzvt.zzh(zzvtVar, zzvtVar2, comparator);
        }
        if (zzvtVar.zzf()) {
            List list = (List) zzvtVar.zzc();
            list.getClass();
            return zzarx.zzh(list);
        }
        Object zzd = zzvtVar.zzd();
        zzd.getClass();
        return zzarx.zzg((Throwable) zzd);
    }

    public final /* synthetic */ zzasi zzw(final Comparator comparator, int i, int i2, final zzvt zzvtVar) throws Exception {
        zzasi zzx = zzx(this.zzb.zzb());
        final int i3 = 1106;
        final int i4 = 1103;
        zzaqt zzaqtVar = new zzaqt(zzvtVar, comparator, i3, i4) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznd
            public final /* synthetic */ zzvt zzb;
            public final /* synthetic */ Comparator zzc;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zznm.this.zzv(this.zzb, this.zzc, 1106, 1103, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzx, zzaeq.zzc(zzaqtVar), this.zzh);
    }
}
