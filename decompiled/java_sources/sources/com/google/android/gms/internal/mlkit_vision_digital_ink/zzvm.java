package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzvm {
    public static Uri zza(Context context, zzagb zzagbVar) {
        zzyq zza = zzyr.zza(context);
        zza.zzc((zzagbVar == null || !zzagbVar.zzc()) ? "datadownload" : (String) zzagbVar.zza());
        if (zzagbVar != null && zzagbVar.zzc()) {
            zza.zzd("datadownload");
        }
        return zza.zza();
    }

    public static Uri zzb(Context context, String str) throws IOException {
        zzyx zzb = zzyy.zzb(context);
        zzb.zzc(str);
        return zzb.zza();
    }

    public static String zzc(String str, String str2, zzagb zzagbVar) {
        if (zzagbVar != null && zzagbVar.zzc()) {
            str = str.concat((String) zzagbVar.zza());
        }
        return str.concat(".pb");
    }

    public static Uri zzd(Context context, int i, zzagb zzagbVar) {
        return zza(context, zzagbVar).buildUpon().appendPath("links").build().buildUpon().appendPath(zzf(i)).build();
    }

    @Nullable
    public static Uri zze(Context context, int i, String str, String str2, zzsp zzspVar, zzagb zzagbVar, boolean z) {
        try {
            if (z) {
                return zzb(context, str2);
            }
            return zza(context, zzagbVar).buildUpon().appendPath(zzf(i)).build().buildUpon().appendPath(str).build();
        } catch (Exception e) {
            zzuw.zzj(e, "%s: Unable to create mobstore uri for file %s.", "DirectoryUtil", str);
            return null;
        }
    }

    private static String zzf(int i) {
        int i2 = i - 1;
        return i2 != 0 ? i2 != 1 ? "public_3p" : "private" : "public";
    }
}
