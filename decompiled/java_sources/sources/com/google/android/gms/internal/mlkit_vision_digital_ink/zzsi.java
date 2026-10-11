package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
final class zzsi extends zztu {
    private final zzcau zzA;
    private final zzcau zzB;
    private final zzcau zzC;
    private final zzcau zzD;
    private final zzcau zzE;
    private final zzcau zzF;
    private final zzcau zzG;
    private final zzcau zzH;
    private final zzcau zzI;
    private final zzcau zzJ;
    private final zzcau zzK;
    private final zzcau zzL;
    private final zzcau zzM;
    private final zzsd zza;
    private final zzsq zzb;
    private final zzsi zzc = this;
    private final zzcau zzd;
    private final zzcau zze;
    private final zzcau zzf;
    private final zzcau zzg;
    private final zzcau zzh;
    private final zzcau zzi;
    private final zzcau zzj;
    private final zzcau zzk;
    private final zzcau zzl;
    private final zzcau zzm;
    private final zzcau zzn;
    private final zzcau zzo;
    private final zzcau zzp;
    private final zzcau zzq;
    private final zzcau zzr;
    private final zzcau zzs;
    private final zzcau zzt;
    private final zzcau zzu;
    private final zzcau zzv;
    private final zzcau zzw;
    private final zzcau zzx;
    private final zzcau zzy;
    private final zzcau zzz;

    public /* synthetic */ zzsi(zzsd zzsdVar, zzsk zzskVar, zzsn zzsnVar, zzsq zzsqVar, zztk zztkVar, zzsh zzshVar) {
        zzst zzstVar;
        this.zza = zzsdVar;
        this.zzb = zzsqVar;
        zzcau zza = zzcas.zza(new zzsz(zzsqVar));
        this.zzd = zza;
        zzcau zza2 = zzcas.zza(new zztj(zzsqVar));
        this.zze = zza2;
        zzse zzseVar = new zzse(zzsdVar);
        this.zzf = zzseVar;
        zzcau zza3 = zzcas.zza(new zztc(zzsqVar));
        this.zzg = zza3;
        zzcau zza4 = zzcas.zza(new zztb(zzsqVar));
        this.zzh = zza4;
        zzrx zzrxVar = new zzrx(zzseVar, zza2, zza3, zza4);
        this.zzi = zzrxVar;
        zzcau zza5 = zzcas.zza(new zztt(zzseVar, zza3));
        this.zzj = zza5;
        zzcau zza6 = zzcas.zza(new zzth(zzsqVar));
        this.zzk = zza6;
        zzpu zzpuVar = new zzpu(zza4);
        this.zzl = zzpuVar;
        zzcau zza7 = zzcas.zza(new zzto(zztkVar, zzseVar, zza5, zza6, zza, zzpuVar, zza3));
        this.zzm = zza7;
        zzcau zza8 = zzcas.zza(new zzso(zzsnVar));
        this.zzn = zza8;
        zzcau zza9 = zzcas.zza(new zzsx(zzseVar, zza2, zza7, zza8, zza4));
        this.zzo = zza9;
        zzcau zza10 = zzcas.zza(new zzts(zzseVar, zza3));
        this.zzp = zza10;
        zzcau zza11 = zzcas.zza(new zztm(zztkVar, zzseVar, zza10, zza6, zza, zzpuVar, zza3));
        this.zzq = zza11;
        zzcau zza12 = zzcas.zza(new zzsv(zzseVar, zza2, zza11, zza8, zza4));
        this.zzr = zza12;
        zznn zznnVar = new zznn(zzseVar, zza, zzrxVar, zza9, zza12, zza5, zza10, zzpuVar, zza6, zza8, zza4);
        this.zzs = zznnVar;
        this.zzt = zzcas.zza(new zztf(zznnVar));
        this.zzu = zzcas.zza(new zzsm(zzskVar));
        this.zzv = zzcas.zza(new zzte(zzsqVar));
        this.zzw = zzcas.zza(new zzsy(zzsqVar));
        zzcau zza13 = zzcas.zza(new zztr(zztkVar, zzseVar, zza3));
        this.zzx = zza13;
        zzstVar = zzss.zza;
        zzcau zza14 = zzcas.zza(zzstVar);
        this.zzy = zza14;
        zzcau zza15 = zzcas.zza(new zzti(zza14));
        this.zzz = zza15;
        this.zzA = zzcas.zza(new zztd(zza13, zza15, zza8));
        this.zzB = zzcas.zza(new zzsl(zzskVar));
        zzru zzruVar = new zzru(zzseVar, zza15, zza2, zza3, zza8);
        this.zzC = zzruVar;
        zzcau zza16 = zzcas.zza(new zztq(zzseVar, zza3));
        this.zzD = zza16;
        zzcau zza17 = zzcas.zza(new zztn(zztkVar, zzseVar, zza16, zza6, zza, zzpuVar, zza3));
        this.zzE = zza17;
        zzcau zza18 = zzcas.zza(new zzsw(zzseVar, zza15, zza2, zza17, zza8));
        this.zzF = zza18;
        zzcau zza19 = zzcas.zza(new zztp(zzseVar, zza3));
        this.zzG = zza19;
        zzcau zza20 = zzcas.zza(new zztl(zztkVar, zzseVar, zza19, zza6, zza, zzpuVar, zza3));
        this.zzH = zza20;
        zzcau zza21 = zzcas.zza(new zzsu(zzseVar, zza15, zza2, zza20, zza8, zza4));
        this.zzI = zza21;
        zzmq zzmqVar = new zzmq(zza, zzruVar, zza18, zza21, zza16, zza19, zzpuVar, zza6, zza8, zza4);
        this.zzJ = zzmqVar;
        this.zzK = zzcas.zza(new zzta(zzmqVar));
        this.zzL = zzcas.zza(new zzsr(zzsqVar, zzseVar));
        this.zzM = zzcas.zza(new zztg(zzsqVar));
    }

