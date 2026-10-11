package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class IcyDataSource implements DataSource {

    /* renamed from: a */
    public final DataSource f25243a;

    /* renamed from: b */
    public final int f25244b;

    /* renamed from: c */
    public final Listener f25245c;

    /* renamed from: d */
    public final byte[] f25246d;

    /* renamed from: e */
    public int f25247e;

    /* loaded from: classes5.dex */
    public interface Listener {
        void onIcyMetadata(ParsableByteArray parsableByteArray);
    }

    public IcyDataSource(DataSource dataSource, int i, Listener listener) {
        Assertions.checkArgument(i > 0);
        this.f25243a = dataSource;
        this.f25244b = i;
        this.f25245c = listener;
        this.f25246d = new byte[1];
        this.f25247e = i;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        this.f25243a.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: d */
    public final boolean m19651d() throws IOException {
        if (this.f25243a.read(this.f25246d, 0, 1) == -1) {
            return false;
        }
        int i = (this.f25246d[0] & 255) << 4;
        if (i == 0) {
            return true;
        }
        byte[] bArr = new byte[i];
        int i2 = i;
        int i3 = 0;
        while (i2 > 0) {
            int read = this.f25243a.read(bArr, i3, i2);
            if (read == -1) {
                return false;
            }
            i3 += read;
            i2 -= read;
        }
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        if (i > 0) {
            this.f25245c.onIcyMetadata(new ParsableByteArray(bArr, i));
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.f25243a.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.f25243a.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f25247e == 0) {
            if (!m19651d()) {
                return -1;
            }
            this.f25247e = this.f25244b;
        }
        int read = this.f25243a.read(bArr, i, Math.min(this.f25247e, i2));
        if (read != -1) {
            this.f25247e -= read;
        }
        return read;
    }
}
