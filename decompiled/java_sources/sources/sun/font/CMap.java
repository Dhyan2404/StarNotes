package sun.font;

import com.google.zxing.common.StringUtils;
import com.onyx.android.sdk.base.data.font.TTFFont;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.IntBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes16.dex */
public abstract class CMap {
    static final short Big5Encoding = 4;
    static final short GBKEncoding = 3;
    static final int INTMASK = Integer.MAX_VALUE;
    static final short JohabEncoding = 6;
    static final short MSUnicodeSurrogateEncoding = 10;
    static final int SHORTMASK = 65535;
    static final short ShiftJISEncoding = 2;
    static final short WansungEncoding = 5;
    static final char noSuchChar = 65533;
    UVS uvs = null;
    char[] xlat;
    static final char[][] converterMaps = new char[7];
    public static final NullCMapClass theNullCmap = new NullCMapClass();

    /* loaded from: classes16.dex */
    public static class CMapFormat0 extends CMap {
        byte[] cmap;

        public CMapFormat0(ByteBuffer byteBuffer, int i) {
            this.cmap = new byte[byteBuffer.getChar(i + 2) - 6];
            byteBuffer.position(i + 6);
            byteBuffer.get(this.cmap);
        }

        @Override // sun.font.CMap
        public char getGlyph(int i) {
            if (i >= 256) {
                return (char) 0;
            }
            if (i >= 16 || !(i == 9 || i == 10 || i == 13)) {
                return (char) (this.cmap[i] & 255);
            }
            return (char) 65535;
        }
    }

    /* loaded from: classes16.dex */
    public static class CMapFormat10 extends CMap {
        int entryCount;
        long firstCode;
        char[] glyphIdArray;

        public CMapFormat10(ByteBuffer byteBuffer, int i, char[] cArr) {
            byteBuffer.position(i + 12);
            this.firstCode = byteBuffer.getInt() & Integer.MAX_VALUE;
            this.entryCount = byteBuffer.getInt() & Integer.MAX_VALUE;
            if (byteBuffer.remaining() < this.entryCount * 2) {
                throw new RuntimeException("Format 10 table exceeded");
            }
            CharBuffer asCharBuffer = byteBuffer.asCharBuffer();
            this.glyphIdArray = new char[this.entryCount];
            for (int i2 = 0; i2 < this.entryCount; i2++) {
                this.glyphIdArray[i2] = asCharBuffer.get();
            }
        }

        @Override // sun.font.CMap
        public char getGlyph(int i) {
            if (this.xlat != null) {
                throw new RuntimeException("xlat array for cmap fmt=10");
            }
            int i2 = (int) (i - this.firstCode);
            if (i2 < 0 || i2 >= this.entryCount) {
                return (char) 0;
            }
            return this.glyphIdArray[i2];
        }
    }

    /* loaded from: classes16.dex */
    public static class CMapFormat12 extends CMap {
        long[] endCharCode;
        int extra;
        int highBit = 0;
        int numGroups;
        int power;
        long[] startCharCode;
        int[] startGlyphID;

        public CMapFormat12(ByteBuffer byteBuffer, int i, char[] cArr) {
            int i2;
            int i3;
            int i4 = 0;
            if (cArr != null) {
                throw new RuntimeException("xlat array for cmap fmt=12");
            }
            byteBuffer.position(i + 12);
            this.numGroups = byteBuffer.getInt() & Integer.MAX_VALUE;
            long remaining = byteBuffer.remaining();
            int i5 = this.numGroups;
            if (remaining < i5 * 12) {
                throw new RuntimeException("Format 12 table exceeded");
            }
            this.startCharCode = new long[i5];
            this.endCharCode = new long[i5];
            this.startGlyphID = new int[i5];
            IntBuffer asIntBuffer = byteBuffer.slice().asIntBuffer();
            while (true) {
                i2 = this.numGroups;
                if (i4 >= i2) {
                    break;
                }
                this.startCharCode[i4] = asIntBuffer.get() & Integer.MAX_VALUE;
                this.endCharCode[i4] = asIntBuffer.get() & Integer.MAX_VALUE;
                this.startGlyphID[i4] = asIntBuffer.get() & Integer.MAX_VALUE;
                i4++;
            }
            if (i2 >= 65536) {
                i3 = i2 >> 16;
                this.highBit += 16;
            } else {
                i3 = i2;
            }
            if (i3 >= 256) {
                i3 >>= 8;
                this.highBit += 8;
            }
            if (i3 >= 16) {
                i3 >>= 4;
                this.highBit += 4;
            }
            if (i3 >= 4) {
                i3 >>= 2;
                this.highBit += 2;
            }
            if (i3 >= 2) {
                this.highBit++;
            }
            int i6 = 1 << this.highBit;
            this.power = i6;
            this.extra = i2 - i6;
        }

