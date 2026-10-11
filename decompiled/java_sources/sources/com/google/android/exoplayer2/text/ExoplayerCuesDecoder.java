package com.google.android.exoplayer2.text;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;

/* loaded from: classes5.dex */
public final class ExoplayerCuesDecoder implements SubtitleDecoder {

    /* renamed from: f */
    public static final int f26738f = 0;

    /* renamed from: g */
    public static final int f26739g = 1;

    /* renamed from: h */
    public static final int f26740h = 2;

    /* renamed from: i */
    public static final int f26741i = 2;

    /* renamed from: a */
    public final CueDecoder f26742a = new CueDecoder();

    /* renamed from: b */
    public final SubtitleInputBuffer f26743b = new SubtitleInputBuffer();

    /* renamed from: c */
    public final Deque<SubtitleOutputBuffer> f26744c = new ArrayDeque();

    /* renamed from: d */
    public int f26745d;

    /* renamed from: e */
    public boolean f26746e;

    /* renamed from: com.google.android.exoplayer2.text.ExoplayerCuesDecoder$a */
    /* loaded from: classes5.dex */
    public class C4936a extends SubtitleOutputBuffer {
        public C4936a() {
        }

        @Override // com.google.android.exoplayer2.decoder.DecoderOutputBuffer
        public void release() {
            ExoplayerCuesDecoder.this.m20543b(this);
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.ExoplayerCuesDecoder$b */
    /* loaded from: classes5.dex */
    public static final class C4937b implements Subtitle {

        /* renamed from: e */
        public final long f26748e;

        /* renamed from: f */
        public final ImmutableList<Cue> f26749f;

        public C4937b(long j, ImmutableList<Cue> immutableList) {
            this.f26748e = j;
            this.f26749f = immutableList;
        }

        @Override // com.google.android.exoplayer2.text.Subtitle
        public List<Cue> getCues(long j) {
            return j >= this.f26748e ? this.f26749f : ImmutableList.m26161of();
        }

        @Override // com.google.android.exoplayer2.text.Subtitle
        public long getEventTime(int i) {
            Assertions.checkArgument(i == 0);
            return this.f26748e;
        }

        @Override // com.google.android.exoplayer2.text.Subtitle
        public int getEventTimeCount() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.text.Subtitle
        public int getNextEventTimeIndex(long j) {
            return this.f26748e > j ? 0 : -1;
        }
    }

    public ExoplayerCuesDecoder() {
        for (int i = 0; i < 2; i++) {
            this.f26744c.addFirst(new C4936a());
        }
        this.f26745d = 0;
    }

    /* renamed from: b */
    public final void m20543b(SubtitleOutputBuffer subtitleOutputBuffer) {
        Assertions.checkState(this.f26744c.size() < 2);
        Assertions.checkArgument(!this.f26744c.contains(subtitleOutputBuffer));
        subtitleOutputBuffer.clear();
        this.f26744c.addFirst(subtitleOutputBuffer);
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void flush() {
        Assertions.checkState(!this.f26746e);
        this.f26743b.clear();
        this.f26745d = 0;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public String getName() {
        return "ExoplayerCuesDecoder";
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void release() {
        this.f26746e = true;
    }

    @Override // com.google.android.exoplayer2.text.SubtitleDecoder
    public void setPositionUs(long j) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.decoder.Decoder
    @Nullable
    public SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        Assertions.checkState(!this.f26746e);
        if (this.f26745d != 0) {
            return null;
        }
        this.f26745d = 1;
        return this.f26743b;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.decoder.Decoder
    @Nullable
    public SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        Assertions.checkState(!this.f26746e);
        if (this.f26745d != 2 || this.f26744c.isEmpty()) {
            return null;
        }
        SubtitleOutputBuffer removeFirst = this.f26744c.removeFirst();
        if (this.f26743b.isEndOfStream()) {
            removeFirst.addFlag(4);
        } else {
            SubtitleInputBuffer subtitleInputBuffer = this.f26743b;
            removeFirst.setContent(this.f26743b.timeUs, new C4937b(subtitleInputBuffer.timeUs, this.f26742a.decode(((ByteBuffer) Assertions.checkNotNull(subtitleInputBuffer.data)).array())), 0L);
        }
        this.f26743b.clear();
        this.f26745d = 0;
        return removeFirst;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        Assertions.checkState(!this.f26746e);
        Assertions.checkState(this.f26745d == 1);
        Assertions.checkArgument(this.f26743b == subtitleInputBuffer);
        this.f26745d = 2;
    }
}
