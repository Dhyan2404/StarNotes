package com.google.android.exoplayer2.extractor.p007ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.MpegAudioUtil;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.sun.org.apache.xalan.internal.templates.Constants;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class MpegAudioReader implements ElementaryStreamReader {

    /* renamed from: m */
    public static final int f24564m = 0;

    /* renamed from: n */
    public static final int f24565n = 1;

    /* renamed from: o */
    public static final int f24566o = 2;

    /* renamed from: p */
    public static final int f24567p = 4;

    /* renamed from: a */
    public final ParsableByteArray f24568a;

    /* renamed from: b */
    public final MpegAudioUtil.Header f24569b;

    /* renamed from: c */
    @Nullable
    public final String f24570c;

    /* renamed from: d */
    public TrackOutput f24571d;

    /* renamed from: e */
    public String f24572e;

    /* renamed from: f */
    public int f24573f;

    /* renamed from: g */
    public int f24574g;

    /* renamed from: h */
    public boolean f24575h;

    /* renamed from: i */
    public boolean f24576i;

    /* renamed from: j */
    public long f24577j;

    /* renamed from: k */
    public int f24578k;

    /* renamed from: l */
    public long f24579l;

    public MpegAudioReader() {
        this(null);
    }

    /* renamed from: a */
    public final void m19150a(ParsableByteArray parsableByteArray) {
        byte[] data = parsableByteArray.getData();
        int limit = parsableByteArray.limit();
        for (int position = parsableByteArray.getPosition(); position < limit; position++) {
            byte b = data[position];
            boolean z = (b & 255) == 255;
            boolean z2 = this.f24576i && (b & 224) == 224;
            this.f24576i = z;
            if (z2) {
                parsableByteArray.setPosition(position + 1);
                this.f24576i = false;
                this.f24568a.getData()[1] = data[position];
                this.f24574g = 2;
                this.f24573f = 1;
                return;
            }
        }
        parsableByteArray.setPosition(limit);
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: b */
    public final void m19151b(ParsableByteArray parsableByteArray) {
        int min = Math.min(parsableByteArray.bytesLeft(), this.f24578k - this.f24574g);
        this.f24571d.sampleData(parsableByteArray, min);
        int i = this.f24574g + min;
        this.f24574g = i;
        int i2 = this.f24578k;
        if (i < i2) {
            return;
        }
        long j = this.f24579l;
        if (j != C4649C.TIME_UNSET) {
            this.f24571d.sampleMetadata(j, 1, i2, 0, null);
            this.f24579l += this.f24577j;
        }
        this.f24574g = 0;
        this.f24573f = 0;
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: c */
    public final void m19152c(ParsableByteArray parsableByteArray) {
        int min = Math.min(parsableByteArray.bytesLeft(), 4 - this.f24574g);
        parsableByteArray.readBytes(this.f24568a.getData(), this.f24574g, min);
        int i = this.f24574g + min;
        this.f24574g = i;
        if (i < 4) {
            return;
        }
        this.f24568a.setPosition(0);
        if (!this.f24569b.setForHeaderData(this.f24568a.readInt())) {
            this.f24574g = 0;
            this.f24573f = 1;
            return;
        }
        this.f24578k = this.f24569b.frameSize;
        if (!this.f24575h) {
            this.f24577j = (r8.samplesPerFrame * 1000000) / r8.sampleRate;
            this.f24571d.format(new Format.Builder().setId(this.f24572e).setSampleMimeType(this.f24569b.mimeType).setMaxInputSize(4096).setChannelCount(this.f24569b.channels).setSampleRate(this.f24569b.sampleRate).setLanguage(this.f24570c).build());
            this.f24575h = true;
        }
        this.f24568a.setPosition(0);
        this.f24571d.sampleData(this.f24568a, 4);
        this.f24573f = 2;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        Assertions.checkStateNotNull(this.f24571d);
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.f24573f;
            if (i == 0) {
                m19150a(parsableByteArray);
            } else if (i == 1) {
                m19152c(parsableByteArray);
            } else {
                if (i != 2) {
                    throw new IllegalStateException();
                }
                m19151b(parsableByteArray);
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.f24572e = trackIdGenerator.getFormatId();
        this.f24571d = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != C4649C.TIME_UNSET) {
            this.f24579l = j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        this.f24573f = 0;
        this.f24574g = 0;
        this.f24576i = false;
        this.f24579l = C4649C.TIME_UNSET;
    }

    public MpegAudioReader(@Nullable String str) {
        this.f24573f = 0;
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        this.f24568a = parsableByteArray;
        parsableByteArray.getData()[0] = -1;
        this.f24569b = new MpegAudioUtil.Header();
        this.f24579l = C4649C.TIME_UNSET;
        this.f24570c = str;
    }
}
