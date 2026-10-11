package com.sun.imageio.plugins.tiff;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson2.JSONB;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.google.common.base.Ascii;
import java.io.EOFException;
import java.io.IOException;
import javax.imageio.IIOException;
import javax.imageio.ImageReader;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.plugins.tiff.TIFFField;
import org.apache.commons.codec.net.QCodec;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;
import org.apache.poi.hssf.record.CodepageRecord;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes9.dex */
public class TIFFFaxDecompressor extends TIFFDecompressor {
    private int bitPointer;
    private int bitsPerScanline;
    private byte[] buffer;
    private int bytePointer;
    private int[] currChangingElems;
    private byte[] data;
    private int fillOrder;

    /* renamed from: h */
    private int f64038h;
    private int lineBitNum;
    private int oneD;
    private int[] prevChangingElems;
    private int t4Options;
    private int t6Options;

    /* renamed from: w */
    private int f64039w;
    private static int[] table1 = {0, 1, 3, 7, 15, 31, 63, 127, 255};
    private static int[] table2 = {0, 128, 192, 224, 240, 248, 252, 254, 255};
    static byte[] flipTable = {0, Byte.MIN_VALUE, 64, -64, 32, -96, 96, -32, 16, JSONB.Constants.BC_CHAR, FramedLZ4CompressorInputStream.f106197v, JSONB.Constants.BC_INT64_BYTE_ZERO, 48, JSONB.Constants.BC_FALSE, 112, JSONB.Constants.BC_INT32_NUM_MIN, 8, -120, JSONB.Constants.BC_INT32, JSONB.Constants.BC_INT64_BYTE_MIN, 40, JSONB.Constants.BC_LOCAL_DATETIME, 104, -24, 24, -104, TarConstants.LF_PAX_EXTENDED_HEADER_UC, -40, 56, JSONB.Constants.BC_DECIMAL_LONG, 120, -8, 4, -124, JSONB.Constants.BC_INT32_SHORT_ZERO, JSONB.Constants.BC_INT64_SHORT_ZERO, 36, JSONB.Constants.BC_ARRAY, 100, -28, 20, -108, 84, -44, TarConstants.LF_BLK, JSONB.Constants.BC_DOUBLE_LONG, 116, -12, 12, -116, TarConstants.LF_GNUTYPE_LONGNAME, -52, 44, JSONB.Constants.BC_TIMESTAMP_SECONDS, 108, -20, 28, -100, UTF8JsonGenerator.f21291k, -36, DeletedRef3DPtg.sid, JSONB.Constants.BC_INT16, JSONB.Constants.BC_STR_UTF16LE, -4, 2, -126, 66, ExifInterface.f7261u1, 34, -94, 98, -30, 18, JSONB.Constants.BC_TYPED_ANY, 82, -46, TarConstants.LF_SYMLINK, JSONB.Constants.BC_DOUBLE_NUM_0, 114, -14, 10, -118, JSONB.Constants.BC_STR_ASCII_FIX_1, ExifInterface.f7141A1, 42, JSONB.Constants.BC_TIMESTAMP_WITH_TIMEZONE, 106, -22, Ascii.SUB, -102, 90, ExifInterface.f7156F1, 58, JSONB.Constants.BC_BIGINT_LONG, JSONB.Constants.BC_STR_UTF8, -6, 6, -122, 70, ExifInterface.f7270x1, Cea608Decoder.f26815X, JSONB.Constants.BC_OBJECT, 102, -26, 22, -106, 86, -42, TarConstants.LF_FIFO, JSONB.Constants.BC_FLOAT_INT, 118, -10, 14, -114, JSONB.Constants.BC_STR_ASCII_FIX_5, ExifInterface.f7150D1, Cea608Decoder.f26822e0, JSONB.Constants.BC_TIMESTAMP, 110, -18, 30, -98, 94, -34, 62, JSONB.Constants.BC_INT64, JSONB.Constants.BC_STR_GB18030, -2, 1, -127, 65, ExifInterface.f7259t1, 33, -95, 97, ExifInterface.f7159G1, 17, JSONB.Constants.BC_BINARY, 81, -47, TarConstants.LF_LINK, JSONB.Constants.BC_TRUE, 113, -15, 9, -119, 73, ExifInterface.f7276z1, 41, JSONB.Constants.BC_LOCAL_DATE, JSONB.Constants.BC_STR_ASCII_FIX_32, -23, 25, -103, 89, ExifInterface.f7165I1, 57, JSONB.Constants.BC_DECIMAL, JSONB.Constants.BC_STR_ASCII, -7, 5, -123, 69, ExifInterface.f7267w1, 37, JSONB.Constants.BC_OBJECT_END, 101, -27, 21, -107, 85, -43, TarConstants.LF_DIR, JSONB.Constants.BC_DOUBLE, UTF8JsonGenerator.f21285e, -11, 13, -115, 77, ExifInterface.f7147C1, 45, JSONB.Constants.BC_TIMESTAMP_MINUTES, JSONB.Constants.BC_STR_ASCII_FIX_36, -19, 29, -99, UTF8JsonGenerator.f21288h, -35, 61, JSONB.Constants.BC_INT8, 125, -3, 3, -125, 67, ExifInterface.f7264v1, 35, JSONB.Constants.BC_ARRAY_FIX_MAX, 99, -29, 19, JSONB.Constants.BC_REFERENCE, TarConstants.LF_GNUTYPE_SPARSE, -45, TarConstants.LF_CHR, JSONB.Constants.BC_DOUBLE_NUM_1, 115, -13, 11, -117, TarConstants.LF_GNUTYPE_LONGLINK, ExifInterface.f7144B1, 43, JSONB.Constants.BC_TIMESTAMP_MILLIS, 107, -21, Ascii.ESC, -101, UTF8JsonGenerator.f21287g, -37, 59, -69, 123, -5, 7, -121, JSONB.Constants.BC_INT32_SHORT_MAX, -57, Cea608Decoder.f26816Y, JSONB.Constants.BC_LOCAL_TIME, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, -25, 23, -105, 87, JSONB.Constants.BC_INT64_BYTE_MAX, TarConstants.LF_CONTIG, JSONB.Constants.BC_FLOAT, 119, -9, 15, -113, 79, ExifInterface.f7153E1, 47, JSONB.Constants.BC_NULL, 111, -17, 31, -97, QCodec.f104875e, -33, 63, -65, Byte.MAX_VALUE, -1};
    private static short[] white = {6430, 6400, 6400, 6400, 3225, 3225, 3225, 3225, 944, 944, 944, 944, 976, 976, 976, 976, 1456, 1456, 1456, 1456, 1488, 1488, 1488, 1488, 718, 718, 718, 718, 718, 718, 718, 718, 750, 750, 750, 750, 750, 750, 750, 750, 1520, 1520, 1520, 1520, 1552, 1552, 1552, 1552, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 654, 654, 654, 654, 654, 654, 654, 654, 1072, 1072, 1072, 1072, 1104, 1104, 1104, 1104, 1136, 1136, 1136, 1136, 1168, 1168, 1168, 1168, CodepageRecord.CODEPAGE, CodepageRecord.CODEPAGE, CodepageRecord.CODEPAGE, CodepageRecord.CODEPAGE, 1232, 1232, 1232, 1232, 622, 622, 622, 622, 622, 622, 622, 622, 1008, 1008, 1008, 1008, 1040, 1040, 1040, 1040, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 1712, 1712, 1712, 1712, 1744, 1744, 1744, 1744, 846, 846, 846, 846, 846, 846, 846, 846, 1264, 1264, 1264, 1264, 1296, 1296, 1296, 1296, 1328, 1328, 1328, 1328, 1360, 1360, 1360, 1360, 1392, 1392, 1392, 1392, 1424, 1424, 1424, 1424, 686, 686, 686, 686, 686, 686, 686, 686, 910, 910, 910, 910, 910, 910, 910, 910, 1968, 1968, 1968, 1968, 2000, 2000, 2000, 2000, 2032, 2032, 2032, 2032, 16, 16, 16, 16, 10257, 10257, 10257, 10257, 12305, 12305, 12305, 12305, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 878, 878, 878, 878, 878, 878, 878, 878, 1904, 1904, 1904, 1904, 1936, 1936, 1936, 1936, -18413, -18413, -16365, -16365, -14317, -14317, -10221, -10221, 590, 590, 590, 590, 590, 590, 590, 590, 782, 782, 782, 782, 782, 782, 782, 782, 1584, 1584, 1584, 1584, 1616, 1616, 1616, 1616, 1648, 1648, 1648, 1648, 1680, 1680, 1680, 1680, 814, 814, 814, 814, 814, 814, 814, 814, 1776, 1776, 1776, 1776, 1808, 1808, 1808, 1808, 1840, 1840, 1840, 1840, 1872, 1872, 1872, 1872, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, 14353, 14353, 14353, 14353, 16401, 16401, 16401, 16401, 22547, 22547, 24595, 24595, 20497, 20497, 20497, 20497, 18449, 18449, 18449, 18449, 26643, 26643, 28691, 28691, 30739, 30739, -32749, -32749, -30701, -30701, -28653, -28653, -26605, -26605, -24557, -24557, -22509, -22509, -20461, -20461, 8207, 8207, 8207, 8207, 8207, 8207, 8207, 8207, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 
    232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232};
    private static short[] additionalMakeup = {28679, 28679, 31752, -32759, -31735, -30711, -29687, -28663, 29703, 29703, 30727, 30727, -27639, -26615, -25591, -24567};
    private static short[] initBlack = {3226, 6412, 200, 168, 38, 38, 134, 134, 100, 100, 100, 100, 68, 68, 68, 68};
    private static short[] twoBitBlack = {292, 260, 226, 226};
    private static short[] black = {62, 62, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 588, 588, 588, 588, 588, 588, 588, 588, 1680, 1680, 20499, 22547, 24595, 26643, 1776, 1776, 1808, 1808, -24557, -22509, -20461, -18413, 1904, 1904, 1936, 1936, -16365, -14317, 782, 782, 782, 782, 814, 814, 814, 814, -12269, -10221, 10257, 10257, 12305, 12305, 14353, 14353, 16403, 18451, 1712, 1712, 1744, 1744, 28691, 30739, -32749, -30701, -28653, -26605, 2061, 2061, 2061, 2061, 2061, 2061, 2061, 2061, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 750, 750, 750, 750, 1616, 1616, 1648, 1648, 1424, 1424, 1456, 1456, 1488, 1488, 1520, 1520, 1840, 1840, 1872, 1872, 1968, 1968, 8209, 8209, 524, 524, 524, 524, 524, 524, 524, 524, 556, 556, 556, 556, 556, 556, 556, 556, 1552, 1552, 1584, 1584, 2000, 2000, 2032, 2032, 976, 976, 1008, 1008, 1040, 1040, 1072, 1072, 1296, 1296, 1328, 1328, 718, 718, 718, 718, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 4113, 4113, 6161, 6161, 848, 848, 880, 880, 912, 912, 944, 944, 622, 622, 622, 622, 654, 654, 654, 654, 1104, 1104, 1136, 1136, 1168, 1168, CodepageRecord.CODEPAGE, CodepageRecord.CODEPAGE, 1232, 1232, 1264, 1264, 686, 686, 686, 686, 1360, 1360, 1392, 1392, 12, 12, 12, 12, 12, 12, 12, 12, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390};
    private static byte[] twoDCodes = {FramedLZ4CompressorInputStream.f106197v, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 23, JSONB.Constants.BC_INT32_SHORT_MAX, 30, 30, 62, 62, 4, 4, 4, 4, 4, 4, 4, 4, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, TarConstants.LF_CHR, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41};
    private int uncompressedMode = 0;
    private int fillBits = 0;
    private int changingElemSize = 0;
    private int lastChangingElement = 0;

