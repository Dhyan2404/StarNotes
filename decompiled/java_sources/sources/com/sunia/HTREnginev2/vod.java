package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderOutputBuffer;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.text.SubtitleDecoder;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.SubtitleInputBuffer;
import com.google.android.exoplayer2.text.SubtitleOutputBuffer;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.vod;
import java.util.ArrayDeque;
import java.util.PriorityQueue;

/* loaded from: classes5.dex */
public abstract class vod implements SubtitleDecoder {

    /* renamed from: g */
    public static final int f87748g = 10;

    /* renamed from: h */
    public static final int f87749h = 2;

    /* renamed from: a */
    public final ArrayDeque<C14555b> f87750a = new ArrayDeque<>();

    /* renamed from: b */
    public final ArrayDeque<SubtitleOutputBuffer> f87751b;

    /* renamed from: c */
    public final PriorityQueue<C14555b> f87752c;

    /* renamed from: d */
    @Nullable
    public C14555b f87753d;

    /* renamed from: e */
    public long f87754e;

    /* renamed from: f */
    public long f87755f;

    /* renamed from: com.sunia.HTREnginev2.vod$b */
    /* loaded from: classes5.dex */
    public static final class C14555b extends SubtitleInputBuffer implements Comparable<C14555b> {

        /* renamed from: h */
        public long f87756h;

        public C14555b() {
        }

        @Override // java.lang.Comparable
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compareTo(C14555b c14555b) {
            if (isEndOfStream() != c14555b.isEndOfStream()) {
                return isEndOfStream() ? 1 : -1;
            }
            long j = this.timeUs - c14555b.timeUs;
            if (j == 0) {
                j = this.f87756h - c14555b.f87756h;
                if (j == 0) {
                    return 0;
                }
            }
            return j > 0 ? 1 : -1;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.vod$c */
    /* loaded from: classes5.dex */
    public static final class C14556c extends SubtitleOutputBuffer {

        /* renamed from: h */
        public DecoderOutputBuffer.Owner<C14556c> f87757h;

        public C14556c(DecoderOutputBuffer.Owner<C14556c> owner) {
            this.f87757h = owner;
        }

        @Override // com.google.android.exoplayer2.decoder.DecoderOutputBuffer
        public final void release() {
            this.f87757h.releaseOutputBuffer(this);
        }
    }

    public vod() {
        for (int i = 0; i < 10; i++) {
            this.f87750a.add(new C14555b());
        }
        this.f87751b = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.f87751b.add(new C14556c(new DecoderOutputBuffer.Owner() { // from class: com.sunia.HTREnginev2.uod
                @Override // com.google.android.exoplayer2.decoder.DecoderOutputBuffer.Owner
                public final void releaseOutputBuffer(DecoderOutputBuffer decoderOutputBuffer) {
                    vod.this.releaseOutputBuffer((vod.C14556c) decoderOutputBuffer);
                }
            }));
        }
        this.f87752c = new PriorityQueue<>();
    }

    /* renamed from: a */
    public final void m57855a(C14555b c14555b) {
        c14555b.clear();
        this.f87750a.add(c14555b);
    }

    public abstract Subtitle createSubtitle();

    public abstract void decode(SubtitleInputBuffer subtitleInputBuffer);

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void flush() {
        this.f87755f = 0L;
        this.f87754e = 0L;
        while (!this.f87752c.isEmpty()) {
            m57855a((C14555b) Util.castNonNull(this.f87752c.poll()));
        }
        C14555b c14555b = this.f87753d;
        if (c14555b != null) {
            m57855a(c14555b);
            this.f87753d = null;
        }
    }

    @Nullable
    public final SubtitleOutputBuffer getAvailableOutputBuffer() {
        return this.f87751b.pollFirst();
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public abstract String getName();

    public final long getPositionUs() {
        return this.f87754e;
    }

    public abstract boolean isNewSubtitleDataAvailable();

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void release() {
    }

    public void releaseOutputBuffer(SubtitleOutputBuffer subtitleOutputBuffer) {
        subtitleOutputBuffer.clear();
        this.f87751b.add(subtitleOutputBuffer);
    }

    @Override // com.google.android.exoplayer2.text.SubtitleDecoder
    public void setPositionUs(long j) {
        this.f87754e = j;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.decoder.Decoder
    @Nullable
    public SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        Assertions.checkState(this.f87753d == null);
        if (this.f87750a.isEmpty()) {
            return null;
        }
        C14555b pollFirst = this.f87750a.pollFirst();
        this.f87753d = pollFirst;
        return pollFirst;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.decoder.Decoder
    @Nullable
    public SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        if (this.f87751b.isEmpty()) {
            return null;
        }
        while (!this.f87752c.isEmpty() && ((C14555b) Util.castNonNull(this.f87752c.peek())).timeUs <= this.f87754e) {
            C14555b c14555b = (C14555b) Util.castNonNull(this.f87752c.poll());
            if (c14555b.isEndOfStream()) {
                SubtitleOutputBuffer subtitleOutputBuffer = (SubtitleOutputBuffer) Util.castNonNull(this.f87751b.pollFirst());
                subtitleOutputBuffer.addFlag(4);
                m57855a(c14555b);
                return subtitleOutputBuffer;
            }
            decode(c14555b);
            if (isNewSubtitleDataAvailable()) {
                Subtitle createSubtitle = createSubtitle();
                SubtitleOutputBuffer subtitleOutputBuffer2 = (SubtitleOutputBuffer) Util.castNonNull(this.f87751b.pollFirst());
                subtitleOutputBuffer2.setContent(c14555b.timeUs, createSubtitle, Long.MAX_VALUE);
                m57855a(c14555b);
                return subtitleOutputBuffer2;
            }
            m57855a(c14555b);
        }
        return null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        Assertions.checkArgument(subtitleInputBuffer == this.f87753d);
        C14555b c14555b = (C14555b) subtitleInputBuffer;
        if (c14555b.isDecodeOnly()) {
            m57855a(c14555b);
        } else {
            long j = this.f87755f;
            this.f87755f = 1 + j;
            c14555b.f87756h = j;
            this.f87752c.add(c14555b);
        }
        this.f87753d = null;
    }
}
