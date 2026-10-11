package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class ResolvingDataSource implements DataSource {

    /* renamed from: a */
    public final DataSource f28131a;

    /* renamed from: b */
    public final Resolver f28132b;

    /* renamed from: c */
    public boolean f28133c;

    /* loaded from: classes5.dex */
    public static final class Factory implements DataSource.Factory {

        /* renamed from: a */
        public final DataSource.Factory f28134a;

        /* renamed from: b */
        public final Resolver f28135b;

        public Factory(DataSource.Factory factory, Resolver resolver) {
            this.f28134a = factory;
            this.f28135b = resolver;
        }

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public ResolvingDataSource createDataSource() {
            return new ResolvingDataSource(this.f28134a.createDataSource(), this.f28135b);
        }
    }

    /* loaded from: classes5.dex */
    public interface Resolver {
        DataSpec resolveDataSpec(DataSpec dataSpec) throws IOException;

        default Uri resolveReportedUri(Uri uri) {
            return uri;
        }
    }

    public ResolvingDataSource(DataSource dataSource, Resolver resolver) {
        this.f28131a = dataSource;
        this.f28132b = resolver;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        this.f28131a.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws IOException {
        if (this.f28133c) {
            this.f28133c = false;
            this.f28131a.close();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.f28131a.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        Uri uri = this.f28131a.getUri();
        if (uri == null) {
            return null;
        }
        return this.f28132b.resolveReportedUri(uri);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        DataSpec resolveDataSpec = this.f28132b.resolveDataSpec(dataSpec);
        this.f28133c = true;
        return this.f28131a.open(resolveDataSpec);
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.f28131a.read(bArr, i, i2);
    }
}