    private final zzll zzd() {
        Context zza = this.zza.zza();
        zzcat.zza(zza);
        return new zzll(zza, (zzuz) this.zzd.zzb(), (zzsp) this.zze.zzb(), (zzlm) this.zzK.zzb(), zze(), (zzgs) this.zzz.zzb(), (zzagb) this.zzL.zzb(), (Executor) this.zzn.zzb(), (zzagb) this.zzg.zzb(), (zzyg) this.zzk.zzb(), (zzagb) this.zzM.zzb(), zzf(), (zzbq) this.zzh.zzb(), null, null, null);
    }

    private final zzrn zze() {
        Context zza = this.zza.zza();
        zzcat.zza(zza);
        zzsp zzspVar = (zzsp) this.zze.zzb();
        zzrq zzrqVar = (zzrq) this.zzt.zzb();
        zzyg zzygVar = (zzyg) this.zzk.zzb();
        Context zza2 = this.zza.zza();
        zzcat.zza(zza2);
        return new zzrn(zza, zzspVar, zzrqVar, zzygVar, new zzup(zza2, (zzaha) this.zzu.zzb(), (zzyg) this.zzk.zzb(), (zzwp) this.zzv.zzb(), (zzagb) this.zzw.zzb(), (zzux) this.zzA.zzb(), (Executor) this.zzn.zzb(), (zzbq) this.zzh.zzb()), (zzagb) this.zzB.zzb(), (zzagb) this.zzw.zzb(), (zzuz) this.zzd.zzb(), (zzbq) this.zzh.zzb(), (zzlm) this.zzK.zzb(), (zzagb) this.zzg.zzb(), (Executor) this.zzn.zzb(), null, null);
    }

    private final zzut zzf() {
        this.zzb.zzf();
        return new zzut();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zztu
    public final zzou zza() {
        Context zza = this.zza.zza();
        zzcat.zza(zza);
        zzuz zzuzVar = (zzuz) this.zzd.zzb();
        zzrn zze = zze();
        zzrq zzrqVar = (zzrq) this.zzt.zzb();
        zzll zzd = zzd();
        zzlm zzlmVar = (zzlm) this.zzK.zzb();
        Context zza2 = this.zza.zza();
        zzcat.zza(zza2);
        zzht zzhtVar = new zzht(zza2, (zzlm) this.zzK.zzb(), zze(), (zzrq) this.zzt.zzb(), (zzuz) this.zzd.zzb(), (zzgs) this.zzz.zzb(), (zzyg) this.zzk.zzb(), (zzagb) this.zzg.zzb(), (zzsp) this.zze.zzb(), (Executor) this.zzn.zzb(), (zzbq) this.zzh.zzb(), null, null);
        zzsp zzspVar = (zzsp) this.zze.zzb();
        Context zza3 = this.zza.zza();
        zzcat.zza(zza3);
        zzvi zzviVar = new zzvi(zza3, (zzlm) this.zzK.zzb(), zze(), (zzyg) this.zzk.zzb(), (zzuz) this.zzd.zzb(), (zzsp) this.zze.zzb(), (zzagb) this.zzg.zzb(), (Executor) this.zzn.zzb(), null, null);
        zzuv zzuvVar = new zzuv(zzd(), (zzlm) this.zzK.zzb(), (zzuz) this.zzd.zzb(), (Executor) this.zzn.zzb(), null);
        Context zza4 = this.zza.zza();
        zzcat.zza(zza4);
        return new zzou(zza, zzuzVar, zze, zzrqVar, zzd, zzlmVar, zzhtVar, zzspVar, zzviVar, zzuvVar, new zzuy(zza4, (zzuz) this.zzd.zzb(), (zzagb) this.zzg.zzb(), (zzbq) this.zzh.zzb(), (zzux) this.zzA.zzb(), null), (zzagb) this.zzg.zzb(), (Executor) this.zzn.zzb(), (zzagb) this.zzM.zzb(), (zzbq) this.zzh.zzb(), (zzux) this.zzA.zzb(), zzf(), null, null, null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zztu
    public final zzgs zzb() {
        return (zzgs) this.zzz.zzb();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zztu
    public final zzuz zzc() {
        return (zzuz) this.zzd.zzb();
    }
}
