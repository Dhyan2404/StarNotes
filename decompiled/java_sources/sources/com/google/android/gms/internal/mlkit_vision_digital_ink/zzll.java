package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import com.google.firebase.installations.local.IidStore;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzll {
    private final Context zza;
    private final zzlm zzb;
    private final zzrn zzc;
    private final zzyg zzd;
    private final zzagb zze;
    private final Executor zzf;
    private final zzagb zzg;
    private final zzagb zzh;
    private final zzbq zzi;
    private final zzwt zzj = zzwt.zza();
    private final zzsp zzk;
    private final zzgs zzl;
    private final zzuz zzm;
    private final zzut zzn;

    public zzll(Context context, zzuz zzuzVar, zzsp zzspVar, zzlm zzlmVar, zzrn zzrnVar, zzgs zzgsVar, zzagb zzagbVar, Executor executor, zzagb zzagbVar2, zzyg zzygVar, zzagb zzagbVar3, zzut zzutVar, zzbq zzbqVar, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.zza = context;
        this.zzm = zzuzVar;
        this.zzk = zzspVar;
        this.zzb = zzlmVar;
        this.zzc = zzrnVar;
        this.zzl = zzgsVar;
        this.zze = zzagbVar;
        this.zzf = executor;
        this.zzg = zzagbVar2;
        this.zzd = zzygVar;
        this.zzh = zzagbVar3;
        this.zzn = zzutVar;
        this.zzi = zzbqVar;
    }

    public static final /* synthetic */ zzasi zzaA(zzcr zzcrVar, Void r1) throws Exception {
        zzcrVar.zzq();
        return zzarx.zzi();
    }

    public static final /* synthetic */ zzasi zzaB(zzasi zzasiVar, Void r1) throws Exception {
        zzcr zzcrVar = (zzcr) zzarx.zzp(zzasiVar);
        if (zzcrVar == null) {
            return zzarx.zzi();
        }
        zzajm.zzr(zzcrVar);
        return zzarx.zzi();
    }

    private final Uri zzaC(zzck zzckVar, zzea zzeaVar, zzee zzeeVar) throws zzvk {
        Uri zze = zzvm.zze(this.zza, zzeaVar.zzm(), zzeeVar.zzj(), zzckVar.zzk(), this.zzk, this.zzg, false);
        if (zze != null) {
            return zze;
        }
        zzuw.zzf("%s: Failed to get file uri!", "FileGroupManager");
        throw new zzvk(28, "Failed to get local file uri");
    }

    @RequiresApi(21)
    private final zzasi zzaD(zzcr zzcrVar) {
        zzagb zzd;
        if (!zzcrVar.zzC()) {
            return zzarx.zzi();
        }
        try {
            zzvu.zzf(this.zza, this.zzg, zzcrVar, this.zzd);
            final List zzu = zzcrVar.zzu();
            zzia zziaVar = new zzagh() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzia
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagh
                public final boolean zza(Object obj) {
                    return ((zzck) obj).zzy() == 2;
                }
            };
            Iterator it2 = zzu.iterator();
            it2.getClass();
            while (true) {
                if (!it2.hasNext()) {
                    zzd = zzagb.zzd();
                    break;
                }
                Object next = it2.next();
                if (zziaVar.zza(next)) {
                    zzd = zzagb.zzf(next);
                    break;
                }
            }
            if (zzd.zzc()) {
                return zzarx.zzg(new UnsupportedOperationException("Preserve File Paths is invalid with Android Blob Sharing"));
            }
            final zzajp zzd2 = zzd(zzcrVar);
            zzasi zzl = zzl(zzcrVar);
            zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzib
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzll.this.zzs(zzu, zzd2, (zzajp) obj);
                }
            };
            zzasi zzo = zzarx.zzo(zzl, zzaeq.zzc(zzaqtVar), this.zzf);
            zzlj zzljVar = new zzlj(this, zzcrVar);
            zzarx.zzr(zzo, zzaeq.zzd(zzljVar), this.zzf);
            return zzo;
        } catch (IOException e) {
            zzbg zzbgVar = new zzbg();
            zzbgVar.zzb(zzbh.UNABLE_TO_REMOVE_SYMLINK_STRUCTURE);
            zzbgVar.zzc("Unable to cleanup symlink structure");
            zzbgVar.zza(e);
            return zzarx.zzg(zzbgVar.zze());
        }
    }

    private final zzasi zzaE(final zzcr zzcrVar, final boolean z, final boolean z2, final int i, final int i2) {
        if (i >= i2) {
            return z ? zzarx.zzh(zzlk.FAILED) : z2 ? zzarx.zzh(zzlk.PENDING) : zzarx.zzh(zzlk.DOWNLOADED);
        }
        final zzck zzh = zzcrVar.zzh(i);
        if (zzvu.zzj(zzh)) {
            return zzaE(zzcrVar, z, z2, i + 1, i2);
        }
        return zzwu.zzc(this.zzc.zzd(zzrp.zza(zzh, zzcrVar.zzE()))).zzb(zzro.class, new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjh
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzuw.zzi("%s: Encountered SharedFileMissingException for group: %s", "FileGroupManager", zzcrVar.zzq());
                return zzarx.zzh(zzds.NONE);
            }
        }, this.zzf).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzji
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzD(zzh, zzcrVar, z, z2, i, i2, (zzds) obj);
            }
        }, this.zzf);
    }

    private final zzasi zzaF(final zzaqt zzaqtVar) {
        final ArrayList arrayList = new ArrayList();
        zzasi zzd = this.zzb.zzd();
        zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkc
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzH(arrayList, zzaqtVar, (List) obj);
            }
        };
        return zzarx.zzo(zzd, zzaeq.zzc(zzaqtVar2), this.zzf);
    }

    private final zzasi zzaG(zzdu zzduVar, final zzbj zzbjVar, long j, String str) {
        final zzapf zza = zzapg.zza();
        zza.zzc(zzduVar.zzg());
        zza.zzf(zzduVar.zzh());
        zza.zza(j);
        zza.zzg(str);
        zzlm zzlmVar = this.zzb;
        zzdt zzdtVar = (zzdt) zzduVar.zzO();
        zzdtVar.zza(false);
        zzasi zzg = zzlmVar.zzg((zzdu) zzdtVar.zzx());
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhv
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzapf zzapfVar = zza;
                zzbj zzbjVar2 = zzbjVar;
                zzcr zzcrVar = (zzcr) obj;
                if (zzcrVar != null) {
                    zzapfVar.zzd(zzcrVar.zzc());
                }
                zzbjVar2.zza().zza();
                return zzarx.zzi();
            }
        };
        return zzarx.zzo(zzg, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    private final zzasi zzaH(final zzcr zzcrVar, final int i, final int i2) {
        if (i >= i2) {
            return zzarx.zzh(Boolean.TRUE);
        }
        zzck zzh = zzcrVar.zzh(i);
        if (zzvu.zzj(zzh)) {
            return zzaH(zzcrVar, i + 1, i2);
        }
        zzasi zzy = this.zzc.zzy(zzrp.zza(zzh, zzcrVar.zzE()));
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjf
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzS(zzcrVar, i, i2, (Boolean) obj);
            }
        };
        return zzarx.zzo(zzy, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    private final zzasi zzaI(final zzcr zzcrVar, final zzck zzckVar, zzea zzeaVar, long j) {
        zzasi zzB = this.zzc.zzB(zzeaVar, j);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzir
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzad(zzckVar, zzcrVar, (Boolean) obj);
            }
        };
        return zzarx.zzo(zzB, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    private static boolean zzaJ(zzcr zzcrVar, zzcr zzcrVar2) {
        return zzcrVar2.zze() == zzcrVar.zze() && zzcrVar2.zzt().equals(zzcrVar.zzt()) && zzcrVar2.zzc() == zzcrVar.zzc() && zzaK(zzcrVar, zzcrVar2) && zzcrVar2.zzg() == zzcrVar.zzg() && zzcrVar2.zzf() == zzcrVar.zzf() && zzcrVar2.zzm().equals(zzcrVar.zzm()) && zzcrVar2.zzE() == zzcrVar.zzE() && zzcrVar2.zzF() == zzcrVar.zzF() && zzcrVar2.zzx().equals(zzcrVar.zzx());
    }

    private static boolean zzaK(zzcr zzcrVar, zzcr zzcrVar2) {
        return zzcrVar.zzu().equals(zzcrVar2.zzu());
    }

    private final boolean zzaL(String str) {
        try {
            this.zza.getPackageManager().getApplicationInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private static boolean zzaM(zzee zzeeVar, long j) {
        return j > zzeeVar.zzc();
    }

    private static final void zzaN(List list, zzdu zzduVar) throws zzbj, zzv {
        zzuw.zzg("%s downloadFileGroup %s %s can't finish!", "FileGroupManager", zzduVar.zzg(), zzduVar.zzh());
        zzv.zzc(list, zzagb.zzd(), "Failed to download file group %s", zzduVar.zzg());
        zzuw.zzf("%s: An unknown error has occurred during download", "FileGroupManager");
        zzbg zzbgVar = new zzbg();
        zzbgVar.zzb(zzbh.UNKNOWN_ERROR);
        throw zzbgVar.zze();
    }

    private static void zzaO(int i, zzuz zzuzVar, zzcr zzcrVar) {
        zzcrVar.zzq();
        zzcrVar.zzc();
        zzcrVar.zze();
        zzcrVar.zzt();
    }

    private static void zzaP(zzuz zzuzVar, zzcr zzcrVar, zzck zzckVar, int i) {
        zzaph zza = zzapi.zza();
        zza.zzh(i);
        zza.zzb(zzcrVar.zzq());
        zza.zzc(zzcrVar.zzc());
        zza.zza(zzcrVar.zze());
        zza.zzg(zzcrVar.zzt());
        zza.zzd(zzckVar.zzm());
    }

    public static final /* synthetic */ zzasi zzaw(zzcr zzcrVar, zzcr zzcrVar2) throws Exception {
        long currentTimeMillis = (zzcrVar2 == null || !zzaK(zzcrVar, zzcrVar2)) ? System.currentTimeMillis() : zzcrVar2.zzi().zze();
        zzcl zzclVar = (zzcl) zzcrVar.zzi().zzO();
        zzclVar.zzd(currentTimeMillis);
        zzcm zzcmVar = (zzcm) zzclVar.zzx();
        zzcq zzcqVar = (zzcq) zzcrVar.zzO();
        zzcqVar.zzd(zzcmVar);
        return zzarx.zzh((zzcr) zzcqVar.zzx());
    }

    public static final /* synthetic */ zzasi zzax(List list, zzcr zzcrVar, zzdu zzduVar, zzlk zzlkVar) throws Exception {
        if (zzlkVar != zzlk.DOWNLOADED) {
            zzaN(list, zzduVar);
        }
        zzapf zza = zzapg.zza();
        zza.zzc(zzduVar.zzg());
        zza.zzf(zzduVar.zzh());
        zza.zzd(zzcrVar.zzc());
        zza.zza(zzcrVar.zze());
        zza.zzg(zzcrVar.zzt());
        return zzarx.zzh(zzcrVar);
    }

    public static final /* synthetic */ zzasi zzay(zzdu zzduVar, zzcr zzcrVar, Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            zzajm.zzr(zzcrVar);
            return zzarx.zzi();
        }
        zzuw.zzg("%s: Failed to remove pending version for group: '%s'; account: '%s'", "FileGroupManager", zzduVar.zzg(), zzduVar.zzf());
        return zzarx.zzg(new IOException("Failed to remove pending group: ".concat(String.valueOf(zzduVar.zzg()))));
    }

    public static final /* synthetic */ zzasi zzaz(zzdu zzduVar, zzcr zzcrVar, Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            return zzarx.zzi();
        }
        zzuw.zzg("%s: Failed to add to stale for group: '%s'; account: '%s'", "FileGroupManager", zzduVar.zzg(), zzduVar.zzf());
        return zzarx.zzg(new IOException("Failed to add downloaded group to stale: ".concat(String.valueOf(zzduVar.zzg()))));
    }

    public static /* synthetic */ zzasi zzf(final zzll zzllVar, zzagb zzagbVar) {
        if (!zzagbVar.zzc()) {
            return zzarx.zzi();
        }
        zzasi zza = zzllVar.zzb.zza((zzcr) zzagbVar.zza());
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzih
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                ((Boolean) obj).booleanValue();
                return zzarx.zzi();
            }
        };
        return zzarx.zzo(zza, zzaeq.zzc(zzaqtVar), zzllVar.zzf);
    }

    public final /* synthetic */ zzasi zzA(zzdu zzduVar, zzbj zzbjVar, zzcr zzcrVar, Void r10) throws Exception {
        return zzaG(zzduVar, zzbjVar, zzcrVar.zze(), zzcrVar.zzt());
    }

    public final /* synthetic */ zzasi zzB(zzdu zzduVar, zzbj zzbjVar, zzcr zzcrVar, Void r10) throws Exception {
        return zzaG(zzduVar, zzbjVar, zzcrVar.zze(), zzcrVar.zzt());
    }

    public final /* synthetic */ zzasi zzC(AtomicReference atomicReference, final zzdu zzduVar, final Exception exc) throws Exception {
        final zzcr zzcrVar = (zzcr) atomicReference.get();
        if (zzcrVar == null) {
            zzcrVar = zzcr.zzk();
        }
        zzasi zzi = zzarx.zzi();
        if (exc instanceof zzbj) {
            zzuw.zza("%s: Logging DownloadException", "FileGroupManager");
            final zzbj zzbjVar = (zzbj) exc;
            zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzit
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzll.this.zzA(zzduVar, zzbjVar, zzcrVar, (Void) obj);
                }
            };
            zzi = zzarx.zzo(zzi, zzaeq.zzc(zzaqtVar), this.zzf);
        } else if (exc instanceof zzv) {
            zzuw.zza("%s: Logging AggregateException", "FileGroupManager");
            zzajm zza = ((zzv) exc).zza();
            int size = zza.size();
            for (int i = 0; i < size; i++) {
                Throwable th = (Throwable) zza.get(i);
                if (th instanceof zzbj) {
                    final zzbj zzbjVar2 = (zzbj) th;
                    zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zziu
                        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                        public final zzasi zza(Object obj) {
                            return zzll.this.zzB(zzduVar, zzbjVar2, zzcrVar, (Void) obj);
                        }
                    };
                    zzi = zzarx.zzo(zzi, zzaeq.zzc(zzaqtVar2), this.zzf);
                } else {
                    zzuw.zzf("%s: Expecting DownloadException's in AggregateException", "FileGroupManager");
                }
            }
        }
        zzaqt zzaqtVar3 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zziv
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                throw exc;
            }
        };
        return zzarx.zzo(zzi, zzaeq.zzc(zzaqtVar3), this.zzf);
    }

    public final /* synthetic */ zzasi zzD(zzck zzckVar, zzcr zzcrVar, boolean z, boolean z2, int i, int i2, zzds zzdsVar) throws Exception {
        if (zzdsVar == zzds.DOWNLOAD_COMPLETE) {
            zzuw.zzb("%s: File %s downloaded for group: %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
            return zzaE(zzcrVar, z, z2, i + 1, i2);
        }
        if (zzdsVar == zzds.SUBSCRIBED || zzdsVar == zzds.DOWNLOAD_IN_PROGRESS) {
            zzuw.zzb("%s: File %s not downloaded for group: %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
            return zzaE(zzcrVar, z, true, i + 1, i2);
        }
        zzuw.zzb("%s: File %s not downloaded for group: %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
        return zzaE(zzcrVar, true, z2, i + 1, i2);
    }

    public final /* synthetic */ zzasi zzE(zzdu zzduVar) throws Exception {
        final zzasi zzj = zzj(zzduVar, false);
        final zzasi zzj2 = zzj(zzduVar, true);
        return zzwx.zzb(zzj, zzj2).zzb(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkn
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzarx.zzh(zzsc.zzc((zzcr) zzarx.zzp(zzasi.this), (zzcr) zzarx.zzp(zzj2)));
            }
        }, this.zzf);
    }

    public final /* synthetic */ zzasi zzG(final zzcr zzcrVar, zzdu zzduVar, zzcr zzcrVar2) throws Exception {
        if (zzcrVar2 != null) {
            return zzarx.zzh(Boolean.valueOf(zzaJ(zzcrVar, zzcrVar2)));
        }
        zzdt zzdtVar = (zzdt) zzduVar.zzO();
        zzdtVar.zza(true);
        zzasi zzg = this.zzb.zzg((zzdu) zzdtVar.zzx());
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjs
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzasi zzh;
                zzh = zzarx.zzh(Boolean.valueOf(r1 == null ? false : zzll.zzaJ(zzcr.this, (zzcr) obj)));
                return zzh;
            }
        };
        return zzarx.zzo(zzg, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzH(List list, final zzaqt zzaqtVar, List list2) throws Exception {
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            final zzdu zzduVar = (zzdu) it2.next();
            zzasi zzg = this.zzb.zzg(zzduVar);
            zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzif
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    zzcr zzcrVar = (zzcr) obj;
                    return zzcrVar != null ? zzaqt.this.zza(zzsb.zzc(zzduVar, zzcrVar)) : zzarx.zzi();
                }
            };
            list.add(zzarx.zzo(zzg, zzaeq.zzc(zzaqtVar2), this.zzf));
        }
        return zzwx.zza(list).zza(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzig
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return null;
            }
        }, this.zzf);
    }

    public final /* synthetic */ zzasi zzI(zzcr zzcrVar, zzsb zzsbVar, zzro zzroVar) throws Exception {
        zzuw.zzf("%s: Missing file. Logging and deleting file group.", "FileGroupManager");
        zzaO(1062, this.zzm, zzcrVar);
        this.zzi.zzj();
        zzasi zzi = this.zzb.zzi(zzsbVar.zzb());
        zzkv zzkvVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkv
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzarx.zzi();
            }
        };
        return zzarx.zzo(zzi, zzaeq.zzc(zzkvVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzJ(final zzsb zzsbVar) throws Exception {
        final zzcr zza = zzsbVar.zza();
        for (zzck zzckVar : zza.zzu()) {
            zzasi zzw = this.zzc.zzw(zzrp.zza(zzckVar, zza.zzE()), zzckVar);
            zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zziy
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzll.this.zzI(zza, zzsbVar, (zzro) obj);
                }
            };
            zzarx.zze(zzw, zzro.class, zzaeq.zzc(zzaqtVar), this.zzf);
        }
        return zzarx.zzi();
    }

    public final /* synthetic */ zzasi zzK(zzdu zzduVar, final zzdu zzduVar2, final zzcr zzcrVar, Void r4) throws Exception {
        zzasi zzi = this.zzb.zzi(zzduVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjz
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.zzay(zzduVar2, zzcrVar, (Boolean) obj);
            }
        };
        return zzarx.zzo(zzi, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzL(final zzdu zzduVar, final zzcr zzcrVar, Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            zzuw.zzg("%s: Failed to remove the downloaded version for group: '%s'; account: '%s'", "FileGroupManager", zzduVar.zzg(), zzduVar.zzf());
            return zzarx.zzg(new IOException("Failed to remove downloaded group: ".concat(String.valueOf(zzduVar.zzg()))));
        }
        zzasi zza = this.zzb.zza(zzcrVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzli
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.zzaz(zzduVar, zzcrVar, (Boolean) obj);
            }
        };
        return zzarx.zzo(zza, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzM(zzcr zzcrVar, zzaka zzakaVar) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (zzck zzckVar : zzcrVar.zzu()) {
            if (!zzvu.zzj(zzckVar)) {
                zzea zza = zzrp.zza(zzckVar, zzcrVar.zzE());
                if (!zzakaVar.contains(zza)) {
                    arrayList.add(this.zzc.zza(zza));
                }
            }
        }
        return zzwx.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zziw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return null;
            }
        }, this.zzf);
    }

    public final /* synthetic */ zzasi zzN(final zzcr zzcrVar, Void r4) throws Exception {
        if (zzcrVar == null) {
            return zzarx.zzi();
        }
        final zzajz zzajzVar = new zzajz();
        zzasi zzc = this.zzb.zzc();
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzks
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzajz zzajzVar2 = zzajz.this;
                Iterator it2 = ((List) obj).iterator();
                while (it2.hasNext()) {
                    zzcr zza = ((zzsb) it2.next()).zza();
                    Iterator it3 = zza.zzu().iterator();
                    while (it3.hasNext()) {
                        zzajzVar2.zze(zzrp.zza((zzck) it3.next(), zza.zzE()));
                    }
                }
                return zzajzVar2.zzf();
            }
        };
        zzasi zzn = zzarx.zzn(zzc, zzaeq.zza(zzaftVar), this.zzf);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlf
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzM(zzcrVar, (zzaka) obj);
            }
        };
        return zzarx.zzo(zzn, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzO(boolean z, zzdu zzduVar, final zzdu zzduVar2, final zzcr zzcrVar, final zzcr zzcrVar2) throws Exception {
        zzasi zzi = zzarx.zzi();
        if (zzcrVar2 != null) {
            zzasi zzi2 = this.zzb.zzi(zzduVar);
            zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkj
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzll.this.zzL(zzduVar2, zzcrVar2, (Boolean) obj);
                }
            };
            zzi = zzarx.zzo(zzi2, zzaeq.zzc(zzaqtVar), this.zzf);
        }
        zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkk
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzN(zzcrVar, (Void) obj);
            }
        };
        return zzarx.zzo(zzi, zzaeq.zzc(zzaqtVar2), this.zzf);
    }

    public final /* synthetic */ zzasi zzP(final zzdu zzduVar, boolean z, final zzcr zzcrVar, Void r10) throws Exception {
        zzdt zzdtVar = (zzdt) zzduVar.zzO();
        zzdtVar.zza(true);
        final zzdu zzduVar2 = (zzdu) zzdtVar.zzx();
        zzasi zzg = this.zzb.zzg(zzduVar2);
        final boolean z2 = false;
        zzaqt zzaqtVar = new zzaqt(z2, zzduVar2, zzduVar, zzcrVar) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzja
            public final /* synthetic */ zzdu zzb;
            public final /* synthetic */ zzdu zzc;
            public final /* synthetic */ zzcr zzd;

            {
                this.zzb = zzduVar2;
                this.zzc = zzduVar;
                this.zzd = zzcrVar;
            }

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzO(false, this.zzb, this.zzc, this.zzd, (zzcr) obj);
            }
        };
        return zzarx.zzo(zzg, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzQ(final zzdu zzduVar, final zzdu zzduVar2, boolean z, final zzcr zzcrVar) throws Exception {
        zzasi zzi = zzarx.zzi();
        if (zzcrVar != null) {
            zzasi zzi2 = zzarx.zzi();
            if (zzcrVar.zzF() != 1 && this.zzh.zzc()) {
                zzi2 = ((zzwy) ((zzaha) this.zzh.zza()).zza()).zza();
            }
            zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzld
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzll.this.zzK(zzduVar, zzduVar2, zzcrVar, (Void) obj);
                }
            };
            zzi = zzarx.zzo(zzi2, zzaeq.zzc(zzaqtVar), this.zzf);
        }
        final boolean z2 = false;
        zzaqt zzaqtVar2 = new zzaqt(zzduVar2, z2, zzcrVar) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzle
            public final /* synthetic */ zzdu zzb;
            public final /* synthetic */ zzcr zzc;

            {
                this.zzc = zzcrVar;
            }

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzP(this.zzb, false, this.zzc, (Void) obj);
            }
        };
        return zzarx.zzo(zzi, zzaeq.zzc(zzaqtVar2), this.zzf);
    }

    public final /* synthetic */ zzasi zzR(zzdu zzduVar, final zzck zzckVar, final zzea zzeaVar, zzdh zzdhVar, final zzcr zzcrVar, Void r13) throws Exception {
        try {
            zzasi zzA = this.zzc.zzA(zzduVar, zzckVar, zzeaVar, zzdhVar, zzcrVar.zzd(), zzcrVar.zzv());
            zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjy
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzll.this.zzar(zzcrVar, zzckVar, zzeaVar);
                }
            };
            return zzarx.zzo(zzA, zzaeq.zzc(zzaqtVar), this.zzf);
        } catch (RuntimeException e) {
            zzbg zzbgVar = new zzbg();
            zzbgVar.zzb(zzbh.UNKNOWN_ERROR);
            zzbgVar.zza(e);
            return zzarx.zzg(zzbgVar.zze());
        }
    }

    public final /* synthetic */ zzasi zzS(zzcr zzcrVar, int i, int i2, Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            return zzaH(zzcrVar, i + 1, i2);
        }
        zzuw.zzi("%s: Subscribing to file failed for group: %s", "FileGroupManager", zzcrVar.zzq());
        return zzarx.zzh(Boolean.FALSE);
    }

    public final /* synthetic */ zzasi zzT(zzcr zzcrVar) throws Exception {
        return (zzcrVar == null || zzcrVar.zzF() == 1) ? zzarx.zzh(Boolean.TRUE) : ((zzwy) ((zzaha) this.zzh.zza()).zza()).zzb();
    }

    public final /* synthetic */ zzasi zzU(List list) throws Exception {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            zzdu zzduVar = (zzdu) it2.next();
            if (!zzduVar.zzl()) {
                zzasi zzg = this.zzb.zzg(zzduVar);
                zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkw
                    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                    public final zzasi zza(Object obj) {
                        return zzll.this.zzT((zzcr) obj);
                    }
                };
                arrayList.add(zzarx.zzo(zzg, zzaeq.zzc(zzaqtVar), this.zzf));
            }
        }
        return zzwx.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkx
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return null;
            }
        }, this.zzf);
    }

    public final /* synthetic */ zzasi zzV(zzea zzeaVar, zzcr zzcrVar, zzck zzckVar, zzro zzroVar) throws Exception {
        zzuw.zzi("%s: Shared file not found, newFileKey = %s", "FileGroupManager", zzeaVar);
        zzaP(this.zzm, zzcrVar, zzckVar, 26);
        return zzarx.zzg(zzroVar);
    }

    public final /* synthetic */ zzasi zzW(zzcr zzcrVar, zzck zzckVar, zzea zzeaVar, long j, Boolean bool) throws Exception {
        return !bool.booleanValue() ? zzaI(zzcrVar, zzckVar, zzeaVar, j) : zzarx.zzi();
    }

    public final /* synthetic */ zzasi zzX(zzcr zzcrVar, zzck zzckVar, zzea zzeaVar, long j, Boolean bool) throws Exception {
        return bool.booleanValue() ? zzarx.zzi() : zzaI(zzcrVar, zzckVar, zzeaVar, j);
    }

    public final /* synthetic */ zzasi zzY(zzcr zzcrVar, zzck zzckVar, zzea zzeaVar, long j, Boolean bool) throws Exception {
        return bool.booleanValue() ? zzarx.zzi() : zzaI(zzcrVar, zzckVar, zzeaVar, j);
    }

    public final /* synthetic */ zzasi zzZ(final zzck zzckVar, final zzcr zzcrVar, final zzea zzeaVar, zzee zzeeVar) throws Exception {
        String zzj = zzckVar.zzj();
        final long zzf = zzcrVar.zzf();
        if (zzeeVar.zzd() != zzds.DOWNLOAD_COMPLETE) {
            return zzarx.zzi();
        }
        if (zzeeVar.zzq()) {
            if (!zzaM(zzeeVar, zzf)) {
                return zzarx.zzi();
            }
            zzuw.zzb("%s: File already shared after downloaded but lease has to be updated for file %s, filegroup %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
            return zzarx.zzo(zzav(zzcrVar, zzckVar, zzeeVar, zzeaVar, zzeeVar.zzi(), zzf, 27), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjb
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzll.this.zzW(zzcrVar, zzckVar, zzeaVar, zzf, (Boolean) obj);
                }
            }), this.zzf);
        }
        try {
            if (!TextUtils.isEmpty(zzj)) {
                Uri zzaC = zzaC(zzckVar, zzeaVar, zzeeVar);
                if (zzvl.zzb(this.zza, zzj, zzcrVar, zzckVar, this.zzd)) {
                    zzuw.zzb("%s: Android sharing after downloaded, CASE 1 for file %s, filegroup %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
                    return zzarx.zzo(zzav(zzcrVar, zzckVar, zzeeVar, zzeaVar, zzj, zzf, 5), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjc
                        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                        public final zzasi zza(Object obj) {
                            return zzll.this.zzX(zzcrVar, zzckVar, zzeaVar, zzf, (Boolean) obj);
                        }
                    }), this.zzf);
                }
                if (zzckVar.zzy() == 2) {
                    zzuw.zzb("%s: Android sharing after downloaded, CASE 2 for file %s, filegroup %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
                    zzvl.zza(this.zza, zzj, zzaC, zzcrVar, zzckVar, this.zzd, true);
                    return zzarx.zzo(zzav(zzcrVar, zzckVar, zzeeVar, zzeaVar, zzj, zzf, 7), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjd
                        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                        public final zzasi zza(Object obj) {
                            return zzll.this.zzY(zzcrVar, zzckVar, zzeaVar, zzf, (Boolean) obj);
                        }
                    }), this.zzf);
                }
            }
            if (zzckVar.zzy() == 2) {
                zzaP(this.zzm, zzcrVar, zzckVar, 16);
            }
        } catch (zzvk e) {
            zzaP(this.zzm, zzcrVar, zzckVar, e.zza());
        }
        zzuw.zzb("%s: File couldn't be shared after download %s, filegroup %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
        return zzaI(zzcrVar, zzckVar, zzeaVar, zzf);
    }

    public final /* synthetic */ zzasi zzaa(zzea zzeaVar, zzcr zzcrVar, zzck zzckVar, zzro zzroVar) throws Exception {
        zzuw.zzi("%s: Shared file not found, newFileKey = %s", "FileGroupManager", zzeaVar);
        zzaP(this.zzm, zzcrVar, zzckVar, 26);
        return zzarx.zzg(zzroVar);
    }

    public final /* synthetic */ zzasi zzab(zzcr zzcrVar, zzck zzckVar, zzea zzeaVar, zzee zzeeVar) throws Exception {
        long zzf = zzcrVar.zzf();
        try {
        } catch (zzvk e) {
            zzaP(this.zzm, zzcrVar, zzckVar, e.zza());
        }
        if (zzeeVar.zzq()) {
            zzuw.zzb("%s: Android sharing CASE 1 for file %s, filegroup %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
            return zzarx.zzo(zzav(zzcrVar, zzckVar, zzeeVar, zzeaVar, zzeeVar.zzi(), zzf, 3), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkz
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzarx.zzi();
                }
            }), this.zzf);
        }
        String zzj = zzckVar.zzj();
        if (!TextUtils.isEmpty(zzj)) {
            if (zzvl.zzb(this.zza, zzj, zzcrVar, zzckVar, this.zzd)) {
                zzuw.zzb("%s: Android sharing CASE 2 for file %s, filegroup %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
                return zzarx.zzo(zzav(zzcrVar, zzckVar, zzeeVar, zzeaVar, zzj, zzf, 4), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzla
                    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                    public final zzasi zza(Object obj) {
                        return zzarx.zzi();
                    }
                }), this.zzf);
            }
            if (zzckVar.zzy() == 2 && zzeeVar.zzd() == zzds.DOWNLOAD_COMPLETE) {
                zzuw.zzb("%s: Android sharing CASE 3 for file %s, filegroup %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
                zzvl.zza(this.zza, zzj, zzaC(zzckVar, zzeaVar, zzeeVar), zzcrVar, zzckVar, this.zzd, false);
                return zzarx.zzo(zzav(zzcrVar, zzckVar, zzeeVar, zzeaVar, zzj, zzf, 6), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlb
                    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                    public final zzasi zza(Object obj) {
                        return zzarx.zzi();
                    }
                }), this.zzf);
            }
        }
        zzuw.zzb("%s: File couldn't be shared before download %s, filegroup %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
        return zzarx.zzi();
    }

    public final /* synthetic */ zzasi zzac(boolean z, zzcr zzcrVar, Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            return zzarx.zzg(new IOException("Unable to update file group metadata"));
        }
        if (z) {
            zzuu.zze(this.zzm).zzd(zzcrVar);
        }
        return zzarx.zzh(zzcrVar);
    }

    public final /* synthetic */ zzasi zzad(zzck zzckVar, zzcr zzcrVar, Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            zzuw.zzg("%s: Failed to set new state for file %s, filegroup %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
            zzaP(this.zzm, zzcrVar, zzckVar, 14);
        }
        return zzarx.zzi();
    }

    public final /* synthetic */ zzasi zzae(zzuu zzuuVar, zzcr zzcrVar, boolean z, final zzdu zzduVar, Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            return zzarx.zzi();
        }
        zzuuVar.zzb(zzcrVar);
        zzarx.zzh(Boolean.TRUE);
        zzasi zzi = this.zzb.zzi(zzduVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzis
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzdu zzduVar2 = zzduVar;
                if (!((Boolean) obj).booleanValue()) {
                    zzuw.zzg("%s: Failed to remove pending version for group: '%s'; account: '%s'", "FileGroupManager", zzduVar2.zzg(), zzduVar2.zzf());
                    return zzarx.zzg(new IOException("Failed to remove pending group: ".concat(String.valueOf(zzduVar2.zzg()))));
                }
                zzbg zzbgVar = new zzbg();
                zzbh zzbhVar = zzbh.CUSTOM_FILEGROUP_VALIDATION_FAILED;
                zzbgVar.zzb(zzbhVar);
                zzbgVar.zzc(zzbhVar.name());
                return zzarx.zzg(zzbgVar.zze());
            }
        };
        return zzarx.zzo(zzi, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzaf(final zzcr zzcrVar, Boolean bool) throws Exception {
        return !bool.booleanValue() ? zzwu.zzc(zzaD(zzcrVar)).zzb(zzbj.class, new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zziq
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzuw.zzq((zzbj) obj, "%s: Unable to correct isolated structure, returning null instead of group %s", "FileGroupManager", zzcr.this.zzq());
                return zzarx.zzi();
            }
        }, this.zzf) : zzarx.zzi();
    }

    public final /* synthetic */ zzasi zzag(zzsb zzsbVar) throws Exception {
        zzdu zzb = zzsbVar.zzb();
        final zzcr zza = zzsbVar.zza();
        if (!zzb.zzl() || !zzvu.zzi(zza)) {
            return zzarx.zzi();
        }
        this.zzi.zzo();
        return zzarx.zzo(!zzvu.zzi(zza) ? zzarx.zzh(Boolean.TRUE) : zzwu.zzc(zzl(zza)).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlc
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzll zzllVar = zzll.this;
                zzcr zzcrVar = zza;
                zzajp zze = zzllVar.zze(zzllVar.zzd(zzcrVar), (zzajp) obj);
                for (zzck zzckVar : zzcrVar.zzu()) {
                    if (!zze.containsKey(zzckVar)) {
                        zzuw.zzo("%s: Detected corruption of isolated structure for group %s %s", "FileGroupManager", zzcrVar.zzq(), zzckVar.zzm());
                        return Boolean.FALSE;
                    }
                }
                return Boolean.TRUE;
            }
        }, this.zzf), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzie
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzaf(zza, (Boolean) obj);
            }
        }), this.zzf);
    }

    public final /* synthetic */ zzasi zzah(zzcr zzcrVar, Void r2) throws Exception {
        return zzvu.zzi(zzcrVar) ? zzaD(zzcrVar) : zzarx.zzi();
    }

    public final /* synthetic */ zzasi zzai(final zzdu zzduVar, final zzcr zzcrVar, Void r5) throws Exception {
        final zzwu zzd = zzwu.zzc(this.zzb.zzg(zzduVar)).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjk
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzagb.zze((zzcr) obj);
            }
        }, this.zzf);
        return zzd.zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjl
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzam(zzduVar, zzcrVar, (zzagb) obj);
            }
        }, this.zzf).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjm
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return !((Boolean) obj).booleanValue() ? zzarx.zzg(new IOException("Failed to write updated group: ".concat(String.valueOf(zzduVar.zzg())))) : zzd;
            }
        }, this.zzf);
    }

    public final /* synthetic */ zzasi zzaj(boolean z, zzdu zzduVar, final zzagb zzagbVar) throws Exception {
        zzasi zzi = this.zzb.zzi(zzduVar);
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlg
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzagb zzagbVar2 = zzagbVar;
                ((Boolean) obj).booleanValue();
                return zzagbVar2;
            }
        };
        return zzarx.zzn(zzi, zzaeq.zza(zzaftVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzak(final zzuu zzuuVar, final zzcr zzcrVar, final zzdu zzduVar, boolean z, zzaqt zzaqtVar, final zzdu zzduVar2, final zzcr zzcrVar2, final boolean z2, zzlk zzlkVar) throws Exception {
        zzlk zzlkVar2 = zzlk.FAILED;
        if (zzlkVar == zzlkVar2) {
            zzuuVar.zzb(zzcrVar);
            return zzarx.zzh(zzlkVar2);
        }
        zzlk zzlkVar3 = zzlk.PENDING;
        if (zzlkVar == zzlkVar3) {
            zzuuVar.zzc(zzcrVar);
            return zzarx.zzh(zzlkVar3);
        }
        final boolean z3 = true;
        zzagg.zze(zzlkVar == zzlk.DOWNLOADED);
        final boolean z4 = true;
        return zzwu.zzc(zzaqtVar.zza(zzcrVar)).zze(new zzaqt(zzuuVar, zzcrVar, z4, zzduVar) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkl
            public final /* synthetic */ zzuu zzb;
            public final /* synthetic */ zzcr zzc;
            public final /* synthetic */ zzdu zzd;

            {
                this.zzd = zzduVar;
            }

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzae(this.zzb, this.zzc, true, this.zzd, (Boolean) obj);
            }
        }, this.zzf).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjt
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzah(zzcrVar, (Void) obj);
            }
        }, this.zzf).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzju
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzai(zzduVar2, zzcrVar2, (Void) obj);
            }
        }, this.zzf).zze(new zzaqt(z3, zzduVar) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjv
            public final /* synthetic */ zzdu zzb;

            {
                this.zzb = zzduVar;
            }

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzaj(true, this.zzb, (zzagb) obj);
            }
        }, this.zzf).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjw
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.zzf(zzll.this, (zzagb) obj);
            }
        }, this.zzf).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjx
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                boolean z5 = z2;
                zzuu zzuuVar2 = zzuuVar;
                zzcr zzcrVar3 = zzcrVar2;
                if (!z5) {
                    zzuuVar2.zza(zzcrVar3);
                }
                return zzlk.DOWNLOADED;
            }
        }, this.zzf);
    }

    public final /* synthetic */ zzasi zzal(zzcr zzcrVar, final zzlk zzlkVar) throws Exception {
        zzasi zzi = zzarx.zzi();
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkt
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzlk.this;
            }
        };
        return zzarx.zzn(zzi, zzaeq.zza(zzaftVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzam(zzdu zzduVar, zzcr zzcrVar, zzagb zzagbVar) throws Exception {
        return this.zzb.zzl(zzduVar, zzcrVar);
    }

    public final /* synthetic */ zzasi zzan(zzdu zzduVar, zzcr zzcrVar, zzcr zzcrVar2) throws Exception {
        return this.zzb.zzl(zzduVar, zzcrVar);
    }

    public final zzasi zzao() {
        return zzaF(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzlh
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzJ((zzsb) obj);
            }
        });
    }

    public final zzasi zzap(final zzdu zzduVar, boolean z) throws zzro, IOException {
        zzdt zzdtVar = (zzdt) zzduVar.zzO();
        final boolean z2 = false;
        zzdtVar.zza(false);
        final zzdu zzduVar2 = (zzdu) zzdtVar.zzx();
        zzasi zzg = this.zzb.zzg(zzduVar2);
        zzaqt zzaqtVar = new zzaqt(zzduVar2, zzduVar, z2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzip
            public final /* synthetic */ zzdu zzb;
            public final /* synthetic */ zzdu zzc;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzQ(this.zzb, this.zzc, false, (zzcr) obj);
            }
        };
        return zzarx.zzo(zzg, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final zzasi zzaq() {
        zzasi zzd = this.zzb.zzd();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzky
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzU((List) obj);
            }
        };
        return zzarx.zzo(zzd, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final zzasi zzar(final zzcr zzcrVar, final zzck zzckVar, final zzea zzeaVar) {
        zzasi zzg = this.zzc.zzg(zzeaVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzil
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzV(zzeaVar, zzcrVar, zzckVar, (zzro) obj);
            }
        };
        zzasi zze = zzarx.zze(zzg, zzro.class, zzaeq.zzc(zzaqtVar), this.zzf);
        zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzim
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzZ(zzckVar, zzcrVar, zzeaVar, (zzee) obj);
            }
        };
        return zzarx.zzo(zze, zzaeq.zzc(zzaqtVar2), this.zzf);
    }

    @TargetApi(21)
    public final zzasi zzas() {
        return zzaF(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzka
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzag((zzsb) obj);
            }
        });
    }

    public final zzasi zzat(zzdu zzduVar, final zzcr zzcrVar, boolean z, final zzaqt zzaqtVar, final zzuu zzuuVar) {
        zzuw.zzb("%s: Verify group: %s, remove pending version: %s", "FileGroupManager", zzcrVar.zzq(), Boolean.TRUE);
        zzdt zzdtVar = (zzdt) zzduVar.zzO();
        zzdtVar.zza(true);
        final zzdu zzduVar2 = (zzdu) zzdtVar.zzx();
        zzdt zzdtVar2 = (zzdt) zzduVar.zzO();
        zzdtVar2.zza(false);
        final zzdu zzduVar3 = (zzdu) zzdtVar2.zzx();
        final boolean zzo = zzcrVar.zzi().zzo();
        long currentTimeMillis = System.currentTimeMillis();
        zzcl zzclVar = (zzcl) zzcrVar.zzi().zzO();
        zzclVar.zzc(currentTimeMillis);
        zzcm zzcmVar = (zzcm) zzclVar.zzx();
        zzcq zzcqVar = (zzcq) zzcrVar.zzO();
        zzcqVar.zzd(zzcmVar);
        final zzcr zzcrVar2 = (zzcr) zzcqVar.zzx();
        final boolean z2 = true;
        return zzwu.zzc(zzk(zzcrVar)).zze(new zzaqt(zzuuVar, zzcrVar, zzduVar3, z2, zzaqtVar, zzduVar2, zzcrVar2, zzo) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkf
            public final /* synthetic */ zzuu zzb;
            public final /* synthetic */ zzcr zzc;
            public final /* synthetic */ zzdu zzd;
            public final /* synthetic */ zzaqt zze;
            public final /* synthetic */ zzdu zzf;
            public final /* synthetic */ zzcr zzg;
            public final /* synthetic */ boolean zzh;

            {
                this.zze = zzaqtVar;
                this.zzf = zzduVar2;
                this.zzg = zzcrVar2;
                this.zzh = zzo;
            }

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzak(this.zzb, this.zzc, this.zzd, true, this.zze, this.zzf, this.zzg, this.zzh, (zzlk) obj);
            }
        }, this.zzf).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkg
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzal(zzcrVar, (zzlk) obj);
            }
        }, this.zzf);
    }

    public final /* synthetic */ zzasi zzau(zzck zzckVar, zzcr zzcrVar, int i, long j, Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            zzuw.zzg("%s: Failed to set new state for file %s, filegroup %s", "FileGroupManager", zzckVar.zzm(), zzcrVar.zzq());
            zzaP(this.zzm, zzcrVar, zzckVar, 15);
            return zzarx.zzh(Boolean.FALSE);
        }
        zzaph zza = zzapi.zza();
        zza.zzh(i);
        zza.zzb(zzcrVar.zzq());
        zza.zzc(zzcrVar.zzc());
        zza.zza(zzcrVar.zze());
        zza.zzg(zzcrVar.zzt());
        zza.zzd(zzckVar.zzm());
        zza.zze(true);
        zza.zzf(j);
        return zzarx.zzh(Boolean.TRUE);
    }

    public final zzasi zzav(final zzcr zzcrVar, final zzck zzckVar, zzee zzeeVar, zzea zzeaVar, String str, long j, final int i) throws zzvk {
        String str2;
        int i2;
        str2 = "";
        if (zzeeVar.zzq() && !zzaM(zzeeVar, j)) {
            zzaP(this.zzm, zzcrVar, zzckVar, i);
            return zzarx.zzh(Boolean.TRUE);
        }
        final long max = Math.max(j, zzeeVar.zzc());
        Context context = this.zza;
        zzyg zzygVar = this.zzd;
        try {
            zzyx zzb = zzyy.zzb(context);
            zzb.zzd(str, max);
            OutputStream outputStream = (OutputStream) zzygVar.zzc(zzb.zza(), zzaae.zza());
            i2 = 0;
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (zzzi unused) {
            zzuw.zzg("%s: Failed to share after download for file %s, file group %s due to LimitExceededException", "AndroidSharingUtil", zzckVar.zzm(), zzcrVar.zzq());
            str2 = String.format("System limit exceeded for file %s, group %s", zzckVar.zzm(), zzcrVar.zzq());
            i2 = 25;
        } catch (zzzk unused2) {
            zzuw.zzg("%s: Malformed lease uri file %s, file group %s", "AndroidSharingUtil", zzckVar.zzm(), zzcrVar.zzq());
            str2 = String.format("Malformed lease Uri for file %s, group %s", zzckVar.zzm(), zzcrVar.zzq());
            i2 = 18;
        } catch (zzzm e) {
            str2 = TextUtils.isEmpty(e.getMessage()) ? "" : e.getMessage();
            zzuw.zzl("%s: Failed to share file %s, file group %s. UnsupportedFileStorageOperation was thrown with message \"%s\"", "AndroidSharingUtil", zzckVar.zzm(), zzcrVar.zzq(), str2);
            str2 = "UnsupportedFileStorageOperation was thrown: ".concat(String.valueOf(str2));
            i2 = 24;
        } catch (IOException unused3) {
            zzuw.zzg("%s: Failed to acquire lease for file %s, file group %s", "AndroidSharingUtil", zzckVar.zzm(), zzcrVar.zzq());
            str2 = String.format("Error while acquiring lease for file %s, group %s", zzckVar.zzm(), zzcrVar.zzq());
            i2 = 20;
        }
        if (i2 != 0) {
            throw new zzvk(i2, str2);
        }
        return zzarx.zzo(this.zzc.zzz(zzeaVar, str, max), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkb
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzau(zzckVar, zzcrVar, i, max, (Boolean) obj);
            }
        }), this.zzf);
    }

    public final zzajp zzd(zzcr zzcrVar) {
        zzajo zzajoVar = new zzajo();
        Uri zzc = zzvu.zzc(this.zza, this.zzg, zzcrVar);
        for (zzck zzckVar : zzcrVar.zzu()) {
            zzajoVar.zzb(zzckVar, zzvu.zzb(zzc, zzckVar));
        }
        return zzajoVar.zzd();
    }

    @RequiresApi(21)
    public final zzajp zze(zzajp zzajpVar, zzajp zzajpVar2) {
        zzajo zzajoVar = new zzajo();
        zzalx it2 = zzajpVar2.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            if (entry.getValue() != null && zzajpVar.containsKey(entry.getKey())) {
                Uri uri = (Uri) zzajpVar.get(entry.getKey());
                Uri uri2 = (Uri) entry.getValue();
                try {
                    Uri zza = zzwf.zza(this.zza, uri);
                    if (this.zzd.zzi(uri) && zza.toString().equals(uri2.toString())) {
                        zzajoVar.zzb((zzck) entry.getKey(), uri);
                    } else {
                        zzuw.zzg("%s verifyIsolatedFileUris unable to get isolated file uri! %s %s", "FileGroupManager", uri, uri2);
                    }
                } catch (IOException unused) {
                    zzuw.zzg("%s verifyIsolatedFileUris unable to get isolated file uri! %s %s", "FileGroupManager", uri, uri2);
                }
            }
        }
        return zzajoVar.zzd();
    }

    public final zzasi zzg(final zzdu zzduVar, final zzcr zzcrVar) throws zzhu, IOException, zzry, zzgr {
        if (zzvu.zzk(zzvu.zza(zzcrVar), this.zzl)) {
            zzuw.zzi("%s: Trying to add expired group %s.", "FileGroupManager", zzduVar.zzg());
            zzaO(1048, this.zzm, zzcrVar);
            throw new zzhu();
        }
        if (!zzaL(zzduVar.zzh())) {
            zzuw.zzg("%s: Trying to add group %s for uninstalled app %s.", "FileGroupManager", zzduVar.zzg(), zzduVar.zzh());
            zzaO(1042, this.zzm, zzcrVar);
            throw new zzry();
        }
        zzasi zzh = zzarx.zzh(null);
        this.zzi.zzn();
        if (zzcrVar.zzm().zzf() == 2) {
            zzasi zzh2 = this.zzb.zzh(zzduVar);
            zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhw
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzll.this.zzm(zzduVar, zzcrVar, (zzdw) obj);
                }
            };
            zzh = zzarx.zzo(zzh2, zzaeq.zzc(zzaqtVar), this.zzf);
        }
        return zzwu.zzc(zzh).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhx
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzn(zzduVar, zzcrVar, (Boolean) obj);
            }
        }, this.zzf).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhy
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzr(zzduVar, zzcrVar, (Boolean) obj);
            }
        }, this.zzf);
    }

    public final zzasi zzh() {
        zzasi zzd = this.zzb.zzd();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkr
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzu((List) obj);
            }
        };
        return zzarx.zzo(zzd, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final zzasi zzi(final zzdu zzduVar, @Nullable final zzdh zzdhVar, final zzaqt zzaqtVar) {
        final AtomicReference atomicReference = new AtomicReference();
        zzasi zzj = zzj(zzduVar, false);
        zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzij
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzz(zzduVar, atomicReference, zzdhVar, zzaqtVar, (zzcr) obj);
            }
        };
        zzasi zzo = zzarx.zzo(zzj, zzaeq.zzc(zzaqtVar2), this.zzf);
        zzaqt zzaqtVar3 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzik
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzC(atomicReference, zzduVar, (Exception) obj);
            }
        };
        return zzarx.zze(zzo, Exception.class, zzaeq.zzc(zzaqtVar3), this.zzf);
    }

    public final zzasi zzj(zzdu zzduVar, boolean z) {
        zzdt zzdtVar = (zzdt) zzduVar.zzO();
        zzdtVar.zza(z);
        return this.zzb.zzg((zzdu) zzdtVar.zzx());
    }

    public final zzasi zzk(zzcr zzcrVar) {
        return zzaE(zzcrVar, false, false, 0, zzcrVar.zza());
    }

    public final zzasi zzl(zzcr zzcrVar) {
        final zzajo zzajoVar = new zzajo();
        zzajo zzajoVar2 = new zzajo();
        for (zzck zzckVar : zzcrVar.zzu()) {
            if (zzvu.zzj(zzckVar)) {
                zzajoVar.zzb(zzckVar, Uri.parse(zzckVar.zzo()));
            } else {
                zzajoVar2.zzb(zzckVar, zzrp.zza(zzckVar, zzcrVar.zzE()));
            }
        }
        final zzajp zzd = zzajoVar2.zzd();
        return zzwu.zzc(this.zzc.zzf(zzaka.zzg(zzd.values()))).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzid
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzajp zzajpVar = zzajp.this;
                zzajo zzajoVar3 = zzajoVar;
                zzajp zzajpVar2 = (zzajp) obj;
                zzalx it2 = zzajpVar.entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry entry = (Map.Entry) it2.next();
                    zzea zzeaVar = (zzea) entry.getValue();
                    if (zzeaVar != null && zzajpVar2.containsKey(zzeaVar)) {
                        zzajoVar3.zzb((zzck) entry.getKey(), (Uri) zzajpVar2.get(zzeaVar));
                    }
                }
                return zzajoVar3.zzd();
            }
        }, this.zzf);
    }

    public final /* synthetic */ zzasi zzm(zzdu zzduVar, zzcr zzcrVar, zzdw zzdwVar) throws Exception {
        if (zzdwVar == null) {
            zzdwVar = zzdw.zzc();
        }
        if (zzdwVar.zze()) {
            return zzarx.zzh(null);
        }
        zzuw.zzb("%s: Trying to add group %s that requires activation %s.", "FileGroupManager", zzduVar.zzg(), zzduVar.zzh());
        zzaO(OnyxStatisticConstant.TRIGGER_FROM_HOME_LIST_ITEM_HEADER_CREATE, this.zzm, zzcrVar);
        throw new zzgr();
    }

    public final /* synthetic */ zzasi zzn(final zzdu zzduVar, final zzcr zzcrVar, Boolean bool) throws Exception {
        zzdt zzdtVar = (zzdt) zzduVar.zzO();
        zzdtVar.zza(false);
        zzasi zzg = this.zzb.zzg((zzdu) zzdtVar.zzx());
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzke
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzG(zzcrVar, zzduVar, (zzcr) obj);
            }
        };
        return zzarx.zzo(zzg, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzo(zzcr zzcrVar, zzdu zzduVar, Void r4) throws Exception {
        if (!this.zzh.zzc() || zzcrVar.zzF() == 1) {
            return zzarx.zzh(Boolean.TRUE);
        }
        zzwy zzwyVar = (zzwy) ((zzaha) this.zzh.zza()).zza();
        zzcrVar.zzF();
        zzduVar.zzg();
        return zzwyVar.zzb();
    }

    public final /* synthetic */ zzasi zzp(final zzdu zzduVar, final zzcr zzcrVar, Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            throw new IOException("Subscribing to group failed");
        }
        zzdt zzdtVar = (zzdt) zzduVar.zzO();
        zzdtVar.zza(false);
        final zzdu zzduVar2 = (zzdu) zzdtVar.zzx();
        final zzasi zzg = this.zzb.zzg(zzduVar2);
        zzwu zze = zzwu.zzc(zzg).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjn
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzan(zzduVar2, zzcrVar, (zzcr) obj);
            }
        }, this.zzf).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjo
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return !((Boolean) obj).booleanValue() ? zzarx.zzg(new IOException("Failed to commit new group metadata to disk.")) : zzarx.zzi();
            }
        }, this.zzf).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjp
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.zzaA(zzcrVar, (Void) obj);
            }
        }, this.zzf).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjr
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.zzaB(zzg, (Void) obj);
            }
        }, this.zzf);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzki
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzo(zzcrVar, zzduVar, (Void) obj);
            }
        };
        return zzarx.zzo(zze, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzq(final zzdu zzduVar, final zzcr zzcrVar) throws Exception {
        zzuw.zzc("%s: Received new config for group: %s", "FileGroupManager", zzduVar.zzg());
        zzaO(1018, this.zzm, zzcrVar);
        zzasi zzaH = zzaH(zzcrVar, 0, zzcrVar.zza());
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkh
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzp(zzduVar, zzcrVar, (Boolean) obj);
            }
        };
        return zzarx.zzo(zzaH, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzr(final zzdu zzduVar, final zzcr zzcrVar, Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            zzuw.zzc("%s: Received duplicate config for group: %s", "FileGroupManager", zzduVar.zzg());
            return zzarx.zzh(Boolean.FALSE);
        }
        if (zzvu.zzi(zzcrVar)) {
            zzaoo zza = zzaoq.zza().zza();
            zza.zzd(zzcrVar.zzt());
            zza.zzd(IidStore.f35940g);
            zza.zzd(zzduVar.zzf());
            zza.zzd(IidStore.f35940g);
            zza.zzb(zzcrVar.zze());
            String format = String.format("%s_%s", zzcrVar.zzq(), zza.zze().toString());
            zzcq zzcqVar = (zzcq) zzcrVar.zzO();
            zzcqVar.zze(format);
            zzcrVar = (zzcr) zzcqVar.zzx();
        }
        zzdt zzdtVar = (zzdt) zzduVar.zzO();
        zzdtVar.zza(false);
        zzasi zzg = this.zzb.zzg((zzdu) zzdtVar.zzx());
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkm
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.zzaw(zzcrVar, (zzcr) obj);
            }
        };
        zzasi zzo = zzarx.zzo(zzg, zzaeq.zzc(zzaqtVar), this.zzf);
        zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zziz
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzq(zzduVar, (zzcr) obj);
            }
        };
        return zzarx.zzo(zzo, zzaeq.zzc(zzaqtVar2), this.zzf);
    }

    public final /* synthetic */ zzasi zzs(List list, zzajp zzajpVar, zzajp zzajpVar2) throws Exception {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            zzck zzckVar = (zzck) it2.next();
            try {
                Uri uri = (Uri) zzajpVar.get(zzckVar);
                uri.getClass();
                Uri uri2 = (Uri) zzajpVar2.get(zzckVar);
                uri2.getClass();
                Uri parse = Uri.parse(uri.toString().substring(0, uri.toString().lastIndexOf("/")));
                if (!this.zzd.zzi(parse)) {
                    this.zzd.zzd(parse);
                }
                zzwf.zzb(this.zza, uri, uri2);
            } catch (IOException | NullPointerException e) {
                zzbg zzbgVar = new zzbg();
                zzbgVar.zzb(zzbh.UNABLE_TO_CREATE_SYMLINK_STRUCTURE);
                zzbgVar.zzc("Unable to create symlink");
                zzbgVar.zza(e);
                return zzarx.zzg(zzbgVar.zze());
            }
        }
        return zzarx.zzi();
    }

    public final /* synthetic */ zzasi zzt(zzdu zzduVar, zzcr zzcrVar) throws Exception {
        if (zzcrVar == null) {
            return zzarx.zzi();
        }
        zzuw.zzb("%s: Deleting file group %s for uninstalled app %s", "FileGroupManager", zzduVar.zzg(), zzduVar.zzh());
        zzasi zzi = this.zzb.zzi(zzduVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhz
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                ((Boolean) obj).booleanValue();
                return zzarx.zzi();
            }
        };
        return zzarx.zzo(zzi, zzaeq.zzc(zzaqtVar), this.zzf);
    }

    public final /* synthetic */ zzasi zzu(List list) throws Exception {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final zzdu zzduVar = (zzdu) it2.next();
            if (!zzaL(zzduVar.zzh())) {
                zzasi zzg = this.zzb.zzg(zzduVar);
                zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjj
                    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                    public final zzasi zza(Object obj) {
                        return zzll.this.zzt(zzduVar, (zzcr) obj);
                    }
                };
                arrayList.add(zzarx.zzo(zzg, zzaeq.zzc(zzaqtVar), this.zzf));
            }
        }
        return zzwx.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return null;
            }
        }, this.zzf);
    }

    public final /* synthetic */ zzasi zzv(final zzdu zzduVar, zzaqt zzaqtVar, final List list, zzsc zzscVar) throws Exception {
        final zzcr zzb = zzscVar.zzb() != null ? zzscVar.zzb() : zzscVar.zza();
        if (zzb == null) {
            zzaN(list, zzduVar);
            return zzarx.zzg(new AssertionError("impossible error"));
        }
        return zzarx.zzo(zzat(zzduVar, zzb, true, zzaqtVar, zzuu.zze(this.zzm)), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzjg
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.zzax(list, zzb, zzduVar, (zzlk) obj);
            }
        }), this.zzf);
    }

    public final /* synthetic */ zzasi zzw(final zzdu zzduVar, final zzaqt zzaqtVar, final List list) throws Exception {
        zzaqs zzaqsVar = new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzic
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzll.this.zzE(zzduVar);
            }
        };
        zzasi zzm = zzarx.zzm(zzaeq.zzb(zzaqsVar), this.zzf);
        zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzix
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzv(zzduVar, zzaqtVar, list, (zzsc) obj);
            }
        };
        return zzarx.zzo(zzm, zzaeq.zzc(zzaqtVar2), this.zzf);
    }

    public final /* synthetic */ zzasi zzx(final zzdu zzduVar, final zzaqt zzaqtVar, final List list) throws Exception {
        return this.zzj.zzc(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzii
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzll.this.zzw(zzduVar, zzaqtVar, list);
            }
        }, this.zzf);
    }

    public final /* synthetic */ zzasi zzy(zzdh zzdhVar, final zzdu zzduVar, final zzaqt zzaqtVar, final zzcr zzcrVar) throws Exception {
        zzasi zzg;
        if (zzdhVar == null) {
            zzdhVar = zzcrVar.zzm();
        }
        final ArrayList arrayList = new ArrayList();
        for (final zzck zzckVar : zzcrVar.zzu()) {
            if (!zzvu.zzj(zzckVar)) {
                final zzea zza = zzrp.zza(zzckVar, zzcrVar.zzE());
                if (Build.VERSION.SDK_INT >= 30) {
                    zzasi zzg2 = this.zzc.zzg(zza);
                    zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzin
                        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                        public final zzasi zza(Object obj) {
                            return zzll.this.zzaa(zza, zzcrVar, zzckVar, (zzro) obj);
                        }
                    };
                    zzasi zze = zzarx.zze(zzg2, zzro.class, zzaeq.zzc(zzaqtVar2), this.zzf);
                    zzaqt zzaqtVar3 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzio
                        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                        public final zzasi zza(Object obj) {
                            return zzll.this.zzab(zzcrVar, zzckVar, zza, (zzee) obj);
                        }
                    };
                    zzasi zzo = zzarx.zzo(zze, zzaeq.zzc(zzaqtVar3), this.zzf);
                    final zzdh zzdhVar2 = zzdhVar;
                    zzaqt zzaqtVar4 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkd
                        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                        public final zzasi zza(Object obj) {
                            return zzll.this.zzR(zzduVar, zzckVar, zza, zzdhVar2, zzcrVar, (Void) obj);
                        }
                    };
                    zzg = zzarx.zzo(zzo, zzaeq.zzc(zzaqtVar4), this.zzf);
                } else {
                    try {
                        zzg = this.zzc.zzA(zzduVar, zzckVar, zza, zzdhVar, zzcrVar.zzd(), zzcrVar.zzv());
                    } catch (RuntimeException e) {
                        zzbg zzbgVar = new zzbg();
                        zzbgVar.zzb(zzbh.UNKNOWN_ERROR);
                        zzbgVar.zza(e);
                        zzg = zzarx.zzg(zzbgVar.zze());
                    }
                }
                arrayList.add(zzg);
            }
        }
        return zzwx.zza(arrayList).zzb(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzje
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzll.this.zzx(zzduVar, zzaqtVar, arrayList);
            }
        }, this.zzf);
    }

    public final /* synthetic */ zzasi zzz(final zzdu zzduVar, final AtomicReference atomicReference, final zzdh zzdhVar, final zzaqt zzaqtVar, zzcr zzcrVar) throws Exception {
        if (zzcrVar == null) {
            return zzarx.zzo(zzj(zzduVar, true), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzko
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    zzdu zzduVar2 = zzdu.this;
                    AtomicReference atomicReference2 = atomicReference;
                    zzcr zzcrVar2 = (zzcr) obj;
                    if (zzcrVar2 != null) {
                        atomicReference2.set(zzcrVar2);
                        return zzarx.zzh(zzcrVar2);
                    }
                    zzbg zzbgVar = new zzbg();
                    zzbgVar.zzb(zzbh.GROUP_NOT_FOUND_ERROR);
                    zzbgVar.zzc("Nothing to download for file group: ".concat(String.valueOf(zzduVar2.zzg())));
                    return zzarx.zzg(zzbgVar.zze());
                }
            }), this.zzf);
        }
        atomicReference.set(zzcrVar);
        zzcm zzi = zzcrVar.zzi();
        int zza = zzi.zza() + 1;
        zzcq zzcqVar = (zzcq) zzcrVar.zzO();
        zzcl zzclVar = (zzcl) zzi.zzO();
        zzclVar.zza(zza);
        zzcqVar.zzc(zzclVar);
        final zzcr zzcrVar2 = (zzcr) zzcqVar.zzx();
        final boolean z = !zzi.zzn();
        if (z) {
            long currentTimeMillis = System.currentTimeMillis();
            zzcl zzclVar2 = (zzcl) zzcrVar2.zzi().zzO();
            zzclVar2.zzb(currentTimeMillis);
            zzcm zzcmVar = (zzcm) zzclVar2.zzx();
            zzcq zzcqVar2 = (zzcq) zzcrVar2.zzO();
            zzcqVar2.zzd(zzcmVar);
            zzcrVar2 = (zzcr) zzcqVar2.zzx();
        }
        zzdt zzdtVar = (zzdt) zzduVar.zzO();
        zzdtVar.zza(false);
        return zzwu.zzc(zzarx.zzo(this.zzb.zzl((zzdu) zzdtVar.zzx(), zzcrVar2), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzku
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzac(z, zzcrVar2, (Boolean) obj);
            }
        }), this.zzf)).zzb(IOException.class, new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkp
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzbg zzbgVar = new zzbg();
                zzbgVar.zzb(zzbh.UNABLE_TO_UPDATE_GROUP_METADATA_ERROR);
                zzbgVar.zza((IOException) obj);
                return zzarx.zzg(zzbgVar.zze());
            }
        }, this.zzf).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzkq
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzll.this.zzy(zzdhVar, zzduVar, zzaqtVar, (zzcr) obj);
            }
        }, this.zzf);
    }
}
