package org.apache.commons.compress.harmony.pack200;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/* loaded from: classes12.dex */
public class CodecEncoding {

    /* renamed from: a */
    public static final BHSDCodec[] f106608a = {null, new BHSDCodec(1, 256), new BHSDCodec(1, 256, 1), new BHSDCodec(1, 256, 0, 1), new BHSDCodec(1, 256, 1, 1), new BHSDCodec(2, 256), new BHSDCodec(2, 256, 1), new BHSDCodec(2, 256, 0, 1), new BHSDCodec(2, 256, 1, 1), new BHSDCodec(3, 256), new BHSDCodec(3, 256, 1), new BHSDCodec(3, 256, 0, 1), new BHSDCodec(3, 256, 1, 1), new BHSDCodec(4, 256), new BHSDCodec(4, 256, 1), new BHSDCodec(4, 256, 0, 1), new BHSDCodec(4, 256, 1, 1), new BHSDCodec(5, 4), new BHSDCodec(5, 4, 1), new BHSDCodec(5, 4, 2), new BHSDCodec(5, 16), new BHSDCodec(5, 16, 1), new BHSDCodec(5, 16, 2), new BHSDCodec(5, 32), new BHSDCodec(5, 32, 1), new BHSDCodec(5, 32, 2), new BHSDCodec(5, 64), new BHSDCodec(5, 64, 1), new BHSDCodec(5, 64, 2), new BHSDCodec(5, 128), new BHSDCodec(5, 128, 1), new BHSDCodec(5, 128, 2), new BHSDCodec(5, 4, 0, 1), new BHSDCodec(5, 4, 1, 1), new BHSDCodec(5, 4, 2, 1), new BHSDCodec(5, 16, 0, 1), new BHSDCodec(5, 16, 1, 1), new BHSDCodec(5, 16, 2, 1), new BHSDCodec(5, 32, 0, 1), new BHSDCodec(5, 32, 1, 1), new BHSDCodec(5, 32, 2, 1), new BHSDCodec(5, 64, 0, 1), new BHSDCodec(5, 64, 1, 1), new BHSDCodec(5, 64, 2, 1), new BHSDCodec(5, 128, 0, 1), new BHSDCodec(5, 128, 1, 1), new BHSDCodec(5, 128, 2, 1), new BHSDCodec(2, 192), new BHSDCodec(2, 224), new BHSDCodec(2, 240), new BHSDCodec(2, 248), new BHSDCodec(2, 252), new BHSDCodec(2, 8, 0, 1), new BHSDCodec(2, 8, 1, 1), new BHSDCodec(2, 16, 0, 1), new BHSDCodec(2, 16, 1, 1), new BHSDCodec(2, 32, 0, 1), new BHSDCodec(2, 32, 1, 1), new BHSDCodec(2, 64, 0, 1), new BHSDCodec(2, 64, 1, 1), new BHSDCodec(2, 128, 0, 1), new BHSDCodec(2, 128, 1, 1), new BHSDCodec(2, 192, 0, 1), new BHSDCodec(2, 192, 1, 1), new BHSDCodec(2, 224, 0, 1), new BHSDCodec(2, 224, 1, 1), new BHSDCodec(2, 240, 0, 1), new BHSDCodec(2, 240, 1, 1), new BHSDCodec(2, 248, 0, 1), new BHSDCodec(2, 248, 1, 1), new BHSDCodec(3, 192), new BHSDCodec(3, 224), new BHSDCodec(3, 240), new BHSDCodec(3, 248), new BHSDCodec(3, 252), new BHSDCodec(3, 8, 0, 1), new BHSDCodec(3, 8, 1, 1), new BHSDCodec(3, 16, 0, 1), new BHSDCodec(3, 16, 1, 1), new BHSDCodec(3, 32, 0, 1), new BHSDCodec(3, 32, 1, 1), new BHSDCodec(3, 64, 0, 1), new BHSDCodec(3, 64, 1, 1), new BHSDCodec(3, 128, 0, 1), new BHSDCodec(3, 128, 1, 1), new BHSDCodec(3, 192, 0, 1), new BHSDCodec(3, 192, 1, 1), new BHSDCodec(3, 224, 0, 1), new BHSDCodec(3, 224, 1, 1), new BHSDCodec(3, 240, 0, 1), new BHSDCodec(3, 240, 1, 1), new BHSDCodec(3, 248, 0, 1), new BHSDCodec(3, 248, 1, 1), new BHSDCodec(4, 192), new BHSDCodec(4, 224), new BHSDCodec(4, 240), new BHSDCodec(4, 248), new BHSDCodec(4, 252), new BHSDCodec(4, 8, 0, 1), new BHSDCodec(4, 8, 1, 1), new BHSDCodec(4, 16, 0, 1), new BHSDCodec(4, 16, 1, 1), new BHSDCodec(4, 32, 0, 1), new BHSDCodec(4, 32, 1, 1), new BHSDCodec(4, 64, 0, 1), new BHSDCodec(4, 64, 1, 1), new BHSDCodec(4, 128, 0, 1), new BHSDCodec(4, 128, 1, 1), new BHSDCodec(4, 192, 0, 1), new BHSDCodec(4, 192, 1, 1), new BHSDCodec(4, 224, 0, 1), new BHSDCodec(4, 224, 1, 1), new BHSDCodec(4, 240, 0, 1), new BHSDCodec(4, 240, 1, 1), new BHSDCodec(4, 248, 0, 1), new BHSDCodec(4, 248, 1, 1)};

