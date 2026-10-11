package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.video.AvcConfig;

/* renamed from: com.google.android.exoplayer2.extractor.flv.b */
/* loaded from: classes5.dex */
public final class C4735b extends TagPayloadReader {

    /* renamed from: h */
    public static final int f23644h = 7;

    /* renamed from: i */
    public static final int f23645i = 1;

    /* renamed from: j */
    public static final int f23646j = 5;

    /* renamed from: k */
    public static final int f23647k = 0;

    /* renamed from: l */
    public static final int f23648l = 1;

    /* renamed from: b */
    public final ParsableByteArray f23649b;

    /* renamed from: c */
    public final ParsableByteArray f23650c;

    /* renamed from: d */
    public int f23651d;

    /* renamed from: e */
    public boolean f23652e;

    /* renamed from: f */
    public boolean f23653f;

    /* renamed from: g */
    public int f23654g;

    public C4735b(TrackOutput trackOutput) {
        super(trackOutput);
        this.f23649b = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.f23650c = new ParsableByteArray(4);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: b */
    public boolean mo18855b(ParsableByteArray parsableByteArray) throws TagPayloadReader.UnsupportedFormatException {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i = (readUnsignedByte >> 4) & 15;
        int i2 = readUnsignedByte & 15;
        if (i2 == 7) {
            this.f23654g = i;
            return i != 5;
        }
        StringBuilder sb = new StringBuilder(39);
        sb.append("Video format not supported: ");
        sb.append(i2);
        throw new TagPayloadReader.UnsupportedFormatException(sb.toString());
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: c */
    public boolean mo18856c(ParsableByteArray parsableByteArray, long j) throws ParserException {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        long readInt24 = j + (parsableByteArray.readInt24() * 1000);
        if (readUnsignedByte == 0 && !this.f23652e) {
            ParsableByteArray parsableByteArray2 = new ParsableByteArray(new byte[parsableByteArray.bytesLeft()]);
            parsableByteArray.readBytes(parsableByteArray2.getData(), 0, parsableByteArray.bytesLeft());
            AvcConfig parse = AvcConfig.parse(parsableByteArray2);
            this.f23651d = parse.nalUnitLengthFieldLength;
            this.f23633a.format(new Format.Builder().setSampleMimeType(MimeTypes.VIDEO_H264).setCodecs(parse.codecs).setWidth(parse.width).setHeight(parse.height).setPixelWidthHeightRatio(parse.pixelWidthHeightRatio).setInitializationData(parse.initializationData).build());
            this.f23652e = true;
            return false;
        }
        if (readUnsignedByte != 1 || !this.f23652e) {
            return false;
        }
        int i = this.f23654g == 1 ? 1 : 0;
        if (!this.f23653f && i == 0) {
            return false;
        }
        byte[] data = this.f23650c.getData();
        data[0] = 0;
        data[1] = 0;
        data[2] = 0;
        int i2 = 4 - this.f23651d;
        int i3 = 0;
        while (parsableByteArray.bytesLeft() > 0) {
            parsableByteArray.readBytes(this.f23650c.getData(), i2, this.f23651d);
            this.f23650c.setPosition(0);
            int readUnsignedIntToInt = this.f23650c.readUnsignedIntToInt();
            this.f23649b.setPosition(0);
            this.f23633a.sampleData(this.f23649b, 4);
            this.f23633a.sampleData(parsableByteArray, readUnsignedIntToInt);
            i3 = i3 + 4 + readUnsignedIntToInt;
        }
        this.f23633a.sampleMetadata(readInt24, i, i3, 0, null);
        this.f23653f = true;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: d */
    public void mo18857d() {
        this.f23653f = false;
    }
}
