package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzaba {
    private final Map zza = new HashMap();
    private final Map zzb = new HashMap();
    private final Executor zzc;
    private final zzyg zzd;
    private final zzaqt zze;
    private final Map zzf;
    private final zzacw zzg;

    public zzaba(Executor executor, zzyg zzygVar, zzacw zzacwVar, Map map, @Nullable zzacz zzaczVar, byte[] bArr) {
        executor.getClass();
        this.zzc = executor;
        zzygVar.getClass();
        this.zzd = zzygVar;
        this.zzg = zzacwVar;
        this.zzf = map;
        zzagg.zze(!map.isEmpty());
        this.zze = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaz
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzarx.zzh("");
            }
        };
    }

    private final synchronized zzaaw zzb(zzaay zzaayVar) {
        zzaaw zzaawVar;
        Uri zza = zzaayVar.zza();
        zzaawVar = (zzaaw) this.zza.get(zza);
        boolean z = true;
        if (zzaawVar == null) {
            Uri zza2 = zzaayVar.zza();
            zzagg.zzh(zza2.isHierarchical(), "Uri must be hierarchical: %s", zza2);
            String zzc = zzagz.zzc(zza2.getLastPathSegment());
            int lastIndexOf = zzc.lastIndexOf(46);
            zzagg.zzh((lastIndexOf == -1 ? "" : zzc.substring(lastIndexOf + 1)).equals("pb"), "Uri extension must be .pb: %s", zza2);
            zzacs zzacsVar = (zzacs) this.zzf.get("singleproc");
            if (zzacsVar == null) {
                z = false;
            }
            zzagg.zzh(z, "No XDataStoreVariantFactory registered for ID %s", "singleproc");
            String zzc2 = zzagz.zzc(zzaayVar.zza().getLastPathSegment());
            int lastIndexOf2 = zzc2.lastIndexOf(46);
            if (lastIndexOf2 != -1) {
                zzc2 = zzc2.substring(0, lastIndexOf2);
            }
            zzaawVar = new zzaaw(zzacsVar.zzb(zzaayVar, zzc2, this.zzc, this.zzd, 1), this.zzg, zzarx.zzo(zzarx.zzh(zzaayVar.zza()), this.zze, zzasq.zzb()), false, null);
            zzajm zzd = zzaayVar.zzd();
            if (!zzd.isEmpty()) {
                zzaawVar.zzm(zzaav.zzb(zzd, this.zzc));
            }
            this.zza.put(zza, zzaawVar);
            this.zzb.put(zza, zzaayVar);
        } else {
            zzaay zzaayVar2 = (zzaay) this.zzb.get(zza);
            if (!zzaayVar.equals(zzaayVar2)) {
                String zzb = zzagz.zzb("ProtoDataStoreConfig<%s> doesn't match previous call [uri=%s] [%s]", zzaayVar.zze().getClass().getSimpleName(), zzaayVar.zza());
                zzagg.zzh(zzaayVar.zza().equals(zzaayVar2.zza()), zzb, "uri");
                zzagg.zzh(zzaayVar.zze().equals(zzaayVar2.zze()), zzb, "schema");
                zzagg.zzh(zzaayVar.zzb().equals(zzaayVar2.zzb()), zzb, Constants.TRANSLET_OUTPUT_PNAME);
                zzagg.zzh(zzaayVar.zzd().equals(zzaayVar2.zzd()), zzb, "migrations");
                zzagg.zzh(zzaayVar.zzc().equals(zzaayVar2.zzc()), zzb, "variantConfig");
                zzagg.zzh(zzaayVar.zzg() == zzaayVar2.zzg(), zzb, "useGeneratedExtensionRegistry");
                zzaayVar2.zzf();
                throw new IllegalArgumentException(zzagz.zzb(zzb, "unknown"));
            }
        }
        return zzaawVar;
    }

    public final zzaaw zza(zzaay zzaayVar) {
        return zzb(zzaayVar);
    }
}
