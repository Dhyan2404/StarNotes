package net.lingala.zip4j.crypto.engine;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson2.JSONB;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.google.common.base.Ascii;
import java.lang.reflect.Array;
import net.lingala.zip4j.exception.ZipException;
import org.apache.commons.codec.net.QCodec;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;

/* loaded from: classes11.dex */
public class AESEngine {

    /* renamed from: C0 */
    private int f98741C0;

    /* renamed from: C1 */
    private int f98742C1;

    /* renamed from: C2 */
    private int f98743C2;

    /* renamed from: C3 */
    private int f98744C3;
    private int rounds;
    private int[][] workingKey = null;

    /* renamed from: S */
    private static final byte[] f98739S = {99, JSONB.Constants.BC_STR_UTF16LE, 119, 123, -14, 107, 111, ExifInterface.f7267w1, 48, 1, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 43, -2, JSONB.Constants.BC_INT64_BYTE_MAX, JSONB.Constants.BC_TIMESTAMP_MILLIS, 118, ExifInterface.f7141A1, -126, ExifInterface.f7276z1, 125, -6, 89, JSONB.Constants.BC_INT32_SHORT_MAX, JSONB.Constants.BC_INT32_NUM_MIN, JSONB.Constants.BC_TIMESTAMP_MINUTES, -44, -94, JSONB.Constants.BC_NULL, -100, JSONB.Constants.BC_ARRAY, 114, -64, JSONB.Constants.BC_FLOAT, -3, JSONB.Constants.BC_REFERENCE, Cea608Decoder.f26815X, TarConstants.LF_FIFO, 63, -9, -52, TarConstants.LF_BLK, JSONB.Constants.BC_OBJECT_END, -27, -15, 113, -40, TarConstants.LF_LINK, 21, 4, -57, 35, ExifInterface.f7264v1, 24, -106, 5, -102, 7, 18, Byte.MIN_VALUE, -30, -21, Cea608Decoder.f26816Y, JSONB.Constants.BC_DOUBLE_NUM_0, UTF8JsonGenerator.f21285e, 9, -125, 44, Ascii.SUB, Ascii.ESC, 110, 90, -96, 82, 59, -42, JSONB.Constants.BC_DOUBLE_NUM_1, 41, -29, 47, -124, TarConstants.LF_GNUTYPE_SPARSE, -47, 0, -19, 32, -4, JSONB.Constants.BC_TRUE, UTF8JsonGenerator.f21287g, 106, ExifInterface.f7144B1, JSONB.Constants.BC_INT64, 57, JSONB.Constants.BC_STR_ASCII_FIX_1, TarConstants.LF_GNUTYPE_LONGNAME, TarConstants.LF_PAX_EXTENDED_HEADER_UC, ExifInterface.f7153E1, JSONB.Constants.BC_INT64_BYTE_ZERO, -17, JSONB.Constants.BC_TIMESTAMP_WITH_TIMEZONE, -5, 67, 77, TarConstants.LF_CHR, -123, 69, -7, 2, Byte.MAX_VALUE, FramedLZ4CompressorInputStream.f106197v, DeletedRef3DPtg.sid, -97, JSONB.Constants.BC_LOCAL_DATETIME, 81, JSONB.Constants.BC_ARRAY_FIX_MAX, 64, -113, JSONB.Constants.BC_TYPED_ANY, -99, 56, -11, JSONB.Constants.BC_INT16, JSONB.Constants.BC_FLOAT_INT, ExifInterface.f7156F1, 33, 16, -1, -13, -46, ExifInterface.f7147C1, 12, 19, -20, QCodec.f104875e, -105, JSONB.Constants.BC_INT32_SHORT_ZERO, 23, JSONB.Constants.BC_INT64_SHORT_ZERO, JSONB.Constants.BC_LOCAL_TIME, JSONB.Constants.BC_STR_GB18030, 61, 100, UTF8JsonGenerator.f21288h, 25, 115, 96, -127, 79, -36, 34, 42, JSONB.Constants.BC_CHAR, -120, 70, -18, JSONB.Constants.BC_DECIMAL_LONG, 20, -34, 94, 11, -37, -32, TarConstants.LF_SYMLINK, 58, 10, 73, 6, 36, UTF8JsonGenerator.f21291k, ExifInterface.f7261u1, -45, JSONB.Constants.BC_TIMESTAMP_SECONDS, 98, JSONB.Constants.BC_BINARY, -107, -28, JSONB.Constants.BC_STR_ASCII, -25, JSONB.Constants.BC_INT64_BYTE_MIN, TarConstants.LF_CONTIG, JSONB.Constants.BC_STR_ASCII_FIX_36, -115, -43, JSONB.Constants.BC_STR_ASCII_FIX_5, JSONB.Constants.BC_LOCAL_DATE, 108, 86, -12, -22, 101, JSONB.Constants.BC_STR_UTF8, JSONB.Constants.BC_TIMESTAMP, 8, JSONB.Constants.BC_BIGINT_LONG, 120, 37, Cea608Decoder.f26822e0, 28, JSONB.Constants.BC_OBJECT, JSONB.Constants.BC_DOUBLE_LONG, ExifInterface.f7270x1, -24, -35, 116, 31, TarConstants.LF_GNUTYPE_LONGLINK, JSONB.Constants.BC_INT8, -117, -118, 112, 62, JSONB.Constants.BC_DOUBLE, 102, JSONB.Constants.BC_INT32, 3, -10, 14, 97, TarConstants.LF_DIR, 87, JSONB.Constants.BC_DECIMAL, -122, ExifInterface.f7259t1, 29, -98, ExifInterface.f7159G1, -8, -104, 17, JSONB.Constants.BC_STR_ASCII_FIX_32, ExifInterface.f7165I1, -114, -108, -101, 30, -121, -23, ExifInterface.f7150D1, 85, 40, -33, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, JSONB.Constants.BC_FALSE, 84, -69, 22};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145};

    /* renamed from: T0 */
    private static final int[] f98740T0 = {-1520213050, -2072216328, -1720223762, -1921287178, 234025727, -1117033514, -1318096930, 1422247313, 1345335392, 50397442, -1452841010, 2099981142, 436141799, 1658312629, -424957107, -1703512340, 1170918031, -1652391393, 1086966153, -2021818886, 368769775, -346465870, -918075506, 200339707, -324162239, 1742001331, -39673249, -357585083, -1080255453, -140204973, -1770884380, 1539358875, -1028147339, 486407649, -1366060227, 1780885068, 1513502316, 1094664062, 49805301, 1338821763, 1546925160, -190470831, 887481809, 150073849, -1821281822, 1943591083, 1395732834, 1058346282, 201589768, 1388824469, 1696801606, 1589887901, 672667696, -1583966665, 251987210, -1248159185, 151455502, 907153956, -1686077413, 1038279391, 652995533, 1764173646, -843926913, -1619692054, 453576978, -1635548387, 1949051992, 773462580, 756751158, -1301385508, -296068428, -73359269, -162377052, 1295727478, 1641469623, -827083907, 2066295122, 1055122397, 1898917726, -1752923117, -179088474, 1758581177, 0, 753790401, 1612718144, 536673507, -927878791, -312779850, -1100322092, 1187761037, -641810841, 1262041458, -565556588, -733197160, -396863312, 1255133061, 1808847035, 720367557, -441800113, 385612781, -985447546, -682799718, 1429418854, -1803188975, -817543798, 284817897, 100794884, -2122350594, -263171936, 1144798328, -1163944155, -475486133, -212774494, -22830243, -1069531008, -1970303227, -1382903233, -1130521311, 1211644016, 83228145, -541279133, -1044990345, 1977277103, 1663115586, 806359072, 452984805, 250868733, 1842533055, 1288555905, 336333848, 890442534, 804056259, -513843266, -1567123659, -867941240, 957814574, 1472513171, -223893675, -2105639172, 1195195770, -1402706744, -413311558, 723065138, -1787595802, -1604296512, -1736343271, -783331426, 2145180835, 1713513028, 2116692564, -1416589253, -2088204277, -901364084, 703524551, -742868885, 1007948840, 2044649127, -497131844, 487262998, 1994120109, 1004593371, 1446130276, 1312438900, 503974420, -615954030, 168166924, 1814307912, -463709000, 1573044895, 1859376061, -273896381, -1503501628, -1466855111, -1533700815, 937747667, -1954973198, 854058965, 1137232011, 1496790894, -1217565222, -1936880383, 1691735473, -766620004, -525751991, -1267962664, -95005012, 133494003, 636152527, -1352309302, -1904575756, -374428089, 403179536, -709182865, -2005370640, 1864705354, 1915629148, 605822008, -240736681, -944458637, 1371981463, 602466507, 2094914977, -1670089496, 555687742, -582268010, -591544991, -2037675251, -2054518257, -1871679264, 1111375484, -994724495, -1436129588, -666351472, 84083462, 32962295, 302911004, -1553899070, 1597322602, -111716434, -793134743, -1853454825, 1489093017, 656219450, -1180787161, 954327513, 335083755, -1281845205, 856756514, -1150719534, 1893325225, -1987146233, -1483434957, -1231316179, 572399164, -1836611819, 552200649, 1238290055, -11184726, 2015897680, 2061492133, -1886614525, -123625127, -2138470135, 386731290, -624967835, 837215959, -968736124, -1201116976, -1019133566, -1332111063, 1999449434, 286199582, -877612933, -61582168, -692339859, 974525996};

    public AESEngine(byte[] bArr) throws ZipException {
        init(bArr);
    }

    private void encryptBlock(int[][] iArr) {
        int i = this.f98741C0;
        int[] iArr2 = iArr[0];
        this.f98741C0 = i ^ iArr2[0];
        this.f98742C1 ^= iArr2[1];
        this.f98743C2 ^= iArr2[2];
        this.f98744C3 ^= iArr2[3];
        int i2 = 1;
        while (i2 < this.rounds - 1) {
            int[] iArr3 = f98740T0;
            int shift = (((iArr3[this.f98741C0 & 255] ^ shift(iArr3[(this.f98742C1 >> 8) & 255], 24)) ^ shift(iArr3[(this.f98743C2 >> 16) & 255], 16)) ^ shift(iArr3[(this.f98744C3 >> 24) & 255], 8)) ^ iArr[i2][0];
            int shift2 = (((iArr3[this.f98742C1 & 255] ^ shift(iArr3[(this.f98743C2 >> 8) & 255], 24)) ^ shift(iArr3[(this.f98744C3 >> 16) & 255], 16)) ^ shift(iArr3[(this.f98741C0 >> 24) & 255], 8)) ^ iArr[i2][1];
            int shift3 = (((iArr3[this.f98743C2 & 255] ^ shift(iArr3[(this.f98744C3 >> 8) & 255], 24)) ^ shift(iArr3[(this.f98741C0 >> 16) & 255], 16)) ^ shift(iArr3[(this.f98742C1 >> 24) & 255], 8)) ^ iArr[i2][2];
            int i3 = i2 + 1;
            int shift4 = iArr[i2][3] ^ (((iArr3[this.f98744C3 & 255] ^ shift(iArr3[(this.f98741C0 >> 8) & 255], 24)) ^ shift(iArr3[(this.f98742C1 >> 16) & 255], 16)) ^ shift(iArr3[(this.f98743C2 >> 24) & 255], 8));
            this.f98741C0 = (((iArr3[shift & 255] ^ shift(iArr3[(shift2 >> 8) & 255], 24)) ^ shift(iArr3[(shift3 >> 16) & 255], 16)) ^ shift(iArr3[(shift4 >> 24) & 255], 8)) ^ iArr[i3][0];
            this.f98742C1 = (((iArr3[shift2 & 255] ^ shift(iArr3[(shift3 >> 8) & 255], 24)) ^ shift(iArr3[(shift4 >> 16) & 255], 16)) ^ shift(iArr3[(shift >> 24) & 255], 8)) ^ iArr[i3][1];
            this.f98743C2 = (((iArr3[shift3 & 255] ^ shift(iArr3[(shift4 >> 8) & 255], 24)) ^ shift(iArr3[(shift >> 16) & 255], 16)) ^ shift(iArr3[(shift2 >> 24) & 255], 8)) ^ iArr[i3][2];
            this.f98744C3 = (((iArr3[shift4 & 255] ^ shift(iArr3[(shift >> 8) & 255], 24)) ^ shift(iArr3[(shift2 >> 16) & 255], 16)) ^ shift(iArr3[(shift3 >> 24) & 255], 8)) ^ iArr[i3][3];
            i2 = i3 + 1;
        }
        int[] iArr4 = f98740T0;
        int shift5 = (((iArr4[this.f98741C0 & 255] ^ shift(iArr4[(this.f98742C1 >> 8) & 255], 24)) ^ shift(iArr4[(this.f98743C2 >> 16) & 255], 16)) ^ shift(iArr4[(this.f98744C3 >> 24) & 255], 8)) ^ iArr[i2][0];
        int shift6 = (((iArr4[this.f98742C1 & 255] ^ shift(iArr4[(this.f98743C2 >> 8) & 255], 24)) ^ shift(iArr4[(this.f98744C3 >> 16) & 255], 16)) ^ shift(iArr4[(this.f98741C0 >> 24) & 255], 8)) ^ iArr[i2][1];
        int shift7 = (((iArr4[this.f98743C2 & 255] ^ shift(iArr4[(this.f98744C3 >> 8) & 255], 24)) ^ shift(iArr4[(this.f98741C0 >> 16) & 255], 16)) ^ shift(iArr4[(this.f98742C1 >> 24) & 255], 8)) ^ iArr[i2][2];
        int i4 = i2 + 1;
        int shift8 = iArr[i2][3] ^ (shift(iArr4[(this.f98743C2 >> 24) & 255], 8) ^ ((iArr4[this.f98744C3 & 255] ^ shift(iArr4[(this.f98741C0 >> 8) & 255], 24)) ^ shift(iArr4[(this.f98742C1 >> 16) & 255], 16)));
        byte[] bArr = f98739S;
        int i5 = (((bArr[shift5 & 255] & 255) ^ ((bArr[(shift6 >> 8) & 255] & 255) << 8)) ^ ((bArr[(shift7 >> 16) & 255] & 255) << 16)) ^ (bArr[(shift8 >> 24) & 255] << 24);
        int[] iArr5 = iArr[i4];
        this.f98741C0 = iArr5[0] ^ i5;
        this.f98742C1 = ((((bArr[shift6 & 255] & 255) ^ ((bArr[(shift7 >> 8) & 255] & 255) << 8)) ^ ((bArr[(shift8 >> 16) & 255] & 255) << 16)) ^ (bArr[(shift5 >> 24) & 255] << 24)) ^ iArr5[1];
        this.f98743C2 = ((((bArr[shift7 & 255] & 255) ^ ((bArr[(shift8 >> 8) & 255] & 255) << 8)) ^ ((bArr[(shift5 >> 16) & 255] & 255) << 16)) ^ (bArr[(shift6 >> 24) & 255] << 24)) ^ iArr5[2];
        this.f98744C3 = ((((bArr[shift8 & 255] & 255) ^ ((bArr[(shift5 >> 8) & 255] & 255) << 8)) ^ ((bArr[(shift6 >> 16) & 255] & 255) << 16)) ^ (bArr[(shift7 >> 24) & 255] << 24)) ^ iArr5[3];
    }

    private int[][] generateWorkingKey(byte[] bArr) throws ZipException {
        int length = bArr.length / 4;
        if ((length != 4 && length != 6 && length != 8) || length * 4 != bArr.length) {
            throw new ZipException("invalid key length (not 128/192/256)");
        }
        int i = length + 6;
        this.rounds = i;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i + 1, 4);
        int i2 = 0;
        int i3 = 0;
        while (i2 < bArr.length) {
            iArr[i3 >> 2][i3 & 3] = (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | (bArr[i2 + 3] << 24);
            i2 += 4;
            i3++;
        }
        int i4 = (this.rounds + 1) << 2;
        for (int i5 = length; i5 < i4; i5++) {
            int i6 = i5 - 1;
            int i7 = iArr[i6 >> 2][i6 & 3];
            int i8 = i5 % length;
            if (i8 == 0) {
                i7 = subWord(shift(i7, 8)) ^ rcon[(i5 / length) - 1];
            } else if (length > 6 && i8 == 4) {
                i7 = subWord(i7);
            }
            int i9 = i5 - length;
            iArr[i5 >> 2][i5 & 3] = i7 ^ iArr[i9 >> 2][i9 & 3];
        }
        return iArr;
    }

    private void init(byte[] bArr) throws ZipException {
        this.workingKey = generateWorkingKey(bArr);
    }

    private int shift(int i, int i2) {
        return (i >>> i2) | (i << (-i2));
    }

    private void stateIn(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (bArr[i] & 255) | ((bArr[i2] & 255) << 8);
        int i5 = i3 + 1;
        int i6 = i4 | ((bArr[i3] & 255) << 16);
        int i7 = i5 + 1;
        this.f98741C0 = i6 | (bArr[i5] << 24);
        int i8 = i7 + 1;
        int i9 = bArr[i7] & 255;
        int i10 = i8 + 1;
        int i11 = ((bArr[i8] & 255) << 8) | i9;
        int i12 = i10 + 1;
        int i13 = i11 | ((bArr[i10] & 255) << 16);
        int i14 = i12 + 1;
        this.f98742C1 = i13 | (bArr[i12] << 24);
        int i15 = i14 + 1;
        int i16 = bArr[i14] & 255;
        int i17 = i15 + 1;
        int i18 = ((bArr[i15] & 255) << 8) | i16;
        int i19 = i17 + 1;
        int i20 = i18 | ((bArr[i17] & 255) << 16);
        int i21 = i19 + 1;
        this.f98743C2 = i20 | (bArr[i19] << 24);
        int i22 = i21 + 1;
        int i23 = bArr[i21] & 255;
        int i24 = i22 + 1;
        int i25 = ((bArr[i22] & 255) << 8) | i23;
        int i26 = i25 | ((bArr[i24] & 255) << 16);
        this.f98744C3 = (bArr[i24 + 1] << 24) | i26;
    }

    private void stateOut(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = this.f98741C0;
        bArr[i] = (byte) i3;
        int i4 = i2 + 1;
        bArr[i2] = (byte) (i3 >> 8);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i3 >> 16);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (i3 >> 24);
        int i7 = i6 + 1;
        int i8 = this.f98742C1;
        bArr[i6] = (byte) i8;
        int i9 = i7 + 1;
        bArr[i7] = (byte) (i8 >> 8);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (i8 >> 16);
        int i11 = i10 + 1;
        bArr[i10] = (byte) (i8 >> 24);
        int i12 = i11 + 1;
        int i13 = this.f98743C2;
        bArr[i11] = (byte) i13;
        int i14 = i12 + 1;
        bArr[i12] = (byte) (i13 >> 8);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (i13 >> 16);
        int i16 = i15 + 1;
        bArr[i15] = (byte) (i13 >> 24);
        int i17 = i16 + 1;
        int i18 = this.f98744C3;
        bArr[i16] = (byte) i18;
        int i19 = i17 + 1;
        bArr[i17] = (byte) (i18 >> 8);
        bArr[i19] = (byte) (i18 >> 16);
        bArr[i19 + 1] = (byte) (i18 >> 24);
    }

    private int subWord(int i) {
        byte[] bArr = f98739S;
        return (bArr[(i >> 24) & 255] << 24) | (bArr[i & 255] & 255) | ((bArr[(i >> 8) & 255] & 255) << 8) | ((bArr[(i >> 16) & 255] & 255) << 16);
    }

    public int processBlock(byte[] bArr, byte[] bArr2) throws ZipException {
        return processBlock(bArr, 0, bArr2, 0);
    }

    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws ZipException {
        if (this.workingKey != null) {
            if (i + 16 <= bArr.length) {
                if (i2 + 16 <= bArr2.length) {
                    stateIn(bArr, i);
                    encryptBlock(this.workingKey);
                    stateOut(bArr2, i2);
                    return 16;
                }
                throw new ZipException("output buffer too short");
            }
            throw new ZipException("input buffer too short");
        }
        throw new ZipException("AES engine not initialised");
    }
}
