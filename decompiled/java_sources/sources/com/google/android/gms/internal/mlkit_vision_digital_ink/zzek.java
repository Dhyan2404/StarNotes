package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzek {
    private Context zzb;
    private zzask zzc;
    private zzyg zzf;
    private zzwp zzg;
    private zzaha zzi;
    private zzaba zzj;
    private final List zzd = new ArrayList();
    private zzagb zze = zzagb.zzd();
    private final zzagb zzh = zzagb.zzd();
    private final zzagb zzk = zzagb.zzd();
    private final zzagb zzl = zzagb.zzd();
    private final zzagb zzm = zzagb.zzd();
    private final zzagb zzn = zzagb.zzd();
    private zzagb zzo = zzagb.zzd();
    private final zzagb zzp = zzagb.zzd();
    private final zzagb zzq = zzagb.zzd();
    private zzagb zzr = zzagb.zzd();
    private final zzagb zzs = zzagb.zzd();
    private final zzagb zzt = zzagb.zzd();
    private final zzagb zzu = zzagb.zzd();
    private final zzsg zza = zzsj.zza();

    private zzek() {
    }

    public static zzek zzb() {
        return new zzek();
    }

    public final zzei zza() {
        this.zzb.getClass();
        this.zze.getClass();
        this.zzf.getClass();
        this.zzj.getClass();
        this.zzg.getClass();
        this.zzi.getClass();
        Executor zzc = zzasq.zzc(this.zzc);
        this.zza.zza(new zzsd(this.zzb));
        this.zza.zzc(new zzsn(zzc));
        this.zza.zzb(new zzsk(this.zzk, this.zzi));
        zzej zzejVar = new zzej(this);
        zzuz zzuzVar = new zzuz();
        zzagb zzf = zzagb.zzf(new zzga(this.zzb));
        this.zzr = zzf;
        this.zza.zzd(new zzsq(this.zzf, this.zzg, zzuzVar, this.zzh, this.zzn, this.zzo, this.zzu, zzf, zzejVar, this.zzt, null));
        this.zza.zze(new zztk(this.zzc, this.zzj));
        zztu zzf2 = this.zza.zzf();
        zzwh zza = zzwg.zza();
        zza.zza(this.zzb);
        zza.zzb(zzc);
        zza.zzc(this.zzi);
        return new zzfx(this.zzb, zzf2.zzc(), zzf2.zza(), zzc, this.zzd, this.zze, this.zzf, this.zzh, this.zzp, zzejVar, zza.zzd(), this.zzs, zzf2.zzb(), null, null);
    }

    public final zzek zzc(Context context) {
        this.zzb = context.getApplicationContext();
        return this;
    }

    public final zzek zzd(zzask zzaskVar) {
        zzaskVar.getClass();
        this.zzc = zzaskVar;
        return this;
    }

    public final zzek zze(zzaha zzahaVar) {
        this.zzi = zzahaVar;
        return this;
    }

    public final zzek zzf(zzyg zzygVar) {
        this.zzf = zzygVar;
        return this;
    }

    public final zzek zzg(zzagb zzagbVar) {
        this.zzo = zzagbVar;
        return this;
    }

    public final zzek zzh(zzwp zzwpVar) {
        this.zzg = zzwpVar;
        return this;
    }

    public final zzek zzi(zzaba zzabaVar) {
        this.zzj = zzabaVar;
        return this;
    }

    public final zzek zzj(zzagb zzagbVar) {
        this.zze = zzagbVar;
        return this;
    }
}
