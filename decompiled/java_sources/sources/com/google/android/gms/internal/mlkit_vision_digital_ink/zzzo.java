package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class zzzo extends zzzr implements zzzg {
    private final FileOutputStream zza;
    private final File zzb;

    public zzzo(FileOutputStream fileOutputStream, File file) {
        super(fileOutputStream);
        this.zza = fileOutputStream;
        this.zzb = file;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzzg
    public final File zza() {
        return this.zzb;
    }

    public final void zzb() throws IOException {
        this.zza.getFD().sync();
    }
}
