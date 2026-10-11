package org.apache.commons.codec.binary;

import com.alibaba.fastjson2.JSONB;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.google.common.base.Ascii;
import java.math.BigInteger;
import java.util.Objects;
import org.apache.commons.codec.CodecPolicy;
import org.apache.commons.codec.binary.BaseNCodec;
import org.apache.commons.codec.net.QCodec;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;

/* loaded from: classes9.dex */
public class Base64 extends BaseNCodec {

    /* renamed from: o */
    public static final int f104592o = 6;

    /* renamed from: p */
    public static final int f104593p = 3;

    /* renamed from: q */
    public static final int f104594q = 4;

    /* renamed from: r */
    public static final byte[] f104595r = {65, 66, 67, JSONB.Constants.BC_INT32_SHORT_ZERO, 69, 70, JSONB.Constants.BC_INT32_SHORT_MAX, JSONB.Constants.BC_INT32, 73, JSONB.Constants.BC_STR_ASCII_FIX_1, TarConstants.LF_GNUTYPE_LONGLINK, TarConstants.LF_GNUTYPE_LONGNAME, 77, JSONB.Constants.BC_STR_ASCII_FIX_5, 79, FramedLZ4CompressorInputStream.f106197v, 81, 82, TarConstants.LF_GNUTYPE_SPARSE, 84, 85, 86, 87, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 89, 90, 97, 98, 99, 100, 101, 102, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 104, JSONB.Constants.BC_STR_ASCII_FIX_32, 106, 107, 108, JSONB.Constants.BC_STR_ASCII_FIX_36, 110, 111, 112, 113, 114, 115, 116, UTF8JsonGenerator.f21285e, 118, 119, 120, JSONB.Constants.BC_STR_ASCII, JSONB.Constants.BC_STR_UTF8, 48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 43, 47};

    /* renamed from: s */
    public static final byte[] f104596s = {65, 66, 67, JSONB.Constants.BC_INT32_SHORT_ZERO, 69, 70, JSONB.Constants.BC_INT32_SHORT_MAX, JSONB.Constants.BC_INT32, 73, JSONB.Constants.BC_STR_ASCII_FIX_1, TarConstants.LF_GNUTYPE_LONGLINK, TarConstants.LF_GNUTYPE_LONGNAME, 77, JSONB.Constants.BC_STR_ASCII_FIX_5, 79, FramedLZ4CompressorInputStream.f106197v, 81, 82, TarConstants.LF_GNUTYPE_SPARSE, 84, 85, 86, 87, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 89, 90, 97, 98, 99, 100, 101, 102, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 104, JSONB.Constants.BC_STR_ASCII_FIX_32, 106, 107, 108, JSONB.Constants.BC_STR_ASCII_FIX_36, 110, 111, 112, 113, 114, 115, 116, UTF8JsonGenerator.f21285e, 118, 119, 120, JSONB.Constants.BC_STR_ASCII, JSONB.Constants.BC_STR_UTF8, 48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 45, QCodec.f104875e};

