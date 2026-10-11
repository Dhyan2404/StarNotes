package org.mortbay.jetty.security;

import com.alibaba.fastjson2.JSONB;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.google.common.base.Ascii;
import java.io.PrintStream;
import java.lang.reflect.Array;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;

/* loaded from: classes13.dex */
public class UnixCrypt {

    /* renamed from: a */
    public static final byte[] f115082a = {58, TarConstants.LF_SYMLINK, 42, 34, Ascii.SUB, 18, 10, 2, DeletedRef3DPtg.sid, TarConstants.LF_BLK, 44, 36, 28, 20, 12, 4, 62, TarConstants.LF_FIFO, Cea608Decoder.f26822e0, Cea608Decoder.f26815X, 30, 22, 14, 6, 64, 56, 48, 40, 32, 24, 16, 8, 57, TarConstants.LF_LINK, 41, 33, 25, 17, 9, 1, 59, TarConstants.LF_CHR, 43, 35, Ascii.ESC, 19, 11, 3, 61, TarConstants.LF_DIR, 45, 37, 29, 21, 13, 5, 63, TarConstants.LF_CONTIG, 47, Cea608Decoder.f26816Y, 31, 23, 15, 7};

    /* renamed from: b */
    public static final byte[] f115083b = {32, 1, 2, 3, 4, 5, 4, 5, 6, 7, 8, 9, 8, 9, 10, 11, 12, 13, 12, 13, 14, 15, 16, 17, 16, 17, 18, 19, 20, 21, 20, 21, 22, 23, 24, 25, 24, 25, Ascii.SUB, Ascii.ESC, 28, 29, 28, 29, 30, 31, 32, 1};

    /* renamed from: c */
    public static final byte[] f115084c = {57, TarConstants.LF_LINK, 41, 33, 25, 17, 9, 1, 58, TarConstants.LF_SYMLINK, 42, 34, Ascii.SUB, 18, 10, 2, 59, TarConstants.LF_CHR, 43, 35, Ascii.ESC, 19, 11, 3, DeletedRef3DPtg.sid, TarConstants.LF_BLK, 44, 36, 63, TarConstants.LF_CONTIG, 47, Cea608Decoder.f26816Y, 31, 23, 15, 7, 62, TarConstants.LF_FIFO, Cea608Decoder.f26822e0, Cea608Decoder.f26815X, 30, 22, 14, 6, 61, TarConstants.LF_DIR, 45, 37, 29, 21, 13, 5, 28, 20, 12, 4};

    /* renamed from: d */
    public static final byte[] f115085d = {1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1};

    /* renamed from: e */
    public static final byte[] f115086e = {9, 18, 14, 17, 11, 24, 1, 5, 22, 25, 3, 28, 15, 6, 21, 10, 35, Cea608Decoder.f26815X, 23, 19, 12, 4, Ascii.SUB, 8, 43, TarConstants.LF_FIFO, 16, 7, Ascii.ESC, 20, 13, 2, 0, 0, 41, TarConstants.LF_BLK, 31, 37, 47, TarConstants.LF_CONTIG, 0, 0, 30, 40, TarConstants.LF_CHR, 45, 33, 48, 0, 0, 44, TarConstants.LF_LINK, Cea608Decoder.f26816Y, 56, 34, TarConstants.LF_DIR, 0, 0, Cea608Decoder.f26822e0, 42, TarConstants.LF_SYMLINK, 36, 29, 32};