    /* renamed from: b */
    public static Map<BHSDCodec, Integer> f106609b;

    public static BHSDCodec getCanonicalCodec(int i) {
        return f106608a[i];
    }

    public static Codec getCodec(int i, InputStream inputStream, Codec codec) throws IOException, Pack200Exception {
        BHSDCodec[] bHSDCodecArr = f106608a;
        if (bHSDCodecArr.length != 116) {
            throw new Error("Canonical encodings have been incorrectly modified");
        }
        if (i < 0) {
            throw new IllegalArgumentException("Encoding cannot be less than zero");
        }
        if (i == 0) {
            return codec;
        }
        if (i <= 115) {
            return bHSDCodecArr[i];
        }
        if (i == 116) {
            int read = inputStream.read();
            if (read == -1) {
                throw new EOFException("End of buffer read whilst trying to decode codec");
            }
            int i2 = read & 1;
            int i3 = (read >> 1) & 3;
            int i4 = ((read >> 3) & 7) + 1;
            int read2 = inputStream.read();
            if (read2 != -1) {
                return new BHSDCodec(i4, read2 + 1, i3, i2);
            }
            throw new EOFException("End of buffer read whilst trying to decode codec");
        }
        if (i >= 117 && i <= 140) {
            int i5 = i - 117;
            int i6 = i5 & 3;
            boolean z = ((i5 >> 2) & 1) == 1;
            boolean z2 = ((i5 >> 3) & 1) == 1;
            boolean z3 = ((i5 >> 4) & 1) == 1;
            if (z2 && z3) {
                throw new Pack200Exception("ADef and BDef should never both be true");
            }
            int read3 = ((z ? inputStream.read() : 3) + 1) * ((int) Math.pow(16.0d, i6));
            Codec codec2 = z2 ? codec : getCodec(inputStream.read(), inputStream, codec);
            if (!z3) {
                codec = getCodec(inputStream.read(), inputStream, codec);
            }
            return new RunCodec(read3, codec2, codec);
        }
        if (i < 141 || i > 188) {
            throw new Pack200Exception("Invalid codec encoding byte (" + i + ") found");
        }
        int i7 = i - 141;
        boolean z4 = (i7 & 1) == 1;
        boolean z5 = ((i7 >> 1) & 1) == 1;
        int i8 = i7 >> 2;
        boolean z6 = i8 != 0;
        int i9 = new int[]{0, 4, 8, 16, 32, 64, 128, 192, 224, 240, 248, 252}[i8];
        if (z6) {
            Codec codec3 = z4 ? codec : getCodec(inputStream.read(), inputStream, codec);
            if (!z5) {
                codec = getCodec(inputStream.read(), inputStream, codec);
            }
            return new PopulationCodec(codec3, i9, codec);
        }
        Codec codec4 = z4 ? codec : getCodec(inputStream.read(), inputStream, codec);
        Codec codec5 = getCodec(inputStream.read(), inputStream, codec);
        if (!z5) {
            codec = getCodec(inputStream.read(), inputStream, codec);
        }
        return new PopulationCodec(codec4, codec5, codec);
    }

    /* JADX WARN: Code restructure failed: missing block: B:99:0x0131, code lost:
    
        if (r9 != (-1)) goto L76;
     */
    /* JADX WARN: Removed duplicated region for block: B:73:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0167 A[LOOP:3: B:79:0x0165->B:80:0x0167, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0174 A[LOOP:4: B:83:0x0172->B:84:0x0174, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0180 A[LOOP:5: B:87:0x017e->B:88:0x0180, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0142  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] getSpecifier(org.apache.commons.compress.harmony.pack200.Codec r9, org.apache.commons.compress.harmony.pack200.Codec r10) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.harmony.pack200.CodecEncoding.getSpecifier(org.apache.commons.compress.harmony.pack200.Codec, org.apache.commons.compress.harmony.pack200.Codec):int[]");
    }

    public static int getSpecifierForDefaultCodec(BHSDCodec bHSDCodec) {
        return getSpecifier(bHSDCodec, null)[0];
    }
}
