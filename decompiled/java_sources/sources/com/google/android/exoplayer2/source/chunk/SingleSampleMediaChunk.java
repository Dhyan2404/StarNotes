package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.DefaultExtractorInput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceUtil;
import com.google.android.exoplayer2.upstream.DataSpec;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class SingleSampleMediaChunk extends BaseMediaChunk {

    /* renamed from: c */
    public final int f25655c;

    /* renamed from: d */
    public final Format f25656d;

    /* renamed from: e */
    public long f25657e;

    /* renamed from: f */
    public boolean f25658f;

    public SingleSampleMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, @Nullable Object obj, long j, long j2, long j3, int i2, Format format2) {
        super(dataSource, dataSpec, format, i, obj, j, j2, C4649C.TIME_UNSET, C4649C.TIME_UNSET, j3);
        this.f25655c = i2;
        this.f25656d = format2;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void cancelLoad() {
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.f25658f;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void load() throws IOException {
        BaseMediaChunkOutput output = getOutput();
        output.setSampleOffsetUs(0L);
        TrackOutput track = output.track(0, this.f25655c);
        track.format(this.f25656d);
        try {
            long open = this.dataSource.open(this.dataSpec.subrange(this.f25657e));
            if (open != -1) {
                open += this.f25657e;
            }
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(this.dataSource, this.f25657e, open);
            for (int i = 0; i != -1; i = track.sampleData((DataReader) defaultExtractorInput, Integer.MAX_VALUE, true)) {
                this.f25657e += i;
            }
            track.sampleMetadata(this.startTimeUs, 1, (int) this.f25657e, 0, null);
            DataSourceUtil.closeQuietly(this.dataSource);
            this.f25658f = true;
        } catch (Throwable th) {
            DataSourceUtil.closeQuietly(this.dataSource);
            throw th;
        }
    }
}