        @Override // sun.font.CMap
        public char getGlyph(int i) {
            int controlCodeGlyph = getControlCodeGlyph(i, false);
            if (controlCodeGlyph >= 0) {
                return (char) controlCodeGlyph;
            }
            int i2 = this.power;
            long[] jArr = this.startCharCode;
            int i3 = this.extra;
            long j = i;
            int i4 = jArr[i3] <= j ? i3 : 0;
            while (i2 > 1) {
                i2 >>= 1;
                int i5 = i4 + i2;
                if (this.startCharCode[i5] <= j) {
                    i4 = i5;
                }
            }
            return (this.startCharCode[i4] > j || this.endCharCode[i4] < j) ? getFormatCharGlyph(i) : (char) (this.startGlyphID[i4] + (j - r1));
        }
    }

    /* loaded from: classes16.dex */
    public static class CMapFormat2 extends CMap {
        char[] entryCountArray;
        char[] firstCodeArray;
        char[] glyphIndexArray;
        short[] idDeltaArray;
        char[] idRangeOffSetArray;
        char[] subHeaderKey = new char[256];

        public CMapFormat2(ByteBuffer byteBuffer, int i, char[] cArr) {
            this.xlat = cArr;
            char c = byteBuffer.getChar(i + 2);
            byteBuffer.position(i + 6);
            CharBuffer asCharBuffer = byteBuffer.asCharBuffer();
            char c2 = 0;
            for (int i2 = 0; i2 < 256; i2++) {
                this.subHeaderKey[i2] = asCharBuffer.get();
                char c3 = this.subHeaderKey[i2];
                if (c3 > c2) {
                    c2 = c3;
                }
            }
            int i3 = (c2 >> 3) + 1;
            this.firstCodeArray = new char[i3];
            this.entryCountArray = new char[i3];
            this.idDeltaArray = new short[i3];
            this.idRangeOffSetArray = new char[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                this.firstCodeArray[i4] = asCharBuffer.get();
                this.entryCountArray[i4] = asCharBuffer.get();
                this.idDeltaArray[i4] = (short) asCharBuffer.get();
                this.idRangeOffSetArray[i4] = asCharBuffer.get();
            }
            int i5 = ((c - 518) - (i3 * 8)) / 2;
            this.glyphIndexArray = new char[i5];
            for (int i6 = 0; i6 < i5; i6++) {
                this.glyphIndexArray[i6] = asCharBuffer.get();
            }
        }

        @Override // sun.font.CMap
        public char getGlyph(int i) {
            int controlCodeGlyph = getControlCodeGlyph(i, true);
            if (controlCodeGlyph >= 0) {
                return (char) controlCodeGlyph;
            }
            char[] cArr = this.xlat;
            int i2 = cArr != null ? cArr[i] : i;
            char c = (char) (i2 >> 8);
            char c2 = (char) (i2 & 255);
            int i3 = this.subHeaderKey[c] >> 3;
            if (i3 != 0 || c == 0) {
                c = c2;
            }
            char c3 = this.firstCodeArray[i3];
            if (c < c3) {
                return (char) 0;
            }
            char c4 = (char) (c - c3);
            if (c4 < this.entryCountArray[i3]) {
                char c5 = this.glyphIndexArray[((this.idRangeOffSetArray[i3] - (((r1.length - i3) * 8) - 6)) / 2) + c4];
                if (c5 != 0) {
                    return (char) (c5 + this.idDeltaArray[i3]);
                }
            }
            return getFormatCharGlyph(i);
        }
    }