    /* renamed from: f */
    public static final byte[][] f115087f = {new byte[]{14, 4, 13, 1, 2, 15, 11, 8, 3, 10, 6, 12, 5, 9, 0, 7, 0, 15, 7, 4, 14, 2, 13, 1, 10, 6, 12, 11, 9, 5, 3, 8, 4, 1, 14, 8, 13, 6, 2, 11, 15, 12, 9, 7, 3, 10, 5, 0, 15, 12, 8, 2, 4, 9, 1, 7, 5, 11, 3, 14, 10, 0, 6, 13}, new byte[]{15, 1, 8, 14, 6, 11, 3, 4, 9, 7, 2, 13, 12, 0, 5, 10, 3, 13, 4, 7, 15, 2, 8, 14, 12, 0, 1, 10, 6, 9, 11, 5, 0, 14, 7, 11, 10, 4, 13, 1, 5, 8, 12, 6, 9, 3, 2, 15, 13, 8, 10, 1, 3, 15, 4, 2, 11, 6, 7, 12, 0, 5, 14, 9}, new byte[]{10, 0, 9, 14, 6, 3, 15, 5, 1, 13, 12, 7, 11, 4, 2, 8, 13, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, 14, 12, 11, 15, 1, 13, 6, 4, 9, 8, 15, 3, 0, 11, 1, 2, 12, 5, 10, 14, 7, 1, 10, 13, 0, 6, 9, 8, 7, 4, 15, 14, 3, 11, 5, 2, 12}, new byte[]{7, 13, 14, 3, 0, 6, 9, 10, 1, 2, 8, 5, 11, 12, 4, 15, 13, 8, 11, 5, 6, 15, 0, 3, 4, 7, 2, 12, 1, 10, 14, 9, 10, 6, 9, 0, 12, 11, 7, 13, 15, 1, 3, 14, 5, 2, 8, 4, 3, 15, 0, 6, 10, 1, 13, 8, 9, 4, 5, 11, 12, 7, 2, 14}, new byte[]{2, 12, 4, 1, 7, 10, 11, 6, 8, 5, 3, 15, 13, 0, 14, 9, 14, 11, 2, 12, 4, 7, 13, 1, 5, 0, 15, 10, 3, 9, 8, 6, 4, 2, 1, 11, 10, 13, 7, 8, 15, 9, 12, 5, 6, 3, 0, 14, 11, 8, 12, 7, 1, 14, 2, 13, 6, 15, 0, 9, 10, 4, 5, 3}, new byte[]{12, 1, 10, 15, 9, 2, 6, 8, 0, 13, 3, 4, 14, 7, 5, 11, 10, 15, 4, 2, 7, 12, 9, 5, 6, 1, 13, 14, 0, 11, 3, 8, 9, 14, 15, 5, 2, 8, 12, 3, 7, 0, 4, 10, 1, 13, 11, 6, 4, 3, 2, 12, 9, 5, 15, 10, 11, 14, 1, 7, 6, 0, 8, 13}, new byte[]{4, 11, 2, 14, 15, 0, 8, 13, 3, 12, 9, 7, 5, 10, 6, 1, 13, 0, 11, 7, 4, 9, 1, 10, 14, 3, 5, 12, 2, 15, 8, 6, 1, 4, 11, 13, 12, 3, 7, 14, 10, 15, 6, 8, 0, 5, 9, 2, 6, 11, 13, 8, 1, 4, 10, 7, 9, 5, 0, 15, 14, 2, 3, 12}, new byte[]{13, 2, 8, 4, 6, 15, 11, 1, 10, 9, 3, 14, 5, 0, 12, 7, 1, 15, 13, 8, 10, 3, 7, 4, 12, 5, 6, 11, 0, 14, 9, 2, 7, 11, 4, 1, 9, 12, 14, 2, 0, 6, 10, 13, 15, 3, 5, 8, 2, 1, 14, 7, 4, 10, 8, 13, 15, 12, 9, 0, 3, 5, 6, 11}};

    /* renamed from: g */
    public static final byte[] f115088g = {16, 7, 20, 21, 29, 12, 28, 17, 1, 15, 23, Ascii.SUB, 5, 18, 31, 10, 2, 8, 24, 14, 32, Ascii.ESC, 3, 9, 19, 13, 30, 6, 22, 11, 4, 25};

    /* renamed from: h */
    public static final byte[] f115089h = {1, 2, 3, 4, 17, 18, 19, 20, 5, 6, 7, 8, 21, 22, 23, 24, 9, 10, 11, 12, 25, Ascii.SUB, Ascii.ESC, 28, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, 37, Cea608Decoder.f26815X, Cea608Decoder.f26816Y, 40, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 41, 42, 43, 44, 57, 58, 59, DeletedRef3DPtg.sid, 45, Cea608Decoder.f26822e0, 47, 48, 61, 62, 63, 64};

    /* renamed from: i */
    public static final byte[] f115090i = {Cea608Decoder.f26822e0, 47, 48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 65, 66, 67, JSONB.Constants.BC_INT32_SHORT_ZERO, 69, 70, JSONB.Constants.BC_INT32_SHORT_MAX, JSONB.Constants.BC_INT32, 73, JSONB.Constants.BC_STR_ASCII_FIX_1, TarConstants.LF_GNUTYPE_LONGLINK, TarConstants.LF_GNUTYPE_LONGNAME, 77, JSONB.Constants.BC_STR_ASCII_FIX_5, 79, FramedLZ4CompressorInputStream.f106197v, 81, 82, TarConstants.LF_GNUTYPE_SPARSE, 84, 85, 86, 87, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 89, 90, 97, 98, 99, 100, 101, 102, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 104, JSONB.Constants.BC_STR_ASCII_FIX_32, 106, 107, 108, JSONB.Constants.BC_STR_ASCII_FIX_36, 110, 111, 112, 113, 114, 115, 116, UTF8JsonGenerator.f21285e, 118, 119, 120, JSONB.Constants.BC_STR_ASCII, JSONB.Constants.BC_STR_UTF8};

