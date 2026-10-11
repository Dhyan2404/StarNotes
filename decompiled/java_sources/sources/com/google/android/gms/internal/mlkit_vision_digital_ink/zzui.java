package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;

/* loaded from: classes5.dex */
public final class zzui {
    public static Uri zza(Uri uri) {
        String uri2 = uri.toString();
        return Uri.parse(uri2.substring(0, uri2.lastIndexOf("_")));
    }

    public static String zzb(String str, String str2) {
        return str + "_" + str2;
    }
}
