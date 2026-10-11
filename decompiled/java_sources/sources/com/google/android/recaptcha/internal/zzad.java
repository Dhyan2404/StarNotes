package com.google.android.recaptcha.internal;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import kotlin.io.FilesKt__FileReadWriteKt;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes6.dex */
public final class zzad {

    @NotNull
    private final Context zza;

    public zzad(@NotNull Context context) {
        this.zza = context;
    }

    @NotNull
    public static final byte[] zza(@NotNull File file) throws IOException, GeneralSecurityException {
        byte[] readBytes;
        readBytes = FilesKt__FileReadWriteKt.readBytes(file);
        return readBytes;
    }

    public static final void zzb(@NotNull File file, @NotNull byte[] bArr) throws IOException, GeneralSecurityException {
        if (file.exists() && !file.delete()) {
            throw new IOException("Unable to delete existing encrypted file");
        }
        FilesKt__FileReadWriteKt.writeBytes(file, bArr);
    }
}