    /* renamed from: j */
    public static byte[] f115091j = new byte[128];

    /* renamed from: k */
    public static long[][] f115092k;

    /* renamed from: l */
    public static long[][][] f115093l;

    /* renamed from: m */
    public static long[][] f115094m;

    /* renamed from: n */
    public static long[][] f115095n;

    /* renamed from: o */
    public static long[][] f115096o;

    static {
        long j;
        int i = 64;
        int i2 = 2;
        int i3 = 3;
        Class cls = Long.TYPE;
        f115092k = (long[][]) Array.newInstance((Class<?>) cls, 16, 16);
        f115093l = (long[][][]) Array.newInstance((Class<?>) cls, 2, 16, 16);
        f115094m = (long[][]) Array.newInstance((Class<?>) cls, 8, 16);
        f115095n = (long[][]) Array.newInstance((Class<?>) cls, 8, 64);
        f115096o = (long[][]) Array.newInstance((Class<?>) cls, 16, 16);
        byte[] bArr = new byte[64];
        byte[] bArr2 = new byte[64];
        for (int i4 = 0; i4 < 64; i4++) {
            f115091j[f115090i[i4]] = (byte) i4;
        }
        for (int i5 = 0; i5 < 64; i5++) {
            bArr[i5] = 0;
        }
        for (int i6 = 0; i6 < 64; i6++) {
            byte b = f115086e[i6];
            if (b != 0) {
                byte b2 = f115085d[0];
                int i7 = b + (b2 - 1);
                if (i7 % 28 < b2) {
                    i7 -= 28;
                }
                int i8 = f115084c[i7];
                if (i8 > 0) {
                    int i9 = i8 - 1;
                    i8 = ((i9 | 7) - (i9 & 7)) + 1;
                }
                bArr[i6] = (byte) i8;
            }
        }
        m71601c(f115092k, bArr, 8);
        for (int i10 = 0; i10 < 2; i10++) {
            for (int i11 = 0; i11 < 64; i11++) {
                bArr2[i11] = 0;
                bArr[i11] = 0;
            }
            for (int i12 = 0; i12 < 64; i12++) {
                byte b3 = f115086e[i12];
                if (b3 != 0) {
                    bArr2[b3 - 1] = (byte) (i12 + 1);
                }
            }
            for (int i13 = 0; i13 < 64; i13++) {
                byte b4 = f115086e[i13];
                if (b4 != 0) {
                    int i14 = b4 + i10;
                    if (i14 % 28 <= i10) {
                        i14 -= 28;
                    }
                    bArr[i13] = bArr2[i14];
                }
            }
            m71601c(f115093l[i10], bArr, 8);
        }
        for (int i15 = 0; i15 < 8; i15++) {
            int i16 = 0;
            while (i16 < 8) {
                int i17 = i16 < 2 ? 0 : f115082a[f115083b[((i15 * 6) + i16) - 2] - 1];
                if (i17 > 32) {
                    i17 -= 32;
                } else if (i17 > 0) {
                    i17--;
                }
                if (i17 > 0) {
                    int i18 = i17 - 1;
                    i17 = ((i18 | 7) - (i18 & 7)) + 1;
                }
                bArr[(i15 * 8) + i16] = (byte) i17;
                i16++;
            }
        }
        m71601c(f115094m, bArr, 8);
        int i19 = 0;
        while (i19 < 64) {
            int i20 = f115082a[f115089h[i19] - 1];
            if (i20 > 0) {
                int i21 = i20 - 1;
                i20 = ((i21 | 7) - (i21 & 7)) + 1;
            }
            i19++;
            bArr[i20 - 1] = (byte) i19;
        }
        m71601c(f115096o, bArr, 8);
        for (int i22 = 0; i22 < 48; i22++) {
            bArr[i22] = f115088g[f115083b[i22] - 1];
        }
        int i23 = 0;
        while (i23 < 8) {
            int i24 = 0;
            while (i24 < i) {
                byte b5 = f115087f[i23][(((i24 >> 0) & 1) << 5) | (((i24 >> 1) & 1) << i3) | (((i24 >> 2) & 1) << i2) | (((i24 >> 3) & 1) << 1) | (((i24 >> 4) & 1) << 0) | (((i24 >> 5) & 1) << 4)];
                int i25 = (((b5 >> 0) & 1) << i3) | (((b5 >> 3) & 1) << 0) | (((b5 >> 2) & 1) << 1) | (((b5 >> 1) & 1) << i2);
                for (int i26 = 0; i26 < 32; i26++) {
                    bArr2[i26] = 0;
                }
                for (int i27 = 0; i27 < 4; i27++) {
                    bArr2[(i23 * 4) + i27] = (byte) ((i25 >> i27) & 1);
                }
                int i28 = 24;
                while (true) {
                    i28--;
                    j = i28 >= 0 ? bArr2[bArr[i28 + 24] - 1] | (bArr2[bArr[i28] - 1] << 32) | (j << 1) : 0L;
                }
                f115095n[i23][i24] = m71605g(j);
                i24++;
                i = 64;
                i2 = 2;
                i3 = 3;
            }
            i23++;
            i = 64;
            i2 = 2;
            i3 = 3;
        }
    }

