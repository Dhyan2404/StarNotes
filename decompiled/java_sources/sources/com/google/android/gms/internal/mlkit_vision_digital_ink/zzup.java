package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzup {

    @VisibleForTesting
    final HashMap zza = new HashMap();
    private final Context zzb;
    private final zzaha zzc;
    private final zzyg zzd;
    private final zzwp zze;
    private final zzagb zzf;
    private final zzux zzg;
    private final Executor zzh;
    private final zzbq zzi;

    public zzup(Context context, zzaha zzahaVar, zzyg zzygVar, zzwp zzwpVar, zzagb zzagbVar, zzux zzuxVar, Executor executor, zzbq zzbqVar) {
        this.zzb = context;
        this.zzc = zzahaVar;
        this.zzd = zzygVar;
        this.zze = zzwpVar;
        this.zzf = zzagbVar;
        this.zzg = zzuxVar;
        this.zzh = executor;
        this.zzi = zzbqVar;
    }

    public final /* synthetic */ zzasi zza(zzuo zzuoVar, final zzbj zzbjVar) throws Exception {
        zzasi zzd = zzuoVar.zzd(zzbjVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzun
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                throw zzbj.this;
            }
        };
        return zzarx.zzo(zzd, zzaeq.zzc(zzaqtVar), this.zzh);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:3|(2:5|(3:7|8|9))|11|12|13|14|15|(7:38|39|40|41|(3:43|(2:45|(1:47)(1:48))(1:50)|49)|51|(2:53|54))(1:19)|20|(9:22|(1:35)(1:26)|(1:28)|29|(2:32|30)|33|34|8|9)(2:36|37)) */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0166, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0167, code lost:
    
        r5 = "MddFileDownloader";
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x004b, code lost:
    
        r6 = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi zzb(com.google.android.gms.internal.mlkit_vision_digital_ink.zzdu r19, int r20, long r21, java.lang.String r23, final android.net.Uri r24, java.lang.String r25, int r26, @javax.annotation.Nullable com.google.android.gms.internal.mlkit_vision_digital_ink.zzdh r27, final com.google.android.gms.internal.mlkit_vision_digital_ink.zzuo r28, int r29, java.util.List r30) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzup.zzb(com.google.android.gms.internal.mlkit_vision_digital_ink.zzdu, int, long, java.lang.String, android.net.Uri, java.lang.String, int, com.google.android.gms.internal.mlkit_vision_digital_ink.zzdh, com.google.android.gms.internal.mlkit_vision_digital_ink.zzuo, int, java.util.List):com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi");
    }

    public final void zzc(Uri uri) {
        zzasi zzasiVar = (zzasi) this.zza.get(uri);
        if (zzasiVar == null) {
            zzuw.zzn("%s: stopDownloading on non-existent download", "MddFileDownloader");
            return;
        }
        zzuw.zzc("%s: Cancel download file %s", "MddFileDownloader", uri);
        this.zza.remove(uri);
        zzasiVar.cancel(true);
    }
}