    private int decodeBlackCodeWord() throws IIOException {
        boolean z = false;
        int i = 0;
        while (!z) {
            short s = initBlack[nextLesserThan8Bits(4)];
            int i2 = (s >>> 1) & 15;
            int i3 = (s >>> 5) & 2047;
            if (i3 == 100) {
                short s2 = black[nextNBits(9)];
                int i4 = s2 & 1;
                int i5 = (s2 >>> 1) & 15;
                int i6 = (s2 >>> 5) & 2047;
                if (i5 == 12) {
                    updatePointer(5);
                    short s3 = additionalMakeup[nextLesserThan8Bits(4)];
                    i += (s3 >>> 4) & 4095;
                    updatePointer(4 - ((s3 >>> 1) & 7));
                } else {
                    if (i5 == 15) {
                        throw new IIOException("Error 2");
                    }
                    i += i6;
                    updatePointer(9 - i5);
                    if (i4 == 0) {
                    }
                }
            } else if (i3 == 200) {
                short s4 = twoBitBlack[nextLesserThan8Bits(2)];
                i += (s4 >>> 5) & 2047;
                updatePointer(2 - ((s4 >>> 1) & 15));
            } else {
                i += i3;
                updatePointer(4 - i2);
            }
            z = true;
        }
        return i;
    }

