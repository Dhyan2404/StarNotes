package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.DefaultExtractorInput;
import com.google.android.exoplayer2.source.chunk.ChunkExtractor;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceUtil;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.StatsDataSource;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class InitializationChunk extends Chunk {

    /* renamed from: a */
    public final ChunkExtractor f25641a;

    /* renamed from: b */
    public ChunkExtractor.TrackOutputProvider f25642b;

    /* renamed from: c */
    public long f25643c;

    /* renamed from: d */
    public volatile boolean f25644d;

    public InitializationChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, @Nullable Object obj, ChunkExtractor chunkExtractor) {
        super(dataSource, dataSpec, 2, format, i, obj, C4649C.TIME_UNSET, C4649C.TIME_UNSET);
        this.f25641a = chunkExtractor;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void cancelLoad() {
        this.f25644d = true;
    }

    public void init(ChunkExtractor.TrackOutputProvider trackOutputProvider) {
        this.f25642b = trackOutputProvider;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void load() throws IOException {
        if (this.f25643c == 0) {
            this.f25641a.init(this.f25642b, C4649C.TIME_UNSET, C4649C.TIME_UNSET);
        }
        try {
            DataSpec subrange = this.dataSpec.subrange(this.f25643c);
            StatsDataSource statsDataSource = this.dataSource;
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(statsDataSource, subrange.position, statsDataSource.open(subrange));
            while (!this.f25644d && this.f25641a.read(defaultExtractorInput)) {
                try {
                } finally {
                    this.f25643c = defaultExtractorInput.getPosition() - this.dataSpec.position;
                }
            }
        } finally {
            DataSourceUtil.closeQuietly(this.dataSource);
        }
    }
}
