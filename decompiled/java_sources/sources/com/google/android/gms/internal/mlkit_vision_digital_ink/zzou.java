package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
/* loaded from: classes5.dex */
public final class zzou {
    public static final /* synthetic */ int zza = 0;
    private static volatile boolean zzb;
    private final Context zzc;
    private final zzll zzd;
    private final zzlm zze;
    private final zzrn zzf;
    private final zzrq zzg;
    private final zzht zzh;
    private final zzvi zzi;
    private final zzuv zzj;
    private final zzuy zzk;
    private final zzagb zzl;
    private final Executor zzm;
    private final zzagb zzn;
    private final zzbq zzo;
    private final zzux zzp;
    private final zzsp zzq;
    private final zzuz zzr;
    private final zzut zzs;

    public zzou(Context context, zzuz zzuzVar, zzrn zzrnVar, zzrq zzrqVar, zzll zzllVar, zzlm zzlmVar, zzht zzhtVar, zzsp zzspVar, zzvi zzviVar, zzuv zzuvVar, zzuy zzuyVar, zzagb zzagbVar, Executor executor, zzagb zzagbVar2, zzbq zzbqVar, zzux zzuxVar, zzut zzutVar, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.zzc = context;
        this.zzr = zzuzVar;
        this.zzf = zzrnVar;
        this.zzg = zzrqVar;
        this.zzd = zzllVar;
        this.zze = zzlmVar;
        this.zzh = zzhtVar;
        this.zzq = zzspVar;
        this.zzi = zzviVar;
        this.zzj = zzuvVar;
        this.zzk = zzuyVar;
        this.zzl = zzagbVar;
        this.zzm = executor;
        this.zzn = zzagbVar2;
        this.zzo = zzbqVar;
        this.zzp = zzuxVar;
        this.zzs = zzutVar;
    }

    public static /* synthetic */ Void zzF(Void r0) {
        zzb = true;
        return null;
    }

