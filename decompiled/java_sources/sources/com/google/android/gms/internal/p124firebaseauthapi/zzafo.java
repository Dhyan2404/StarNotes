package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import java.io.UnsupportedEncodingException;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzafo {
    public static long zza(String str) {
        zzafr zzb = zzb(str);
        return zzb.zza().longValue() - zzb.zzb().longValue();
    }

    @NonNull
    private static zzafr zzb(String str) {
        Preconditions.checkNotEmpty(str);
        List<String> zza = zzac.zza('.').zza((CharSequence) str);
        if (zza.size() >= 2) {
            try {
                return zzafr.zza(new String(Base64Utils.decodeUrlSafeNoPadding(zza.get(1)), "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException("Unable to decode token", e);
            }
        }
        throw new RuntimeException("Invalid idToken " + str);
    }
}
