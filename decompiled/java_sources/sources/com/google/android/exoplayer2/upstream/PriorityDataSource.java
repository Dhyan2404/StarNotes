package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class PriorityDataSource implements DataSource {

    /* renamed from: a */
    public final DataSource f28115a;

    /* renamed from: b */
    public final PriorityTaskManager f28116b;

    /* renamed from: c */
    public final int f28117c;

    /* loaded from: classes5.dex */
    public static final class Factory implements DataSource.Factory {

        /* renamed from: a */
        public final DataSource.Factory f28118a;

        /* renamed from: b */
        public final PriorityTaskManager f28119b;

        /* renamed from: c */
        public final int f28120c;

        public Factory(DataSource.Factory factory, PriorityTaskManager priorityTaskManager, int i) {
            this.f28118a = factory;
            this.f28119b = priorityTaskManager;
            this.f28120c = i;
        }

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public PriorityDataSource createDataSource() {
            return new PriorityDataSource(this.f28118a.createDataSource(), this.f28119b, this.f28120c);
        }
    }

    public PriorityDataSource(DataSource dataSource, PriorityTaskManager priorityTaskManager, int i) {
        this.f28115a = (DataSource) Assertions.checkNotNull(dataSource);
        this.f28116b = (PriorityTaskManager) Assertions.checkNotNull(priorityTaskManager);
        this.f28117c = i;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        this.f28115a.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws IOException {
        this.f28115a.close();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.f28115a.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.f28115a.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        this.f28116b.proceedOrThrow(this.f28117c);
        return this.f28115a.open(dataSpec);
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws IOException {
        this.f28116b.proceedOrThrow(this.f28117c);
        return this.f28115a.read(bArr, i, i2);
    }
}