    private int decodeWhiteCodeWord() throws IIOException {
        boolean z = true;
        int i = 0;
        while (z) {
            int nextNBits = nextNBits(10);
            short s = white[nextNBits];
            int i2 = s & 1;
            int i3 = (s >>> 1) & 15;
            if (i3 == 12) {
                short s2 = additionalMakeup[((nextNBits << 2) & 12) | nextLesserThan8Bits(2)];
                i += (s2 >>> 4) & 4095;
                updatePointer(4 - ((s2 >>> 1) & 7));
            } else {
                if (i3 == 0) {
                    throw new IIOException("Error 0");
                }
                if (i3 == 15) {
                    throw new IIOException("Error 1");
                }
                i += (s >>> 5) & 2047;
                updatePointer(10 - i3);
                if (i2 == 0) {
                    z = false;
                }
            }
        }
        return i;
    }

    private int findNextLine() throws IIOException, EOFException {
        int length = (this.data.length * 8) - 1;
        int i = length - 12;
        int i2 = (this.bytePointer * 8) + this.bitPointer;
        while (i2 <= i) {
            int nextNBits = nextNBits(12);
            i2 += 12;
            while (nextNBits != 1 && i2 < length) {
                nextNBits = ((nextNBits & 2047) << 1) | (nextLesserThan8Bits(1) & 1);
                i2++;
            }
            if (nextNBits == 1) {
                if (this.oneD != 1) {
                    return 1;
                }
                if (i2 < length) {
                    return nextLesserThan8Bits(1);
                }
            }
        }
        throw new EOFException();
    }

