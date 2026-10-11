package com.google.android.exoplayer2.source.smoothstreaming;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.SequenceableLoader;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.chunk.ChunkSampleStream;
import com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoaderErrorThrower;
import com.google.android.exoplayer2.upstream.TransferListener;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.exoplayer2.source.smoothstreaming.a */
/* loaded from: classes5.dex */
public final class C4929a implements MediaPeriod, SequenceableLoader.Callback<ChunkSampleStream<SsChunkSource>> {

    /* renamed from: e */
    public final SsChunkSource.Factory f26605e;

    /* renamed from: f */
    @Nullable
    public final TransferListener f26606f;

    /* renamed from: g */
    public final LoaderErrorThrower f26607g;

    /* renamed from: h */
    public final DrmSessionManager f26608h;

    /* renamed from: i */
    public final DrmSessionEventListener.EventDispatcher f26609i;

    /* renamed from: j */
    public final LoadErrorHandlingPolicy f26610j;

    /* renamed from: k */
    public final MediaSourceEventListener.EventDispatcher f26611k;

    /* renamed from: l */
    public final Allocator f26612l;

    /* renamed from: m */
    public final TrackGroupArray f26613m;

    /* renamed from: n */
    public final CompositeSequenceableLoaderFactory f26614n;

    /* renamed from: o */
    @Nullable
    public MediaPeriod.Callback f26615o;

    /* renamed from: p */
    public SsManifest f26616p;

    /* renamed from: q */
    public ChunkSampleStream<SsChunkSource>[] f26617q;

    /* renamed from: r */
    public SequenceableLoader f26618r;

    public C4929a(SsManifest ssManifest, SsChunkSource.Factory factory, @Nullable TransferListener transferListener, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, LoaderErrorThrower loaderErrorThrower, Allocator allocator) {
        this.f26616p = ssManifest;
        this.f26605e = factory;
        this.f26606f = transferListener;
        this.f26607g = loaderErrorThrower;
        this.f26608h = drmSessionManager;
        this.f26609i = eventDispatcher;
        this.f26610j = loadErrorHandlingPolicy;
        this.f26611k = eventDispatcher2;
        this.f26612l = allocator;
        this.f26614n = compositeSequenceableLoaderFactory;
        this.f26613m = m20508b(ssManifest, drmSessionManager);
        ChunkSampleStream<SsChunkSource>[] m20509c = m20509c(0);
        this.f26617q = m20509c;
        this.f26618r = compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(m20509c);
    }

    /* renamed from: b */
    public static TrackGroupArray m20508b(SsManifest ssManifest, DrmSessionManager drmSessionManager) {
        TrackGroup[] trackGroupArr = new TrackGroup[ssManifest.streamElements.length];
        int i = 0;
        while (true) {
            SsManifest.StreamElement[] streamElementArr = ssManifest.streamElements;
            if (i >= streamElementArr.length) {
                return new TrackGroupArray(trackGroupArr);
            }
            Format[] formatArr = streamElementArr[i].formats;
            Format[] formatArr2 = new Format[formatArr.length];
            for (int i2 = 0; i2 < formatArr.length; i2++) {
                Format format = formatArr[i2];
                formatArr2[i2] = format.copyWithCryptoType(drmSessionManager.getCryptoType(format));
            }
            trackGroupArr[i] = new TrackGroup(Integer.toString(i), formatArr2);
            i++;
        }
    }

    /* renamed from: c */
    public static ChunkSampleStream<SsChunkSource>[] m20509c(int i) {
        return new ChunkSampleStream[i];
    }

    /* renamed from: a */
    public final ChunkSampleStream<SsChunkSource> m20510a(ExoTrackSelection exoTrackSelection, long j) {
        int indexOf = this.f26613m.indexOf(exoTrackSelection.getTrackGroup());
        return new ChunkSampleStream<>(this.f26616p.streamElements[indexOf].type, null, null, this.f26605e.createChunkSource(this.f26607g, this.f26616p, indexOf, exoTrackSelection, this.f26606f), this, this.f26612l, j, this.f26608h, this.f26609i, this.f26610j, this.f26611k);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        return this.f26618r.continueLoading(j);
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public void onContinueLoadingRequested(ChunkSampleStream<SsChunkSource> chunkSampleStream) {
        this.f26615o.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        for (ChunkSampleStream<SsChunkSource> chunkSampleStream : this.f26617q) {
            chunkSampleStream.discardBuffer(j, z);
        }
    }

    /* renamed from: e */
    public void m20512e() {
        for (ChunkSampleStream<SsChunkSource> chunkSampleStream : this.f26617q) {
            chunkSampleStream.release();
        }
        this.f26615o = null;
    }

    /* renamed from: f */
    public void m20513f(SsManifest ssManifest) {
        this.f26616p = ssManifest;
        for (ChunkSampleStream<SsChunkSource> chunkSampleStream : this.f26617q) {
            chunkSampleStream.getChunkSource().updateManifest(ssManifest);
        }
        this.f26615o.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        for (ChunkSampleStream<SsChunkSource> chunkSampleStream : this.f26617q) {
            if (chunkSampleStream.primaryTrackType == 2) {
                return chunkSampleStream.getAdjustedSeekPositionUs(j, seekParameters);
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.f26618r.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.f26618r.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public List<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            ExoTrackSelection exoTrackSelection = list.get(i);
            int indexOf = this.f26613m.indexOf(exoTrackSelection.getTrackGroup());
            for (int i2 = 0; i2 < exoTrackSelection.length(); i2++) {
                arrayList.add(new StreamKey(indexOf, exoTrackSelection.getIndexInTrackGroup(i2)));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.f26613m;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.f26618r.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        this.f26607g.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.f26615o = callback;
        callback.onPrepared(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        return C4649C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        this.f26618r.reevaluateBuffer(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        for (ChunkSampleStream<SsChunkSource> chunkSampleStream : this.f26617q) {
            chunkSampleStream.seekToUs(j);
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        ExoTrackSelection exoTrackSelection;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            SampleStream sampleStream = sampleStreamArr[i];
            if (sampleStream != null) {
                ChunkSampleStream chunkSampleStream = (ChunkSampleStream) sampleStream;
                if (exoTrackSelectionArr[i] == null || !zArr[i]) {
                    chunkSampleStream.release();
                    sampleStreamArr[i] = null;
                } else {
                    ((SsChunkSource) chunkSampleStream.getChunkSource()).updateTrackSelection(exoTrackSelectionArr[i]);
                    arrayList.add(chunkSampleStream);
                }
            }
            if (sampleStreamArr[i] == null && (exoTrackSelection = exoTrackSelectionArr[i]) != null) {
                ChunkSampleStream<SsChunkSource> m20510a = m20510a(exoTrackSelection, j);
                arrayList.add(m20510a);
                sampleStreamArr[i] = m20510a;
                zArr2[i] = true;
            }
        }
        ChunkSampleStream<SsChunkSource>[] m20509c = m20509c(arrayList.size());
        this.f26617q = m20509c;
        arrayList.toArray(m20509c);
        this.f26618r = this.f26614n.createCompositeSequenceableLoader(this.f26617q);
        return j;
    }
}
