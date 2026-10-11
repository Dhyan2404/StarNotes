package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes5.dex */
final class zzzu implements zzxu {
    private final zzyg zza;
    private final Uri zzb;

    public zzzu(zzyg zzygVar, Uri uri) {
        this.zza = zzygVar;
        this.zzb = uri;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzxu
    public final long zza() throws IOException {
        return this.zza.zza(this.zzb);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzxu
    public final long zzb(InputStream inputStream, long j, long j2) throws IOException {
        long zza = this.zza.zza(this.zzb);
        if (j > zza) {
            throw new IOException(String.format("Invalid resumed download; offsetBytes exceeds the existing data size: %d, %d", Long.valueOf(j), Long.valueOf(zza)));
        }
        OutputStream outputStream = (OutputStream) this.zza.zzc(this.zzb, j > 0 ? zzzy.zza() : zzaae.zza());
        try {
            long zza2 = zzapb.zza(inputStream, outputStream);
            if (outputStream != null) {
                outputStream.close();
            }
            return j + zza2;
        } catch (Throwable th) {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Throwable th2) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                    } catch (Exception unused) {
                    }
                }
            }
            throw th;
        }
    }
}