    private void getNextChangingElement(int i, boolean z, int[] iArr) throws IIOException {
        int[] iArr2 = this.prevChangingElems;
        int i2 = this.changingElemSize;
        int i3 = this.lastChangingElement;
        int i4 = i3 > 0 ? i3 - 1 : 0;
        int i5 = z ? i4 & (-2) : i4 | 1;
        while (true) {
            if (i5 >= i2) {
                break;
            }
            int i6 = iArr2[i5];
            if (i6 > i) {
                this.lastChangingElement = i5;
                iArr[0] = i6;
                break;
            }
            i5 += 2;
        }
        int i7 = i5 + 1;
        if (i7 < i2) {
            iArr[1] = iArr2[i7];
        }
    }

    private int nextLesserThan8Bits(int i) throws IIOException {
        byte b;
        byte b2;
        byte[] bArr = this.data;
        int length = bArr.length - 1;
        int i2 = this.bytePointer;
        int i3 = this.fillOrder;
        if (i3 == 1) {
            b2 = bArr[i2];
            b = i2 == length ? (byte) 0 : bArr[i2 + 1];
        } else {
            if (i3 != 2) {
                throw new IIOException("Invalid FillOrder");
            }
            byte[] bArr2 = flipTable;
            byte b3 = bArr2[bArr[i2] & 255];
            b = i2 == length ? (byte) 0 : bArr2[bArr[i2 + 1] & 255];
            b2 = b3;
        }
        int i4 = this.bitPointer;
        int i5 = 8 - i4;
        int i6 = i - i5;
        int i7 = i5 - i;
        if (i7 < 0) {
            int i8 = ((b & table2[i6]) >>> (8 - i6)) | ((table1[i5] & b2) << (-i7));
            this.bytePointer = i2 + 1;
            this.bitPointer = i6;
            return i8;
        }
        int i9 = (table1[i5] & b2) >>> i7;
        int i10 = i4 + i;
        this.bitPointer = i10;
        if (i10 != 8) {
            return i9;
        }
        this.bitPointer = 0;
        this.bytePointer = i2 + 1;
        return i9;
    }

