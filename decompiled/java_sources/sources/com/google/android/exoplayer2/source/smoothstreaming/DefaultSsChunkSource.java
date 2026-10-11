package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.mp4.Track;
import com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.chunk.BaseMediaChunkIterator;
import com.google.android.exoplayer2.source.chunk.BundledChunkExtractor;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.chunk.ChunkExtractor;
import com.google.android.exoplayer2.source.chunk.ChunkHolder;
import com.google.android.exoplayer2.source.chunk.ContainerMediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionUtil;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoaderErrorThrower;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.List;

/* loaded from: classes5.dex */
public class DefaultSsChunkSource implements SsChunkSource {

    /* renamed from: a */
    public final LoaderErrorThrower f26565a;

    /* renamed from: b */
    public final int f26566b;

    /* renamed from: c */
    public final ChunkExtractor[] f26567c;

    /* renamed from: d */
    public final DataSource f26568d;

    /* renamed from: e */
    public ExoTrackSelection f26569e;

    /* renamed from: f */
    public SsManifest f26570f;

    /* renamed from: g */
    public int f26571g;

    /* renamed from: h */
    @Nullable
    public IOException f26572h;

    /* loaded from: classes5.dex */
    public static final class Factory implements SsChunkSource.Factory {

        /* renamed from: a */
        public final DataSource.Factory f26573a;

