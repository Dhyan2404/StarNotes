package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.VisibleForTesting;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes5.dex */
public final class zzrt implements zzlm {
    private final Context zza;
    private final zzagb zzb;
    private final Executor zzc;
    private final zzgs zzd;
    private final zzsp zze;

    public zzrt(Context context, zzgs zzgsVar, zzsp zzspVar, zzagb zzagbVar, Executor executor, byte[] bArr) {
        this.zza = context;
        this.zzd = zzgsVar;
        this.zze = zzspVar;
        this.zzb = zzagbVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zza(zzcr zzcrVar) {
        zzuw.zzc("%s: Adding file group %s", "SharedPreferencesFileGroupsMetadata", zzcrVar.zzq());
        zzcr zzd = zzvu.zzd(zzcrVar, (System.currentTimeMillis() / 1000) + zzcrVar.zzg());
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzd);
        return zzm(arrayList);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzb() {
        zzwe.zza(this.zza, "gms_icing_mdd_groups", this.zzb).edit().clear().commit();
        zzwe.zza(this.zza, "gms_icing_mdd_group_key_properties", this.zzb).edit().clear().commit();
        return zzk();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzc() {
        zzasi zzd = zzd();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrs
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrt.this.zzn((List) obj);
            }
        };
        return zzarx.zzo(zzd, zzaeq.zzc(zzaqtVar), this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzd() {
        ArrayList arrayList = new ArrayList();
        SharedPreferences zza = zzwe.zza(this.zza, "gms_icing_mdd_groups", this.zzb);
        SharedPreferences.Editor editor = null;
        for (String str : zza.getAll().keySet()) {
            try {
                arrayList.add(zzvw.zza(str));
            } catch (zzvv e) {
                zzuw.zzh(e, "Failed to deserialize groupKey:".concat(String.valueOf(str)));
                if (editor == null) {
                    editor = zza.edit();
                }
                editor.remove(str);
                zzuw.zza("%s: Deleting null file group ", "SharedPreferencesFileGroupsMetadata");
            }
        }
        if (editor != null) {
            editor.commit();
        }
        return zzarx.zzh(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0041  */
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi zze() {
        /*
            r5 = this;
            java.lang.String r0 = "FileGroupsMetadataUtil"
            android.content.Context r1 = r5.zza
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb r5 = r5.zzb
            java.io.File r5 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzvw.zzb(r1, r5)
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> L55
            r1.<init>(r5)     // Catch: java.io.FileNotFoundException -> L55
            long r2 = r5.length()     // Catch: java.lang.IllegalArgumentException -> L46
            int r5 = (int) r2     // Catch: java.lang.IllegalArgumentException -> L46
            java.nio.ByteBuffer r5 = java.nio.ByteBuffer.allocate(r5)     // Catch: java.lang.IllegalArgumentException -> L46
            java.nio.channels.FileChannel r2 = r1.getChannel()     // Catch: java.io.IOException -> L33
            r2.read(r5)     // Catch: java.io.IOException -> L33
            r5.rewind()     // Catch: java.io.IOException -> L33
            java.lang.Class<com.google.android.gms.internal.mlkit_vision_digital_ink.zzcr> r2 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzcr.class
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwc r3 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzcr.zzp()     // Catch: java.io.IOException -> L33
            r4 = 0
            java.util.List r5 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzwb.zzb(r5, r2, r3, r4)     // Catch: java.io.IOException -> L33
            r1.close()     // Catch: java.io.IOException -> L31
            goto L3f
        L31:
            r1 = move-exception
            goto L36
        L33:
            r5 = move-exception
            r1 = r5
            r5 = 0
        L36:
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.String r2 = "%s: IOException occurred while reading file groups."
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzuw.zzj(r1, r2, r0)
        L3f:
            if (r5 != 0) goto L62
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm r5 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm.zzq()
            goto L62
        L46:
            r5 = move-exception
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.String r1 = "%s: Exception while reading from stale groups into buffer."
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzuw.zzj(r5, r1, r0)
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm r5 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm.zzq()
            goto L62
        L55:
            java.lang.String r5 = r5.getAbsolutePath()
            java.lang.String r0 = "File %s not found while reading."
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzuw.zza(r0, r5)
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm r5 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm.zzq()
        L62:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi r5 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzarx.zzh(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrt.zze():com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzf() {
        return zzarx.zzi();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzg(zzdu zzduVar) {
        return zzarx.zzh((zzcr) zzwe.zzc(zzwe.zza(this.zza, "gms_icing_mdd_groups", this.zzb), zzvw.zzc(zzduVar), zzcr.zzp()));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzh(zzdu zzduVar) {
        return zzarx.zzh((zzdw) zzwe.zzc(zzwe.zza(this.zza, "gms_icing_mdd_group_key_properties", this.zzb), zzvw.zzc(zzduVar), zzdw.zzd()));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzi(zzdu zzduVar) {
        return zzarx.zzh(Boolean.valueOf(zzwe.zzg(zzwe.zza(this.zza, "gms_icing_mdd_groups", this.zzb), zzvw.zzc(zzduVar))));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzj(List list) {
        SharedPreferences.Editor edit = zzwe.zza(this.zza, "gms_icing_mdd_groups", this.zzb).edit();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            zzdu zzduVar = (zzdu) it2.next();
            zzuw.zzb("%s: Removing group %s %s", "SharedPreferencesFileGroupsMetadata", zzduVar.zzg(), zzduVar.zzh());
            edit.remove(zzwe.zze(zzduVar));
        }
        return zzarx.zzh(Boolean.valueOf(edit.commit()));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzk() {
        zzo().delete();
        return zzarx.zzi();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzl(zzdu zzduVar, zzcr zzcrVar) {
        return zzarx.zzh(Boolean.valueOf(zzwe.zzh(zzwe.zza(this.zza, "gms_icing_mdd_groups", this.zzb), zzvw.zzc(zzduVar), zzcrVar)));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzlm
    public final zzasi zzm(List list) {
        File zzo = zzo();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(zzo, true);
            try {
                ByteBuffer zza = zzwb.zza(list, false);
                if (zza != null) {
                    fileOutputStream.getChannel().write(zza);
                }
                fileOutputStream.close();
                return zzarx.zzh(Boolean.TRUE);
            } catch (IOException unused) {
                zzuw.zze("IOException occurred while writing file groups.");
                return zzarx.zzh(Boolean.FALSE);
            }
        } catch (FileNotFoundException unused2) {
            zzuw.zzf("File %s not found while writing.", zzo.getAbsolutePath());
            return zzarx.zzh(Boolean.FALSE);
        }
    }

    public final /* synthetic */ zzasi zzn(final List list) throws Exception {
        final ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(zzg((zzdu) it2.next()));
        }
        return zzwx.zza(arrayList).zzb(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrr
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                List list2 = list;
                List list3 = arrayList;
                ArrayList arrayList2 = new ArrayList();
                for (int i = 0; i < list2.size(); i++) {
                    zzdu zzduVar = (zzdu) list2.get(i);
                    zzcr zzcrVar = (zzcr) zzarx.zzp((Future) list3.get(i));
                    if (zzcrVar != null) {
                        arrayList2.add(zzsb.zzc(zzduVar, zzcrVar));
                    }
                }
                return zzarx.zzh(arrayList2);
            }
        }, this.zzc);
    }

    @VisibleForTesting
    public final File zzo() {
        return zzvw.zzb(this.zza, this.zzb);
    }
}