    private int nextNBits(int i) throws IIOException {
        byte b;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        int i2;
        int i3;
        byte[] bArr = this.data;
        int length = bArr.length - 1;
        int i4 = this.bytePointer;
        int i5 = this.fillOrder;
        if (i5 == 1) {
            b3 = bArr[i4];
            if (i4 == length) {
                b4 = 0;
                b5 = 0;
            } else {
                int i6 = i4 + 1;
                if (i6 == length) {
                    b4 = bArr[i6];
                    b5 = 0;
                } else {
                    b = bArr[i6];
                    b2 = bArr[i4 + 2];
                    byte b6 = b;
                    b5 = b2;
                    b4 = b6;
                }
            }
        } else {
            if (i5 != 2) {
                throw new IIOException("Invalid FillOrder");
            }
            byte[] bArr2 = flipTable;
            byte b7 = bArr2[bArr[i4] & 255];
            if (i4 == length) {
                b4 = 0;
                b5 = 0;
            } else {
                int i7 = i4 + 1;
                if (i7 == length) {
                    b4 = bArr2[bArr[i7] & 255];
                    b5 = 0;
                } else {
                    b = bArr2[bArr[i7] & 255];
                    b2 = bArr2[bArr[i4 + 2] & 255];
                    b3 = b7;
                    byte b62 = b;
                    b5 = b2;
                    b4 = b62;
                }
            }
            b3 = b7;
        }
        int i8 = 8 - this.bitPointer;
        int i9 = i - i8;
        if (i9 > 8) {
            i3 = i9 - 8;
            i2 = 8;
        } else {
            i2 = i9;
            i3 = 0;
        }
        int i10 = i4 + 1;
        this.bytePointer = i10;
        int i11 = (b3 & table1[i8]) << i9;
        int[] iArr = table2;
        int i12 = (b4 & iArr[i2]) >>> (8 - i2);
        if (i3 != 0) {
            i12 = (i12 << i3) | ((b5 & iArr[i3]) >>> (8 - i3));
            this.bytePointer = i10 + 1;
            this.bitPointer = i3;
        } else if (i2 == 8) {
            this.bitPointer = 0;
            this.bytePointer = i10 + 1;
        } else {
            this.bitPointer = i2;
        }
        return i11 | i12;
    }

    private void setToBlack(int i, int i2) {
        int i3 = i + this.lineBitNum;
        int i4 = i2 + i3;
        int i5 = i3 >> 3;
        int i6 = i3 & 7;
        if (i6 > 0) {
            int i7 = 1 << (7 - i6);
            byte b = this.buffer[i5];
            while (i7 > 0 && i3 < i4) {
                b = (byte) (b | i7);
                i7 >>= 1;
                i3++;
            }
            this.buffer[i5] = b;
        }
        int i8 = i3 >> 3;
        while (i3 < i4 - 7) {
            this.buffer[i8] = -1;
            i3 += 8;
            i8++;
        }
        while (i3 < i4) {
            int i9 = i3 >> 3;
            byte[] bArr = this.buffer;
            bArr[i9] = (byte) (bArr[i9] | (1 << (7 - (i3 & 7))));
            i3++;
        }
    }

    private void updatePointer(int i) {
        if (i > 8) {
            this.bytePointer -= i / 8;
            i %= 8;
        }
        int i2 = this.bitPointer - i;
        if (i2 >= 0) {
            this.bitPointer = i2;
        } else {
            this.bytePointer--;
            this.bitPointer = i2 + 8;
        }
    }

