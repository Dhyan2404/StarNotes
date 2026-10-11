package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzpr implements zzlm {
    private final Context zza;
    private final zzaaw zzb;
    private final Executor zzc;
    private final zzgs zzd;
    private final zzsp zze;

    public zzpr(Context context, zzgs zzgsVar, zzsp zzspVar, zzaaw zzaawVar, Executor executor, byte[] bArr) {
        this.zza = context;
        this.zzd = zzgsVar;
        this.zze = zzspVar;
        this.zzb = zzaawVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zza(zzcr zzcrVar) {
        zzuw.zzc("%s: Adding file group %s", "ProtoDataStoreFileGroupsMetadata", zzcrVar.zzq());
        zzcr zzd = zzvu.zzd(zzcrVar, (System.currentTimeMillis() / 1000) + zzcrVar.zzg());
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzd);
        return zzm(arrayList);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzb() {
        return zzwu.zzc(zzk()).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpp
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzpr.this.zzn((Void) obj);
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzc() {
        final ArrayList arrayList = new ArrayList();
        return zzwu.zzc(this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpq
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                List list = arrayList;
                zzdp zzdpVar = (zzdp) obj;
                zzdm zzdmVar = (zzdm) zzdpVar.zzO();
                for (Map.Entry entry : zzdpVar.zzg().entrySet()) {
                    String str = (String) entry.getKey();
                    try {
                        list.add(zzsb.zzc(zzvw.zza(str), (zzcr) entry.getValue()));
                    } catch (zzvv e) {
                        zzdmVar.zzd(str);
                        zzuw.zzh(e, "Failed to deserialized file group key: ".concat(String.valueOf(str)));
                    }
                }
                return (zzdp) zzdmVar.zzx();
            }
        }, this.zzc)).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzow
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return arrayList;
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzd() {
        final ArrayList arrayList = new ArrayList();
        return zzwu.zzc(this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpm
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                List list = arrayList;
                zzdp zzdpVar = (zzdp) obj;
                zzdm zzdmVar = (zzdm) zzdpVar.zzO();
                for (String str : zzdpVar.zzg().keySet()) {
                    try {
                        list.add(zzvw.zza(str));
                    } catch (zzvv e) {
                        zzuw.zzh(e, "Failed to deserialize groupKey:".concat(String.valueOf(str)));
                        zzdmVar.zzd(str);
                        zzuw.zza("%s: Deleting null file group ", "ProtoDataStoreFileGroupsMetadata");
                    }
                }
                return (zzdp) zzdmVar.zzx();
            }
        }, this.zzc)).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpn
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return arrayList;
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zze() {
        zzasi zzd = this.zzb.zzd();
        zzpl zzplVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpl
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return ((zzdp) obj).zze();
            }
        };
        return zzarx.zzn(zzd, zzaeq.zza(zzplVar), this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzf() {
        return zzarx.zzi();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzg(zzdu zzduVar) {
        final String zzc = zzvw.zzc(zzduVar);
        zzasi zzd = this.zzb.zzd();
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpi
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return (zzcr) ((zzdp) obj).zzg().get(zzc);
            }
        };
        return zzarx.zzn(zzd, zzaeq.zza(zzaftVar), this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzh(zzdu zzduVar) {
        final String zzc = zzvw.zzc(zzduVar);
        zzasi zzd = this.zzb.zzd();
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzov
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return (zzdw) ((zzdp) obj).zzh().get(zzc);
            }
        };
        return zzarx.zzn(zzd, zzaeq.zza(zzaftVar), this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzi(zzdu zzduVar) {
        final String zzc = zzvw.zzc(zzduVar);
        return zzwu.zzc(this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpe
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                String str = zzc;
                zzdm zzdmVar = (zzdm) ((zzdp) obj).zzO();
                zzdmVar.zzd(str);
                return (zzdp) zzdmVar.zzx();
            }
        }, this.zzc)).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpf
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.TRUE;
            }
        }, this.zzc).zza(IOException.class, new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzph
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.FALSE;
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzj(final List list) {
        return zzwu.zzc(this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzox
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                List<zzdu> list2 = list;
                zzdm zzdmVar = (zzdm) ((zzdp) obj).zzO();
                for (zzdu zzduVar : list2) {
                    zzuw.zzb("%s: Removing group %s %s", "ProtoDataStoreFileGroupsMetadata", zzduVar.zzg(), zzduVar.zzh());
                    zzdmVar.zzd(zzvw.zzc(zzduVar));
                }
                return (zzdp) zzdmVar.zzx();
            }
        }, this.zzc)).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzoy
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.TRUE;
            }
        }, this.zzc).zza(IOException.class, new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzoz
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.FALSE;
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzk() {
        return this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpo
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzdm zzdmVar = (zzdm) ((zzdp) obj).zzO();
                zzdmVar.zzb();
                return (zzdp) zzdmVar.zzx();
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzl(zzdu zzduVar, final zzcr zzcrVar) {
        final String zzc = zzvw.zzc(zzduVar);
        return zzwu.zzc(this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpb
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                String str = zzc;
                zzcr zzcrVar2 = zzcrVar;
                zzdm zzdmVar = (zzdm) ((zzdp) obj).zzO();
                zzdmVar.zzc(str, zzcrVar2);
                return (zzdp) zzdmVar.zzx();
            }
        }, this.zzc)).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpc
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.TRUE;
            }
        }, this.zzc).zza(IOException.class, new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpd
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.FALSE;
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzm(final List list) {
        return zzwu.zzc(this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpg
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                List list2 = list;
                zzdm zzdmVar = (zzdm) ((zzdp) obj).zzO();
                zzdmVar.zza(list2);
                return (zzdp) zzdmVar.zzx();
            }
        }, this.zzc)).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpj
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.TRUE;
            }
        }, this.zzc).zza(IOException.class, new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpk
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.FALSE;
            }
        }, this.zzc);
    }

    public final /* synthetic */ zzasi zzn(Void r2) throws Exception {
        return this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpa
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzdm zzdmVar = (zzdm) ((zzdp) obj).zzO();
                zzdmVar.zzr();
                return (zzdp) zzdmVar.zzx();
            }
        }, this.zzc);
    }
}