    private final zzasi zzG() {
        zzasi zzc = this.zzf.zzc();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzom
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzo((Void) obj);
            }
        };
        return zzarx.zzo(zzc, zzaeq.zzc(zzaqtVar), this.zzm);
    }

    public final /* synthetic */ zzasi zzA(Integer num) throws Exception {
        ArrayList arrayList = new ArrayList();
        zzuw.zza("%s checkResetTrigger", "MDDManager");
        zzasi zzh = zzh();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznr
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzk((Void) obj);
            }
        };
        arrayList.add(zzarx.zzo(zzh, zzaeq.zzc(zzaqtVar), this.zzm));
        this.zzo.zzs();
        arrayList.add(this.zzd.zzao());
        this.zzo.zzv();
        arrayList.add(this.zzd.zzh());
        this.zzo.zzu();
        this.zzo.zzo();
        arrayList.add(this.zzd.zzas());
        this.zzo.zzw();
        arrayList.add(this.zzh.zzj());
        num.intValue();
        arrayList.add(zzarx.zzi());
        num.intValue();
        arrayList.add(zzarx.zzi());
        arrayList.add(this.zzk.zza());
        if (this.zzn.zzc()) {
            arrayList.add(this.zzd.zzaq());
        }
        zzwe.zza(this.zzc, "gms_icing_mdd_manager_metadata", this.zzl).edit().remove("gms_icing_mdd_manager_ph_config_version").remove("gms_icing_mdd_manager_ph_config_version_timestamp").commit();
        return zzwx.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzod
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i = zzou.zza;
                return null;
            }
        }, this.zzm);
    }

    public final /* synthetic */ zzasi zzB(zzdu zzduVar, zzaqt zzaqtVar, zzcr zzcrVar) throws Exception {
        return zzcrVar == null ? zzarx.zzh(zzlk.PENDING) : this.zzd.zzat(zzduVar, zzcrVar, true, zzaqtVar, zzuu.zze(this.zzr));
    }

    public final /* synthetic */ zzasi zzC(zzdu zzduVar, boolean z, Void r3) throws Exception {
        return this.zzd.zzap(zzduVar, false);
    }

    public final zzasi zzD() {
        zzuw.zza("%s Running maintenance", "MDDManager");
        return zzwu.zzc(zzh()).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzoa
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzz((Void) obj);
            }
        }, zzasq.zzb()).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzob
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzA((Integer) obj);
            }
        }, this.zzm);
    }

    public final zzasi zzE(final zzdu zzduVar, boolean z) throws zzro, IOException {
        zzuw.zzc("%s removeFileGroup %s", "MDDManager", zzduVar.zzg());
        zzasi zzh = zzh();
        final boolean z2 = false;
        zzaqt zzaqtVar = new zzaqt(zzduVar, z2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzol
            public final /* synthetic */ zzdu zzb;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzC(this.zzb, false, (Void) obj);
            }
        };
        return zzarx.zzo(zzh, zzaeq.zzc(zzaqtVar), this.zzm);
    }

    public final /* synthetic */ zzajp zza(boolean z, boolean z2, zzajp zzajpVar, zzajp zzajpVar2) {
        return z ? z2 ? this.zzd.zze(zzajpVar, zzajpVar2) : zzajpVar : zzajpVar2;
    }

    public final /* synthetic */ zzajp zzb(zzajp zzajpVar) {
        zzajo zzajoVar = new zzajo();
        zzalx it2 = zzajpVar.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            zzck zzckVar = (zzck) entry.getKey();
            if (entry.getValue() != null) {
                if (zzckVar.zzw()) {
                    Uri uri = (Uri) entry.getValue();
                    zzcap zzi = zzckVar.zzi();
                    this.zzo.zzl();
                    if (zzi.zzc() != 0) {
                        uri = uri.buildUpon().encodedFragment(zzaak.zza(zzi)).build();
                    }
                    zzajoVar.zzb(zzckVar, uri);
                } else {
                    zzajoVar.zza(entry);
                }
            }
        }
        return zzajoVar.zzd();
    }

    public final zzasi zzc(final zzdu zzduVar, final zzcr zzcrVar, final zzaqt zzaqtVar) {
        zzuw.zzc("%s addGroupForDownload %s", "MDDManager", zzduVar.zzg());
        zzasi zzh = zzh();
        zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzoh
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzi(zzcrVar, zzduVar, zzaqtVar, (Void) obj);
            }
        };
        return zzarx.zzo(zzh, zzaeq.zzc(zzaqtVar2), this.zzm);
    }

    public final zzasi zzd(final zzdu zzduVar, final zzagb zzagbVar, final zzaqt zzaqtVar) {
        zzuw.zzb("%s downloadFileGroup %s %s", "MDDManager", zzduVar.zzg(), zzduVar.zzh());
        zzasi zzh = zzh();
        zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzos
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzp(zzduVar, zzagbVar, zzaqtVar, (Void) obj);
            }
        };
        return zzarx.zzo(zzh, zzaeq.zzc(zzaqtVar2), this.zzm);
    }

    public final zzasi zze() {
        zzuw.zza("%s getAllFreshGroups", "MDDManager");
        zzasi zzh = zzh();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzny
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzq((Void) obj);
            }
        };
        return zzarx.zzo(zzh, zzaeq.zzc(zzaqtVar), this.zzm);
    }

    public final zzasi zzf(final zzcr zzcrVar, final boolean z) {
        zzuw.zzc("%s: getDataFileUris %s", "MDDManager", zzcrVar.zzq());
        final boolean zzi = zzvu.zzi(zzcrVar);
        zzajo zzajoVar = new zzajo();
        if (zzi) {
            zzajoVar.zzc(this.zzd.zzd(zzcrVar).entrySet());
        }
        final zzajp zzd = zzajoVar.zzd();
        return zzwu.zzc(zzh()).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzoi
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzr(zzi, z, zzcrVar, (Void) obj);
            }
        }, this.zzm).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzoj
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzou.this.zza(zzi, z, zzd, (zzajp) obj);
            }
        }, this.zzm).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzok
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzou.this.zzb((zzajp) obj);
            }
        }, this.zzm);
    }

    public final zzasi zzg(final zzdu zzduVar, final boolean z) {
        zzuw.zzb("%s getFileGroup %s %s", "MDDManager", zzduVar.zzg(), zzduVar.zzh());
        zzasi zzh = zzh();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzns
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzs(zzduVar, z, (Void) obj);
            }
        };
        return zzarx.zzo(zzh, zzaeq.zzc(zzaqtVar), this.zzm);
    }

    public final zzasi zzh() {
        return zzb ? zzarx.zzi() : zzwu.zzc(zzarx.zzi()).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznu
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzt((Void) obj);
            }
        }, this.zzm).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzoe
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzv((Void) obj);
            }
        }, this.zzm).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzoo
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzx((Void) obj);
            }
        }, this.zzm).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzop
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzy((Void) obj);
            }
        }, this.zzm).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzoq
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzou.zzF((Void) obj);
                return null;
            }
        }, this.zzm);
    }

    public final /* synthetic */ zzasi zzi(zzcr zzcrVar, final zzdu zzduVar, final zzaqt zzaqtVar, Void r11) throws Exception {
        zzajm zzo;
        if (!zzgt.zza(zzcrVar, this.zzc, this.zzo)) {
            zzcrVar.zzq();
            zzcrVar.zzc();
            zzcrVar.zze();
            zzcrVar.zzt();
            return zzarx.zzh(Boolean.FALSE);
        }
        List<zzck> zzu = zzcrVar.zzu();
        Iterator it2 = zzu.iterator();
        while (true) {
            if (!it2.hasNext()) {
                zzo = zzajm.zzo(zzu);
                break;
            }
            if (((zzck) it2.next()).zzz() == 2) {
                zzaji zzf = zzajm.zzf(zzu.size());
                for (zzck zzckVar : zzu) {
                    if (zzckVar.zzz() - 1 != 0) {
                        zzcg zzcgVar = (zzcg) zzckVar.zzO();
                        String zza2 = zzuj.zza(zzckVar.zzo());
                        if (zzvu.zzg(zzckVar)) {
                            zzcgVar.zzb(zza2);
                        } else {
                            zzcgVar.zza(zza2);
                        }
                        zzuw.zzc("FileId %s does not have checksum. Generated checksum from url %s", zzcgVar.zzd(), zzcgVar.zzc());
                        zzf.zze((zzck) zzcgVar.zzx());
                    } else {
                        zzf.zze(zzckVar);
                    }
                }
                zzo = zzf.zzh();
            }
        }
        zzcq zzcqVar = (zzcq) zzcrVar.zzO();
        zzcqVar.zzb();
        zzcqVar.zza(zzo);
        try {
            return zzwu.zzc(this.zzd.zzg(zzduVar, (zzcr) zzcqVar.zzx())).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzof
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzou.this.zzj(zzduVar, zzaqtVar, (Boolean) obj);
                }
            }, this.zzm).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzog
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
                public final Object zza(Object obj) {
                    return Boolean.TRUE;
                }
            }, this.zzm);
        } catch (zzgr | zzhu | zzry e) {
            zzuw.zzp("%s %s", "MDDManager", e.getClass());
            return zzarx.zzg(e);
        } catch (IOException e2) {
            zzuw.zzi("%s %s", "MDDManager", e2.getClass());
            return zzarx.zzg(e2);
        }
    }

    public final /* synthetic */ zzasi zzj(final zzdu zzduVar, final zzaqt zzaqtVar, Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            return zzarx.zzi();
        }
        final zzasi zzj = this.zzd.zzj(zzduVar, false);
        return zzwu.zzc(zzj).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznw
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzB(zzduVar, zzaqtVar, (zzcr) obj);
            }
        }, this.zzm).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznx
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzasi zzasiVar = zzj;
                if (((zzlk) obj) == zzlk.DOWNLOADED) {
                    ((zzcr) zzarx.zzp(zzasiVar)).getClass();
                }
                return zzarx.zzi();
            }
        }, this.zzm);
    }

    public final /* synthetic */ zzasi zzk(Void r5) throws Exception {
        SharedPreferences zza2 = zzwe.zza(this.zzc, "gms_icing_mdd_manager_metadata", this.zzl);
        if (!zza2.contains("gms_icing_mdd_reset_trigger")) {
            SharedPreferences.Editor edit = zza2.edit();
            this.zzo.zzg();
            edit.putInt("gms_icing_mdd_reset_trigger", 0).commit();
        }
        int i = zza2.getInt("gms_icing_mdd_reset_trigger", 0);
        this.zzo.zzg();
        if (i >= 0) {
            return zzarx.zzi();
        }
        zza2.edit().putInt("gms_icing_mdd_reset_trigger", 0).commit();
        zzuw.zza("%s Received reset trigger. Clearing all Mdd data.", "MDDManager");
        zzasi zzb2 = this.zzf.zzb();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzon
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzm((Void) obj);
            }
        };
        return zzarx.zzo(zzb2, zzaeq.zzc(zzaqtVar), this.zzm);
    }

    public final /* synthetic */ zzasi zzl(Void r1) throws Exception {
        return this.zze.zzb();
    }

    public final /* synthetic */ zzasi zzm(Void r2) throws Exception {
        zzasi zza2 = this.zzg.zza();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzor
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzl((Void) obj);
            }
        };
        return zzarx.zzo(zza2, zzaeq.zzc(zzaqtVar), this.zzm);
    }

    public final /* synthetic */ zzasi zzn(Void r1) throws Exception {
        return this.zze.zzb();
    }

    public final /* synthetic */ zzasi zzo(Void r2) throws Exception {
        zzasi zza2 = this.zzg.zza();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzoc
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzn((Void) obj);
            }
        };
        return zzarx.zzo(zza2, zzaeq.zzc(zzaqtVar), this.zzm);
    }

    public final /* synthetic */ zzasi zzp(zzdu zzduVar, zzagb zzagbVar, zzaqt zzaqtVar, Void r4) throws Exception {
        return this.zzd.zzi(zzduVar, (zzdh) zzagbVar.zzb(), zzaqtVar);
    }

    public final /* synthetic */ zzasi zzq(Void r1) throws Exception {
        return this.zze.zzc();
    }

    public final /* synthetic */ zzasi zzr(boolean z, boolean z2, zzcr zzcrVar, Void r4) throws Exception {
        return (!z || z2) ? this.zzd.zzl(zzcrVar) : zzarx.zzh(zzajp.zze());
    }

    public final /* synthetic */ zzasi zzs(zzdu zzduVar, boolean z, Void r3) throws Exception {
        return this.zzd.zzj(zzduVar, z);
    }

    public final /* synthetic */ zzasi zzt(Void r3) throws Exception {
        final SharedPreferences zza2 = zzwe.zza(this.zzc, "gms_icing_mdd_manager_metadata", this.zzl);
        if (zza2.getBoolean("mdd_migrated_to_offroad", false)) {
            return zzarx.zzi();
        }
        zzuw.zza("%s Clearing MDD as device isn't migrated to offroad.", "MDDManager");
        zzasi zzG = zzG();
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznz
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                SharedPreferences sharedPreferences = zza2;
                int i = zzou.zza;
                sharedPreferences.edit().putBoolean("mdd_migrated_to_offroad", true).commit();
                return null;
            }
        };
        return zzarx.zzn(zzG, zzaeq.zza(zzaftVar), this.zzm);
    }

    public final /* synthetic */ zzasi zzu(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            return zzarx.zzi();
        }
        zzuw.zzn("%s Clearing MDD since FileManager failed or needs migration.", "MDDManager");
        return zzG();
    }

    public final /* synthetic */ zzasi zzv(Void r2) throws Exception {
        zzasi zzh = this.zzf.zzh();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzot
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzu((Boolean) obj);
            }
        };
        return zzarx.zzo(zzh, zzaeq.zzc(zzaqtVar), this.zzm);
    }

    public final /* synthetic */ zzasi zzw(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            return zzarx.zzi();
        }
        zzuw.zzn("%s Clearing MDD since FilesMetadata failed or needs migration.", "MDDManager");
        return zzG();
    }

    public final /* synthetic */ zzasi zzx(Void r2) throws Exception {
        zzasi zzc = this.zzg.zzc();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznq
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzou.this.zzw((Boolean) obj);
            }
        };
        return zzarx.zzo(zzc, zzaeq.zzc(zzaqtVar), this.zzm);
    }

    public final /* synthetic */ zzasi zzy(Void r1) throws Exception {
        return this.zze.zzf();
    }

    public final /* synthetic */ zzasi zzz(Void r3) throws Exception {
        this.zzo.zzm();
        return zzwu.zzc(this.zzp.zzb()).zza(IOException.class, new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznt
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                int i = zzou.zza;
                zzuw.zzd((IOException) obj, "Failed to update days since last maintenance", new Object[0]);
                return zzagb.zzf(-1);
            }
        }, zzasq.zzb()).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zznv
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzagb zzagbVar = (zzagb) obj;
                int i = zzou.zza;
                if (!zzagbVar.zzc()) {
                    return -1;
                }
                Integer num = (Integer) zzagbVar.zza();
                if (num.intValue() < 0) {
                    return -1;
                }
                return num;
            }
        }, zzasq.zzb());
    }
}
