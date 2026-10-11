package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import java.io.IOException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzwe {
    public static SharedPreferences zza(Context context, String str, zzagb zzagbVar) {
        return context.getSharedPreferences(zzd(str, zzagbVar), 0);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu, java.lang.Object] */
    public static zzbvu zzb(String str, zzbwc zzbwcVar) throws zzbut {
        try {
            return zzbwcVar.zze(Base64.decode(str, 3), zzbtr.zza());
        } catch (IllegalArgumentException e) {
            throw new zzbut("Unable to decode to byte array", new IOException(e));
        }
    }

    @Nullable
    public static zzbvu zzc(SharedPreferences sharedPreferences, String str, zzbwc zzbwcVar) {
        String string = sharedPreferences.getString(str, null);
        if (string == null) {
            return null;
        }
        try {
            return zzb(string, zzbwcVar);
        } catch (zzbut unused) {
            return null;
        }
    }

    public static String zzd(String str, zzagb zzagbVar) {
        return (zzagbVar == null || !zzagbVar.zzc()) ? str : str.concat((String) zzagbVar.zza());
    }

    public static String zze(zzbvu zzbvuVar) {
        return Base64.encodeToString(zzbvuVar.zzK(), 3);
    }

    public static void zzf(SharedPreferences.Editor editor, String str, zzbvu zzbvuVar) {
        editor.putString(str, zze(zzbvuVar));
    }

    public static boolean zzg(SharedPreferences sharedPreferences, String str) {
        return sharedPreferences.edit().remove(str).commit();
    }

    public static boolean zzh(SharedPreferences sharedPreferences, String str, zzbvu zzbvuVar) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        zzf(edit, str, zzbvuVar);
        return edit.commit();
    }
}