    /* renamed from: t */
    public static final byte[] f104597t = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 58, 59, DeletedRef3DPtg.sid, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, Ascii.SUB, Ascii.ESC, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, Cea608Decoder.f26815X, Cea608Decoder.f26816Y, 40, 41, 42, 43, 44, 45, Cea608Decoder.f26822e0, 47, 48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR};

    /* renamed from: u */
    public static final int f104598u = 63;

    /* renamed from: v */
    public static final int f104599v = 15;

    /* renamed from: w */
    public static final int f104600w = 3;

    /* renamed from: j */
    public final byte[] f104601j;

    /* renamed from: k */
    public final byte[] f104602k;

    /* renamed from: l */
    public final byte[] f104603l;

    /* renamed from: m */
    public final int f104604m;

    /* renamed from: n */
    public final int f104605n;

    public Base64() {
        this(0);
    }

    public static byte[] decodeBase64(byte[] bArr) {
        return new Base64().decode(bArr);
    }

    public static BigInteger decodeInteger(byte[] bArr) {
        return new BigInteger(1, decodeBase64(bArr));
    }

    public static byte[] encodeBase64(byte[] bArr) {
        return encodeBase64(bArr, false);
    }

    public static byte[] encodeBase64Chunked(byte[] bArr) {
        return encodeBase64(bArr, true);
    }

    public static String encodeBase64String(byte[] bArr) {
        return StringUtils.newStringUsAscii(encodeBase64(bArr, false));
    }

    public static byte[] encodeBase64URLSafe(byte[] bArr) {
        return encodeBase64(bArr, false, true);
    }

    public static String encodeBase64URLSafeString(byte[] bArr) {
        return StringUtils.newStringUsAscii(encodeBase64(bArr, false, true));
    }

    public static byte[] encodeInteger(BigInteger bigInteger) {
        Objects.requireNonNull(bigInteger, "bigInteger");
        return encodeBase64(m65704i(bigInteger), false);
    }

    /* renamed from: i */
    public static byte[] m65704i(BigInteger bigInteger) {
        int bitLength = ((bigInteger.bitLength() + 7) >> 3) << 3;
        byte[] byteArray = bigInteger.toByteArray();
        int i = 1;
        if (bigInteger.bitLength() % 8 != 0 && (bigInteger.bitLength() / 8) + 1 == bitLength / 8) {
            return byteArray;
        }
        int length = byteArray.length;
        if (bigInteger.bitLength() % 8 == 0) {
            length--;
        } else {
            i = 0;
        }
        int i2 = bitLength / 8;
        int i3 = i2 - length;
        byte[] bArr = new byte[i2];
        System.arraycopy(byteArray, i, bArr, i3, length);
        return bArr;
    }

    @Deprecated
    public static boolean isArrayByteBase64(byte[] bArr) {
        return isBase64(bArr);
    }

    public static boolean isBase64(byte b) {
        if (b != 61) {
            if (b >= 0) {
                byte[] bArr = f104597t;
                if (b >= bArr.length || bArr[b] == -1) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // org.apache.commons.codec.binary.BaseNCodec
    /* renamed from: d */
    public void mo65698d(byte[] bArr, int i, int i2, BaseNCodec.C18665a c18665a) {
        byte b;
        if (c18665a.f104620f) {
            return;
        }
        if (i2 < 0) {
            c18665a.f104620f = true;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            byte[] ensureBufferSize = ensureBufferSize(this.f104604m, c18665a);
            int i4 = i + 1;
            byte b2 = bArr[i];
            if (b2 == this.pad) {
                c18665a.f104620f = true;
                break;
            }
            if (b2 >= 0) {
                byte[] bArr2 = f104597t;
                if (b2 < bArr2.length && (b = bArr2[b2]) >= 0) {
                    int i5 = (c18665a.f104622h + 1) % 4;
                    c18665a.f104622h = i5;
                    int i6 = (c18665a.f104615a << 6) + b;
                    c18665a.f104615a = i6;
                    if (i5 == 0) {
                        int i7 = c18665a.f104618d;
                        int i8 = i7 + 1;
                        ensureBufferSize[i7] = (byte) ((i6 >> 16) & 255);
                        int i9 = i8 + 1;
                        ensureBufferSize[i8] = (byte) ((i6 >> 8) & 255);
                        c18665a.f104618d = i9 + 1;
                        ensureBufferSize[i9] = (byte) (i6 & 255);
                    }
                }
            }
            i3++;
            i = i4;
        }
        if (!c18665a.f104620f || c18665a.f104622h == 0) {
            return;
        }
        byte[] ensureBufferSize2 = ensureBufferSize(this.f104604m, c18665a);
        int i10 = c18665a.f104622h;
        if (i10 == 1) {
            m65706k();
            return;
        }
        if (i10 == 2) {
            m65705j(15, c18665a);
            int i11 = c18665a.f104615a >> 4;
            c18665a.f104615a = i11;
            int i12 = c18665a.f104618d;
            c18665a.f104618d = i12 + 1;
            ensureBufferSize2[i12] = (byte) (i11 & 255);
            return;
        }
        if (i10 != 3) {
            throw new IllegalStateException("Impossible modulus " + c18665a.f104622h);
        }
        m65705j(3, c18665a);
        int i13 = c18665a.f104615a >> 2;
        c18665a.f104615a = i13;
        int i14 = c18665a.f104618d;
        int i15 = i14 + 1;
        ensureBufferSize2[i14] = (byte) ((i13 >> 8) & 255);
        c18665a.f104618d = i15 + 1;
        ensureBufferSize2[i15] = (byte) (i13 & 255);
    }

    @Override // org.apache.commons.codec.binary.BaseNCodec
    /* renamed from: e */
    public void mo65699e(byte[] bArr, int i, int i2, BaseNCodec.C18665a c18665a) {
        if (c18665a.f104620f) {
            return;
        }
        if (i2 >= 0) {
            int i3 = 0;
            while (i3 < i2) {
                byte[] ensureBufferSize = ensureBufferSize(this.f104605n, c18665a);
                int i4 = (c18665a.f104622h + 1) % 3;
                c18665a.f104622h = i4;
                int i5 = i + 1;
                int i6 = bArr[i];
                if (i6 < 0) {
                    i6 += 256;
                }
                int i7 = (c18665a.f104615a << 8) + i6;
                c18665a.f104615a = i7;
                if (i4 == 0) {
                    int i8 = c18665a.f104618d;
                    int i9 = i8 + 1;
                    byte[] bArr2 = this.f104601j;
                    ensureBufferSize[i8] = bArr2[(i7 >> 18) & 63];
                    int i10 = i9 + 1;
                    ensureBufferSize[i9] = bArr2[(i7 >> 12) & 63];
                    int i11 = i10 + 1;
                    ensureBufferSize[i10] = bArr2[(i7 >> 6) & 63];
                    int i12 = i11 + 1;
                    c18665a.f104618d = i12;
                    ensureBufferSize[i11] = bArr2[i7 & 63];
                    int i13 = c18665a.f104621g + 4;
                    c18665a.f104621g = i13;
                    int i14 = this.lineLength;
                    if (i14 > 0 && i14 <= i13) {
                        byte[] bArr3 = this.f104603l;
                        System.arraycopy(bArr3, 0, ensureBufferSize, i12, bArr3.length);
                        c18665a.f104618d += this.f104603l.length;
                        c18665a.f104621g = 0;
                    }
                }
                i3++;
                i = i5;
            }
            return;
        }
        c18665a.f104620f = true;
        if (c18665a.f104622h == 0 && this.lineLength == 0) {
            return;
        }
        byte[] ensureBufferSize2 = ensureBufferSize(this.f104605n, c18665a);
        int i15 = c18665a.f104618d;
        int i16 = c18665a.f104622h;
        if (i16 != 0) {
            if (i16 == 1) {
                int i17 = i15 + 1;
                byte[] bArr4 = this.f104601j;
                int i18 = c18665a.f104615a;
                ensureBufferSize2[i15] = bArr4[(i18 >> 2) & 63];
                int i19 = i17 + 1;
                c18665a.f104618d = i19;
                ensureBufferSize2[i17] = bArr4[(i18 << 4) & 63];
                if (bArr4 == f104595r) {
                    int i20 = i19 + 1;
                    byte b = this.pad;
                    ensureBufferSize2[i19] = b;
                    c18665a.f104618d = i20 + 1;
                    ensureBufferSize2[i20] = b;
                }
            } else {
                if (i16 != 2) {
                    throw new IllegalStateException("Impossible modulus " + c18665a.f104622h);
                }
                int i21 = i15 + 1;
                byte[] bArr5 = this.f104601j;
                int i22 = c18665a.f104615a;
                ensureBufferSize2[i15] = bArr5[(i22 >> 10) & 63];
                int i23 = i21 + 1;
                ensureBufferSize2[i21] = bArr5[(i22 >> 4) & 63];
                int i24 = i23 + 1;
                c18665a.f104618d = i24;
                ensureBufferSize2[i23] = bArr5[(i22 << 2) & 63];
                if (bArr5 == f104595r) {
                    c18665a.f104618d = i24 + 1;
                    ensureBufferSize2[i24] = this.pad;
                }
            }
        }
        int i25 = c18665a.f104621g;
        int i26 = c18665a.f104618d;
        int i27 = i25 + (i26 - i15);
        c18665a.f104621g = i27;
        if (this.lineLength <= 0 || i27 <= 0) {
            return;
        }
        byte[] bArr6 = this.f104603l;
        System.arraycopy(bArr6, 0, ensureBufferSize2, i26, bArr6.length);
        c18665a.f104618d += this.f104603l.length;
    }

    @Override // org.apache.commons.codec.binary.BaseNCodec
    public boolean isInAlphabet(byte b) {
        if (b >= 0) {
            byte[] bArr = this.f104602k;
            if (b < bArr.length && bArr[b] != -1) {
                return true;
            }
        }
        return false;
    }

    public boolean isUrlSafe() {
        return this.f104601j == f104596s;
    }

    /* renamed from: j */
    public final void m65705j(int i, BaseNCodec.C18665a c18665a) {
        if (isStrictDecoding() && (c18665a.f104615a & i) != 0) {
            throw new IllegalArgumentException("Strict decoding: Last encoded character (before the paddings if any) is a valid base 64 alphabet but not a possible encoding. Expected the discarded bits from the character to be zero.");
        }
    }

    /* renamed from: k */
    public final void m65706k() {
        if (isStrictDecoding()) {
            throw new IllegalArgumentException("Strict decoding: Last encoded character (before the paddings if any) is a valid base 64 alphabet but not a possible encoding. Decoding requires at least two trailing 6-bit characters to create bytes.");
        }
    }

    public Base64(boolean z) {
        this(76, BaseNCodec.f104610i, z);
    }

    public static byte[] decodeBase64(String str) {
        return new Base64().decode(str);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z) {
        return encodeBase64(bArr, z, false);
    }

    public static boolean isBase64(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            if (!isBase64(bArr[i]) && !BaseNCodec.isWhiteSpace(bArr[i])) {
                return false;
            }
        }
        return true;
    }

    public Base64(int i) {
        this(i, BaseNCodec.f104610i);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z, boolean z2) {
        return encodeBase64(bArr, z, z2, Integer.MAX_VALUE);
    }

    public Base64(int i, byte[] bArr) {
        this(i, bArr, false);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z, boolean z2, int i) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        Base64 base64 = z ? new Base64(z2) : new Base64(0, BaseNCodec.f104610i, z2);
        long encodedLength = base64.getEncodedLength(bArr);
        if (encodedLength <= i) {
            return base64.encode(bArr);
        }
        throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + encodedLength + ") than the specified maximum size of " + i);
    }

    public static boolean isBase64(String str) {
        return isBase64(StringUtils.getBytesUtf8(str));
    }

    public Base64(int i, byte[] bArr, boolean z) {
        this(i, bArr, z, BaseNCodec.DECODING_POLICY_DEFAULT);
    }

    public Base64(int i, byte[] bArr, boolean z, CodecPolicy codecPolicy) {
        super(3, 4, i, bArr == null ? 0 : bArr.length, (byte) 61, codecPolicy);
        this.f104602k = f104597t;
        if (bArr != null) {
            if (containsAlphabetOrPad(bArr)) {
                throw new IllegalArgumentException("lineSeparator must not contain base64 characters: [" + StringUtils.newStringUtf8(bArr) + IteratorUtils.f104924b);
            }
            if (i > 0) {
                this.f104605n = bArr.length + 4;
                byte[] bArr2 = new byte[bArr.length];
                this.f104603l = bArr2;
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            } else {
                this.f104605n = 4;
                this.f104603l = null;
            }
        } else {
            this.f104605n = 4;
            this.f104603l = null;
        }
        this.f104604m = this.f104605n - 1;
        this.f104601j = z ? f104596s : f104595r;
    }
}
