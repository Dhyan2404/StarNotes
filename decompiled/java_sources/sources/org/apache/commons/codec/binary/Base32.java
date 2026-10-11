package org.apache.commons.codec.binary;

import com.alibaba.fastjson2.JSONB;
import com.google.common.base.Ascii;
import org.apache.commons.codec.CodecPolicy;
import org.apache.commons.codec.binary.BaseNCodec;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream;

/* loaded from: classes9.dex */
public class Base32 extends BaseNCodec {

    /* renamed from: o */
    public static final int f104575o = 5;

    /* renamed from: p */
    public static final int f104576p = 8;

    /* renamed from: q */
    public static final int f104577q = 5;

    /* renamed from: r */
    public static final byte[] f104578r = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, Ascii.SUB, Ascii.ESC, 28, 29, 30, 31, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25};

    /* renamed from: s */
    public static final byte[] f104579s = {65, 66, 67, JSONB.Constants.BC_INT32_SHORT_ZERO, 69, 70, JSONB.Constants.BC_INT32_SHORT_MAX, JSONB.Constants.BC_INT32, 73, JSONB.Constants.BC_STR_ASCII_FIX_1, TarConstants.LF_GNUTYPE_LONGLINK, TarConstants.LF_GNUTYPE_LONGNAME, 77, JSONB.Constants.BC_STR_ASCII_FIX_5, 79, FramedLZ4CompressorInputStream.f106197v, 81, 82, TarConstants.LF_GNUTYPE_SPARSE, 84, 85, 86, 87, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 89, 90, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG};

    /* renamed from: t */
    public static final byte[] f104580t = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, Ascii.SUB, Ascii.ESC, 28, 29, 30, 31, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, Ascii.SUB, Ascii.ESC, 28, 29, 30, 31};

    /* renamed from: u */
    public static final byte[] f104581u = {48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 65, 66, 67, JSONB.Constants.BC_INT32_SHORT_ZERO, 69, 70, JSONB.Constants.BC_INT32_SHORT_MAX, JSONB.Constants.BC_INT32, 73, JSONB.Constants.BC_STR_ASCII_FIX_1, TarConstants.LF_GNUTYPE_LONGLINK, TarConstants.LF_GNUTYPE_LONGNAME, 77, JSONB.Constants.BC_STR_ASCII_FIX_5, 79, FramedLZ4CompressorInputStream.f106197v, 81, 82, TarConstants.LF_GNUTYPE_SPARSE, 84, 85, 86};

    /* renamed from: v */
    public static final int f104582v = 31;

    /* renamed from: w */
    public static final long f104583w = 15;

    /* renamed from: x */
    public static final long f104584x = 7;

    /* renamed from: y */
    public static final long f104585y = 3;

    /* renamed from: z */
    public static final long f104586z = 1;

    /* renamed from: j */
    public final int f104587j;

    /* renamed from: k */
    public final byte[] f104588k;

    /* renamed from: l */
    public final int f104589l;

    /* renamed from: m */
    public final byte[] f104590m;

    /* renamed from: n */
    public final byte[] f104591n;

    public Base32() {
        this(false);
    }

    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean, int] */
    @Override // org.apache.commons.codec.binary.BaseNCodec
    /* renamed from: d */
    public void mo65698d(byte[] bArr, int i, int i2, BaseNCodec.C18665a c18665a) {
        byte b;
        if (c18665a.f104620f) {
            return;
        }
        ?? r3 = 1;
        if (i2 < 0) {
            c18665a.f104620f = true;
        }
        int i3 = 0;
        int i4 = i;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int i5 = i4 + 1;
            byte b2 = bArr[i4];
            if (b2 == this.pad) {
                c18665a.f104620f = r3;
                break;
            }
            byte[] ensureBufferSize = ensureBufferSize(this.f104587j, c18665a);
            if (b2 >= 0) {
                byte[] bArr2 = this.f104588k;
                if (b2 < bArr2.length && (b = bArr2[b2]) >= 0) {
                    int i6 = (c18665a.f104622h + r3) % 8;
                    c18665a.f104622h = i6;
                    c18665a.f104616b = (c18665a.f104616b << 5) + b;
                    if (i6 == 0) {
                        int i7 = c18665a.f104618d;
                        int i8 = i7 + 1;
                        ensureBufferSize[i7] = (byte) ((r14 >> 32) & 255);
                        int i9 = i8 + 1;
                        ensureBufferSize[i8] = (byte) ((r14 >> 24) & 255);
                        int i10 = i9 + 1;
                        ensureBufferSize[i9] = (byte) ((r14 >> 16) & 255);
                        int i11 = i10 + 1;
                        ensureBufferSize[i10] = (byte) ((r14 >> 8) & 255);
                        c18665a.f104618d = i11 + 1;
                        ensureBufferSize[i11] = (byte) (r14 & 255);
                    }
                }
            }
            i3++;
            i4 = i5;
            r3 = 1;
        }
        if (!c18665a.f104620f || c18665a.f104622h <= 0) {
            return;
        }
        byte[] ensureBufferSize2 = ensureBufferSize(this.f104587j, c18665a);
        switch (c18665a.f104622h) {
            case 1:
                m65703j();
                break;
            case 2:
                break;
            case 3:
                m65703j();
                int i12 = c18665a.f104618d;
                c18665a.f104618d = i12 + 1;
                ensureBufferSize2[i12] = (byte) ((c18665a.f104616b >> 7) & 255);
                return;
            case 4:
                m65702i(15L, c18665a);
                c18665a.f104616b = c18665a.f104616b >> 4;
                int i13 = c18665a.f104618d;
                int i14 = i13 + 1;
                ensureBufferSize2[i13] = (byte) ((r3 >> 8) & 255);
                c18665a.f104618d = i14 + 1;
                ensureBufferSize2[i14] = (byte) (r3 & 255);
                return;
            case 5:
                m65702i(1L, c18665a);
                c18665a.f104616b = c18665a.f104616b >> 1;
                int i15 = c18665a.f104618d;
                int i16 = i15 + 1;
                ensureBufferSize2[i15] = (byte) ((r3 >> 16) & 255);
                int i17 = i16 + 1;
                ensureBufferSize2[i16] = (byte) ((r3 >> 8) & 255);
                c18665a.f104618d = i17 + 1;
                ensureBufferSize2[i17] = (byte) (r3 & 255);
                return;
            case 6:
                m65703j();
                c18665a.f104616b = c18665a.f104616b >> 6;
                int i18 = c18665a.f104618d;
                int i19 = i18 + 1;
                ensureBufferSize2[i18] = (byte) ((r3 >> 16) & 255);
                int i20 = i19 + 1;
                ensureBufferSize2[i19] = (byte) ((r3 >> 8) & 255);
                c18665a.f104618d = i20 + 1;
                ensureBufferSize2[i20] = (byte) (r3 & 255);
                return;
            case 7:
                m65702i(7L, c18665a);
                c18665a.f104616b = c18665a.f104616b >> 3;
                int i21 = c18665a.f104618d;
                int i22 = i21 + 1;
                ensureBufferSize2[i21] = (byte) ((r3 >> 24) & 255);
                int i23 = i22 + 1;
                ensureBufferSize2[i22] = (byte) ((r3 >> 16) & 255);
                int i24 = i23 + 1;
                ensureBufferSize2[i23] = (byte) ((r3 >> 8) & 255);
                c18665a.f104618d = i24 + 1;
                ensureBufferSize2[i24] = (byte) (r3 & 255);
                return;
            default:
                throw new IllegalStateException("Impossible modulus " + c18665a.f104622h);
        }
        m65702i(3L, c18665a);
        int i25 = c18665a.f104618d;
        c18665a.f104618d = i25 + 1;
        ensureBufferSize2[i25] = (byte) ((c18665a.f104616b >> 2) & 255);
    }

    @Override // org.apache.commons.codec.binary.BaseNCodec
    /* renamed from: e */
    public void mo65699e(byte[] bArr, int i, int i2, BaseNCodec.C18665a c18665a) {
        boolean z;
        int i3;
        if (c18665a.f104620f) {
            return;
        }
        boolean z2 = false;
        int i4 = 1;
        if (i2 >= 0) {
            int i5 = i;
            int i6 = 0;
            while (i6 < i2) {
                byte[] ensureBufferSize = ensureBufferSize(this.f104589l, c18665a);
                int i7 = (c18665a.f104622h + i4) % 5;
                c18665a.f104622h = i7;
                int i8 = i5 + 1;
                int i9 = bArr[i5];
                if (i9 < 0) {
                    i9 += 256;
                }
                long j = (c18665a.f104616b << 8) + i9;
                c18665a.f104616b = j;
                if (i7 == 0) {
                    int i10 = c18665a.f104618d;
                    int i11 = i10 + 1;
                    byte[] bArr2 = this.f104590m;
                    ensureBufferSize[i10] = bArr2[((int) (j >> 35)) & 31];
                    int i12 = i11 + 1;
                    ensureBufferSize[i11] = bArr2[((int) (j >> 30)) & 31];
                    int i13 = i12 + 1;
                    i3 = i8;
                    ensureBufferSize[i12] = bArr2[((int) (j >> 25)) & 31];
                    int i14 = i13 + 1;
                    ensureBufferSize[i13] = bArr2[((int) (j >> 20)) & 31];
                    int i15 = i14 + 1;
                    ensureBufferSize[i14] = bArr2[((int) (j >> 15)) & 31];
                    int i16 = i15 + 1;
                    ensureBufferSize[i15] = bArr2[((int) (j >> 10)) & 31];
                    int i17 = i16 + 1;
                    ensureBufferSize[i16] = bArr2[((int) (j >> 5)) & 31];
                    int i18 = i17 + 1;
                    c18665a.f104618d = i18;
                    ensureBufferSize[i17] = bArr2[((int) j) & 31];
                    int i19 = c18665a.f104621g + 8;
                    c18665a.f104621g = i19;
                    int i20 = this.lineLength;
                    if (i20 <= 0 || i20 > i19) {
                        z = false;
                    } else {
                        byte[] bArr3 = this.f104591n;
                        z = false;
                        System.arraycopy(bArr3, 0, ensureBufferSize, i18, bArr3.length);
                        c18665a.f104618d += this.f104591n.length;
                        c18665a.f104621g = 0;
                    }
                } else {
                    z = z2;
                    i3 = i8;
                }
                i6++;
                i5 = i3;
                z2 = z;
                i4 = 1;
            }
            return;
        }
        c18665a.f104620f = true;
        if (c18665a.f104622h == 0 && this.lineLength == 0) {
            return;
        }
        byte[] ensureBufferSize2 = ensureBufferSize(this.f104589l, c18665a);
        int i21 = c18665a.f104618d;
        int i22 = c18665a.f104622h;
        if (i22 != 0) {
            if (i22 == 1) {
                int i23 = i21 + 1;
                byte[] bArr4 = this.f104590m;
                long j2 = c18665a.f104616b;
                ensureBufferSize2[i21] = bArr4[((int) (j2 >> 3)) & 31];
                int i24 = i23 + 1;
                ensureBufferSize2[i23] = bArr4[((int) (j2 << 2)) & 31];
                int i25 = i24 + 1;
                byte b = this.pad;
                ensureBufferSize2[i24] = b;
                int i26 = i25 + 1;
                ensureBufferSize2[i25] = b;
                int i27 = i26 + 1;
                ensureBufferSize2[i26] = b;
                int i28 = i27 + 1;
                ensureBufferSize2[i27] = b;
                int i29 = i28 + 1;
                ensureBufferSize2[i28] = b;
                c18665a.f104618d = i29 + 1;
                ensureBufferSize2[i29] = b;
            } else if (i22 == 2) {
                int i30 = i21 + 1;
                byte[] bArr5 = this.f104590m;
                long j3 = c18665a.f104616b;
                ensureBufferSize2[i21] = bArr5[((int) (j3 >> 11)) & 31];
                int i31 = i30 + 1;
                ensureBufferSize2[i30] = bArr5[((int) (j3 >> 6)) & 31];
                int i32 = i31 + 1;
                ensureBufferSize2[i31] = bArr5[((int) (j3 >> 1)) & 31];
                int i33 = i32 + 1;
                ensureBufferSize2[i32] = bArr5[((int) (j3 << 4)) & 31];
                int i34 = i33 + 1;
                byte b2 = this.pad;
                ensureBufferSize2[i33] = b2;
                int i35 = i34 + 1;
                ensureBufferSize2[i34] = b2;
                int i36 = i35 + 1;
                ensureBufferSize2[i35] = b2;
                c18665a.f104618d = i36 + 1;
                ensureBufferSize2[i36] = b2;
            } else if (i22 == 3) {
                int i37 = i21 + 1;
                byte[] bArr6 = this.f104590m;
                long j4 = c18665a.f104616b;
                ensureBufferSize2[i21] = bArr6[((int) (j4 >> 19)) & 31];
                int i38 = i37 + 1;
                ensureBufferSize2[i37] = bArr6[((int) (j4 >> 14)) & 31];
                int i39 = i38 + 1;
                ensureBufferSize2[i38] = bArr6[((int) (j4 >> 9)) & 31];
                int i40 = i39 + 1;
                ensureBufferSize2[i39] = bArr6[((int) (j4 >> 4)) & 31];
                int i41 = i40 + 1;
                ensureBufferSize2[i40] = bArr6[((int) (j4 << 1)) & 31];
                int i42 = i41 + 1;
                byte b3 = this.pad;
                ensureBufferSize2[i41] = b3;
                int i43 = i42 + 1;
                ensureBufferSize2[i42] = b3;
                c18665a.f104618d = i43 + 1;
                ensureBufferSize2[i43] = b3;
            } else {
                if (i22 != 4) {
                    throw new IllegalStateException("Impossible modulus " + c18665a.f104622h);
                }
                int i44 = i21 + 1;
                byte[] bArr7 = this.f104590m;
                long j5 = c18665a.f104616b;
                ensureBufferSize2[i21] = bArr7[((int) (j5 >> 27)) & 31];
                int i45 = i44 + 1;
                ensureBufferSize2[i44] = bArr7[((int) (j5 >> 22)) & 31];
                int i46 = i45 + 1;
                ensureBufferSize2[i45] = bArr7[((int) (j5 >> 17)) & 31];
                int i47 = i46 + 1;
                ensureBufferSize2[i46] = bArr7[((int) (j5 >> 12)) & 31];
                int i48 = i47 + 1;
                ensureBufferSize2[i47] = bArr7[((int) (j5 >> 7)) & 31];
                int i49 = i48 + 1;
                ensureBufferSize2[i48] = bArr7[((int) (j5 >> 2)) & 31];
                int i50 = i49 + 1;
                ensureBufferSize2[i49] = bArr7[((int) (j5 << 3)) & 31];
                c18665a.f104618d = i50 + 1;
                ensureBufferSize2[i50] = this.pad;
            }
        }
        int i51 = c18665a.f104621g;
        int i52 = c18665a.f104618d;
        int i53 = i51 + (i52 - i21);
        c18665a.f104621g = i53;
        if (this.lineLength <= 0 || i53 <= 0) {
            return;
        }
        byte[] bArr8 = this.f104591n;
        System.arraycopy(bArr8, 0, ensureBufferSize2, i52, bArr8.length);
        c18665a.f104618d += this.f104591n.length;
    }

    /* renamed from: i */
    public final void m65702i(long j, BaseNCodec.C18665a c18665a) {
        if (isStrictDecoding() && (c18665a.f104616b & j) != 0) {
            throw new IllegalArgumentException("Strict decoding: Last encoded character (before the paddings if any) is a valid base 32 alphabet but not a possible encoding. Expected the discarded bits from the character to be zero.");
        }
    }

    @Override // org.apache.commons.codec.binary.BaseNCodec
    public boolean isInAlphabet(byte b) {
        if (b >= 0) {
            byte[] bArr = this.f104588k;
            if (b < bArr.length && bArr[b] != -1) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public final void m65703j() {
        if (isStrictDecoding()) {
            throw new IllegalArgumentException("Strict decoding: Last encoded character(s) (before the paddings if any) are valid base 32 alphabet but not a possible encoding. Decoding requires either 2, 4, 5, or 7 trailing 5-bit characters to create bytes.");
        }
    }

    public Base32(boolean z) {
        this(0, null, z, (byte) 61);
    }

    public Base32(boolean z, byte b) {
        this(0, null, z, b);
    }

    public Base32(byte b) {
        this(false, b);
    }

    public Base32(int i) {
        this(i, BaseNCodec.f104610i);
    }

    public Base32(int i, byte[] bArr) {
        this(i, bArr, false, (byte) 61);
    }

    public Base32(int i, byte[] bArr, boolean z) {
        this(i, bArr, z, (byte) 61);
    }

    public Base32(int i, byte[] bArr, boolean z, byte b) {
        this(i, bArr, z, b, BaseNCodec.DECODING_POLICY_DEFAULT);
    }

    public Base32(int i, byte[] bArr, boolean z, byte b, CodecPolicy codecPolicy) {
        super(5, 8, i, bArr == null ? 0 : bArr.length, b, codecPolicy);
        if (z) {
            this.f104590m = f104581u;
            this.f104588k = f104580t;
        } else {
            this.f104590m = f104579s;
            this.f104588k = f104578r;
        }
        if (i <= 0) {
            this.f104589l = 8;
            this.f104591n = null;
        } else if (bArr != null) {
            if (!containsAlphabetOrPad(bArr)) {
                this.f104589l = bArr.length + 8;
                byte[] bArr2 = new byte[bArr.length];
                this.f104591n = bArr2;
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            } else {
                throw new IllegalArgumentException("lineSeparator must not contain Base32 characters: [" + StringUtils.newStringUtf8(bArr) + IteratorUtils.f104924b);
            }
        } else {
            throw new IllegalArgumentException("lineLength " + i + " > 0, but lineSeparator is null");
        }
        this.f104587j = this.f104589l - 1;
        if (isInAlphabet(b) || BaseNCodec.isWhiteSpace(b)) {
            throw new IllegalArgumentException("pad must not be in alphabet or whitespace");
        }
    }
}
