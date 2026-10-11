package com.google.android.gms.internal.p124firebaseauthapi;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;

/* loaded from: classes5.dex */
public final class zzaco {

    @Nullable
    private static Boolean zza;

    public static boolean zza(Context context) {
        if (zza == null) {
            int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            zza = Boolean.valueOf(isGooglePlayServicesAvailable == 0 || isGooglePlayServicesAvailable == 2);
        }
        return zza.booleanValue();
    }
}
