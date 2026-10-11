package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class SilenceMediaSource extends BaseMediaSource {
    public static final String MEDIA_ID = "SilenceMediaSource";

    /* renamed from: n */
    public static final int f25365n = 44100;

    /* renamed from: o */
    public static final int f25366o = 2;

    /* renamed from: p */
    public static final int f25367p = 2;

    /* renamed from: q */
    public static final Format f25368q;

    /* renamed from: r */
    public static final MediaItem f25369r;

    /* renamed from: s */
    public static final byte[] f25370s;

    /* renamed from: l */
    public final long f25371l;

    /* renamed from: m */
    public final MediaItem f25372m;

    /* loaded from: classes5.dex */
    public static final class Factory {

        /* renamed from: a */
        public long f25373a;

        /* renamed from: b */
        @Nullable
        public Object f25374b;

        public SilenceMediaSource createMediaSource() {
            Assertions.checkState(this.f25373a > 0);
            return new SilenceMediaSource(this.f25373a, SilenceMediaSource.f25369r.buildUpon().setTag(this.f25374b).build());
        }

        public Factory setDurationUs(@IntRange(from = 1) long j) {
            this.f25373a = j;
            return this;
        }

        public Factory setTag(@Nullable Object obj) {
            this.f25374b = obj;
            return this;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.SilenceMediaSource$b */
    /* loaded from: classes5.dex */
    public static final class C4847b implements MediaPeriod {

        /* renamed from: g */
        public static final TrackGroupArray f25375g = new TrackGroupArray(new TrackGroup(SilenceMediaSource.f25368q));

        /* renamed from: e */
        public final long f25376e;

        /* renamed from: f */
        public final ArrayList<SampleStream> f25377f = new ArrayList<>();

        public C4847b(long j) {
            this.f25376e = j;
        }

        /* renamed from: a */
        public final long m19708a(long j) {
            return Util.constrainValue(j, 0L, this.f25376e);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public boolean continueLoading(long j) {
            return false;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void discardBuffer(long j, boolean z) {
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
            return m19708a(j);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public long getBufferedPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return f25375g;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void maybeThrowPrepareError() {
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void prepare(MediaPeriod.Callback callback, long j) {
            callback.onPrepared(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long readDiscontinuity() {
            return C4649C.TIME_UNSET;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public void reevaluateBuffer(long j) {
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long seekToUs(long j) {
            long m19708a = m19708a(j);
            for (int i = 0; i < this.f25377f.size(); i++) {
                ((C4848c) this.f25377f.get(i)).m19709a(m19708a);
            }
            return m19708a;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            long m19708a = m19708a(j);
            for (int i = 0; i < exoTrackSelectionArr.length; i++) {
                SampleStream sampleStream = sampleStreamArr[i];
                if (sampleStream != null && (exoTrackSelectionArr[i] == null || !zArr[i])) {
                    this.f25377f.remove(sampleStream);
                    sampleStreamArr[i] = null;
                }
                if (sampleStreamArr[i] == null && exoTrackSelectionArr[i] != null) {
                    C4848c c4848c = new C4848c(this.f25376e);
                    c4848c.m19709a(m19708a);
                    this.f25377f.add(c4848c);
                    sampleStreamArr[i] = c4848c;
                    zArr2[i] = true;
                }
            }
            return m19708a;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.SilenceMediaSource$c */
    /* loaded from: classes5.dex */
    public static final class C4848c implements SampleStream {

        /* renamed from: e */
        public final long f25378e;

        /* renamed from: f */
        public boolean f25379f;

        /* renamed from: g */
        public long f25380g;

        public C4848c(long j) {
            this.f25378e = SilenceMediaSource.m19706f(j);
            m19709a(0L);
        }

        /* renamed from: a */
        public void m19709a(long j) {
            this.f25380g = Util.constrainValue(SilenceMediaSource.m19706f(j), 0L, this.f25378e);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return true;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() {
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            if (!this.f25379f || (i & 2) != 0) {
                formatHolder.format = SilenceMediaSource.f25368q;
                this.f25379f = true;
                return -5;
            }
            long j = this.f25378e;
            long j2 = this.f25380g;
            long j3 = j - j2;
            if (j3 == 0) {
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            decoderInputBuffer.timeUs = SilenceMediaSource.m19707g(j2);
            decoderInputBuffer.addFlag(1);
            int min = (int) Math.min(SilenceMediaSource.f25370s.length, j3);
            if ((i & 4) == 0) {
                decoderInputBuffer.ensureSpaceForWrite(min);
                decoderInputBuffer.data.put(SilenceMediaSource.f25370s, 0, min);
            }
            if ((i & 1) == 0) {
                this.f25380g += min;
            }
            return -4;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            long j2 = this.f25380g;
            m19709a(j);
            return (int) ((this.f25380g - j2) / SilenceMediaSource.f25370s.length);
        }
    }

    static {
        Format build = new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_RAW).setChannelCount(2).setSampleRate(f25365n).setPcmEncoding(2).build();
        f25368q = build;
        f25369r = new MediaItem.Builder().setMediaId(MEDIA_ID).setUri(Uri.EMPTY).setMimeType(build.sampleMimeType).build();
        f25370s = new byte[Util.getPcmFrameSize(2, 2) * 1024];
    }

    /* renamed from: f */
    public static long m19706f(long j) {
        return Util.getPcmFrameSize(2, 2) * ((j * 44100) / 1000000);
    }

    /* renamed from: g */
    public static long m19707g(long j) {
        return ((j / Util.getPcmFrameSize(2, 2)) * 1000000) / 44100;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return new C4847b(this.f25371l);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.f25372m;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        refreshSourceInfo(new SinglePeriodTimeline(this.f25371l, true, false, false, (Object) null, this.f25372m));
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
    }

    public SilenceMediaSource(long j) {
        this(j, f25369r);
    }

    public SilenceMediaSource(long j, MediaItem mediaItem) {
        Assertions.checkArgument(j >= 0);
        this.f25371l = j;
        this.f25372m = mediaItem;
    }
}
