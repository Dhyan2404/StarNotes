package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import okio.Buffer;
import okio.BufferedSink;
import okio.Okio;
import okio.Pipe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzcbl extends zzcbk {
    private final Pipe zza;

    public zzcbl(long j) {
        Pipe pipe = new Pipe(8192L);
        this.zza = pipe;
        zzb(Okio.buffer(pipe.sink()), j);
    }

    @Override // okhttp3.RequestBody
    public final void writeTo(BufferedSink bufferedSink) throws IOException {
        Buffer buffer = new Buffer();
        while (this.zza.source().read(buffer, 8192L) != -1) {
            bufferedSink.write(buffer, buffer.size());
        }
    }
}