    /* loaded from: classes16.dex */
    public static class CMapFormat4 extends CMap {
        char[] endCount;
        int entrySelector;
        char[] glyphIds;
        short[] idDelta;
        char[] idRangeOffset;
        int rangeShift;
        int segCount;
        char[] startCount;

        public CMapFormat4(ByteBuffer byteBuffer, int i, char[] cArr) {
            int i2;
            this.xlat = cArr;
            byteBuffer.position(i);
            CharBuffer asCharBuffer = byteBuffer.asCharBuffer();
            asCharBuffer.get();
            int i3 = asCharBuffer.get();
            i3 = i + i3 > byteBuffer.capacity() ? byteBuffer.capacity() - i : i3;
            asCharBuffer.get();
            this.segCount = asCharBuffer.get() / 2;
            asCharBuffer.get();
            this.entrySelector = asCharBuffer.get();
            this.rangeShift = asCharBuffer.get() / 2;
            int i4 = this.segCount;
            this.startCount = new char[i4];
            this.endCount = new char[i4];
            this.idDelta = new short[i4];
            this.idRangeOffset = new char[i4];
            for (int i5 = 0; i5 < this.segCount; i5++) {
                this.endCount[i5] = asCharBuffer.get();
            }
            asCharBuffer.get();
            for (int i6 = 0; i6 < this.segCount; i6++) {
                this.startCount[i6] = asCharBuffer.get();
            }
            for (int i7 = 0; i7 < this.segCount; i7++) {
                this.idDelta[i7] = (short) asCharBuffer.get();
            }
            int i8 = 0;
            while (true) {
                i2 = this.segCount;
                if (i8 >= i2) {
                    break;
                }
                this.idRangeOffset[i8] = (char) ((asCharBuffer.get() >> 1) & 65535);
                i8++;
            }
            int i9 = ((i2 * 8) + 16) / 2;
            asCharBuffer.position(i9);
            int i10 = (i3 / 2) - i9;
            this.glyphIds = new char[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                this.glyphIds[i11] = asCharBuffer.get();
            }
        }

        @Override // sun.font.CMap
        public char getGlyph(int i) {
            int controlCodeGlyph = getControlCodeGlyph(i, true);
            if (controlCodeGlyph >= 0) {
                return (char) controlCodeGlyph;
            }
            char[] cArr = this.xlat;
            int i2 = cArr != null ? cArr[i] : i;
            char[] cArr2 = this.startCount;
            int length = cArr2.length;
            int length2 = cArr2.length >> 1;
            char c = 0;
            int i3 = 0;
            while (i3 < length) {
                if (this.endCount[length2] < i2) {
                    i3 = length2 + 1;
                } else {
                    length = length2;
                }
                length2 = (i3 + length) >> 1;
            }
            char c2 = this.startCount[length2];
            if (i2 >= c2 && i2 <= this.endCount[length2]) {
                char c3 = this.idRangeOffset[length2];
                if (c3 == 0) {
                    c = (char) (i2 + this.idDelta[length2]);
                } else {
                    c = this.glyphIds[(c3 - this.segCount) + length2 + (i2 - c2)];
                    if (c != 0) {
                        c = (char) (c + this.idDelta[length2]);
                    }
                }
            }
            return c == 0 ? getFormatCharGlyph(i) : c;
        }
    }

    /* loaded from: classes16.dex */
    public static class CMapFormat6 extends CMap {
        char entryCount;
        char firstCode;
        char[] glyphIdArray;

        /* JADX WARN: Multi-variable type inference failed */
        public CMapFormat6(ByteBuffer byteBuffer, int i, char[] cArr) {
            byteBuffer.position(i + 6);
            CharBuffer asCharBuffer = byteBuffer.asCharBuffer();
            this.firstCode = asCharBuffer.get();
            int i2 = asCharBuffer.get();
            this.entryCount = i2;
            this.glyphIdArray = new char[i2];
            for (int i3 = 0; i3 < this.entryCount; i3++) {
                this.glyphIdArray[i3] = asCharBuffer.get();
            }
        }

