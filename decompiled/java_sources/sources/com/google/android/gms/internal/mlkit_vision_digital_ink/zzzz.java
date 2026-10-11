package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class zzzz implements zzyf {
    private zzzz() {
    }

    public static zzzz zza() {
        return new zzzz();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzyf
    public final /* bridge */ /* synthetic */ Object zzb(zzye zzyeVar) throws IOException {
        Pair zzc = zzyeVar.zzd().zzc(zzyeVar.zza());
        try {
            if (zzyeVar.zzh()) {
                throw new zzzm("Accessing file descriptor directly would skip transforms for " + String.valueOf(zzyeVar.zzb()));
            }
            Uri uri = (Uri) zzc.first;
            if (!uri.getScheme().equals("fd")) {
                throw new zzzk("Scheme must be 'fd'");
            }
            try {
                ParcelFileDescriptor fromFd = ParcelFileDescriptor.fromFd(Integer.parseInt(uri.getSchemeSpecificPart()));
                ((Closeable) zzc.second).close();
                return new AssetFileDescriptor(fromFd, 0L, fromFd.getStatSize());
            } catch (NumberFormatException e) {
                throw new zzzk(e);
            }
        } catch (Throwable th) {
            ((Closeable) zzc.second).close();
            throw th;
        }
    }
}