    private void warning(String str) {
        ImageReader imageReader = this.reader;
        if (imageReader instanceof TIFFImageReader) {
            ((TIFFImageReader) imageReader).forwardWarningMessage(str);
        }
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void beginDecoding() {
        super.beginDecoding();
        IIOMetadata iIOMetadata = this.metadata;
        if (!(iIOMetadata instanceof TIFFImageMetadata)) {
            this.fillOrder = 1;
            this.compression = 2;
            this.t4Options = 0;
            this.oneD = 0;
            this.uncompressedMode = 0;
            this.fillBits = 0;
            this.t6Options = 0;
            return;
        }
        TIFFImageMetadata tIFFImageMetadata = (TIFFImageMetadata) iIOMetadata;
        TIFFField tIFFField = tIFFImageMetadata.getTIFFField(266);
        this.fillOrder = tIFFField == null ? 1 : tIFFField.getAsInt(0);
        TIFFField tIFFField2 = tIFFImageMetadata.getTIFFField(259);
        this.compression = tIFFField2 == null ? 2 : tIFFField2.getAsInt(0);
        TIFFField tIFFField3 = tIFFImageMetadata.getTIFFField(292);
        int asInt = tIFFField3 == null ? 0 : tIFFField3.getAsInt(0);
        this.t4Options = asInt;
        this.oneD = asInt & 1;
        this.uncompressedMode = (asInt & 2) >> 1;
        this.fillBits = (asInt & 4) >> 2;
        TIFFField tIFFField4 = tIFFImageMetadata.getTIFFField(293);
        this.t6Options = tIFFField4 != null ? tIFFField4.getAsInt(0) : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x01a8, code lost:
    
        r1 = r18.currChangingElems;
        r2 = r18.changingElemSize;
        r18.changingElemSize = r2 + 1;
        r1[r2] = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01b2, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void decodeNextScanline(int r19) throws javax.imageio.IIOException {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFFaxDecompressor.decodeNextScanline(int):void");
    }

    public void decodeRLE() throws IIOException {
        for (int i = 0; i < this.f64038h; i++) {
            decodeNextScanline(this.srcMinY + i);
            if (this.bitPointer != 0) {
                this.bytePointer++;
                this.bitPointer = 0;
            }
            this.lineBitNum += this.bitsPerScanline;
        }
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void decodeRaw(byte[] bArr, int i, int i2, int i3) throws IOException {
        this.buffer = bArr;
        int i4 = this.srcWidth;
        this.f64039w = i4;
        this.f64038h = this.srcHeight;
        this.bitsPerScanline = i3 * 8;
        this.lineBitNum = i * 8;
        this.data = new byte[this.byteCount];
        this.bitPointer = 0;
        this.bytePointer = 0;
        this.prevChangingElems = new int[i4 + 1];
        this.currChangingElems = new int[i4 + 1];
        this.stream.seek(this.offset);
        this.stream.readFully(this.data);
        int i5 = this.compression;
        if (i5 == 2) {
            decodeRLE();
            return;
        }
        if (i5 == 3) {
            decodeT4();
            return;
        }
        if (i5 == 4) {
            this.uncompressedMode = (this.t6Options & 2) >> 1;
            decodeT6();
        } else {
            throw new IIOException("Unknown compression type " + this.compression);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e0, code lost:
    
        warning("Unknown coding mode encountered at line " + (r17.srcMinY + r8) + ": read " + r9 + " of " + r17.f64039w + " expected pixels.");
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x010d, code lost:
    
        if (r7 == 1) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x010f, code lost:
    
        r7 = findNextLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0113, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0116, code lost:
    
        warning("Sync loss at line " + (r17.srcMinY + r8) + ": read " + r8 + " of " + r2 + " lines.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x013e, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x013f, code lost:
    
        r8 = r8 + (r3 - 1);
        updatePointer(13);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void decodeT4() throws javax.imageio.IIOException {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFFaxDecompressor.decodeT4():void");
    }

    public synchronized void decodeT6() throws IIOException {
        int i;
        int i2;
        int i3 = this.f64038h;
        int[] iArr = new int[2];
        int[] iArr2 = this.currChangingElems;
        int i4 = 0 + 1;
        int i5 = this.f64039w;
        int i6 = 0;
        iArr2[0] = i5;
        this.changingElemSize = i4 + 1;
        iArr2[i4] = i5;
        int i7 = 0;
        while (i7 < i3) {
            int[] iArr3 = this.prevChangingElems;
            this.prevChangingElems = this.currChangingElems;
            this.currChangingElems = iArr3;
            this.lastChangingElement = i6;
            int i8 = -1;
            boolean z = true;
            int i9 = i6;
            int i10 = i9;
            while (true) {
                i = this.f64039w;
                if (i9 >= i) {
                    break;
                }
                getNextChangingElement(i8, z, iArr);
                int i11 = iArr[i6];
                int i12 = iArr[1];
                int i13 = twoDCodes[nextLesserThan8Bits(7)] & 255;
                int i14 = (i13 & 120) >>> 3;
                int i15 = i13 & 7;
                if (i14 == 0) {
                    if (!z) {
                        int i16 = this.f64039w;
                        if (i12 > i16) {
                            warning("Decoded row " + (this.srcMinY + i7) + " too long; ignoring extra samples.");
                            i12 = i16;
                        }
                        setToBlack(i9, i12 - i9);
                    }
                    i9 = i12;
                    updatePointer(7 - i15);
                } else if (i14 == 1) {
                    updatePointer(7 - i15);
                    if (z) {
                        int decodeWhiteCodeWord = i9 + decodeWhiteCodeWord();
                        int i17 = i10 + 1;
                        iArr3[i10] = decodeWhiteCodeWord;
                        int decodeBlackCodeWord = decodeBlackCodeWord();
                        int i18 = this.f64039w;
                        if (decodeBlackCodeWord > i18 - decodeWhiteCodeWord) {
                            decodeBlackCodeWord = i18 - decodeWhiteCodeWord;
                            warning("Decoded row " + (this.srcMinY + i7) + " too long; ignoring extra samples.");
                        }
                        setToBlack(decodeWhiteCodeWord, decodeBlackCodeWord);
                        i9 = decodeWhiteCodeWord + decodeBlackCodeWord;
                        i2 = i17 + 1;
                        iArr3[i17] = i9;
                    } else {
                        int decodeBlackCodeWord2 = decodeBlackCodeWord();
                        int i19 = this.f64039w;
                        if (decodeBlackCodeWord2 > i19 - i9) {
                            decodeBlackCodeWord2 = i19 - i9;
                            warning("Decoded row " + (this.srcMinY + i7) + " too long; ignoring extra samples.");
                        }
                        setToBlack(i9, decodeBlackCodeWord2);
                        int i20 = i9 + decodeBlackCodeWord2;
                        int i21 = i10 + 1;
                        iArr3[i10] = i20;
                        i9 = i20 + decodeWhiteCodeWord();
                        i2 = i21 + 1;
                        iArr3[i21] = i9;
                    }
                    i10 = i2;
                } else if (i14 <= 8) {
                    int i22 = i11 + (i14 - 5);
                    int i23 = i10 + 1;
                    iArr3[i10] = i22;
                    if (!z) {
                        int i24 = this.f64039w;
                        if (i22 > i24) {
                            warning("Decoded row " + (this.srcMinY + i7) + " too long; ignoring extra samples.");
                            i22 = i24;
                        }
                        setToBlack(i9, i22 - i9);
                    }
                    i9 = i22;
                    z = !z;
                    updatePointer(7 - i15);
                    i10 = i23;
                } else {
                    if (i14 == 11) {
                        int nextLesserThan8Bits = nextLesserThan8Bits(3);
                        if (nextLesserThan8Bits != 7) {
                            warning("Unsupported entrance code " + nextLesserThan8Bits + " for extension mode at line " + (this.srcMinY + i7) + ".");
                        }
                        boolean z2 = false;
                        int i25 = 0;
                        while (!z2) {
                            while (nextLesserThan8Bits(1) != 1) {
                                i25++;
                            }
                            if (i25 > 5) {
                                i25 -= 6;
                                if (!z && i25 > 0) {
                                    iArr3[i10] = i9;
                                    i10++;
                                }
                                i9 += i25;
                                if (i25 > 0) {
                                    z = true;
                                }
                                if (nextLesserThan8Bits(1) == 0) {
                                    if (!z) {
                                        iArr3[i10] = i9;
                                        i10++;
                                    }
                                    z = true;
                                } else {
                                    if (z) {
                                        iArr3[i10] = i9;
                                        i10++;
                                    }
                                    z = false;
                                }
                                z2 = true;
                            }
                            if (i25 == 5) {
                                if (!z) {
                                    iArr3[i10] = i9;
                                    i10++;
                                }
                                i9 += i25;
                                z = true;
                            } else {
                                int i26 = i9 + i25;
                                iArr3[i10] = i26;
                                setToBlack(i26, 1);
                                i9 = i26 + 1;
                                i10++;
                                z = false;
                            }
                        }
                    } else {
                        warning("Unknown coding mode encountered at line " + (this.srcMinY + i7) + ".");
                    }
                    i6 = 0;
                }
                i8 = i9;
                i6 = 0;
            }
            if (i10 <= i) {
                iArr3[i10] = i9;
                i10++;
            }
            this.changingElemSize = i10;
            this.lineBitNum += this.bitsPerScanline;
            i7++;
            i6 = 0;
        }
    }
}