        @Override // sun.font.CMap
        public char getGlyph(int i) {
            int controlCodeGlyph = getControlCodeGlyph(i, true);
            if (controlCodeGlyph >= 0) {
                return (char) controlCodeGlyph;
            }
            char[] cArr = this.xlat;
            int i2 = (cArr != null ? cArr[i] : i) - this.firstCode;
            return (i2 < 0 || i2 >= this.entryCount) ? getFormatCharGlyph(i) : this.glyphIdArray[i2];
        }
    }

    /* loaded from: classes16.dex */
    public static class CMapFormat8 extends CMap {
        int[] endCharCode;
        byte[] is32 = new byte[8192];
        int nGroups;
        int[] startCharCode;
        int[] startGlyphID;

        public CMapFormat8(ByteBuffer byteBuffer, int i, char[] cArr) {
            byteBuffer.position(12);
            byteBuffer.get(this.is32);
            this.nGroups = byteBuffer.getInt() & Integer.MAX_VALUE;
            long remaining = byteBuffer.remaining();
            int i2 = this.nGroups;
            if (remaining < i2 * 12) {
                throw new RuntimeException("Format 8 table exceeded");
            }
            this.startCharCode = new int[i2];
            this.endCharCode = new int[i2];
            this.startGlyphID = new int[i2];
        }

        @Override // sun.font.CMap
        public char getGlyph(int i) {
            if (this.xlat == null) {
                return (char) 0;
            }
            throw new RuntimeException("xlat array for cmap fmt=8");
        }
    }

    /* loaded from: classes16.dex */
    public static class NullCMapClass extends CMap {
        @Override // sun.font.CMap
        public char getGlyph(int i) {
            return (char) 0;
        }
    }

    /* loaded from: classes16.dex */
    public static class UVS {
        static final int VS_NOGLYPH = 0;
        char[][] glyphID;
        int numSelectors;
        int[] numUVSMapping;
        int[] selector;
        int[][] unicodeValue;

