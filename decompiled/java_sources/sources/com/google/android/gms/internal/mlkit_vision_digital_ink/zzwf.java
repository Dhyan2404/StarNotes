package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;
import android.system.ErrnoException;
import android.system.Os;
import androidx.annotation.RequiresApi;
import java.io.IOException;

@RequiresApi(21)
/* loaded from: classes5.dex */
public final class zzwf {
    @RequiresApi(21)
    public static Uri zza(Context context, Uri uri) throws IOException {
        try {
            String readlink = Os.readlink(zzys.zza(uri, context).getAbsolutePath());
            if (readlink == null) {
                throw new IOException("Unable to read symlink");
            }
            zzyq zza = zzyr.zza(context);
            zza.zzb(readlink, null);
            return zza.zza();
        } catch (ErrnoException | zzzk e) {
            throw new IOException("Unable to read symlink", e);
        }
    }

    @RequiresApi(21)
    public static void zzb(Context context, Uri uri, Uri uri2) throws IOException {
        try {
            Os.symlink(zzys.zza(uri2, context).getAbsolutePath(), zzys.zza(uri, context).getAbsolutePath());
        } catch (ErrnoException | zzzk e) {
            throw new IOException("Unable to create symlink", e);
        }
    }
}
