package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayDeque;

/* loaded from: classes5.dex */
public final class zzaad implements zzyf {
    private zzaad() {
    }

    public static zzaad zza() {
        return new zzaad();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzyf
    public final /* bridge */ /* synthetic */ Object zzb(zzye zzyeVar) throws IOException {
        ArrayDeque arrayDeque = new ArrayDeque();
        zzyg zzc = zzyeVar.zzc();
        arrayDeque.addAll(zzc.zzb(zzyeVar.zzb().buildUpon().fragment(null).build()));
        long j = 0;
        while (!arrayDeque.isEmpty()) {
            Uri uri = (Uri) arrayDeque.remove();
            if (zzc.zzj(uri)) {
                arrayDeque.addAll(zzc.zzb(uri));
            } else {
                if (!zzc.zzi(uri)) {
                    throw new FileNotFoundException(String.format("Child %s could not be opened", uri));
                }
                j += zzc.zza(uri);
            }
        }
        return Long.valueOf(j);
    }
}
