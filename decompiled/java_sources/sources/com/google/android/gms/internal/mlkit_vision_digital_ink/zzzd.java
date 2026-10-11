package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;

/* loaded from: classes5.dex */
public final class zzzd {
    private static final zzzd zza = new zzzd();

    private zzzd() {
    }

    public static final File zza(Uri uri) throws zzzk {
        if (!uri.getScheme().equals("file")) {
            throw new zzzk("Scheme must be 'file'");
        }
        if (!TextUtils.isEmpty(uri.getQuery())) {
            throw new zzzk("Did not expect uri to have query");
        }
        if (TextUtils.isEmpty(uri.getAuthority())) {
            return new File(uri.getPath());
        }
        throw new zzzk("Did not expect uri to have authority");
    }
}
