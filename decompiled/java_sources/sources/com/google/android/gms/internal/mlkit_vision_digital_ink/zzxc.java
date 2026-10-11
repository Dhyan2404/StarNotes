package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.util.Base64;
import android.util.Log;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* loaded from: classes5.dex */
public final class zzxc {
    private static final String zza = "zzxc";

    public static InputStream zza(String str) throws zzxa {
        zzagg.zze(str.startsWith("data:"));
        int indexOf = str.indexOf(44);
        if (indexOf == -1) {
            Log.e(zza, "Comma not found in data URI: ".concat(str));
            throw new zzxa(1);
        }
        String substring = str.substring(indexOf + 1);
        String[] split = str.substring(5, indexOf).split(AndroidTreeView.f47214k);
        boolean z = false;
        for (int i = 1; i < split.length; i++) {
            String str2 = split[i];
            if (str2.equals("base64")) {
                z = true;
            } else if (!str2.startsWith("charset=")) {
                Log.e(zza, "Unknown data-URI option '" + str2 + "' in " + str);
                throw new zzxa(2);
            }
        }
        if (!z) {
            Log.e(zza, "We only understand base64-encoded data URIs: ".concat(str));
            throw new zzxa(3);
        }
        try {
            byte[] decode = Base64.decode(substring, 0);
            Log.i(zza, "Successfully decoded data uri: ".concat(str));
            return new ByteArrayInputStream(decode);
        } catch (IllegalArgumentException unused) {
            Log.e(zza, "Invalid base64 payload in data URI: ".concat(str));
            throw new zzxa(4);
        }
    }

    public static boolean zzb(String str) {
        return str.startsWith("data:");
    }
}
