package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.File;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class zzapd {
    private static final zzaoh zza = new zzapc();

    public static void zza(File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        file.toString();
        throw new IOException("Unable to create parent directories of ".concat(file.toString()));
    }
}
