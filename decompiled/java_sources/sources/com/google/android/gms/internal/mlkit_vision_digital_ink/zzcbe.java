package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import okhttp3.Request;
import okio.Buffer;
import okio.BufferedSink;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzcbe extends zzcbk {
    final Buffer zza;
    long zzb;

    public zzcbe(long j) {
        Buffer buffer = new Buffer();
        this.zza = buffer;
        this.zzb = -1L;
        zzb(buffer, j);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzcbk, okhttp3.RequestBody
    public final long contentLength() {
        return this.zzb;
    }

    @Override // okhttp3.RequestBody
    public final void writeTo(BufferedSink bufferedSink) {
        this.zza.copyTo(bufferedSink.getBufferField(), 0L, this.zza.size());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzcbk
    public final Request zza(Request request) throws IOException {
        if (request.header("Content-Length") != null) {
            return request;
        }
        this.zze.close();
        this.zzb = this.zza.size();
        return request.newBuilder().removeHeader("Transfer-Encoding").header("Content-Length", Long.toString(this.zza.size())).build();
    }
}
