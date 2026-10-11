package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.util.Base64;
import java.io.File;

/* loaded from: classes5.dex */
public final class zzvw {
    public static zzdu zza(String str) throws zzvv {
        try {
            return (zzdu) zzwe.zzb(str, zzdu.zze());
        } catch (zzbut | NullPointerException e) {
            throw new zzvv("Failed to deserialize key:".concat(String.valueOf(str)), e);
        }
    }

    public static File zzb(Context context, zzagb zzagbVar) {
        String str = "gms_icing_mdd_garbage_file";
        if (zzagbVar != null && zzagbVar.zzc()) {
            str = "gms_icing_mdd_garbage_file".concat((String) zzagbVar.zza());
        }
        return new File(context.getFilesDir(), str);
    }

    public static String zzc(zzdu zzduVar) {
        return Base64.encodeToString(zzduVar.zzK(), 3);
    }
}
