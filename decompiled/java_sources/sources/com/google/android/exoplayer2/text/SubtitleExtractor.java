package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.IndexSeekMap;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class SubtitleExtractor implements Extractor {

    /* renamed from: l */
    public static final int f26752l = 0;

    /* renamed from: m */
    public static final int f26753m = 1;

    /* renamed from: n */
    public static final int f26754n = 2;

    /* renamed from: o */
    public static final int f26755o = 3;

    /* renamed from: p */
    public static final int f26756p = 4;

    /* renamed from: q */
    public static final int f26757q = 5;

    /* renamed from: r */
    public static final int f26758r = 1024;

    /* renamed from: a */
    public final SubtitleDecoder f26759a;

    /* renamed from: d */
    public final Format f26762d;

    /* renamed from: g */
    public ExtractorOutput f26765g;

    /* renamed from: h */
    public TrackOutput f26766h;

    /* renamed from: i */
    public int f26767i;

    /* renamed from: b */
    public final CueEncoder f26760b = new CueEncoder();

    /* renamed from: c */
    public final ParsableByteArray f26761c = new ParsableByteArray();

    /* renamed from: e */
    public final List<Long> f26763e = new ArrayList();

    /* renamed from: f */
    public final List<ParsableByteArray> f26764f = new ArrayList();

    /* renamed from: j */
    public int f26768j = 0;

    /* renamed from: k */
    public long f26769k = C4649C.TIME_UNSET;

    public SubtitleExtractor(SubtitleDecoder subtitleDecoder, Format format) {
        this.f26759a = subtitleDecoder;
        this.f26762d = format.buildUpon().setSampleMimeType(MimeTypes.TEXT_EXOPLAYER_CUES).setCodecs(format.sampleMimeType).build();
    }

    /* renamed from: a */
    public final void m20545a() throws IOException {
        try {
            SubtitleInputBuffer dequeueInputBuffer = this.f26759a.dequeueInputBuffer();
            while (dequeueInputBuffer == null) {
                Thread.sleep(5L);
                dequeueInputBuffer = this.f26759a.dequeueInputBuffer();
            }
            dequeueInputBuffer.ensureSpaceForWrite(this.f26767i);
            dequeueInputBuffer.data.put(this.f26761c.getData(), 0, this.f26767i);
            dequeueInputBuffer.data.limit(this.f26767i);
            this.f26759a.queueInputBuffer(dequeueInputBuffer);
            SubtitleOutputBuffer dequeueOutputBuffer = this.f26759a.dequeueOutputBuffer();
            while (dequeueOutputBuffer == null) {
                Thread.sleep(5L);
                dequeueOutputBuffer = this.f26759a.dequeueOutputBuffer();
            }
            for (int i = 0; i < dequeueOutputBuffer.getEventTimeCount(); i++) {
                byte[] encode = this.f26760b.encode(dequeueOutputBuffer.getCues(dequeueOutputBuffer.getEventTime(i)));
                this.f26763e.add(Long.valueOf(dequeueOutputBuffer.getEventTime(i)));
                this.f26764f.add(new ParsableByteArray(encode));
            }
            dequeueOutputBuffer.release();
        } catch (SubtitleDecoderException e) {
            throw ParserException.createForMalformedContainer("SubtitleDecoder failed.", e);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    /* renamed from: b */
    public final boolean m20546b(ExtractorInput extractorInput) throws IOException {
        int capacity = this.f26761c.capacity();
        int i = this.f26767i;
        if (capacity == i) {
            this.f26761c.ensureCapacity(i + 1024);
        }
        int read = extractorInput.read(this.f26761c.getData(), this.f26767i, this.f26761c.capacity() - this.f26767i);
        if (read != -1) {
            this.f26767i += read;
        }
        long length = extractorInput.getLength();
        return (length != -1 && ((long) this.f26767i) == length) || read == -1;
    }

    /* renamed from: c */
    public final boolean m20547c(ExtractorInput extractorInput) throws IOException {
        return extractorInput.skip((extractorInput.getLength() > (-1L) ? 1 : (extractorInput.getLength() == (-1L) ? 0 : -1)) != 0 ? Ints.checkedCast(extractorInput.getLength()) : 1024) == -1;
    }

    /* renamed from: d */
    public final void m20548d() {
        Assertions.checkStateNotNull(this.f26766h);
        Assertions.checkState(this.f26763e.size() == this.f26764f.size());
        long j = this.f26769k;
        for (int binarySearchFloor = j == C4649C.TIME_UNSET ? 0 : Util.binarySearchFloor((List<? extends Comparable<? super Long>>) this.f26763e, Long.valueOf(j), true, true); binarySearchFloor < this.f26764f.size(); binarySearchFloor++) {
            ParsableByteArray parsableByteArray = this.f26764f.get(binarySearchFloor);
            parsableByteArray.setPosition(0);
            int length = parsableByteArray.getData().length;
            this.f26766h.sampleData(parsableByteArray, length);
            this.f26766h.sampleMetadata(this.f26763e.get(binarySearchFloor).longValue(), 1, length, 0, null);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        Assertions.checkState(this.f26768j == 0);
        this.f26765g = extractorOutput;
        this.f26766h = extractorOutput.track(0, 3);
        this.f26765g.endTracks();
        this.f26765g.seekMap(new IndexSeekMap(new long[]{0}, new long[]{0}, C4649C.TIME_UNSET));
        this.f26766h.format(this.f26762d);
        this.f26768j = 1;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i = this.f26768j;
        Assertions.checkState((i == 0 || i == 5) ? false : true);
        if (this.f26768j == 1) {
            this.f26761c.reset(extractorInput.getLength() != -1 ? Ints.checkedCast(extractorInput.getLength()) : 1024);
            this.f26767i = 0;
            this.f26768j = 2;
        }
        if (this.f26768j == 2 && m20546b(extractorInput)) {
            m20545a();
            m20548d();
            this.f26768j = 4;
        }
        if (this.f26768j == 3 && m20547c(extractorInput)) {
            m20548d();
            this.f26768j = 4;
        }
        return this.f26768j == 4 ? -1 : 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
        if (this.f26768j == 5) {
            return;
        }
        this.f26759a.release();
        this.f26768j = 5;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        int i = this.f26768j;
        Assertions.checkState((i == 0 || i == 5) ? false : true);
        this.f26769k = j2;
        if (this.f26768j == 2) {
            this.f26768j = 1;
        }
        if (this.f26768j == 4) {
            this.f26768j = 3;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        return true;
    }
}
