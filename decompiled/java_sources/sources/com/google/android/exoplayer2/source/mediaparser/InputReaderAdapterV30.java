package com.google.android.exoplayer2.source.mediaparser;

import android.annotation.SuppressLint;
import android.media.MediaParser$SeekableInputReader;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

@RequiresApi(30)
@SuppressLint({"Override"})
/* loaded from: classes5.dex */
public final class InputReaderAdapterV30 implements MediaParser$SeekableInputReader {

    /* renamed from: a */
    @Nullable
    public DataReader f26221a;

    /* renamed from: b */
    public long f26222b;

    /* renamed from: c */
    public long f26223c;

    /* renamed from: d */
    public long f26224d;

    public long getAndResetSeekPosition() {
        long j = this.f26224d;
        this.f26224d = -1L;
        return j;
    }

    public long getLength() {
        return this.f26222b;
    }

    public long getPosition() {
        return this.f26223c;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = ((DataReader) Util.castNonNull(this.f26221a)).read(bArr, i, i2);
        this.f26223c += read;
        return read;
    }

    public void seekToPosition(long j) {
        this.f26224d = j;
    }

    public void setCurrentPosition(long j) {
        this.f26223c = j;
    }

    public void setDataReader(DataReader dataReader, long j) {
        this.f26221a = dataReader;
        this.f26222b = j;
        this.f26224d = -1L;
    }
}
