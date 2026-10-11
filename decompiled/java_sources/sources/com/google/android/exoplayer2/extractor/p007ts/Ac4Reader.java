package com.google.android.exoplayer2.extractor.p007ts;

import androidx.annotation.Nullable;
import com.alibaba.fastjson2.JSONB;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.Ac4Util;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.sun.org.apache.xalan.internal.templates.Constants;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class Ac4Reader implements ElementaryStreamReader {

    /* renamed from: n */
    public static final int f24270n = 0;

    /* renamed from: o */
    public static final int f24271o = 1;

    /* renamed from: p */
    public static final int f24272p = 2;

    /* renamed from: a */
    public final ParsableBitArray f24273a;

    /* renamed from: b */
    public final ParsableByteArray f24274b;

    /* renamed from: c */
    @Nullable
    public final String f24275c;

    /* renamed from: d */
    public String f24276d;

    /* renamed from: e */
    public TrackOutput f24277e;

    /* renamed from: f */
    public int f24278f;

    /* renamed from: g */
    public int f24279g;

    /* renamed from: h */
    public boolean f24280h;

    /* renamed from: i */
    public boolean f24281i;

    /* renamed from: j */
    public long f24282j;

    /* renamed from: k */
    public Format f24283k;

    /* renamed from: l */
    public int f24284l;

    /* renamed from: m */
    public long f24285m;

    public Ac4Reader() {
        this(null);
    }

    /* renamed from: a */
    public final boolean m19064a(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int min = Math.min(parsableByteArray.bytesLeft(), i - this.f24279g);
        parsableByteArray.readBytes(bArr, this.f24279g, min);
        int i2 = this.f24279g + min;
        this.f24279g = i2;
        return i2 == i;
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: b */
    public final void m19065b() {
        this.f24273a.setPosition(0);
        Ac4Util.SyncFrameInfo parseAc4SyncframeInfo = Ac4Util.parseAc4SyncframeInfo(this.f24273a);
        Format format = this.f24283k;
        if (format == null || parseAc4SyncframeInfo.channelCount != format.channelCount || parseAc4SyncframeInfo.sampleRate != format.sampleRate || !MimeTypes.AUDIO_AC4.equals(format.sampleMimeType)) {
            Format build = new Format.Builder().setId(this.f24276d).setSampleMimeType(MimeTypes.AUDIO_AC4).setChannelCount(parseAc4SyncframeInfo.channelCount).setSampleRate(parseAc4SyncframeInfo.sampleRate).setLanguage(this.f24275c).build();
            this.f24283k = build;
            this.f24277e.format(build);
        }
        this.f24284l = parseAc4SyncframeInfo.frameSize;
        this.f24282j = (parseAc4SyncframeInfo.sampleCount * 1000000) / this.f24283k.sampleRate;
    }

    /* renamed from: c */
    public final boolean m19066c(ParsableByteArray parsableByteArray) {
        int readUnsignedByte;
        while (true) {
            if (parsableByteArray.bytesLeft() <= 0) {
                return false;
            }
            if (this.f24280h) {
                readUnsignedByte = parsableByteArray.readUnsignedByte();
                this.f24280h = readUnsignedByte == 172;
                if (readUnsignedByte == 64 || readUnsignedByte == 65) {
                    break;
                }
            } else {
                this.f24280h = parsableByteArray.readUnsignedByte() == 172;
            }
        }
        this.f24281i = readUnsignedByte == 65;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        Assertions.checkStateNotNull(this.f24277e);
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.f24278f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(parsableByteArray.bytesLeft(), this.f24284l - this.f24279g);
                        this.f24277e.sampleData(parsableByteArray, min);
                        int i2 = this.f24279g + min;
                        this.f24279g = i2;
                        int i3 = this.f24284l;
                        if (i2 == i3) {
                            long j = this.f24285m;
                            if (j != C4649C.TIME_UNSET) {
                                this.f24277e.sampleMetadata(j, 1, i3, 0, null);
                                this.f24285m += this.f24282j;
                            }
                            this.f24278f = 0;
                        }
                    }
                } else if (m19064a(parsableByteArray, this.f24274b.getData(), 16)) {
                    m19065b();
                    this.f24274b.setPosition(0);
                    this.f24277e.sampleData(this.f24274b, 16);
                    this.f24278f = 2;
                }
            } else if (m19066c(parsableByteArray)) {
                this.f24278f = 1;
                this.f24274b.getData()[0] = JSONB.Constants.BC_TIMESTAMP_SECONDS;
                this.f24274b.getData()[1] = (byte) (this.f24281i ? 65 : 64);
                this.f24279g = 2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.f24276d = trackIdGenerator.getFormatId();
        this.f24277e = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != C4649C.TIME_UNSET) {
            this.f24285m = j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        this.f24278f = 0;
        this.f24279g = 0;
        this.f24280h = false;
        this.f24281i = false;
        this.f24285m = C4649C.TIME_UNSET;
    }

    public Ac4Reader(@Nullable String str) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[16]);
        this.f24273a = parsableBitArray;
        this.f24274b = new ParsableByteArray(parsableBitArray.data);
        this.f24278f = 0;
        this.f24279g = 0;
        this.f24280h = false;
        this.f24281i = false;
        this.f24285m = C4649C.TIME_UNSET;
        this.f24275c = str;
    }
}