    /* renamed from: a */
    public static long m71599a(long j, int i, int i2, long[] jArr) {
        int m71604f = m71604f(i);
        long j2 = j & 6148914691236517205L;
        char c = 1;
        long j3 = (j & (-6148914694099828736L)) | ((j >> 1) & 1431655765);
        char c2 = ' ';
        long j4 = 4294967295L;
        long m71602d = m71602d((int) (((((j2 << 32) | (j2 << 1)) & (-4294967296L)) | ((j3 | (j3 >> 32)) & 4294967295L)) >> 32), f115094m);
        long m71602d2 = m71602d((int) (m71602d & (-1)), f115094m);
        long j5 = m71602d;
        int i3 = i2;
        while (true) {
            i3--;
            if (i3 < 0) {
                return m71603e(((((j5 >> 35) & 252645135) | (((j5 & (-1)) << 1) & 4042322160L)) << 32) | (252645135 & (m71602d2 >> 35)) | ((((-1) & m71602d2) << 1) & 4042322160L), f115096o);
            }
            char c3 = 0;
            int i4 = 0;
            while (i4 < 8) {
                int i5 = i4 << 1;
                long j6 = m71604f;
                long j7 = ((m71602d2 >> c2) ^ m71602d2) & j6 & j4;
                long j8 = ((j7 | (j7 << c2)) ^ m71602d2) ^ jArr[i5];
                long[][] jArr2 = f115095n;
                long[] jArr3 = jArr2[c3];
                long j9 = jArr3[(int) ((j8 >> 58) & 63)];
                long[] jArr4 = jArr2[c];
                long j10 = jArr4[(int) ((j8 >> 50) & 63)] ^ j9;
                long[] jArr5 = jArr2[2];
                long j11 = j10 ^ jArr5[(int) ((j8 >> 42) & 63)];
                long[] jArr6 = jArr2[3];
                long j12 = j11 ^ jArr6[(int) ((j8 >> 34) & 63)];
                long[] jArr7 = jArr2[4];
                long j13 = j12 ^ jArr7[(int) ((j8 >> 26) & 63)];
                long[] jArr8 = jArr2[5];
                long j14 = j13 ^ jArr8[(int) ((j8 >> 18) & 63)];
                long[] jArr9 = jArr2[6];
                long j15 = j14 ^ jArr9[(int) ((j8 >> 10) & 63)];
                long[] jArr10 = jArr2[7];
                long j16 = j5 ^ (j15 ^ jArr10[(int) ((j8 >> 2) & 63)]);
                long j17 = jArr[i5 + 1];
                long j18 = ((j16 >> 32) ^ j16) & j6 & 4294967295L;
                long j19 = j17 ^ ((j18 | (j18 << 32)) ^ j16);
                m71602d2 ^= ((((((jArr4[(int) ((j19 >> 50) & 63)] ^ jArr3[(int) ((j19 >> 58) & 63)]) ^ jArr5[(int) ((j19 >> 42) & 63)]) ^ jArr6[(int) ((j19 >> 34) & 63)]) ^ jArr7[(int) ((j19 >> 26) & 63)]) ^ jArr8[(int) ((j19 >> 18) & 63)]) ^ jArr9[(int) ((j19 >> 10) & 63)]) ^ jArr10[(int) ((j19 >> 2) & 63)];
                i4++;
                j5 = j16;
                j4 = 4294967295L;
                c3 = 0;
                c = 1;
                c2 = ' ';
            }
            long j20 = m71602d2;
            long j21 = j5 ^ j20;
            m71602d2 = j20 ^ j21;
            j5 = j21 ^ m71602d2;
            c = 1;
            c2 = ' ';
        }
    }

