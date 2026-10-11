package com.google.android.exoplayer2.source.hls;

import com.google.android.exoplayer2.upstream.DataSource;

/* loaded from: classes5.dex */
public final class DefaultHlsDataSourceFactory implements HlsDataSourceFactory {

    /* renamed from: a */
    public final DataSource.Factory f25882a;

    public DefaultHlsDataSourceFactory(DataSource.Factory factory) {
        this.f25882a = factory;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsDataSourceFactory
    public DataSource createDataSource(int i) {
        return this.f25882a.createDataSource();
    }
}
