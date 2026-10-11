package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzyy {
    private static final zzagw zza = zzagw.zzd(".");

    public static long zza(Uri uri) throws zzzk {
        String query = uri.getQuery();
        if (TextUtils.isEmpty(query)) {
            throw new zzzk(String.format("The uri query is null or empty, expected %s", "expiryDateSecs=<expiryDateSecs>"));
        }
        String queryParameter = uri.getQueryParameter("expiryDateSecs");
        if (queryParameter != null) {
            return Long.parseLong(queryParameter);
        }
        throw new zzzk(String.format("The uri query is malformed, expected %s but found %s", "expiryDateSecs=<expiryDateSecs>", query));
    }

    public static zzyx zzb(Context context) {
        return new zzyx(context, null);
    }

    public static void zzc(Uri uri) throws zzzk {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 1) {
            String str = pathSegments.get(0);
            if (zza.zzg(str).size() == 1 || (str.endsWith(".lease") && !TextUtils.equals(str, ".lease"))) {
                if (TextUtils.isEmpty(uri.getQuery())) {
                    return;
                }
                if (uri.getQueryParameterNames().size() != 1 || uri.getQueryParameter("expiryDateSecs") == null) {
                    throw new zzzk(String.format("The uri query is malformed, expected %s but found query %s", "expiryDateSecs=<expiryDateSecs>", uri.getQuery()));
                }
                return;
            }
        }
        throw new zzzk(String.format("The uri is malformed, expected %s or %s but found %s", "<non_empty_checksum>", "<non_empty_checksum>.lease", uri.getPath()));
    }

    public static boolean zzd(String str) {
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        return TextUtils.equals(str, "*.lease");
    }

    public static boolean zze(String str) {
        return str.endsWith(".lease");
    }

    public static byte[] zzf(String str) {
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        return zzaoz.zzf().zzd().zzg((CharSequence) zza.zzg(str).get(0));
    }
}
