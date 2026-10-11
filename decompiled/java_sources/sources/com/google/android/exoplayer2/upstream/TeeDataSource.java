package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class TeeDataSource implements DataSource {

    /* renamed from: a */
    public final DataSource f28156a;

    /* renamed from: b */
    public final DataSink f28157b;

    /* renamed from: c */
    public boolean f28158c;

    /* renamed from: d */
    public long f28159d;

    public TeeDataSource(DataSource dataSource, DataSink dataSink) {
        this.f28156a = (DataSource) Assertions.checkNotNull(dataSource);
        this.f28157b = (DataSink) Assertions.checkNotNull(dataSink);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        this.f28156a.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws IOException {
        try {
            this.f28156a.close();
        } finally {
            if (this.f28158c) {
                this.f28158c = false;
                this.f28157b.close();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.f28156a.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.f28156a.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        long open = this.f28156a.open(dataSpec);
        this.f28159d = open;
        if (open == 0) {
            return 0L;
        }
        if (dataSpec.length == -1 && open != -1) {
            dataSpec = dataSpec.subrange(0L, open);
        }
        this.f28158c = true;
        this.f28157b.open(dataSpec);
        return this.f28159d;
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f28159d == 0) {
            return -1;
        }
        int read = this.f28156a.read(bArr, i, i2);
        if (read > 0) {
            this.f28157b.write(bArr, i, read);
            long j = this.f28159d;
            if (j != -1) {
                this.f28159d = j - read;
            }
        }
        return read;
    }
}
