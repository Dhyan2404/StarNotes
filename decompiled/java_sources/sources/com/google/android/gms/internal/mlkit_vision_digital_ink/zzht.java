package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public final class zzht {
    private final Context zza;
    private final zzlm zzb;
    private final zzrn zzc;
    private final zzrq zzd;
    private final zzyg zze;
    private final zzagb zzf;
    private final Executor zzg;
    private final zzbq zzh;
    private final zzgs zzi;
    private final zzsp zzj;
    private final zzuz zzk;

    public zzht(Context context, zzlm zzlmVar, zzrn zzrnVar, zzrq zzrqVar, zzuz zzuzVar, zzgs zzgsVar, zzyg zzygVar, zzagb zzagbVar, zzsp zzspVar, Executor executor, zzbq zzbqVar, byte[] bArr, byte[] bArr2) {
        this.zza = context;
        this.zzb = zzlmVar;
        this.zzc = zzrnVar;
        this.zzd = zzrqVar;
        this.zzk = zzuzVar;
        this.zzi = zzgsVar;
        this.zze = zzygVar;
        this.zzf = zzagbVar;
        this.zzj = zzspVar;
        this.zzg = executor;
        this.zzh = zzbqVar;
    }

    private final int zzn(Uri uri, List list) {
        int i = 0;
        try {
            if (!this.zze.zzi(uri)) {
                return 0;
            }
            int i2 = 0;
            for (Uri uri2 : this.zze.zzb(uri)) {
                try {
                    try {
                        Iterator it2 = list.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (uri2.toString().startsWith(((Uri) it2.next()).toString())) {
                                    break;
                                }
                            } else if (this.zze.zzj(uri2)) {
                                i2 += zzn(uri2, list);
                            } else {
                                zzuw.zzc("%s: Deleted unaccounted file with uri %s!", "ExpirationHandler", uri2.getPath());
                                this.zze.zzf(uri2);
                                i2++;
                            }
                        }
                    } catch (IOException e) {
                        zzuw.zzj(e, "%s: Failed to delete unaccounted file!", "ExpirationHandler");
                    }
                } catch (IOException e2) {
                    e = e2;
                    i = i2;
                    zzuw.zzj(e, "%s: Failed to delete unaccounted file!", "ExpirationHandler");
                    return i;
                }
            }
            return i2;
        } catch (IOException e3) {
            e = e3;
        }
    }

    public final /* synthetic */ zzasi zza(List list) throws Exception {
        final HashSet hashSet = new HashSet();
        final ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((zzsb) it2.next()).zza());
        }
        zzasi zze = this.zzb.zze();
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhs
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzht zzhtVar = zzht.this;
                List list2 = arrayList;
                Set set = hashSet;
                zzhtVar.zzm(list2, set, (List) obj);
                return set;
            }
        };
        return zzarx.zzn(zze, zzaeq.zza(zzaftVar), this.zzg);
    }

    public final /* synthetic */ zzasi zzb(List list) throws Exception {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            zzsb zzsbVar = (zzsb) it2.next();
            zzdu zzb = zzsbVar.zzb();
            zzcr zza = zzsbVar.zza();
            Long valueOf = Long.valueOf(zzvu.zza(zza));
            zzuw.zzb("%s: Checking group %s with expiration date %s", "ExpirationHandler", zza.zzq(), valueOf);
            if (zzvu.zzk(valueOf.longValue(), this.zzi)) {
                zzuw.zzb("%s: Expired group %s with expiration date %s", "ExpirationHandler", zza.zzq(), valueOf);
                arrayList.add(zzb);
                if (zzvu.zzi(zza)) {
                    zzvu.zzf(this.zza, this.zzf, zza, this.zze);
                }
            }
        }
        zzasi zzj = this.zzb.zzj(arrayList);
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhn
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                if (((Boolean) obj).booleanValue()) {
                    return null;
                }
                zzuw.zzf("%s: Failed to remove expired groups!", "ExpirationHandler");
                return null;
            }
        };
        return zzarx.zzn(zzj, zzaeq.zza(zzaftVar), this.zzg);
    }

    public final /* synthetic */ zzasi zzc(List list, Void r2) throws Exception {
        zzasi zzm = this.zzb.zzm(list);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhj
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                if (!((Boolean) obj).booleanValue()) {
                    zzuw.zzf("%s: Failed to write back stale groups!", "ExpirationHandler");
                }
                return zzarx.zzi();
            }
        };
        return zzarx.zzo(zzm, zzaeq.zzc(zzaqtVar), this.zzg);
    }

    public final /* synthetic */ zzasi zzd(List list) throws Exception {
        final ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            zzcr zzcrVar = (zzcr) it2.next();
            if (zzvu.zzk(Math.min(TimeUnit.SECONDS.toMillis(zzcrVar.zzi().zzf()), zzvu.zza(zzcrVar)), this.zzi)) {
                zzcrVar.zzq();
                zzcrVar.zzc();
                zzcrVar.zze();
                zzcrVar.zzt();
                if (zzvu.zzi(zzcrVar)) {
                    zzvu.zzf(this.zza, this.zzf, zzcrVar, this.zze);
                }
            } else {
                arrayList.add(zzcrVar);
            }
        }
        zzasi zzk = this.zzb.zzk();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhi
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzht.this.zzc(arrayList, (Void) obj);
            }
        };
        return zzarx.zzo(zzk, zzaeq.zzc(zzaqtVar), this.zzg);
    }

    public final /* synthetic */ zzasi zze(Set set, List list) throws Exception {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final zzea zzeaVar = (zzea) it2.next();
            if (set.contains(zzeaVar)) {
                zzasi zze = this.zzc.zze(zzeaVar);
                zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhf
                    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
                    public final Object zza(Object obj) {
                        List list2 = arrayList;
                        Uri uri = (Uri) obj;
                        if (uri == null) {
                            return null;
                        }
                        list2.add(uri);
                        return null;
                    }
                };
                arrayList3.add(zzarx.zzn(zze, zzaeq.zza(zzaftVar), this.zzg));
            } else {
                zzasi zzr = this.zzd.zzr(zzeaVar);
                zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhe
                    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                    public final zzasi zza(Object obj) {
                        return zzht.this.zzg(arrayList2, zzeaVar, atomicInteger, (zzee) obj);
                    }
                };
                arrayList3.add(zzarx.zzo(zzr, zzaeq.zzc(zzaqtVar), this.zzg));
            }
        }
        this.zzh.zzo();
        final ArrayList arrayList4 = new ArrayList();
        zzasi zzc = this.zzb.zzc();
        zzaft zzaftVar2 = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhm
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzht zzhtVar = zzht.this;
                List list2 = arrayList4;
                zzhtVar.zzl(list2, (List) obj);
                return list2;
            }
        };
        zzasi zzn = zzarx.zzn(zzc, zzaeq.zza(zzaftVar2), this.zzg);
        zzaft zzaftVar3 = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhg
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                arrayList.addAll((List) obj);
                return null;
            }
        };
        arrayList3.add(zzarx.zzn(zzn, zzaeq.zza(zzaftVar3), this.zzg));
        return zzwx.zza(arrayList3).zza(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhh
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzht.this.zzk(atomicInteger, arrayList2, arrayList);
                return null;
            }
        }, this.zzg);
    }

    public final /* synthetic */ zzasi zzf(final Set set) throws Exception {
        zzasi zzb = this.zzd.zzb();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhc
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzht.this.zze(set, (List) obj);
            }
        };
        return zzarx.zzo(zzb, zzaeq.zzc(zzaqtVar), this.zzg);
    }

    public final /* synthetic */ zzasi zzg(List list, final zzea zzeaVar, final AtomicInteger atomicInteger, zzee zzeeVar) throws Exception {
        if (zzeeVar != null && zzeeVar.zzq()) {
            list.add(zzvm.zzb(this.zza, zzeeVar.zzi()));
        }
        zzasi zzx = this.zzc.zzx(zzeaVar);
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhq
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                AtomicInteger atomicInteger2 = atomicInteger;
                zzea zzeaVar2 = zzeaVar;
                if (((Boolean) obj).booleanValue()) {
                    atomicInteger2.getAndIncrement();
                    return null;
                }
                zzuw.zzi("%s: Unsubscribe from file %s failed!", "ExpirationHandler", zzeaVar2);
                return null;
            }
        };
        return zzarx.zzn(zzx, zzaeq.zza(zzaftVar), this.zzg);
    }

    public final /* synthetic */ zzasi zzh(Void r3) throws Exception {
        zzasi zzc = this.zzb.zzc();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhl
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzht.this.zza((List) obj);
            }
        };
        zzasi zzo = zzarx.zzo(zzc, zzaeq.zzc(zzaqtVar), this.zzg);
        zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhr
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzht.this.zzf((Set) obj);
            }
        };
        return zzarx.zzo(zzo, zzaeq.zzc(zzaqtVar2), this.zzg);
    }

    public final /* synthetic */ zzasi zzi(Void r3) throws Exception {
        zzasi zzc = this.zzb.zzc();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhd
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzht.this.zzb((List) obj);
            }
        };
        zzasi zzo = zzarx.zzo(zzc, zzaeq.zzc(zzaqtVar), this.zzg);
        zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhp
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzht.this.zzh((Void) obj);
            }
        };
        return zzarx.zzo(zzo, zzaeq.zzc(zzaqtVar2), this.zzg);
    }

    public final zzasi zzj() {
        zzasi zze = this.zzb.zze();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzhk
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzht.this.zzd((List) obj);
            }
        };
        zzasi zzo = zzarx.zzo(zze, zzaeq.zzc(zzaqtVar), this.zzg);
        zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzho
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzht.this.zzi((Void) obj);
            }
        };
        return zzarx.zzo(zzo, zzaeq.zzc(zzaqtVar2), this.zzg);
    }

    public final /* synthetic */ Void zzk(AtomicInteger atomicInteger, List list, List list2) throws Exception {
        if (atomicInteger.get() > 0) {
            atomicInteger.get();
        }
        Uri zza = zzvm.zza(this.zza, this.zzf);
        Iterator it2 = list.iterator();
        int i = 0;
        while (it2.hasNext()) {
            try {
                this.zze.zzf((Uri) it2.next());
                i++;
            } catch (IOException e) {
                zzuw.zzj(e, "%s: Failed to release unaccounted file!", "ExpirationHandler");
            }
        }
        zzuw.zzc("%s: Total %d unaccounted file released. ", "ExpirationHandler", Integer.valueOf(i));
        zzuw.zzc("%s: Total %d unaccounted file deleted. ", "ExpirationHandler", Integer.valueOf(zzn(zza, list2)));
        return null;
    }

    public final /* synthetic */ List zzl(List list, List list2) {
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            zzcr zza = ((zzsb) it2.next()).zza();
            if (zzvu.zzi(zza)) {
                Iterator it3 = zza.zzu().iterator();
                while (it3.hasNext()) {
                    list.add(zzvu.zzb(zzvu.zzc(this.zza, this.zzf, zza), (zzck) it3.next()));
                }
            }
        }
        return list;
    }

    public final /* synthetic */ Set zzm(List list, Set set, List list2) {
        list.addAll(list2);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            zzcr zzcrVar = (zzcr) it2.next();
            for (zzck zzckVar : zzcrVar.zzu()) {
                Context context = this.zza;
                int zzE = zzcrVar.zzE();
                zzsp zzspVar = this.zzj;
                zzdz zzc = zzea.zzc();
                String zze = zzvu.zze(zzckVar);
                zzno zznoVar = zzno.NEW_FILE_KEY;
                int ordinal = zznp.zzd(context, zzspVar).ordinal();
                if (ordinal == 0) {
                    zzc.zzd(zzckVar.zzo());
                    zzc.zza(zzckVar.zza());
                    zzc.zzb(zze);
                    zzc.zze(zzE);
                } else if (ordinal == 1) {
                    zzc.zzd(zzckVar.zzo());
                    zzc.zza(zzckVar.zza());
                    zzc.zzb(zze);
                    zzc.zze(zzE);
                    if (zzckVar.zzu()) {
                        zzc.zzc(zzckVar.zzh());
                    }
                } else if (ordinal == 2) {
                    zzc.zzb(zze);
                    zzc.zze(zzE);
                }
                set.add((zzea) zzc.zzx());
            }
        }
        return set;
    }
}
