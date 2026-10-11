package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.source.SilenceMediaSource;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.onyx.android.sdk.data.common.data.template.OfficialCoverType;
import java.util.Collections;

/* renamed from: com.google.android.exoplayer2.extractor.flv.a */
/* loaded from: classes5.dex */
public final class C4734a extends TagPayloadReader {

    /* renamed from: e */
    public static final int f23634e = 2;

    /* renamed from: f */
    public static final int f23635f = 7;

    /* renamed from: g */
    public static final int f23636g = 8;

    /* renamed from: h */
    public static final int f23637h = 10;

    /* renamed from: i */
    public static final int f23638i = 0;

    /* renamed from: j */
    public static final int f23639j = 1;

    /* renamed from: k */
    public static final int[] f23640k = {OfficialCoverType.COVER_FRUIT_BANANA_ICE_CREAM_HORIZONTAL, 11025, 22050, SilenceMediaSource.f25365n};

    /* renamed from: b */
    public boolean f23641b;

    /* renamed from: c */
    public boolean f23642c;

    /* renamed from: d */
    public int f23643d;

    public C4734a(TrackOutput trackOutput) {
        super(trackOutput);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: b */
    public boolean mo18855b(ParsableByteArray parsableByteArray) throws TagPayloadReader.UnsupportedFormatException {
        if (this.f23641b) {
            parsableByteArray.skipBytes(1);
        } else {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            int i = (readUnsignedByte >> 4) & 15;
            this.f23643d = i;
            if (i == 2) {
                this.f23633a.format(new Format.Builder().setSampleMimeType("audio/mpeg").setChannelCount(1).setSampleRate(f23640k[(readUnsignedByte >> 2) & 3]).build());
                this.f23642c = true;
            } else if (i == 7 || i == 8) {
                this.f23633a.format(new Format.Builder().setSampleMimeType(i == 7 ? MimeTypes.AUDIO_ALAW : MimeTypes.AUDIO_MLAW).setChannelCount(1).setSampleRate(8000).build());
                this.f23642c = true;
            } else if (i != 10) {
                int i2 = this.f23643d;
                StringBuilder sb = new StringBuilder(39);
                sb.append("Audio format not supported: ");
                sb.append(i2);
                throw new TagPayloadReader.UnsupportedFormatException(sb.toString());
            }
            this.f23641b = true;
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: c */
    public boolean mo18856c(ParsableByteArray parsableByteArray, long j) throws ParserException {
        if (this.f23643d == 2) {
            int bytesLeft = parsableByteArray.bytesLeft();
            this.f23633a.sampleData(parsableByteArray, bytesLeft);
            this.f23633a.sampleMetadata(j, 1, bytesLeft, 0, null);
            return true;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if (readUnsignedByte != 0 || this.f23642c) {
            if (this.f23643d == 10 && readUnsignedByte != 1) {
                return false;
            }
            int bytesLeft2 = parsableByteArray.bytesLeft();
            this.f23633a.sampleData(parsableByteArray, bytesLeft2);
            this.f23633a.sampleMetadata(j, 1, bytesLeft2, 0, null);
            return true;
        }
        int bytesLeft3 = parsableByteArray.bytesLeft();
        byte[] bArr = new byte[bytesLeft3];
        parsableByteArray.readBytes(bArr, 0, bytesLeft3);
        AacUtil.Config parseAudioSpecificConfig = AacUtil.parseAudioSpecificConfig(bArr);
        this.f23633a.format(new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_AAC).setCodecs(parseAudioSpecificConfig.codecs).setChannelCount(parseAudioSpecificConfig.channelCount).setSampleRate(parseAudioSpecificConfig.sampleRateHz).setInitializationData(Collections.singletonList(bArr)).build());
        this.f23642c = true;
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: d */
    public void mo18857d() {
    }
}