        public UVS(ByteBuffer byteBuffer, int i) {
            byteBuffer.position(i + 6);
            this.numSelectors = byteBuffer.getInt() & Integer.MAX_VALUE;
            long remaining = byteBuffer.remaining();
            int i2 = this.numSelectors;
            if (remaining < i2 * 11) {
                throw new RuntimeException("Variations exceed buffer");
            }
            this.selector = new int[i2];
            this.numUVSMapping = new int[i2];
            this.unicodeValue = new int[i2];
            this.glyphID = new char[i2];
            for (int i3 = 0; i3 < this.numSelectors; i3++) {
                int i4 = i + 10 + (i3 * 11);
                byteBuffer.position(i4);
                this.selector[i3] = (byteBuffer.get() & 255) << 16;
                int[] iArr = this.selector;
                iArr[i3] = iArr[i3] + ((byteBuffer.get() & 255) << 8);
                int[] iArr2 = this.selector;
                iArr2[i3] = iArr2[i3] + (byteBuffer.get() & 255);
                int i5 = byteBuffer.getInt(i4 + 7);
                if (i5 == 0) {
                    this.numUVSMapping[i3] = 0;
                } else if (i5 > 0) {
                    byteBuffer.position(i5 + i);
                    this.numUVSMapping[i3] = byteBuffer.getInt() & Integer.MAX_VALUE;
                    long remaining2 = byteBuffer.remaining();
                    int i6 = this.numUVSMapping[i3];
                    if (remaining2 < i6 * 5) {
                        throw new RuntimeException("Variations exceed buffer");
                    }
                    this.unicodeValue[i3] = new int[i6];
                    this.glyphID[i3] = new char[i6];
                    for (int i7 = 0; i7 < this.numUVSMapping[i3]; i7++) {
                        this.unicodeValue[i3][i7] = ((byteBuffer.get() & 255) << 16) + ((byteBuffer.get() & 255) << 8) + (byteBuffer.get() & 255);
                        this.glyphID[i3][i7] = byteBuffer.getChar();
                    }
                } else {
                    continue;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getGlyph(int i, int i2) {
            int binarySearch;
            int i3 = 0;
            while (true) {
                if (i3 >= this.numSelectors) {
                    i3 = -1;
                    break;
                }
                if (this.selector[i3] == i2) {
                    break;
                }
                i3++;
            }
            if (i3 != -1 && this.numUVSMapping[i3] > 0 && (binarySearch = Arrays.binarySearch(this.unicodeValue[i3], i)) >= 0) {
                return this.glyphID[i3][binarySearch];
            }
            return 0;
        }
    }

    public static CMap createCMap(ByteBuffer byteBuffer, int i, char[] cArr) {
        char c = byteBuffer.getChar(i);
        long j = c < '\b' ? byteBuffer.getChar(i + 2) : byteBuffer.getInt(i + 4) & Integer.MAX_VALUE;
        if (FontUtilities.isLogging() && i + j > byteBuffer.capacity()) {
            FontUtilities.logWarning("Cmap subtable overflows buffer.");
        }
        if (c == 0) {
            return new CMapFormat0(byteBuffer, i);
        }
        if (c == 2) {
            return new CMapFormat2(byteBuffer, i, cArr);
        }
        if (c == 4) {
            return new CMapFormat4(byteBuffer, i, cArr);
        }
        if (c == 6) {
            return new CMapFormat6(byteBuffer, i, cArr);
        }
        if (c == '\b') {
            return new CMapFormat8(byteBuffer, i, cArr);
        }
        if (c == '\n') {
            return new CMapFormat10(byteBuffer, i, cArr);
        }
        if (c == '\f') {
            return new CMapFormat12(byteBuffer, i, cArr);
        }
        throw new RuntimeException("Cmap format unimplemented: " + ((int) byteBuffer.getChar(i)));
    }

    private void createUVS(ByteBuffer byteBuffer, int i) {
        if (byteBuffer.getChar(i) == 14) {
            long j = byteBuffer.getInt(i + 2) & Integer.MAX_VALUE;
            if (FontUtilities.isLogging() && i + j > byteBuffer.capacity()) {
                FontUtilities.logWarning("Cmap UVS subtable overflows buffer.");
            }
            try {
                this.uvs = new UVS(byteBuffer, i);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static char[] getConverter(short s) {
        int i;
        String str;
        int i2;
        int i3 = 33088;
        if (s == 2) {
            i = 64764;
            str = StringUtils.SHIFT_JIS;
        } else if (s == 3) {
            i = 65184;
            str = TTFFont.CHARSET_GBK;
        } else if (s == 4) {
            i3 = 41280;
            i = 65278;
            str = TTFFont.CHARSET_BIG5;
        } else if (s == 5) {
            i3 = 41377;
            i = 65246;
            str = "EUC_KR";
        } else {
            if (s != 6) {
                return null;
            }
            i3 = 33089;
            i = 65022;
            str = "Johab";
        }
        try {
            char[] cArr = new char[65536];
            for (int i4 = 0; i4 < 65536; i4++) {
                cArr[i4] = 65533;
            }
            int i5 = (i - i3) + 1;
            int i6 = i5 * 2;
            byte[] bArr = new byte[i6];
            char[] cArr2 = new char[i5];
            int i7 = 161;
            if (s == 2) {
                int i8 = i3;
                int i9 = 0;
                while (i8 <= i) {
                    int i10 = (i8 >> 8) & 255;
                    if (i10 < i7 || i10 > 223) {
                        int i11 = i9 + 1;
                        bArr[i9] = (byte) i10;
                        i2 = i11 + 1;
                        bArr[i11] = (byte) (i8 & 255);
                    } else {
                        int i12 = i9 + 1;
                        bArr[i9] = -1;
                        bArr[i12] = -1;
                        i2 = i12 + 1;
                    }
                    i8++;
                    i9 = i2;
                    i7 = 161;
                }
            } else {
                int i13 = 0;
                for (int i14 = i3; i14 <= i; i14++) {
                    int i15 = i13 + 1;
                    bArr[i13] = (byte) ((i14 >> 8) & 255);
                    i13 = i15 + 1;
                    bArr[i15] = (byte) (i14 & 255);
                }
            }
            Charset.forName(str).newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE).replaceWith("\u0000").decode(ByteBuffer.wrap(bArr, 0, i6), CharBuffer.wrap(cArr2, 0, i5), true);
            for (int i16 = 32; i16 <= 126; i16++) {
                cArr[i16] = (char) i16;
            }
            if (s == 2) {
                for (int i17 = 161; i17 <= 223; i17++) {
                    cArr[i17] = (char) ((i17 - 161) + 65377);
                }
            }
            System.arraycopy(cArr2, 0, cArr, i3, i5);
            char[] cArr3 = new char[65536];
            for (int i18 = 0; i18 < 65536; i18++) {
                char c = cArr[i18];
                if (c != 65533) {
                    cArr3[c] = (char) i18;
                }
            }
            return cArr3;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static char[] getConverterMap(short s) {
        char[][] cArr = converterMaps;
        if (cArr[s] == null) {
            cArr[s] = getConverter(s);
        }
        return cArr[s];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static CMap initialize(TrueTypeFont trueTypeFont) {
        ByteBuffer tableBuffer = trueTypeFont.getTableBuffer(TrueTypeFont.cmapTag);
        trueTypeFont.getTableSize(TrueTypeFont.cmapTag);
        short s = tableBuffer.getShort(2);
        boolean z = false;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < s; i10++) {
            tableBuffer.position((i10 * 8) + 4);
            short s2 = tableBuffer.getShort();
            if (s2 == 3) {
                short s3 = tableBuffer.getShort();
                int i11 = tableBuffer.getInt();
                if (s3 != 10) {
                    switch (s3) {
                        case 0:
                            i2 = i11;
                            break;
                        case 1:
                            i3 = i11;
                            break;
                        case 2:
                            i4 = i11;
                            break;
                        case 3:
                            i5 = i11;
                            break;
                        case 4:
                            i6 = i11;
                            break;
                        case 5:
                            i7 = i11;
                            break;
                        case 6:
                            i8 = i11;
                            break;
                    }
                } else {
                    i = i11;
                }
                z = true;
            } else if (s2 == 0) {
                short s4 = tableBuffer.getShort();
                int i12 = tableBuffer.getInt();
                if (s4 == 5) {
                    i9 = i12;
                }
            }
        }
        CMap cMap = null;
        if (!z) {
            cMap = createCMap(tableBuffer, tableBuffer.getInt(8), null);
        } else if (i != 0) {
            cMap = createCMap(tableBuffer, i, null);
        } else if (i2 != 0) {
            cMap = createCMap(tableBuffer, i2, null);
        } else if (i3 != 0) {
            cMap = createCMap(tableBuffer, i3, null);
        } else if (i4 != 0) {
            cMap = createCMap(tableBuffer, i4, getConverterMap((short) 2));
        } else if (i5 != 0) {
            cMap = createCMap(tableBuffer, i5, getConverterMap((short) 3));
        } else if (i6 != 0) {
            cMap = createCMap(tableBuffer, i6, getConverterMap((short) 4));
        } else if (i7 != 0) {
            cMap = createCMap(tableBuffer, i7, getConverterMap((short) 5));
        } else if (i8 != 0) {
            cMap = createCMap(tableBuffer, i8, getConverterMap((short) 6));
        }
        if (cMap != null && i9 != 0) {
            cMap.createUVS(tableBuffer, i9);
        }
        return cMap;
    }

    public final int getControlCodeGlyph(int i, boolean z) {
        return i < 16 ? (i == 9 || i == 10 || i == 13) ? 65535 : -1 : (!z || i < 65535) ? -1 : 0;
    }

    public final char getFormatCharGlyph(int i) {
        if (i < 8204) {
            return (char) 0;
        }
        if (i <= 8207) {
            return (char) 65535;
        }
        if (i < 8232 || i > 8238) {
            return (i < 8298 || i > 8303) ? (char) 0 : (char) 65535;
        }
        return (char) 65535;
    }

    public abstract char getGlyph(int i);

    public char getVariationGlyph(int i, int i2) {
        int glyph;
        UVS uvs = this.uvs;
        if (uvs != null && (glyph = uvs.getGlyph(i, i2)) > 0) {
            return (char) (65535 & glyph);
        }
        return getGlyph(i);
    }
}
