package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class MaskingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {

    /* renamed from: e */
    public final long f25257e;

    /* renamed from: f */
    public final Allocator f25258f;

    /* renamed from: g */
    public MediaSource f25259g;

    /* renamed from: h */
    public MediaPeriod f25260h;

    /* renamed from: i */
    @Nullable
    public MediaPeriod.Callback f25261i;

    /* renamed from: id */
    public final MediaSource.MediaPeriodId f25262id;

    /* renamed from: j */
    @Nullable
    public PrepareListener f25263j;

    /* renamed from: k */
    public boolean f25264k;

    /* renamed from: l */
    public long f25265l = C4649C.TIME_UNSET;

    /* loaded from: classes5.dex */
    public interface PrepareListener {
        void onPrepareComplete(MediaSource.MediaPeriodId mediaPeriodId);

        void onPrepareError(MediaSource.MediaPeriodId mediaPeriodId, IOException iOException);
    }

    public MaskingMediaPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        this.f25262id = mediaPeriodId;
        this.f25258f = allocator;
        this.f25257e = j;
    }

    /* renamed from: a */
    public final long m19652a(long j) {
        long j2 = this.f25265l;
        return j2 != C4649C.TIME_UNSET ? j2 : j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        MediaPeriod mediaPeriod = this.f25260h;
        return mediaPeriod != null && mediaPeriod.continueLoading(j);
    }

    public void createPeriod(MediaSource.MediaPeriodId mediaPeriodId) {
        long m19652a = m19652a(this.f25257e);
        MediaPeriod createPeriod = ((MediaSource) Assertions.checkNotNull(this.f25259g)).createPeriod(mediaPeriodId, this.f25258f, m19652a);
        this.f25260h = createPeriod;
        if (this.f25261i != null) {
            createPeriod.prepare(this, m19652a);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        ((MediaPeriod) Util.castNonNull(this.f25260h)).discardBuffer(j, z);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        return ((MediaPeriod) Util.castNonNull(this.f25260h)).getAdjustedSeekPositionUs(j, seekParameters);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return ((MediaPeriod) Util.castNonNull(this.f25260h)).getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return ((MediaPeriod) Util.castNonNull(this.f25260h)).getNextLoadPositionUs();
    }

    public long getPreparePositionOverrideUs() {
        return this.f25265l;
    }

    public long getPreparePositionUs() {
        return this.f25257e;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return ((MediaPeriod) Util.castNonNull(this.f25260h)).getTrackGroups();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        MediaPeriod mediaPeriod = this.f25260h;
        return mediaPeriod != null && mediaPeriod.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        try {
            MediaPeriod mediaPeriod = this.f25260h;
            if (mediaPeriod != null) {
                mediaPeriod.maybeThrowPrepareError();
            } else {
                MediaSource mediaSource = this.f25259g;
                if (mediaSource != null) {
                    mediaSource.maybeThrowSourceInfoRefreshError();
                }
            }
        } catch (IOException e) {
            PrepareListener prepareListener = this.f25263j;
            if (prepareListener == null) {
                throw e;
            }
            if (this.f25264k) {
                return;
            }
            this.f25264k = true;
            prepareListener.onPrepareError(this.f25262id, e);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Util.castNonNull(this.f25261i)).onPrepared(this);
        PrepareListener prepareListener = this.f25263j;
        if (prepareListener != null) {
            prepareListener.onPrepareComplete(this.f25262id);
        }
    }

    public void overridePreparePositionUs(long j) {
        this.f25265l = j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.f25261i = callback;
        MediaPeriod mediaPeriod = this.f25260h;
        if (mediaPeriod != null) {
            mediaPeriod.prepare(this, m19652a(this.f25257e));
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        return ((MediaPeriod) Util.castNonNull(this.f25260h)).readDiscontinuity();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        ((MediaPeriod) Util.castNonNull(this.f25260h)).reevaluateBuffer(j);
    }

    public void releasePeriod() {
        if (this.f25260h != null) {
            ((MediaSource) Assertions.checkNotNull(this.f25259g)).releasePeriod(this.f25260h);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        return ((MediaPeriod) Util.castNonNull(this.f25260h)).seekToUs(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        long j2;
        long j3 = this.f25265l;
        if (j3 == C4649C.TIME_UNSET || j != this.f25257e) {
            j2 = j;
        } else {
            this.f25265l = C4649C.TIME_UNSET;
            j2 = j3;
        }
        return ((MediaPeriod) Util.castNonNull(this.f25260h)).selectTracks(exoTrackSelectionArr, zArr, sampleStreamArr, zArr2, j2);
    }

    public void setMediaSource(MediaSource mediaSource) {
        Assertions.checkState(this.f25259g == null);
        this.f25259g = mediaSource;
    }

    public void setPrepareListener(PrepareListener prepareListener) {
        this.f25263j = prepareListener;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Util.castNonNull(this.f25261i)).onContinueLoadingRequested(this);
    }
}
