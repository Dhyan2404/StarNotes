package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.io.OutputStream;
import javax.annotation.Nullable;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.BufferedSink;
import okio.Timeout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class zzcbk extends RequestBody {
    Timeout zzc;
    long zzd;
    OutputStream zze;
    boolean zzf;

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return this.zzd;
    }

    @Override // okhttp3.RequestBody
    @Nullable
    public final MediaType contentType() {
        return null;
    }

    public Request zza(Request request) throws IOException {
        return request;
    }

    public final void zzb(BufferedSink bufferedSink, long j) {
        this.zzc = bufferedSink.timeout();
        this.zzd = j;
        this.zze = new zzcbj(this, j, bufferedSink);
    }
}