        public Factory(DataSource.Factory factory) {
            this.f26573a = factory;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource.Factory
        public SsChunkSource createChunkSource(LoaderErrorThrower loaderErrorThrower, SsManifest ssManifest, int i, ExoTrackSelection exoTrackSelection, @Nullable TransferListener transferListener) {
            DataSource createDataSource = this.f26573a.createDataSource();
            if (transferListener != null) {
                createDataSource.addTransferListener(transferListener);
            }
            return new DefaultSsChunkSource(loaderErrorThrower, ssManifest, i, exoTrackSelection, createDataSource);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource$a */
    /* loaded from: classes5.dex */
    public static final class C4926a extends BaseMediaChunkIterator {

        /* renamed from: d */
        public final SsManifest.StreamElement f26574d;

        /* renamed from: e */
        public final int f26575e;

        public C4926a(SsManifest.StreamElement streamElement, int i, int i2) {
            super(i2, streamElement.chunkCount - 1);
            this.f26574d = streamElement;
            this.f26575e = i;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            return getChunkStartTimeUs() + this.f26574d.getChunkDurationUs((int) getCurrentIndex());
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.f26574d.getStartTimeUs((int) getCurrentIndex());
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public DataSpec getDataSpec() {
            checkInBounds();
            return new DataSpec(this.f26574d.buildRequestUri(this.f26575e, (int) getCurrentIndex()));
        }
    }

    public DefaultSsChunkSource(LoaderErrorThrower loaderErrorThrower, SsManifest ssManifest, int i, ExoTrackSelection exoTrackSelection, DataSource dataSource) {
        this.f26565a = loaderErrorThrower;
        this.f26570f = ssManifest;
        this.f26566b = i;
        this.f26569e = exoTrackSelection;
        this.f26568d = dataSource;
        SsManifest.StreamElement streamElement = ssManifest.streamElements[i];
        this.f26567c = new ChunkExtractor[exoTrackSelection.length()];
        int i2 = 0;
        while (i2 < this.f26567c.length) {
            int indexInTrackGroup = exoTrackSelection.getIndexInTrackGroup(i2);
            Format format = streamElement.formats[indexInTrackGroup];
            TrackEncryptionBox[] trackEncryptionBoxArr = format.drmInitData != null ? ((SsManifest.ProtectionElement) Assertions.checkNotNull(ssManifest.protectionElement)).trackEncryptionBoxes : null;
            int i3 = streamElement.type;
            int i4 = i2;
            this.f26567c[i4] = new BundledChunkExtractor(new FragmentedMp4Extractor(3, null, new Track(indexInTrackGroup, i3, streamElement.timescale, C4649C.TIME_UNSET, ssManifest.durationUs, format, 0, trackEncryptionBoxArr, i3 == 2 ? 4 : 0, null, null)), streamElement.type, format);
            i2 = i4 + 1;
        }
    }

    /* renamed from: a */
    public static MediaChunk m20502a(Format format, DataSource dataSource, Uri uri, int i, long j, long j2, long j3, int i2, @Nullable Object obj, ChunkExtractor chunkExtractor) {
        return new ContainerMediaChunk(dataSource, new DataSpec(uri), format, i2, obj, j, j2, j3, C4649C.TIME_UNSET, i, 1, j, chunkExtractor);
    }

    /* renamed from: b */
    public final long m20503b(long j) {
        SsManifest ssManifest = this.f26570f;
        if (!ssManifest.isLive) {
            return C4649C.TIME_UNSET;
        }
        SsManifest.StreamElement streamElement = ssManifest.streamElements[this.f26566b];
        int i = streamElement.chunkCount - 1;
        return (streamElement.getStartTimeUs(i) + streamElement.getChunkDurationUs(i)) - j;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        SsManifest.StreamElement streamElement = this.f26570f.streamElements[this.f26566b];
        int chunkIndex = streamElement.getChunkIndex(j);
        long startTimeUs = streamElement.getStartTimeUs(chunkIndex);
        return seekParameters.resolveSeekPositionUs(j, startTimeUs, (startTimeUs >= j || chunkIndex >= streamElement.chunkCount + (-1)) ? startTimeUs : streamElement.getStartTimeUs(chunkIndex + 1));
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public final void getNextChunk(long j, long j2, List<? extends MediaChunk> list, ChunkHolder chunkHolder) {
        int nextChunkIndex;
        long j3 = j2;
        if (this.f26572h != null) {
            return;
        }
        SsManifest.StreamElement streamElement = this.f26570f.streamElements[this.f26566b];
        if (streamElement.chunkCount == 0) {
            chunkHolder.endOfStream = !r4.isLive;
            return;
        }
        if (list.isEmpty()) {
            nextChunkIndex = streamElement.getChunkIndex(j3);
        } else {
            nextChunkIndex = (int) (list.get(list.size() - 1).getNextChunkIndex() - this.f26571g);
            if (nextChunkIndex < 0) {
                this.f26572h = new BehindLiveWindowException();
                return;
            }
        }
        if (nextChunkIndex >= streamElement.chunkCount) {
            chunkHolder.endOfStream = !this.f26570f.isLive;
            return;
        }
        long j4 = j3 - j;
        long m20503b = m20503b(j);
        int length = this.f26569e.length();
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[length];
        for (int i = 0; i < length; i++) {
            mediaChunkIteratorArr[i] = new C4926a(streamElement, this.f26569e.getIndexInTrackGroup(i), nextChunkIndex);
        }
        this.f26569e.updateSelectedTrack(j, j4, m20503b, list, mediaChunkIteratorArr);
        long startTimeUs = streamElement.getStartTimeUs(nextChunkIndex);
        long chunkDurationUs = startTimeUs + streamElement.getChunkDurationUs(nextChunkIndex);
        if (!list.isEmpty()) {
            j3 = C4649C.TIME_UNSET;
        }
        long j5 = j3;
        int i2 = nextChunkIndex + this.f26571g;
        int selectedIndex = this.f26569e.getSelectedIndex();
        chunkHolder.chunk = m20502a(this.f26569e.getSelectedFormat(), this.f26568d, streamElement.buildRequestUri(this.f26569e.getIndexInTrackGroup(selectedIndex), nextChunkIndex), i2, startTimeUs, chunkDurationUs, j5, this.f26569e.getSelectionReason(), this.f26569e.getSelectionData(), this.f26567c[selectedIndex]);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public int getPreferredQueueSize(long j, List<? extends MediaChunk> list) {
        return (this.f26572h != null || this.f26569e.length() < 2) ? list.size() : this.f26569e.evaluateQueueSize(j, list);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void maybeThrowError() throws IOException {
        IOException iOException = this.f26572h;
        if (iOException != null) {
            throw iOException;
        }
        this.f26565a.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void onChunkLoadCompleted(Chunk chunk) {
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public boolean onChunkLoadError(Chunk chunk, boolean z, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor = loadErrorHandlingPolicy.getFallbackSelectionFor(TrackSelectionUtil.createFallbackOptions(this.f26569e), loadErrorInfo);
        if (z && fallbackSelectionFor != null && fallbackSelectionFor.type == 2) {
            ExoTrackSelection exoTrackSelection = this.f26569e;
            if (exoTrackSelection.blacklist(exoTrackSelection.indexOf(chunk.trackFormat), fallbackSelectionFor.exclusionDurationMs)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void release() {
        for (ChunkExtractor chunkExtractor : this.f26567c) {
            chunkExtractor.release();
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public boolean shouldCancelLoad(long j, Chunk chunk, List<? extends MediaChunk> list) {
        if (this.f26572h != null) {
            return false;
        }
        return this.f26569e.shouldCancelChunkLoad(j, chunk, list);
    }

    @Override // com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource
    public void updateManifest(SsManifest ssManifest) {
        SsManifest.StreamElement[] streamElementArr = this.f26570f.streamElements;
        int i = this.f26566b;
        SsManifest.StreamElement streamElement = streamElementArr[i];
        int i2 = streamElement.chunkCount;
        SsManifest.StreamElement streamElement2 = ssManifest.streamElements[i];
        if (i2 == 0 || streamElement2.chunkCount == 0) {
            this.f26571g += i2;
        } else {
            int i3 = i2 - 1;
            long startTimeUs = streamElement.getStartTimeUs(i3) + streamElement.getChunkDurationUs(i3);
            long startTimeUs2 = streamElement2.getStartTimeUs(0);
            if (startTimeUs <= startTimeUs2) {
                this.f26571g += i2;
            } else {
                this.f26571g += streamElement.getChunkIndex(startTimeUs2);
            }
        }
        this.f26570f = ssManifest;
    }

    @Override // com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource
    public void updateTrackSelection(ExoTrackSelection exoTrackSelection) {
        this.f26569e = exoTrackSelection;
    }
}
