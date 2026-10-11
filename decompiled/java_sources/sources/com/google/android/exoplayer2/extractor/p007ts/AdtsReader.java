package com.google.android.exoplayer2.extractor.p007ts;

import androidx.annotation.Nullable;
import com.alibaba.fastjson2.JSONB;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Arrays;
import java.util.Collections;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class AdtsReader implements ElementaryStreamReader {

    /* renamed from: A */
    public static final int f24301A = 4;

    /* renamed from: B */
    public static final int f24302B = 5;

    /* renamed from: C */
    public static final int f24303C = 2;

    /* renamed from: D */
    public static final int f24304D = 8;

    /* renamed from: E */
    public static final int f24305E = 256;

    /* renamed from: F */
    public static final int f24306F = 512;

    /* renamed from: G */
    public static final int f24307G = 768;

    /* renamed from: H */
    public static final int f24308H = 1024;

    /* renamed from: I */
    public static final int f24309I = 10;

    /* renamed from: J */
    public static final int f24310J = 6;

    /* renamed from: K */
    public static final byte[] f24311K = {73, JSONB.Constants.BC_INT32_SHORT_ZERO, TarConstants.LF_CHR};

    /* renamed from: L */
    public static final int f24312L = -1;

    /* renamed from: v */
    public static final String f24313v = "AdtsReader";

    /* renamed from: w */
    public static final int f24314w = 0;

    /* renamed from: x */
    public static final int f24315x = 1;

    /* renamed from: y */
    public static final int f24316y = 2;

    /* renamed from: z */
    public static final int f24317z = 3;

    /* renamed from: a */
    public final boolean f24318a;

    /* renamed from: b */
    public final ParsableBitArray f24319b;

    /* renamed from: c */
    public final ParsableByteArray f24320c;

    /* renamed from: d */
    @Nullable
    public final String f24321d;

    /* renamed from: e */
    public String f24322e;

    /* renamed from: f */
    public TrackOutput f24323f;

    /* renamed from: g */
    public TrackOutput f24324g;

    /* renamed from: h */
    public int f24325h;

    /* renamed from: i */
    public int f24326i;

    /* renamed from: j */
    public int f24327j;

    /* renamed from: k */
    public boolean f24328k;

    /* renamed from: l */
    public boolean f24329l;

    /* renamed from: m */
    public int f24330m;

    /* renamed from: n */
    public int f24331n;

    /* renamed from: o */
    public int f24332o;

    /* renamed from: p */
    public boolean f24333p;

    /* renamed from: q */
    public long f24334q;

    /* renamed from: r */
    public int f24335r;

    /* renamed from: s */
    public long f24336s;

    /* renamed from: t */
    public TrackOutput f24337t;

    /* renamed from: u */
    public long f24338u;

    public AdtsReader(boolean z) {
        this(z, null);
    }

    public static boolean isAdtsSyncWord(int i) {
        return (i & 65526) == 65520;
    }

    @EnsuresNonNull({Constants.ELEMNAME_OUTPUT_STRING, "currentOutput", "id3Output"})
    /* renamed from: a */
    public final void m19074a() {
        Assertions.checkNotNull(this.f24323f);
        Util.castNonNull(this.f24337t);
        Util.castNonNull(this.f24324g);
    }

    /* renamed from: b */
    public final void m19075b(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.bytesLeft() == 0) {
            return;
        }
        this.f24319b.data[0] = parsableByteArray.getData()[parsableByteArray.getPosition()];
        this.f24319b.setPosition(2);
        int readBits = this.f24319b.readBits(4);
        int i = this.f24331n;
        if (i != -1 && readBits != i) {
            m19083j();
            return;
        }
        if (!this.f24329l) {
            this.f24329l = true;
            this.f24330m = this.f24332o;
            this.f24331n = readBits;
        }
        m19086m();
    }

    /* renamed from: c */
    public final boolean m19076c(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 1);
        if (!m19089p(parsableByteArray, this.f24319b.data, 1)) {
            return false;
        }
        this.f24319b.setPosition(4);
        int readBits = this.f24319b.readBits(1);
        int i2 = this.f24330m;
        if (i2 != -1 && readBits != i2) {
            return false;
        }
        if (this.f24331n != -1) {
            if (!m19089p(parsableByteArray, this.f24319b.data, 1)) {
                return true;
            }
            this.f24319b.setPosition(2);
            if (this.f24319b.readBits(4) != this.f24331n) {
                return false;
            }
            parsableByteArray.setPosition(i + 2);
        }
        if (!m19089p(parsableByteArray, this.f24319b.data, 4)) {
            return true;
        }
        this.f24319b.setPosition(14);
        int readBits2 = this.f24319b.readBits(13);
        if (readBits2 < 7) {
            return false;
        }
        byte[] data = parsableByteArray.getData();
        int limit = parsableByteArray.limit();
        int i3 = i + readBits2;
        if (i3 >= limit) {
            return true;
        }
        byte b = data[i3];
        if (b == -1) {
            int i4 = i3 + 1;
            if (i4 == limit) {
                return true;
            }
            return m19079f((byte) -1, data[i4]) && ((data[i4] & 8) >> 3) == readBits;
        }
        if (b != 73) {
            return false;
        }
        int i5 = i3 + 1;
        if (i5 == limit) {
            return true;
        }
        if (data[i5] != 68) {
            return false;
        }
        int i6 = i3 + 2;
        return i6 == limit || data[i6] == 51;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) throws ParserException {
        m19074a();
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.f24325h;
            if (i == 0) {
                m19078e(parsableByteArray);
            } else if (i == 1) {
                m19075b(parsableByteArray);
            } else if (i != 2) {
                if (i == 3) {
                    if (m19077d(parsableByteArray, this.f24319b.data, this.f24328k ? 7 : 5)) {
                        m19080g();
                    }
                } else {
                    if (i != 4) {
                        throw new IllegalStateException();
                    }
                    m19082i(parsableByteArray);
                }
            } else if (m19077d(parsableByteArray, this.f24320c.getData(), 10)) {
                m19081h();
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.f24322e = trackIdGenerator.getFormatId();
        TrackOutput track = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
        this.f24323f = track;
        this.f24337t = track;
        if (!this.f24318a) {
            this.f24324g = new DummyTrackOutput();
            return;
        }
        trackIdGenerator.generateNewId();
        TrackOutput track2 = extractorOutput.track(trackIdGenerator.getTrackId(), 5);
        this.f24324g = track2;
        track2.format(new Format.Builder().setId(trackIdGenerator.getFormatId()).setSampleMimeType(MimeTypes.APPLICATION_ID3).build());
    }

    /* renamed from: d */
    public final boolean m19077d(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int min = Math.min(parsableByteArray.bytesLeft(), i - this.f24326i);
        parsableByteArray.readBytes(bArr, this.f24326i, min);
        int i2 = this.f24326i + min;
        this.f24326i = i2;
        return i2 == i;
    }

    /* renamed from: e */
    public final void m19078e(ParsableByteArray parsableByteArray) {
        byte[] data = parsableByteArray.getData();
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        while (position < limit) {
            int i = position + 1;
            int i2 = data[position] & 255;
            if (this.f24327j == 512 && m19079f((byte) -1, (byte) i2) && (this.f24329l || m19076c(parsableByteArray, i - 2))) {
                this.f24332o = (i2 & 8) >> 3;
                this.f24328k = (i2 & 1) == 0;
                if (this.f24329l) {
                    m19086m();
                } else {
                    m19084k();
                }
                parsableByteArray.setPosition(i);
                return;
            }
            int i3 = this.f24327j;
            int i4 = i2 | i3;
            if (i4 == 329) {
                this.f24327j = 768;
            } else if (i4 == 511) {
                this.f24327j = 512;
            } else if (i4 == 836) {
                this.f24327j = 1024;
            } else if (i4 == 1075) {
                m19087n();
                parsableByteArray.setPosition(i);
                return;
            } else if (i3 != 256) {
                this.f24327j = 256;
                i--;
            }
            position = i;
        }
        parsableByteArray.setPosition(position);
    }

    /* renamed from: f */
    public final boolean m19079f(byte b, byte b2) {
        return isAdtsSyncWord(((b & 255) << 8) | (b2 & 255));
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: g */
    public final void m19080g() throws ParserException {
        this.f24319b.setPosition(0);
        if (this.f24333p) {
            this.f24319b.skipBits(10);
        } else {
            int readBits = this.f24319b.readBits(2) + 1;
            if (readBits != 2) {
                StringBuilder sb = new StringBuilder(61);
                sb.append("Detected audio object type: ");
                sb.append(readBits);
                sb.append(", but assuming AAC LC.");
                Log.m21493w(f24313v, sb.toString());
                readBits = 2;
            }
            this.f24319b.skipBits(5);
            byte[] buildAudioSpecificConfig = AacUtil.buildAudioSpecificConfig(readBits, this.f24331n, this.f24319b.readBits(3));
            AacUtil.Config parseAudioSpecificConfig = AacUtil.parseAudioSpecificConfig(buildAudioSpecificConfig);
            Format build = new Format.Builder().setId(this.f24322e).setSampleMimeType(MimeTypes.AUDIO_AAC).setCodecs(parseAudioSpecificConfig.codecs).setChannelCount(parseAudioSpecificConfig.channelCount).setSampleRate(parseAudioSpecificConfig.sampleRateHz).setInitializationData(Collections.singletonList(buildAudioSpecificConfig)).setLanguage(this.f24321d).build();
            this.f24334q = 1024000000 / build.sampleRate;
            this.f24323f.format(build);
            this.f24333p = true;
        }
        this.f24319b.skipBits(4);
        int readBits2 = (this.f24319b.readBits(13) - 2) - 5;
        if (this.f24328k) {
            readBits2 -= 2;
        }
        m19088o(this.f24323f, this.f24334q, 0, readBits2);
    }

    public long getSampleDurationUs() {
        return this.f24334q;
    }

    @RequiresNonNull({"id3Output"})
    /* renamed from: h */
    public final void m19081h() {
        this.f24324g.sampleData(this.f24320c, 10);
        this.f24320c.setPosition(6);
        m19088o(this.f24324g, 0L, 10, this.f24320c.readSynchSafeInt() + 10);
    }

    @RequiresNonNull({"currentOutput"})
    /* renamed from: i */
    public final void m19082i(ParsableByteArray parsableByteArray) {
        int min = Math.min(parsableByteArray.bytesLeft(), this.f24335r - this.f24326i);
        this.f24337t.sampleData(parsableByteArray, min);
        int i = this.f24326i + min;
        this.f24326i = i;
        int i2 = this.f24335r;
        if (i == i2) {
            long j = this.f24336s;
            if (j != C4649C.TIME_UNSET) {
                this.f24337t.sampleMetadata(j, 1, i2, 0, null);
                this.f24336s += this.f24338u;
            }
            m19085l();
        }
    }

    /* renamed from: j */
    public final void m19083j() {
        this.f24329l = false;
        m19085l();
    }

    /* renamed from: k */
    public final void m19084k() {
        this.f24325h = 1;
        this.f24326i = 0;
    }

    /* renamed from: l */
    public final void m19085l() {
        this.f24325h = 0;
        this.f24326i = 0;
        this.f24327j = 256;
    }

    /* renamed from: m */
    public final void m19086m() {
        this.f24325h = 3;
        this.f24326i = 0;
    }

    /* renamed from: n */
    public final void m19087n() {
        this.f24325h = 2;
        this.f24326i = f24311K.length;
        this.f24335r = 0;
        this.f24320c.setPosition(0);
    }

    /* renamed from: o */
    public final void m19088o(TrackOutput trackOutput, long j, int i, int i2) {
        this.f24325h = 4;
        this.f24326i = i;
        this.f24337t = trackOutput;
        this.f24338u = j;
        this.f24335r = i2;
    }

    /* renamed from: p */
    public final boolean m19089p(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        if (parsableByteArray.bytesLeft() < i) {
            return false;
        }
        parsableByteArray.readBytes(bArr, 0, i);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != C4649C.TIME_UNSET) {
            this.f24336s = j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        this.f24336s = C4649C.TIME_UNSET;
        m19083j();
    }

    public AdtsReader(boolean z, @Nullable String str) {
        this.f24319b = new ParsableBitArray(new byte[7]);
        this.f24320c = new ParsableByteArray(Arrays.copyOf(f24311K, 10));
        m19085l();
        this.f24330m = -1;
        this.f24331n = -1;
        this.f24334q = C4649C.TIME_UNSET;
        this.f24336s = C4649C.TIME_UNSET;
        this.f24318a = z;
        this.f24321d = str;
    }
}
