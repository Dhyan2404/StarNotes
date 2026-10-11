package com.google.android.exoplayer2.extractor.p007ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class LatmReader implements ElementaryStreamReader {

    /* renamed from: A */
    public static final int f24536A = 86;

    /* renamed from: B */
    public static final int f24537B = 224;

    /* renamed from: v */
    public static final int f24538v = 0;

    /* renamed from: w */
    public static final int f24539w = 1;

    /* renamed from: x */
    public static final int f24540x = 2;

    /* renamed from: y */
    public static final int f24541y = 3;

    /* renamed from: z */
    public static final int f24542z = 1024;

    /* renamed from: a */
    @Nullable
    public final String f24543a;

    /* renamed from: b */
    public final ParsableByteArray f24544b;

    /* renamed from: c */
    public final ParsableBitArray f24545c;

    /* renamed from: d */
    public TrackOutput f24546d;

    /* renamed from: e */
    public String f24547e;

    /* renamed from: f */
    public Format f24548f;

    /* renamed from: g */
    public int f24549g;

    /* renamed from: h */
    public int f24550h;

    /* renamed from: i */
    public int f24551i;

    /* renamed from: j */
    public int f24552j;

    /* renamed from: k */
    public long f24553k;

    /* renamed from: l */
    public boolean f24554l;

    /* renamed from: m */
    public int f24555m;

    /* renamed from: n */
    public int f24556n;

    /* renamed from: o */
    public int f24557o;

    /* renamed from: p */
    public boolean f24558p;

    /* renamed from: q */
    public long f24559q;

    /* renamed from: r */
    public int f24560r;

    /* renamed from: s */
    public long f24561s;

    /* renamed from: t */
    public int f24562t;

    /* renamed from: u */
    @Nullable
    public String f24563u;

    public LatmReader(@Nullable String str) {
        this.f24543a = str;
        ParsableByteArray parsableByteArray = new ParsableByteArray(1024);
        this.f24544b = parsableByteArray;
        this.f24545c = new ParsableBitArray(parsableByteArray.getData());
        this.f24553k = C4649C.TIME_UNSET;
    }

    /* renamed from: a */
    public static long m19142a(ParsableBitArray parsableBitArray) {
        return parsableBitArray.readBits((parsableBitArray.readBits(2) + 1) * 8);
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: b */
    public final void m19143b(ParsableBitArray parsableBitArray) throws ParserException {
        if (!parsableBitArray.readBit()) {
            this.f24554l = true;
            m19148g(parsableBitArray);
        } else if (!this.f24554l) {
            return;
        }
        if (this.f24555m != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (this.f24556n != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        m19147f(parsableBitArray, m19146e(parsableBitArray));
        if (this.f24558p) {
            parsableBitArray.skipBits((int) this.f24559q);
        }
    }

    /* renamed from: c */
    public final int m19144c(ParsableBitArray parsableBitArray) throws ParserException {
        int bitsLeft = parsableBitArray.bitsLeft();
        AacUtil.Config parseAudioSpecificConfig = AacUtil.parseAudioSpecificConfig(parsableBitArray, true);
        this.f24563u = parseAudioSpecificConfig.codecs;
        this.f24560r = parseAudioSpecificConfig.sampleRateHz;
        this.f24562t = parseAudioSpecificConfig.channelCount;
        return bitsLeft - parsableBitArray.bitsLeft();
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) throws ParserException {
        Assertions.checkStateNotNull(this.f24546d);
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.f24549g;
            if (i != 0) {
                if (i == 1) {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    if ((readUnsignedByte & 224) == 224) {
                        this.f24552j = readUnsignedByte;
                        this.f24549g = 2;
                    } else if (readUnsignedByte != 86) {
                        this.f24549g = 0;
                    }
                } else if (i == 2) {
                    int readUnsignedByte2 = ((this.f24552j & (-225)) << 8) | parsableByteArray.readUnsignedByte();
                    this.f24551i = readUnsignedByte2;
                    if (readUnsignedByte2 > this.f24544b.getData().length) {
                        m19149h(this.f24551i);
                    }
                    this.f24550h = 0;
                    this.f24549g = 3;
                } else {
                    if (i != 3) {
                        throw new IllegalStateException();
                    }
                    int min = Math.min(parsableByteArray.bytesLeft(), this.f24551i - this.f24550h);
                    parsableByteArray.readBytes(this.f24545c.data, this.f24550h, min);
                    int i2 = this.f24550h + min;
                    this.f24550h = i2;
                    if (i2 == this.f24551i) {
                        this.f24545c.setPosition(0);
                        m19143b(this.f24545c);
                        this.f24549g = 0;
                    }
                }
            } else if (parsableByteArray.readUnsignedByte() == 86) {
                this.f24549g = 1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.f24546d = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
        this.f24547e = trackIdGenerator.getFormatId();
    }

    /* renamed from: d */
    public final void m19145d(ParsableBitArray parsableBitArray) {
        int readBits = parsableBitArray.readBits(3);
        this.f24557o = readBits;
        if (readBits == 0) {
            parsableBitArray.skipBits(8);
            return;
        }
        if (readBits == 1) {
            parsableBitArray.skipBits(9);
            return;
        }
        if (readBits == 3 || readBits == 4 || readBits == 5) {
            parsableBitArray.skipBits(6);
        } else {
            if (readBits != 6 && readBits != 7) {
                throw new IllegalStateException();
            }
            parsableBitArray.skipBits(1);
        }
    }

    /* renamed from: e */
    public final int m19146e(ParsableBitArray parsableBitArray) throws ParserException {
        int readBits;
        if (this.f24557o != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        int i = 0;
        do {
            readBits = parsableBitArray.readBits(8);
            i += readBits;
        } while (readBits == 255);
        return i;
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: f */
    public final void m19147f(ParsableBitArray parsableBitArray, int i) {
        int position = parsableBitArray.getPosition();
        if ((position & 7) == 0) {
            this.f24544b.setPosition(position >> 3);
        } else {
            parsableBitArray.readBits(this.f24544b.getData(), 0, i * 8);
            this.f24544b.setPosition(0);
        }
        this.f24546d.sampleData(this.f24544b, i);
        long j = this.f24553k;
        if (j != C4649C.TIME_UNSET) {
            this.f24546d.sampleMetadata(j, 1, i, 0, null);
            this.f24553k += this.f24561s;
        }
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: g */
    public final void m19148g(ParsableBitArray parsableBitArray) throws ParserException {
        boolean readBit;
        int readBits = parsableBitArray.readBits(1);
        int readBits2 = readBits == 1 ? parsableBitArray.readBits(1) : 0;
        this.f24555m = readBits2;
        if (readBits2 != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (readBits == 1) {
            m19142a(parsableBitArray);
        }
        if (!parsableBitArray.readBit()) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        this.f24556n = parsableBitArray.readBits(6);
        int readBits3 = parsableBitArray.readBits(4);
        int readBits4 = parsableBitArray.readBits(3);
        if (readBits3 != 0 || readBits4 != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (readBits == 0) {
            int position = parsableBitArray.getPosition();
            int m19144c = m19144c(parsableBitArray);
            parsableBitArray.setPosition(position);
            byte[] bArr = new byte[(m19144c + 7) / 8];
            parsableBitArray.readBits(bArr, 0, m19144c);
            Format build = new Format.Builder().setId(this.f24547e).setSampleMimeType(MimeTypes.AUDIO_AAC).setCodecs(this.f24563u).setChannelCount(this.f24562t).setSampleRate(this.f24560r).setInitializationData(Collections.singletonList(bArr)).setLanguage(this.f24543a).build();
            if (!build.equals(this.f24548f)) {
                this.f24548f = build;
                this.f24561s = 1024000000 / build.sampleRate;
                this.f24546d.format(build);
            }
        } else {
            parsableBitArray.skipBits(((int) m19142a(parsableBitArray)) - m19144c(parsableBitArray));
        }
        m19145d(parsableBitArray);
        boolean readBit2 = parsableBitArray.readBit();
        this.f24558p = readBit2;
        this.f24559q = 0L;
        if (readBit2) {
            if (readBits == 1) {
                this.f24559q = m19142a(parsableBitArray);
            }
            do {
                readBit = parsableBitArray.readBit();
                this.f24559q = (this.f24559q << 8) + parsableBitArray.readBits(8);
            } while (readBit);
        }
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(8);
        }
    }

    /* renamed from: h */
    public final void m19149h(int i) {
        this.f24544b.reset(i);
        this.f24545c.reset(this.f24544b.getData());
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != C4649C.TIME_UNSET) {
            this.f24553k = j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        this.f24549g = 0;
        this.f24553k = C4649C.TIME_UNSET;
        this.f24554l = false;
    }
}
