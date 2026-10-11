package com.google.android.exoplayer2.extractor.p007ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.DtsUtil;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.sun.org.apache.xalan.internal.templates.Constants;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class DtsReader implements ElementaryStreamReader {

    /* renamed from: l */
    public static final int f24342l = 0;

    /* renamed from: m */
    public static final int f24343m = 1;

    /* renamed from: n */
    public static final int f24344n = 2;

    /* renamed from: o */
    public static final int f24345o = 18;

    /* renamed from: b */
    @Nullable
    public final String f24347b;

    /* renamed from: c */
    public String f24348c;

    /* renamed from: d */
    public TrackOutput f24349d;

    /* renamed from: f */
    public int f24351f;

    /* renamed from: g */
    public int f24352g;

    /* renamed from: h */
    public long f24353h;

    /* renamed from: i */
    public Format f24354i;

    /* renamed from: j */
    public int f24355j;

    /* renamed from: a */
    public final ParsableByteArray f24346a = new ParsableByteArray(new byte[18]);

    /* renamed from: e */
    public int f24350e = 0;

    /* renamed from: k */
    public long f24356k = C4649C.TIME_UNSET;

    public DtsReader(@Nullable String str) {
        this.f24347b = str;
    }

    /* renamed from: a */
    public final boolean m19094a(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int min = Math.min(parsableByteArray.bytesLeft(), i - this.f24351f);
        parsableByteArray.readBytes(bArr, this.f24351f, min);
        int i2 = this.f24351f + min;
        this.f24351f = i2;
        return i2 == i;
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: b */
    public final void m19095b() {
        byte[] data = this.f24346a.getData();
        if (this.f24354i == null) {
            Format parseDtsFormat = DtsUtil.parseDtsFormat(data, this.f24348c, this.f24347b, null);
            this.f24354i = parseDtsFormat;
            this.f24349d.format(parseDtsFormat);
        }
        this.f24355j = DtsUtil.getDtsFrameSize(data);
        this.f24353h = (int) ((DtsUtil.parseDtsAudioSampleCount(data) * 1000000) / this.f24354i.sampleRate);
    }

    /* renamed from: c */
    public final boolean m19096c(ParsableByteArray parsableByteArray) {
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.f24352g << 8;
            this.f24352g = i;
            int readUnsignedByte = i | parsableByteArray.readUnsignedByte();
            this.f24352g = readUnsignedByte;
            if (DtsUtil.isSyncWord(readUnsignedByte)) {
                byte[] data = this.f24346a.getData();
                int i2 = this.f24352g;
                data[0] = (byte) ((i2 >> 24) & 255);
                data[1] = (byte) ((i2 >> 16) & 255);
                data[2] = (byte) ((i2 >> 8) & 255);
                data[3] = (byte) (i2 & 255);
                this.f24351f = 4;
                this.f24352g = 0;
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        Assertions.checkStateNotNull(this.f24349d);
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.f24350e;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException();
                    }
                    int min = Math.min(parsableByteArray.bytesLeft(), this.f24355j - this.f24351f);
                    this.f24349d.sampleData(parsableByteArray, min);
                    int i2 = this.f24351f + min;
                    this.f24351f = i2;
                    int i3 = this.f24355j;
                    if (i2 == i3) {
                        long j = this.f24356k;
                        if (j != C4649C.TIME_UNSET) {
                            this.f24349d.sampleMetadata(j, 1, i3, 0, null);
                            this.f24356k += this.f24353h;
                        }
                        this.f24350e = 0;
                    }
                } else if (m19094a(parsableByteArray, this.f24346a.getData(), 18)) {
                    m19095b();
                    this.f24346a.setPosition(0);
                    this.f24349d.sampleData(this.f24346a, 18);
                    this.f24350e = 2;
                }
            } else if (m19096c(parsableByteArray)) {
                this.f24350e = 1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.f24348c = trackIdGenerator.getFormatId();
        this.f24349d = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != C4649C.TIME_UNSET) {
            this.f24356k = j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        this.f24350e = 0;
        this.f24351f = 0;
        this.f24352g = 0;
        this.f24356k = C4649C.TIME_UNSET;
    }
}
