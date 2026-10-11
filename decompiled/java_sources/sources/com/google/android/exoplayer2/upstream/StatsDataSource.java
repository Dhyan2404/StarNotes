package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class StatsDataSource implements DataSource {

    /* renamed from: a */
    public final DataSource f28152a;

    /* renamed from: b */
    public long f28153b;

    /* renamed from: c */
    public Uri f28154c = Uri.EMPTY;

    /* renamed from: d */
    public Map<String, List<String>> f28155d = Collections.emptyMap();

    public StatsDataSource(DataSource dataSource) {
        this.f28152a = (DataSource) Assertions.checkNotNull(dataSource);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        this.f28152a.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws IOException {
        this.f28152a.close();
    }

    public long getBytesRead() {
        return this.f28153b;
    }

    public Uri getLastOpenedUri() {
        return this.f28154c;
    }

    public Map<String, List<String>> getLastResponseHeaders() {
        return this.f28155d;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.f28152a.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.f28152a.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        this.f28154c = dataSpec.uri;
        this.f28155d = Collections.emptyMap();
        long open = this.f28152a.open(dataSpec);
        this.f28154c = (Uri) Assertions.checkNotNull(getUri());
        this.f28155d = getResponseHeaders();
        return open;
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f28152a.read(bArr, i, i2);
        if (read != -1) {
            this.f28153b += read;
        }
        return read;
    }

    public void resetBytesRead() {
        this.f28153b = 0L;
    }
}
