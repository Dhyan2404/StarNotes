package com.google.android.exoplayer2.extractor.p007ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.sun.org.apache.xalan.internal.templates.Constants;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class Ac3Reader implements ElementaryStreamReader {

    /* renamed from: m */
    public static final int f24248m = 0;

    /* renamed from: n */
    public static final int f24249n = 1;

    /* renamed from: o */
    public static final int f24250o = 2;

    /* renamed from: p */
    public static final int f24251p = 128;

    /* renamed from: a */
    public final ParsableBitArray f24252a;

    /* renamed from: b */
    public final ParsableByteArray f24253b;

    /* renamed from: c */
    @Nullable
    public final String f24254c;

    /* renamed from: d */
    public String f24255d;

    /* renamed from: e */
    public TrackOutput f24256e;

    /* renamed from: f */
    public int f24257f;

    /* renamed from: g */
    public int f24258g;

    /* renamed from: h */
    public boolean f24259h;

    /* renamed from: i */
    public long f24260i;

    /* renamed from: j */
    public Format f24261j;

    /* renamed from: k */
    public int f24262k;

    /* renamed from: l */
    public long f24263l;

    public Ac3Reader() {
        this(null);
    }

    /* renamed from: a */
    public final boolean m19059a(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int min = Math.min(parsableByteArray.bytesLeft(), i - this.f24258g);
        parsableByteArray.readBytes(bArr, this.f24258g, min);
        int i2 = this.f24258g + min;
        this.f24258g = i2;
        return i2 == i;
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: b */
    public final void m19060b() {
        this.f24252a.setPosition(0);
        Ac3Util.SyncFrameInfo parseAc3SyncframeInfo = Ac3Util.parseAc3SyncframeInfo(this.f24252a);
        Format format = this.f24261j;
        if (format == null || parseAc3SyncframeInfo.channelCount != format.channelCount || parseAc3SyncframeInfo.sampleRate != format.sampleRate || !Util.areEqual(parseAc3SyncframeInfo.mimeType, format.sampleMimeType)) {
            Format build = new Format.Builder().setId(this.f24255d).setSampleMimeType(parseAc3SyncframeInfo.mimeType).setChannelCount(parseAc3SyncframeInfo.channelCount).setSampleRate(parseAc3SyncframeInfo.sampleRate).setLanguage(this.f24254c).build();
            this.f24261j = build;
            this.f24256e.format(build);
        }
        this.f24262k = parseAc3SyncframeInfo.frameSize;
        this.f24260i = (parseAc3SyncframeInfo.sampleCount * 1000000) / this.f24261j.sampleRate;
    }

    /* renamed from: c */
    public final boolean m19061c(ParsableByteArray parsableByteArray) {
        while (true) {
            if (parsableByteArray.bytesLeft() <= 0) {
                return false;
            }
            if (this.f24259h) {
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                if (readUnsignedByte == 119) {
                    this.f24259h = false;
                    return true;
                }
                this.f24259h = readUnsignedByte == 11;
            } else {
                this.f24259h = parsableByteArray.readUnsignedByte() == 11;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        Assertions.checkStateNotNull(this.f24256e);
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.f24257f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(parsableByteArray.bytesLeft(), this.f24262k - this.f24258g);
                        this.f24256e.sampleData(parsableByteArray, min);
                        int i2 = this.f24258g + min;
                        this.f24258g = i2;
                        int i3 = this.f24262k;
                        if (i2 == i3) {
                            long j = this.f24263l;
                            if (j != C4649C.TIME_UNSET) {
                                this.f24256e.sampleMetadata(j, 1, i3, 0, null);
                                this.f24263l += this.f24260i;
                            }
                            this.f24257f = 0;
                        }
                    }
                } else if (m19059a(parsableByteArray, this.f24253b.getData(), 128)) {
                    m19060b();
                    this.f24253b.setPosition(0);
                    this.f24256e.sampleData(this.f24253b, 128);
                    this.f24257f = 2;
                }
            } else if (m19061c(parsableByteArray)) {
                this.f24257f = 1;
                this.f24253b.getData()[0] = 11;
                this.f24253b.getData()[1] = 119;
                this.f24258g = 2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.f24255d = trackIdGenerator.getFormatId();
        this.f24256e = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != C4649C.TIME_UNSET) {
            this.f24263l = j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        this.f24257f = 0;
        this.f24258g = 0;
        this.f24259h = false;
        this.f24263l = C4649C.TIME_UNSET;
    }

    public Ac3Reader(@Nullable String str) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[128]);
        this.f24252a = parsableBitArray;
        this.f24253b = new ParsableByteArray(parsableBitArray.data);
        this.f24257f = 0;
        this.f24263l = C4649C.TIME_UNSET;
        this.f24254c = str;
    }
}
