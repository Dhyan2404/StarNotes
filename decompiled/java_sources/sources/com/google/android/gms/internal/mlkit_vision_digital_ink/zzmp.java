package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import java.io.IOException;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzmp implements zzlm {
    private final zzrt zza;
    private final zzpr zzb;
    private final zzpr zzc;
    private final zzpt zzd;
    private final Uri zze;
    private final Uri zzf;
    private final zzyg zzg;
    private final Executor zzh;
    private final zzbq zzi;
    private final zzuz zzj;

    public zzmp(zzuz zzuzVar, zzrt zzrtVar, zzpr zzprVar, zzpr zzprVar2, Uri uri, Uri uri2, zzpt zzptVar, zzyg zzygVar, Executor executor, zzbq zzbqVar, byte[] bArr) {
        this.zzj = zzuzVar;
        this.zza = zzrtVar;
        this.zzb = zzprVar2;
        this.zzc = zzprVar;
        this.zze = uri;
        this.zzf = uri2;
        this.zzd = zzptVar;
        this.zzg = zzygVar;
        this.zzh = executor;
        this.zzi = zzbqVar;
    }

    private final zzasi zzL(zzasi zzasiVar) {
        zzlw zzlwVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlw
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzvt.zza(obj);
            }
        };
        zzasi zzn = zzarx.zzn(zzasiVar, zzaeq.zza(zzlwVar), this.zzh);
        zzlx zzlxVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlx
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzvt.zzb((Exception) obj);
            }
        };
        return zzarx.zzd(zzn, Exception.class, zzaeq.zza(zzlxVar), this.zzh);
    }

    private static zzasi zzM() {
        return zzarx.zzg(new IllegalStateException("Migration flag had unexpected state"));
    }

    private final void zzN(Uri uri) throws IOException {
        if (this.zzg.zzi(uri)) {
            this.zzg.zzf(uri);
        }
    }

    private final zzasi zzO(zzvt zzvtVar, zzvt zzvtVar2, int i) {
        this.zzi.zzh();
        if (zzuw.zzr(10000L)) {
            zzvtVar.equals(zzvtVar2);
        }
        return zzvtVar.zzf() ? zzarx.zzh(zzvtVar.zzc()) : zzarx.zzg((Throwable) zzvtVar.zzd());
    }

    private final zzasi zzP(zzvt zzvtVar, zzvt zzvtVar2, Comparator comparator, int i) {
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

    public final /* synthetic */ zzasi zzA(final Comparator comparator, int i, final zzvt zzvtVar) throws Exception {
        zzasi zzL = zzL(this.zzc.zzd());
        final int i2 = 1092;
        zzaqt zzaqtVar = new zzaqt(zzvtVar, comparator, i2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlz
            public final /* synthetic */ zzvt zzb;
            public final /* synthetic */ Comparator zzc;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzz(this.zzb, this.zzc, 1092, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzL, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzB(zzvt zzvtVar, int i, zzvt zzvtVar2) throws Exception {
        return zzO(zzvtVar, zzvtVar2, 1095);
    }

    public final /* synthetic */ zzasi zzC(int i, final zzvt zzvtVar) throws Exception {
        zzasi zzL = zzL(this.zzc.zze());
        final int i2 = 1095;
        zzaqt zzaqtVar = new zzaqt(zzvtVar, i2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlq
            public final /* synthetic */ zzvt zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzB(this.zzb, 1095, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzL, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzD(zzvt zzvtVar, int i, zzvt zzvtVar2) throws Exception {
        return zzO(zzvtVar, zzvtVar2, 1090);
    }

    public final /* synthetic */ zzasi zzE(zzdu zzduVar, int i, final zzvt zzvtVar) throws Exception {
        zzasi zzL = zzL(this.zzc.zzh(zzduVar));
        final int i2 = 1090;
        zzaqt zzaqtVar = new zzaqt(zzvtVar, i2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmb
            public final /* synthetic */ zzvt zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzD(this.zzb, 1090, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzL, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzF(zzvt zzvtVar, int i, zzvt zzvtVar2) throws Exception {
        return zzO(zzvtVar, zzvtVar2, 1094);
    }

    public final /* synthetic */ zzasi zzG(List list, int i, final zzvt zzvtVar) throws Exception {
        zzasi zzL = zzL(this.zzc.zzj(list));
        final int i2 = 1094;
        zzaqt zzaqtVar = new zzaqt(zzvtVar, i2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzme
            public final /* synthetic */ zzvt zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzF(this.zzb, 1094, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzL, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzH(zzvt zzvtVar, int i, zzvt zzvtVar2) throws Exception {
        return zzO(zzvtVar, zzvtVar2, 1098);
    }

    public final /* synthetic */ zzasi zzI(int i, final zzvt zzvtVar) throws Exception {
        zzasi zzL = zzL(this.zzc.zzk());
        final int i2 = 1098;
        zzaqt zzaqtVar = new zzaqt(zzvtVar, i2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzls
            public final /* synthetic */ zzvt zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzH(this.zzb, 1098, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzL, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzJ(zzvt zzvtVar, int i, zzvt zzvtVar2) throws Exception {
        return zzO(zzvtVar, zzvtVar2, 1097);
    }

    public final /* synthetic */ zzasi zzK(List list, int i, final zzvt zzvtVar) throws Exception {
        zzasi zzL = zzL(this.zzc.zzm(list));
        final int i2 = 1097;
        zzaqt zzaqtVar = new zzaqt(zzvtVar, i2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmo
            public final /* synthetic */ zzvt zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzJ(this.zzb, 1097, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzL, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zza(final zzcr zzcrVar) {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zza(zzcrVar);
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzM() : this.zzb.zza(zzcrVar);
        }
        final int i = 1096;
        return zzarx.zzo(zzL(this.zza.zza(zzcrVar)), zzaeq.zzc(new zzaqt(zzcrVar, i) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlt
            public final /* synthetic */ zzcr zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzu(this.zzb, 1096, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzb() {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzb();
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzM() : this.zzb.zzb();
        }
        final int i = 1099;
        return zzarx.zzo(zzL(this.zza.zzb()), zzaeq.zzc(new zzaqt(i) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlo
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzw(1099, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzc() {
        final zzln zzlnVar = new Comparator() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzln
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return zzwe.zze(((zzsb) obj).zzb()).compareTo(zzwe.zze(((zzsb) obj2).zzb()));
            }
        };
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzc();
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzM() : this.zzb.zzc();
        }
        final int i = 1093;
        return zzarx.zzo(zzL(this.zza.zzc()), zzaeq.zzc(new zzaqt(zzlnVar, i) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzly
            public final /* synthetic */ Comparator zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzy(this.zzb, 1093, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzd() {
        final zzmi zzmiVar = new Comparator() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmi
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return zzwe.zze((zzdu) obj).compareTo(zzwe.zze((zzdu) obj2));
            }
        };
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzd();
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzM() : this.zzb.zzd();
        }
        final int i = 1092;
        return zzarx.zzo(zzL(this.zza.zzd()), zzaeq.zzc(new zzaqt(zzmiVar, i) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmj
            public final /* synthetic */ Comparator zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzA(this.zzb, 1092, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zze() {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zze();
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzM() : this.zzb.zze();
        }
        final int i = 1095;
        return zzarx.zzo(zzL(this.zza.zze()), zzaeq.zzc(new zzaqt(i) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlu
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzC(1095, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzf() {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        try {
            if (ordinal == 1) {
                try {
                    zzN(this.zze);
                    zzN(this.zzf);
                    return zzarx.zzi();
                } catch (Throwable th) {
                    zzN(this.zzf);
                    throw th;
                }
            }
            if (ordinal == 2) {
                try {
                    zzN(this.zzf);
                    return zzarx.zzi();
                } catch (IOException e) {
                    return zzarx.zzg(e);
                }
            }
            if (ordinal != 3) {
                return zzM();
            }
            try {
                zzN(this.zze);
                return zzarx.zzi();
            } catch (IOException e2) {
                return zzarx.zzg(e2);
            }
        } catch (IOException e3) {
            return zzarx.zzg(e3);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzg(final zzdu zzduVar) {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzg(zzduVar);
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzM() : this.zzb.zzg(zzduVar);
        }
        return zzarx.zzo(zzL(this.zza.zzg(zzduVar)), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmk
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzo(zzduVar, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzh(final zzdu zzduVar) {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzh(zzduVar);
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzM() : this.zzb.zzh(zzduVar);
        }
        final int i = 1090;
        return zzarx.zzo(zzL(this.zza.zzh(zzduVar)), zzaeq.zzc(new zzaqt(zzduVar, i) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmc
            public final /* synthetic */ zzdu zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzE(this.zzb, 1090, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzi(final zzdu zzduVar) {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzi(zzduVar);
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzM() : this.zzb.zzi(zzduVar);
        }
        return zzarx.zzo(zzL(this.zza.zzi(zzduVar)), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmf
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzq(zzduVar, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzj(final List list) {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzj(list);
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzM() : this.zzb.zzj(list);
        }
        final int i = 1094;
        return zzarx.zzo(zzL(this.zza.zzj(list)), zzaeq.zzc(new zzaqt(list, i) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmg
            public final /* synthetic */ List zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzG(this.zzb, 1094, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzk() {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzk();
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzM() : this.zzb.zzk();
        }
        final int i = 1098;
        return zzarx.zzo(zzL(this.zza.zzk()), zzaeq.zzc(new zzaqt(i) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlv
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzI(1098, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzl(final zzdu zzduVar, final zzcr zzcrVar) {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzl(zzduVar, zzcrVar);
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzM() : this.zzb.zzl(zzduVar, zzcrVar);
        }
        return zzarx.zzo(zzL(this.zza.zzl(zzduVar, zzcrVar)), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlp
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzs(zzduVar, zzcrVar, (zzvt) obj);
            }
        }), this.zzh);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzm(final List list) {
        zzbw zzbwVar = zzbw.UNDEFINED;
        int ordinal = this.zzd.zza().ordinal();
        if (ordinal == 1) {
            return this.zza.zzm(list);
        }
        if (ordinal != 2) {
            return ordinal != 3 ? zzM() : this.zzb.zzm(list);
        }
        final int i = 1097;
        return zzarx.zzo(zzL(this.zza.zzm(list)), zzaeq.zzc(new zzaqt(list, i) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzml
            public final /* synthetic */ List zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzK(this.zzb, 1097, (zzvt) obj);
            }
        }), this.zzh);
    }

    public final /* synthetic */ zzasi zzn(zzvt zzvtVar, zzvt zzvtVar2) throws Exception {
        return zzO(zzvtVar, zzvtVar2, 1087);
    }

    public final /* synthetic */ zzasi zzo(zzdu zzduVar, final zzvt zzvtVar) throws Exception {
        zzasi zzL = zzL(this.zzc.zzg(zzduVar));
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmn
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzn(zzvtVar, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzL, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzp(zzvt zzvtVar, zzvt zzvtVar2) throws Exception {
        return zzO(zzvtVar, zzvtVar2, 1089);
    }

    public final /* synthetic */ zzasi zzq(zzdu zzduVar, final zzvt zzvtVar) throws Exception {
        zzasi zzL = zzL(this.zzc.zzi(zzduVar));
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmd
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzp(zzvtVar, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzL, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzr(zzvt zzvtVar, zzvt zzvtVar2) throws Exception {
        return zzO(zzvtVar, zzvtVar2, 1088);
    }

    public final /* synthetic */ zzasi zzs(zzdu zzduVar, zzcr zzcrVar, final zzvt zzvtVar) throws Exception {
        zzasi zzL = zzL(this.zzc.zzl(zzduVar, zzcrVar));
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmh
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzr(zzvtVar, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzL, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzt(zzvt zzvtVar, int i, zzvt zzvtVar2) throws Exception {
        return zzO(zzvtVar, zzvtVar2, 1096);
    }

    public final /* synthetic */ zzasi zzu(zzcr zzcrVar, int i, final zzvt zzvtVar) throws Exception {
        zzasi zzL = zzL(this.zzc.zza(zzcrVar));
        final int i2 = 1096;
        zzaqt zzaqtVar = new zzaqt(zzvtVar, i2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlr
            public final /* synthetic */ zzvt zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzt(this.zzb, 1096, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzL, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzv(zzvt zzvtVar, int i, zzvt zzvtVar2) throws Exception {
        return zzO(zzvtVar, zzvtVar2, 1099);
    }

    public final /* synthetic */ zzasi zzw(int i, final zzvt zzvtVar) throws Exception {
        zzasi zzL = zzL(this.zzc.zzb());
        final int i2 = 1099;
        zzaqt zzaqtVar = new zzaqt(zzvtVar, i2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzma
            public final /* synthetic */ zzvt zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzv(this.zzb, 1099, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzL, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzx(zzvt zzvtVar, Comparator comparator, int i, zzvt zzvtVar2) throws Exception {
        return zzP(zzvtVar, zzvtVar2, comparator, 1093);
    }

    public final /* synthetic */ zzasi zzy(final Comparator comparator, int i, final zzvt zzvtVar) throws Exception {
        zzasi zzL = zzL(this.zzc.zzc());
        final int i2 = 1093;
        zzaqt zzaqtVar = new zzaqt(zzvtVar, comparator, i2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzmm
            public final /* synthetic */ zzvt zzb;
            public final /* synthetic */ Comparator zzc;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzmp.this.zzx(this.zzb, this.zzc, 1093, (zzvt) obj);
            }
        };
        return zzarx.zzo(zzL, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    public final /* synthetic */ zzasi zzz(zzvt zzvtVar, Comparator comparator, int i, zzvt zzvtVar2) throws Exception {
        return zzP(zzvtVar, zzvtVar2, comparator, 1092);
    }
}
