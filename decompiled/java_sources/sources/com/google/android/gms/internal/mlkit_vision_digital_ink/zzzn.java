package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

/* loaded from: classes5.dex */
public final class zzzn extends zzzq implements zzzg {
    private final FileInputStream zza;
    private final File zzb;

    private zzzn(FileInputStream fileInputStream, File file) {
        super(fileInputStream);
        this.zza = fileInputStream;
        this.zzb = file;
    }

    public static zzzn zzb(File file) throws FileNotFoundException {
        return new zzzn(new FileInputStream(file), file);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzzg
    public final File zza() {
        return this.zzb;
    }
}
