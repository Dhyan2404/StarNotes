package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class ParsingLoadable<T> implements Loader.Loadable {

    /* renamed from: a */
    public final StatsDataSource f28112a;

    /* renamed from: b */
    public final Parser<? extends T> f28113b;

    /* renamed from: c */
    @Nullable
    public volatile T f28114c;
    public final DataSpec dataSpec;
    public final long loadTaskId;
    public final int type;

    /* loaded from: classes5.dex */
    public interface Parser<T> {
        T parse(Uri uri, InputStream inputStream) throws IOException;
    }

    public ParsingLoadable(DataSource dataSource, Uri uri, int i, Parser<? extends T> parser) {
        this(dataSource, new DataSpec.Builder().setUri(uri).setFlags(1).build(), i, parser);
    }

    public static <T> T load(DataSource dataSource, Parser<? extends T> parser, Uri uri, int i) throws IOException {
        ParsingLoadable parsingLoadable = new ParsingLoadable(dataSource, uri, i, parser);
        parsingLoadable.load();
        return (T) Assertions.checkNotNull(parsingLoadable.getResult());
    }

    public long bytesLoaded() {
        return this.f28112a.getBytesRead();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void cancelLoad() {
    }

    public Map<String, List<String>> getResponseHeaders() {
        return this.f28112a.getLastResponseHeaders();
    }

    @Nullable
    public final T getResult() {
        return this.f28114c;
    }

    public Uri getUri() {
        return this.f28112a.getLastOpenedUri();
    }

    public ParsingLoadable(DataSource dataSource, DataSpec dataSpec, int i, Parser<? extends T> parser) {
        this.f28112a = new StatsDataSource(dataSource);
        this.dataSpec = dataSpec;
        this.type = i;
        this.f28113b = parser;
        this.loadTaskId = LoadEventInfo.getNewId();
    }

    public static <T> T load(DataSource dataSource, Parser<? extends T> parser, DataSpec dataSpec, int i) throws IOException {
        ParsingLoadable parsingLoadable = new ParsingLoadable(dataSource, dataSpec, i, parser);
        parsingLoadable.load();
        return (T) Assertions.checkNotNull(parsingLoadable.getResult());
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void load() throws IOException {
        this.f28112a.resetBytesRead();
        DataSourceInputStream dataSourceInputStream = new DataSourceInputStream(this.f28112a, this.dataSpec);
        try {
            dataSourceInputStream.open();
            this.f28114c = this.f28113b.parse((Uri) Assertions.checkNotNull(this.f28112a.getUri()), dataSourceInputStream);
        } finally {
            Util.closeQuietly(dataSourceInputStream);
        }
    }
}
