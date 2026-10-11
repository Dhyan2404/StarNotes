package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import android.system.Os;
import java.io.File;
import java.io.IOException;
import java.util.Locale;

/* loaded from: classes5.dex */
public final class zzact {
    public static IOException zza(zzyg zzygVar, Uri uri, IOException iOException) {
        try {
            zzaaa zza = zzaaa.zza();
            zza.zzc();
            File file = (File) zzygVar.zzc(uri, zza);
            return file.exists() ? file.isFile() ? file.canRead() ? file.canWrite() ? zzc(file, iOException) : zzc(file, iOException) : file.canWrite() ? zzc(file, iOException) : zzc(file, iOException) : file.canRead() ? file.canWrite() ? zzc(file, iOException) : zzc(file, iOException) : file.canWrite() ? zzc(file, iOException) : zzc(file, iOException) : zzc(file, iOException);
        } catch (IOException unused) {
            return new IOException(iOException);
        }
    }

    private static IOException zzb(File file, IOException iOException) {
        String concat;
        try {
            Locale locale = Locale.US;
            concat = "Inoperable file:" + String.format(locale, " canonical[%s] freeSpace[%d]", file.getCanonicalPath(), Long.valueOf(file.getFreeSpace()));
            try {
                concat = concat + String.format(locale, " mode[%d]", Integer.valueOf(Os.stat(file.getCanonicalPath()).st_mode));
            } catch (Exception unused) {
            }
        } catch (IOException unused2) {
            concat = "Inoperable file:".concat(" failed");
        }
        return new IOException(concat, iOException);
    }

    private static IOException zzc(File file, IOException iOException) {
        File parentFile = file.getParentFile();
        if (parentFile != null && parentFile.exists()) {
            return parentFile.isDirectory() ? parentFile.canRead() ? parentFile.canWrite() ? zzb(file, iOException) : zzb(file, iOException) : parentFile.canWrite() ? zzb(file, iOException) : zzb(file, iOException) : parentFile.canRead() ? parentFile.canWrite() ? zzb(file, iOException) : zzb(file, iOException) : parentFile.canWrite() ? zzb(file, iOException) : zzb(file, iOException);
        }
        return zzb(file, iOException);
    }
}