    /* renamed from: b */
    public static long[] m71600b(long j) {
        long m71603e = m71603e(j, f115092k);
        long[] jArr = new long[16];
        jArr[0] = m71603e & (-217020518463700993L);
        for (int i = 1; i < 16; i++) {
            jArr[i] = m71603e;
            m71603e = m71603e(m71603e, f115093l[f115085d[i] - 1]);
            jArr[i] = m71603e & (-217020518463700993L);
        }
        return jArr;
    }

    /* renamed from: c */
    public static void m71601c(long[][] jArr, byte[] bArr, int i) {
        for (int i2 = 0; i2 < i * 8; i2++) {
            int i3 = bArr[i2] - 1;
            if (i3 >= 0) {
                int i4 = i3 >> 2;
                int i5 = 1 << (i3 & 3);
                for (int i6 = 0; i6 < 16; i6++) {
                    int i7 = (i2 & 7) + ((7 - (i2 >> 3)) << 3);
                    if ((i6 & i5) != 0) {
                        long[] jArr2 = jArr[i4];
                        jArr2[i6] = jArr2[i6] | (1 << i7);
                    }
                }
            }
        }
    }

    public static String crypt(String str, String str2) {
        byte[] bArr = new byte[13];
        if (str == null || str2 == null) {
            return "*";
        }
        int length = str.length();
        int i = 0;
        long j = 0;
        while (i < 8) {
            j = (j << 8) | (i < length ? str.charAt(i) * 2 : 0);
            i++;
        }
        long[] m71600b = m71600b(j);
        int i2 = 0;
        int i3 = 2;
        while (true) {
            i3--;
            if (i3 < 0) {
                break;
            }
            char charAt = i3 < str2.length() ? str2.charAt(i3) : '.';
            bArr[i3] = (byte) charAt;
            i2 = (i2 << 6) | (f115091j[charAt] & 255);
        }
        long m71599a = m71599a(0L, i2, 25, m71600b);
        int i4 = 12;
        bArr[12] = f115090i[(((int) m71599a) << 2) & 63];
        char c = 4;
        while (true) {
            m71599a >>= c;
            i4--;
            if (i4 < 2) {
                return new String(bArr, 0, 0, 13);
            }
            bArr[i4] = f115090i[((int) m71599a) & 63];
            c = 6;
        }
    }

    /* renamed from: d */
    public static long m71602d(int i, long[][] jArr) {
        long j = 0;
        int i2 = 4;
        while (true) {
            i2--;
            if (i2 < 0) {
                return j;
            }
            int i3 = i & 255;
            i >>= 8;
            int i4 = i2 << 1;
            j = j | jArr[i4][i3 & 15] | jArr[i4 + 1][i3 >> 4];
        }
    }

    /* renamed from: e */
    public static long m71603e(long j, long[][] jArr) {
        long j2 = 0;
        int i = 8;
        while (true) {
            i--;
            if (i < 0) {
                return j2;
            }
            int i2 = (int) (255 & j);
            j >>= 8;
            int i3 = i << 1;
            j2 = j2 | jArr[i3][i2 & 15] | jArr[i3 + 1][i2 >> 4];
        }
    }

    /* renamed from: f */
    public static int m71604f(int i) {
        return ((i >> 16) & 252) | ((i << 26) & (-67108864)) | ((i << 12) & 16515072) | ((i >> 2) & 64512);
    }

    /* renamed from: g */
    public static long m71605g(long j) {
        return ((j >> 16) & 1082331758844L) | ((j << 26) & (-288230371923853312L)) | ((j << 12) & 70931694147600384L) | ((j >> 2) & 277076930264064L);
    }

    public static void main(String[] strArr) {
        if (strArr.length != 2) {
            System.err.println("Usage - java org.mortbay.util.UnixCrypt <key> <salt>");
            System.exit(1);
        }
        PrintStream printStream = System.err;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Crypt=");
        stringBuffer.append(crypt(strArr[0], strArr[1]));
        printStream.println(stringBuffer.toString());
    }
}
