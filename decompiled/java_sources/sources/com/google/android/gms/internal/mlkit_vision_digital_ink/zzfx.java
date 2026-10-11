package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzfx implements zzei {
    private final Context zza;
    private final List zzb;
    private final zzagb zzc;
    private final zzou zzd;
    private final zzyg zze;
    private final zzbq zzf;
    private final zzwi zzg;
    private final zzvs zzh;
    private final zzvs zzi;
    private final Executor zzj;
    private final zzagb zzl;
    private final zzagb zzm;
    private final zzgs zzo;
    private final zzuz zzp;
    private final zzwt zzk = zzwt.zza();
    private final zzaqt zzn = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfe
        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
        public final zzasi zza(Object obj) {
            return zzarx.zzh(Boolean.TRUE);
        }
    };

    public zzfx(Context context, zzuz zzuzVar, zzou zzouVar, Executor executor, List list, zzagb zzagbVar, zzyg zzygVar, zzagb zzagbVar2, zzagb zzagbVar3, zzbq zzbqVar, zzwi zzwiVar, zzagb zzagbVar4, zzgs zzgsVar, byte[] bArr, byte[] bArr2) {
        this.zza = context;
        this.zzp = zzuzVar;
        this.zzb = list;
        this.zzc = zzagbVar;
        this.zzj = executor;
        this.zzd = zzouVar;
        this.zze = zzygVar;
        this.zzl = zzagbVar2;
        this.zzm = zzagbVar3;
        this.zzf = zzbqVar;
        this.zzg = zzwiVar;
        this.zzi = zzvs.zza(executor);
        this.zzh = zzvs.zzb(executor, new zzfw(zzagbVar3, context));
        this.zzo = zzgsVar;
    }

    public static final /* synthetic */ zzr zzA(zzr zzrVar) {
        if (zzrVar != null) {
            zzC(zzrVar);
        }
        return zzrVar;
    }

    private static zzm zzB(String str, int i, int i2, @Nullable String str2, @Nullable zzbsk zzbskVar) {
        zzl zza = zzm.zza();
        zza.zzc(str);
        zza.zze(i);
        if (i2 > 0) {
            zza.zzb(i2);
        }
        if (str2 != null) {
            zza.zzd(str2);
        }
        if (zzbskVar != null) {
            zza.zza(zzbskVar);
        }
        return (zzm) zza.zzx();
    }

    private static zzapg zzC(zzr zzrVar) {
        zzapf zza = zzapg.zza();
        zza.zzc(zzrVar.zzi());
        zza.zzf(zzrVar.zzj());
        zza.zzd(zzrVar.zzc());
        zza.zzb(zzrVar.zza());
        zza.zzg(zzrVar.zzk());
        zza.zza(zzrVar.zzd());
        return (zzapg) zza.zzx();
    }

    private static zzasi zzD(@Nullable zzcr zzcrVar, @Nullable String str, zzq zzqVar, boolean z, boolean z2, zzou zzouVar, Executor executor, final zzyg zzygVar) {
        if (zzcrVar == null) {
            return zzarx.zzh(null);
        }
        final zzn zzf = zzr.zzf();
        zzf.zzh(zzcrVar.zzq());
        zzf.zzi(zzcrVar.zzs());
        zzf.zzl(zzcrVar.zzc());
        zzf.zzg(zzcrVar.zzo());
        zzf.zze(zzcrVar.zze());
        zzf.zzk(zzcrVar.zzt());
        zzf.zzj(zzqVar);
        zzf.zzb(zzcrVar.zzw());
        if (str != null) {
            zzf.zzd(str);
        }
        if (zzcrVar.zzD()) {
            zzf.zzf(zzcrVar.zzn());
        }
        final List<zzck> zzu = zzcrVar.zzu();
        zzasi zzi = zzarx.zzi();
        if (zzqVar == zzq.DOWNLOADED || zzqVar == zzq.PENDING_CUSTOM_VALIDATION) {
            final boolean z3 = false;
            zzi = zzwu.zzc(zzouVar.zzf(zzcrVar, z2)).zze(new zzaqt(zzu, z3, zzygVar, zzf) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfo
                public final /* synthetic */ List zza;
                public final /* synthetic */ zzyg zzb;
                public final /* synthetic */ zzn zzc;

                {
                    this.zzb = zzygVar;
                    this.zzc = zzf;
                }

                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzfx.zzi(this.zza, false, this.zzb, this.zzc, (zzajp) obj);
                }
            }, executor);
        } else {
            for (zzck zzckVar : zzu) {
                zzf.zzc(zzB(zzckVar.zzm(), zzckVar.zza(), zzckVar.zzd(), null, zzckVar.zzt() ? zzckVar.zzg() : null));
            }
        }
        return zzwu.zzc(zzi).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfp
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return (zzr) zzn.this.zzx();
            }
        }, executor).zza(zzbj.class, new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfq
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return null;
            }
        }, executor);
    }

    private final zzasi zzE(zzdu zzduVar, @Nullable zzcr zzcrVar, boolean z, boolean z2, boolean z3) {
        return zzarx.zzn(zzD(zzcrVar, zzduVar.zzm() ? zzduVar.zzf() : null, z ? zzq.DOWNLOADED : zzq.PENDING, false, z3, this.zzd, this.zzj, this.zze), zzaeq.zza(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzep
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzr zzrVar = (zzr) obj;
                zzfx.zzA(zzrVar);
                return zzrVar;
            }
        }), this.zzj);
    }

    private static List zzF(zzyg zzygVar, Uri uri, String str) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (Uri uri2 : zzygVar.zzb(uri)) {
            if (zzygVar.zzj(uri2)) {
                arrayList.addAll(zzF(zzygVar, uri2, str));
            } else {
                String path = uri2.getPath();
                if (path != null) {
                    zzl zza = zzm.zza();
                    zza.zzc(path.replaceFirst(str, ""));
                    zza.zze((int) zzygVar.zza(uri2));
                    zza.zzd(uri2.toString());
                    arrayList.add((zzm) zza.zzx());
                }
            }
        }
        return arrayList;
    }

    public static /* synthetic */ zzasi zzi(List list, boolean z, zzyg zzygVar, zzn zznVar, zzajp zzajpVar) throws Exception {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            zzck zzckVar = (zzck) it2.next();
            if (!zzajpVar.containsKey(zzckVar)) {
                zzbg zzbgVar = new zzbg();
                zzbgVar.zzb(zzbh.DOWNLOADED_FILE_NOT_FOUND_ERROR);
                zzbgVar.zzc("getDataFileUris() resolved to null");
                return zzarx.zzg(zzbgVar.zze());
            }
            Uri uri = (Uri) zzajpVar.get(zzckVar);
            try {
                if (zzygVar.zzj(uri)) {
                    String path = uri.getPath();
                    if (path != null) {
                        zznVar.zza(zzF(zzygVar, uri, path));
                    }
                } else {
                    zznVar.zzc(zzB(zzckVar.zzm(), zzckVar.zza(), zzckVar.zzd(), uri.toString(), zzckVar.zzt() ? zzckVar.zzg() : null));
                }
            } catch (IOException e) {
                zzuw.zzh(e, "Failed to list files under directory:".concat(String.valueOf(uri)));
            }
        }
        return zzarx.zzi();
    }

    public static final /* synthetic */ void zzz(zzapg zzapgVar, zzasi zzasiVar, zzft zzftVar, int i, long j) {
        int i2;
        int i3;
        Object obj;
        try {
            obj = zzarx.zzp(zzasiVar);
            i2 = 3;
        } catch (Throwable th) {
            th = th;
            if (th instanceof ExecutionException) {
                th = th.getCause();
            }
            if (th instanceof CancellationException) {
                i3 = 5;
            } else if (th instanceof InterruptedException) {
                i3 = 6;
            } else if (th instanceof IOException) {
                i3 = 7;
            } else if (th instanceof IllegalStateException) {
                i3 = 8;
            } else if (th instanceof IllegalArgumentException) {
                i3 = 9;
            } else if (th instanceof UnsupportedOperationException) {
                i3 = 10;
            } else if (th instanceof zzbj) {
                i3 = 11;
            } else {
                i2 = 4;
                obj = null;
            }
            i2 = i3;
            obj = null;
        }
        if (obj != null) {
            zzapf zzapfVar = (zzapf) zzapgVar.zzO();
            zzapfVar.zzt(zzC((zzr) obj));
            zzapgVar = (zzapg) zzapfVar.zzx();
        }
        zzapl zza = zzapm.zza();
        zza.zzc(4);
        zza.zzd(i2);
        zza.zzb(j);
        zza.zza(zzapgVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzei
    public final zzasi zza(final zzt zztVar) {
        return this.zzk.zzc(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfa
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzfx.this.zzh(zztVar);
            }
        }, this.zzj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzei
    public final zzasi zzb(final zzbl zzblVar) {
        zzaqs zzaqsVar = new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzen
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzfx.this.zzk(zzblVar);
            }
        };
        return zzarx.zzm(zzaeq.zzb(zzaqsVar), this.zzj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzei
    public final zzasi zzc(final zzbs zzbsVar) {
        final long zza = zzi.zza();
        final zzasi zzc = this.zzk.zzc(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfr
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzfx.this.zzt(zzbsVar);
            }
        }, this.zzj);
        zzapf zza2 = zzapg.zza();
        zza2.zzc(zzbsVar.zzc());
        zza2.zze(false);
        zza2.zzd(-1);
        zza2.zza(-1L);
        final zzapg zzapgVar = (zzapg) zza2.zzx();
        final zzft zzftVar = zzft.zza;
        final int i = 4;
        final byte[] bArr = null;
        zzc.zzp(zzaeq.zze(new Runnable(zza, zzapgVar, zzc, zzftVar, i, bArr) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzey
            public final /* synthetic */ long zzb;
            public final /* synthetic */ zzapg zzc;
            public final /* synthetic */ zzasi zzd;
            public final /* synthetic */ zzft zze;

            @Override // java.lang.Runnable
            public final void run() {
                zzfx.this.zzy(this.zzb, this.zzc, this.zzd, this.zze, 4);
            }
        }), zzasq.zzb());
        return zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzei
    public final zzasi zzd(final zzbu zzbuVar) {
        return this.zzk.zzc(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzez
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzfx.this.zzw(zzbuVar);
            }
        }, this.zzj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzei
    public final zzasi zze() {
        zzwt zzwtVar = this.zzk;
        final zzou zzouVar = this.zzd;
        return zzwtVar.zzc(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzex
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzou.this.zzD();
            }
        }, this.zzj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzei
    public final zzasi zzf(final zzfz zzfzVar) {
        return this.zzk.zzc(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzes
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzfx.this.zzx(zzfzVar);
            }
        }, this.zzj);
    }

    public final /* synthetic */ zzasi zzh(zzt zztVar) throws Exception {
        zzuw.zzb("%s: Adding for download group = '%s', variant = '%s', buildId = '%d' and associating it with account = '%s', variant = '%s'", "MobileDataDownload", zztVar.zzb().zze(), zztVar.zzb().zzg(), Long.valueOf(zztVar.zzb().zza()), "null", "null");
        zzav zzb = zztVar.zzb();
        if (!zzb.zzk()) {
            zzau zzauVar = (zzau) zzb.zzO();
            zzauVar.zzc(this.zza.getPackageName());
            zzb = (zzav) zzauVar.zzx();
        } else if (!this.zza.getPackageName().equals(zzb.zzf())) {
            zzuw.zzg("%s: Added group = '%s' with wrong owner package: '%s' v.s. '%s' ", "MobileDataDownload", zzb.zze(), this.zza.getPackageName(), zzb.zzf());
            return zzarx.zzh(Boolean.FALSE);
        }
        zzdt zza = zzdu.zza();
        zza.zzb(zzb.zze());
        zza.zzc(zzb.zzf());
        try {
            return this.zzd.zzc((zzdu) zza.zzx(), zzcr.zzl(zzb.zzK(), zzbtr.zza()), this.zzn);
        } catch (zzbut e) {
            zzuw.zzj(e, "%s: Unable to convert from DataFileGroup to DataFileGroupInternal.", "MobileDataDownload");
            return zzarx.zzh(Boolean.FALSE);
        }
    }

    public final /* synthetic */ zzasi zzj(final zzbl zzblVar, zzhb zzhbVar) throws Exception {
        int zzb = zzhbVar.zzb() - 1;
        if (zzb == 1) {
            return zzhbVar.zzc();
        }
        if (zzb == 2) {
            return zzarx.zzh(zzhbVar.zza());
        }
        final String zzh = zzblVar.zzh();
        zzdt zza = zzdu.zza();
        zza.zzb(zzh);
        zza.zzc(this.zza.getPackageName());
        final zzdu zzduVar = (zzdu) zza.zzx();
        try {
            final zzagb zzf = zzblVar.zze().zzc() ? zzagb.zzf(zzdh.zze(((zzbd) zzblVar.zze().zza()).zzK(), zzbtr.zza())) : zzagb.zzd();
            final zzgq zzc = zzgq.zzc(zzblVar.zzh(), zzblVar.zzb(), zzblVar.zzg());
            final zzasj zza2 = zzasj.zza(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfh
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return null;
                }
            });
            final zzwu zzd = zzwu.zzc(zza2).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfi
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzfx.this.zzl(zzduVar, zzf, (Void) obj);
                }
            }, this.zzj).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfj
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzfx.this.zzm(zzblVar, (zzcr) obj);
                }
            }, this.zzj).zzd(zzeu.zza, this.zzj);
            final zzwu zze = zzwu.zzc(this.zzi.zzc(zzc.zza(), zzd)).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfk
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    zzasj zzasjVar = zzasj.this;
                    zzasi zzasiVar = zzd;
                    zzasjVar.run();
                    return zzasiVar;
                }
            }, this.zzj);
            zzwu zze2 = zze.zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfl
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzfx.this.zzn(zzc, (zzr) obj);
                }
            }, this.zzj).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfm
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzarx.zzh((zzr) zzarx.zzp(zze));
                }
            }, this.zzj);
            zzarx.zzr(zze2, zzaeq.zzd(new zzfu(this, zzblVar, zzh, zzc)), this.zzj);
            return zze2;
        } catch (zzbut e) {
            return zzarx.zzg(e);
        }
    }

    public final /* synthetic */ zzasi zzk(final zzbl zzblVar) throws Exception {
        final zzgq zzc = zzgq.zzc(zzblVar.zzh(), zzblVar.zzb(), zzblVar.zzg());
        final String zzh = zzblVar.zzh();
        zzdt zza = zzdu.zza();
        zza.zzb(zzh);
        zza.zzc(this.zza.getPackageName());
        final zzdu zzduVar = (zzdu) zza.zzx();
        final boolean z = false;
        zzasi zzc2 = this.zzk.zzc(new zzaqs(zzc, zzduVar, z, zzblVar, zzh) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzeq
            public final /* synthetic */ zzgq zzb;
            public final /* synthetic */ zzdu zzc;
            public final /* synthetic */ zzbl zzd;
            public final /* synthetic */ String zze;

            {
                this.zzd = zzblVar;
                this.zze = zzh;
            }

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzfx.this.zzr(this.zzb, this.zzc, false, this.zzd, this.zze);
            }
        }, this.zzj);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfn
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzfx.this.zzj(zzblVar, (zzhb) obj);
            }
        };
        return zzarx.zzo(zzc2, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final /* synthetic */ zzasi zzl(zzdu zzduVar, zzagb zzagbVar, Void r3) throws Exception {
        return this.zzd.zzd(zzduVar, zzagbVar, this.zzn);
    }

    public final /* synthetic */ zzasi zzm(zzbl zzblVar, zzcr zzcrVar) throws Exception {
        return zzD(zzcrVar, null, zzq.DOWNLOADED, false, zzblVar.zzj(), this.zzd, this.zzj, this.zze);
    }

    public final /* synthetic */ zzasi zzn(zzgq zzgqVar, zzr zzrVar) throws Exception {
        return this.zzi.zzg(zzgqVar.zza());
    }

    public final /* synthetic */ zzasi zzo(zzdu zzduVar, final zzcr zzcrVar) throws Exception {
        zzasi zzg = this.zzd.zzg(zzduVar, true);
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfc
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzsc.zzc(zzcr.this, (zzcr) obj);
            }
        };
        return zzarx.zzn(zzg, zzaeq.zza(zzaftVar), this.zzj);
    }

    public final /* synthetic */ zzasi zzp(zzdu zzduVar, boolean z, final zzbl zzblVar, final String str, zzsc zzscVar) throws Exception {
        if (zzscVar.zzb() != null) {
            zzcr zzb = zzscVar.zzb();
            zzb.getClass();
            return zzarx.zzh(zzhb.zzg(zzb));
        }
        if (zzscVar.zza() == null) {
            zzbg zzbgVar = new zzbg();
            zzbgVar.zzb(zzbh.GROUP_NOT_FOUND_ERROR);
            zzbgVar.zzc("Nothing to download for file group: ".concat(String.valueOf(zzduVar.zzg())));
            return zzarx.zzg(zzbgVar.zze());
        }
        zzcr zza = zzscVar.zza();
        zza.getClass();
        final boolean z2 = false;
        zzwu zzd = zzwu.zzc(zzD(zza, null, zzq.DOWNLOADED, false, zzblVar.zzj(), this.zzd, this.zzj, this.zze)).zzd(zzeu.zza, this.zzj).zzd(new zzaft(z2, zzblVar, str) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzev
            public final /* synthetic */ zzbl zzb;
            public final /* synthetic */ String zzc;

            {
                this.zzb = zzblVar;
                this.zzc = str;
            }

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return (zzr) obj;
            }
        }, this.zzj);
        zzd.zzf(new zzfv(this, false, str), this.zzj);
        return zzd.zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzew
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzhb.zze((zzr) obj);
            }
        }, zzasq.zzb());
    }

    public final /* synthetic */ zzasi zzq(zzasi zzasiVar, zzasi zzasiVar2, final zzdu zzduVar, boolean z, final zzbl zzblVar, final String str) throws Exception {
        if (((zzagb) zzarx.zzp(zzasiVar)).zzc()) {
            return zzarx.zzh(zzhb.zzf((zzasi) ((zzagb) zzarx.zzp(zzasiVar)).zza()));
        }
        if (((zzagb) zzarx.zzp(zzasiVar2)).zzc()) {
            return zzarx.zzh(zzhb.zzf((zzasi) ((zzagb) zzarx.zzp(zzasiVar2)).zza()));
        }
        zzasi zzg = this.zzd.zzg(zzduVar, false);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzel
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzfx.this.zzo(zzduVar, (zzcr) obj);
            }
        };
        zzasi zzo = zzarx.zzo(zzg, zzaeq.zzc(zzaqtVar), this.zzj);
        final boolean z2 = false;
        zzaqt zzaqtVar2 = new zzaqt(zzduVar, z2, zzblVar, str) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzem
            public final /* synthetic */ zzdu zzb;
            public final /* synthetic */ zzbl zzc;
            public final /* synthetic */ String zzd;

            {
                this.zzc = zzblVar;
                this.zzd = str;
            }

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzfx.this.zzp(this.zzb, false, this.zzc, this.zzd, (zzsc) obj);
            }
        };
        return zzarx.zzo(zzo, zzaeq.zzc(zzaqtVar2), this.zzj);
    }

    public final /* synthetic */ zzasi zzr(zzgq zzgqVar, final zzdu zzduVar, boolean z, final zzbl zzblVar, final String str) throws Exception {
        final zzasi zzd = this.zzh.zzd(zzgqVar.zza());
        final zzasi zzd2 = this.zzi.zzd(zzgqVar.zza());
        final boolean z2 = false;
        return zzwx.zzb(zzd, zzd2).zzb(new zzaqs(zzd, zzd2, zzduVar, z2, zzblVar, str) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfb
            public final /* synthetic */ zzasi zzb;
            public final /* synthetic */ zzasi zzc;
            public final /* synthetic */ zzdu zzd;
            public final /* synthetic */ zzbl zze;
            public final /* synthetic */ String zzf;

            {
                this.zze = zzblVar;
                this.zzf = str;
            }

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzfx.this.zzq(this.zzb, this.zzc, this.zzd, false, this.zze, this.zzf);
            }
        }, this.zzj);
    }

    public final /* synthetic */ zzasi zzs(zzdu zzduVar, zzbs zzbsVar, zzcr zzcrVar) throws Exception {
        return zzE(zzduVar, zzcrVar, true, false, zzbsVar.zze());
    }

    public final /* synthetic */ zzasi zzt(final zzbs zzbsVar) throws Exception {
        String zzc = zzbsVar.zzc();
        zzdt zza = zzdu.zza();
        zza.zzb(zzc);
        zza.zzc(this.zza.getPackageName());
        final zzdu zzduVar = (zzdu) zza.zzx();
        zzasi zzg = this.zzd.zzg(zzduVar, true);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzeo
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzfx.this.zzs(zzduVar, zzbsVar, (zzcr) obj);
            }
        };
        return zzarx.zzo(zzg, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final /* synthetic */ zzasi zzu(zzsb zzsbVar, zzbu zzbuVar, final zzaji zzajiVar) throws Exception {
        zzdu zzb = zzsbVar.zzb();
        zzasi zzE = zzE(zzb, zzsbVar.zza(), zzb.zzl(), false, zzbuVar.zzg());
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfs
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzaji zzajiVar2 = zzaji.this;
                zzr zzrVar = (zzr) obj;
                if (zzrVar != null) {
                    zzajiVar2.zze(zzrVar);
                }
                return zzajiVar2;
            }
        };
        return zzarx.zzn(zzE, zzaeq.zza(zzaftVar), this.zzj);
    }

    public final /* synthetic */ zzasi zzv(final zzbu zzbuVar, List list) throws Exception {
        zzasi zzh = zzarx.zzh(zzajm.zze());
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final zzsb zzsbVar = (zzsb) it2.next();
            zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzff
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzfx.this.zzu(zzsbVar, zzbuVar, (zzaji) obj);
                }
            };
            zzh = zzarx.zzo(zzh, zzaeq.zzc(zzaqtVar), this.zzj);
        }
        zzfg zzfgVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfg
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return ((zzaji) obj).zzh();
            }
        };
        return zzarx.zzn(zzh, zzaeq.zza(zzfgVar), this.zzj);
    }

    public final /* synthetic */ zzasi zzw(final zzbu zzbuVar) throws Exception {
        zzasi zze = this.zzd.zze();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzfd
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzfx.this.zzv(zzbuVar, (List) obj);
            }
        };
        return zzarx.zzo(zze, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final /* synthetic */ zzasi zzx(zzfz zzfzVar) throws Exception {
        zzdt zza = zzdu.zza();
        zza.zzb(zzfzVar.zzc());
        zza.zzc(this.zza.getPackageName());
        zzasi zzE = this.zzd.zzE((zzdu) zza.zzx(), false);
        zzer zzerVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzer
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.TRUE;
            }
        };
        return zzarx.zzn(zzE, zzaeq.zza(zzerVar), this.zzj);
    }

    public final /* synthetic */ void zzy(long j, final zzapg zzapgVar, final zzasi zzasiVar, final zzft zzftVar, int i) {
        final long zza = zzi.zza() - j;
        final int i2 = 4;
        final byte[] bArr = null;
        Runnable runnable = new Runnable(zzapgVar, zzasiVar, zzftVar, i2, zza, bArr) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzet
            public final /* synthetic */ zzapg zzb;
            public final /* synthetic */ zzasi zzc;
            public final /* synthetic */ long zzd;
            public final /* synthetic */ zzft zze;

            {
                this.zzd = zza;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzfx.zzz(this.zzb, this.zzc, this.zze, 4, this.zzd);
            }
        };
        zzarx.zzk(zzaeq.zze(runnable), this.zzj);
    }
}
