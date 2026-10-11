package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import okio.BufferedSink;

/* loaded from: classes5.dex */
final class zzcbj extends OutputStream {
    final /* synthetic */ long zza;
    final /* synthetic */ BufferedSink zzb;
    final /* synthetic */ zzcbk zzc;
    private long zzd;

    public zzcbj(zzcbk zzcbkVar, long j, BufferedSink bufferedSink) {
        this.zzc = zzcbkVar;
        this.zza = j;
        this.zzb = bufferedSink;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zzc.zzf = true;
        long j = this.zza;
        if (j == -1 || this.zzd >= j) {
            this.zzb.close();
            return;
        }
        throw new ProtocolException("expected " + this.zza + " bytes but received " + this.zzd);
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        if (this.zzc.zzf) {
            return;
        }
        this.zzb.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.zzc.zzf) {
            throw new IOException("closed");
        }
        long j = this.zza;
        if (j != -1 && this.zzd + i2 > j) {
            throw new ProtocolException("expected " + this.zza + " bytes but received " + this.zzd + i2);
        }
        this.zzd += i2;
        try {
            this.zzb.write(bArr, i, i2);
        } catch (InterruptedIOException e) {
            throw new SocketTimeoutException(e.getMessage());
        }
    }
}
