package com.sunia.HTREnginev2;

import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.WavUtil;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class p5o {

    /* renamed from: a */
    public static final String f80479a = "WavHeaderReader";

    /* renamed from: com.sunia.HTREnginev2.p5o$a */
    /* loaded from: classes5.dex */
    public static final class C14225a {

        /* renamed from: c */
        public static final int f80480c = 8;

        /* renamed from: a */
        public final int f80481a;

        /* renamed from: b */
        public final long f80482b;

        public C14225a(int i, long j) {
            this.f80481a = i;
            this.f80482b = j;
        }

        /* renamed from: a */
        public static C14225a m56228a(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) throws IOException {
            extractorInput.peekFully(parsableByteArray.getData(), 0, 8);
            parsableByteArray.setPosition(0);
            return new C14225a(parsableByteArray.readInt(), parsableByteArray.readLittleEndianUnsignedInt());
        }
    }

    /* renamed from: a */
    public static boolean m56223a(ExtractorInput extractorInput) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        int i = C14225a.m56228a(extractorInput, parsableByteArray).f80481a;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        extractorInput.peekFully(parsableByteArray.getData(), 0, 4);
        parsableByteArray.setPosition(0);
        int readInt = parsableByteArray.readInt();
        if (readInt == 1463899717) {
            return true;
        }
        StringBuilder sb = new StringBuilder(34);
        sb.append("Unsupported form type: ");
        sb.append(readInt);
        Log.m21489e(f80479a, sb.toString());
        return false;
    }

    /* renamed from: b */
    public static o5o m56224b(ExtractorInput extractorInput) throws IOException {
        byte[] bArr;
        ParsableByteArray parsableByteArray = new ParsableByteArray(16);
        C14225a m56226d = m56226d(WavUtil.FMT_FOURCC, extractorInput, parsableByteArray);
        Assertions.checkState(m56226d.f80482b >= 16);
        extractorInput.peekFully(parsableByteArray.getData(), 0, 16);
        parsableByteArray.setPosition(0);
        int readLittleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
        int readLittleEndianUnsignedShort2 = parsableByteArray.readLittleEndianUnsignedShort();
        int readLittleEndianUnsignedIntToInt = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int readLittleEndianUnsignedIntToInt2 = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int readLittleEndianUnsignedShort3 = parsableByteArray.readLittleEndianUnsignedShort();
        int readLittleEndianUnsignedShort4 = parsableByteArray.readLittleEndianUnsignedShort();
        int i = ((int) m56226d.f80482b) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            extractorInput.peekFully(bArr2, 0, i);
            bArr = bArr2;
        } else {
            bArr = Util.EMPTY_BYTE_ARRAY;
        }
        extractorInput.skipFully((int) (extractorInput.getPeekPosition() - extractorInput.getPosition()));
        return new o5o(readLittleEndianUnsignedShort, readLittleEndianUnsignedShort2, readLittleEndianUnsignedIntToInt, readLittleEndianUnsignedIntToInt2, readLittleEndianUnsignedShort3, readLittleEndianUnsignedShort4, bArr);
    }

    /* renamed from: c */
    public static long m56225c(ExtractorInput extractorInput) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        C14225a m56228a = C14225a.m56228a(extractorInput, parsableByteArray);
        if (m56228a.f80481a != 1685272116) {
            extractorInput.resetPeekPosition();
            return -1L;
        }
        extractorInput.advancePeekPosition(8);
        parsableByteArray.setPosition(0);
        extractorInput.peekFully(parsableByteArray.getData(), 0, 8);
        long readLittleEndianLong = parsableByteArray.readLittleEndianLong();
        extractorInput.skipFully(((int) m56228a.f80482b) + 8);
        return readLittleEndianLong;
    }

    /* renamed from: d */
    public static C14225a m56226d(int i, ExtractorInput extractorInput, ParsableByteArray parsableByteArray) throws IOException {
        C14225a m56228a = C14225a.m56228a(extractorInput, parsableByteArray);
        while (true) {
            int i2 = m56228a.f80481a;
            if (i2 == i) {
                return m56228a;
            }
            StringBuilder sb = new StringBuilder(39);
            sb.append("Ignoring unknown WAV chunk: ");
            sb.append(i2);
            Log.m21493w(f80479a, sb.toString());
            long j = m56228a.f80482b + 8;
            if (j > 2147483647L) {
                int i3 = m56228a.f80481a;
                StringBuilder sb2 = new StringBuilder(51);
                sb2.append("Chunk is too large (~2GB+) to skip; id: ");
                sb2.append(i3);
                throw ParserException.createForUnsupportedContainerFeature(sb2.toString());
            }
            extractorInput.skipFully((int) j);
            m56228a = C14225a.m56228a(extractorInput, parsableByteArray);
        }
    }

    /* renamed from: e */
    public static Pair<Long, Long> m56227e(ExtractorInput extractorInput) throws IOException {
        extractorInput.resetPeekPosition();
        C14225a m56226d = m56226d(1684108385, extractorInput, new ParsableByteArray(8));
        extractorInput.skipFully(8);
        return Pair.create(Long.valueOf(extractorInput.getPosition()), Long.valueOf(m56226d.f80482b));
    }
}
