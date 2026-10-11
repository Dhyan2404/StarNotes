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
public class ContainerMediaChunk extends BaseMediaChunk {

    /* renamed from: c */
    public final int f25632c;

    /* renamed from: d */
    public final long f25633d;

    /* renamed from: e */
    public final ChunkExtractor f25634e;

    /* renamed from: f */
    public long f25635f;

    /* renamed from: g */
    public volatile boolean f25636g;

    /* renamed from: h */
    public boolean f25637h;

    public ContainerMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, @Nullable Object obj, long j, long j2, long j3, long j4, long j5, int i2, long j6, ChunkExtractor chunkExtractor) {
        super(dataSource, dataSpec, format, i, obj, j, j2, j3, j4, j5);
        this.f25632c = i2;
        this.f25633d = j6;
        this.f25634e = chunkExtractor;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void cancelLoad() {
        this.f25636g = true;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public long getNextChunkIndex() {
        return this.chunkIndex + this.f25632c;
    }

    public ChunkExtractor.TrackOutputProvider getTrackOutputProvider(BaseMediaChunkOutput baseMediaChunkOutput) {
        return baseMediaChunkOutput;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.f25637h;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void load() throws IOException {
        if (this.f25635f == 0) {
            BaseMediaChunkOutput output = getOutput();
            output.setSampleOffsetUs(this.f25633d);
            ChunkExtractor chunkExtractor = this.f25634e;
            ChunkExtractor.TrackOutputProvider trackOutputProvider = getTrackOutputProvider(output);
            long j = this.clippedStartTimeUs;
            long j2 = j == C4649C.TIME_UNSET ? -9223372036854775807L : j - this.f25633d;
            long j3 = this.clippedEndTimeUs;
            chunkExtractor.init(trackOutputProvider, j2, j3 == C4649C.TIME_UNSET ? -9223372036854775807L : j3 - this.f25633d);
        }
        try {
            DataSpec subrange = this.dataSpec.subrange(this.f25635f);
            StatsDataSource statsDataSource = this.dataSource;
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(statsDataSource, subrange.position, statsDataSource.open(subrange));
            do {
                try {
                    if (this.f25636g) {
                        break;
                    }
                } finally {
                    this.f25635f = defaultExtractorInput.getPosition() - this.dataSpec.position;
                }
            } while (this.f25634e.read(defaultExtractorInput));
            DataSourceUtil.closeQuietly(this.dataSource);
            this.f25637h = !this.f25636g;
        } catch (Throwable th) {
            DataSourceUtil.closeQuietly(this.dataSource);
            throw th;
        }
    }
}
