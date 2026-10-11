package org.apache.commons.codec.binary;

import com.alibaba.fastjson2.JSONB;
import org.apache.commons.codec.CodecPolicy;
import org.apache.commons.codec.binary.BaseNCodec;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* loaded from: classes9.dex */
public class Base16 extends BaseNCodec {

    /* renamed from: l */
    public static final int f104565l = 4;

    /* renamed from: m */
    public static final int f104566m = 2;

    /* renamed from: n */
    public static final int f104567n = 1;

    /* renamed from: o */
    public static final byte[] f104568o = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15};

    /* renamed from: p */
    public static final byte[] f104569p = {48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 65, 66, 67, JSONB.Constants.BC_INT32_SHORT_ZERO, 69, 70};

    /* renamed from: q */
    public static final byte[] f104570q = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15};

    /* renamed from: r */
    public static final byte[] f104571r = {48, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: s */
    public static final int f104572s = 15;

    /* renamed from: j */
    public final byte[] f104573j;

    /* renamed from: k */
    public final byte[] f104574k;

    public Base16() {
        this(false);
    }

    @Override // org.apache.commons.codec.binary.BaseNCodec
    /* renamed from: d */
    public void mo65698d(byte[] bArr, int i, int i2, BaseNCodec.C18665a c18665a) {
        if (c18665a.f104620f || i2 < 0) {
            c18665a.f104620f = true;
            if (c18665a.f104615a != 0) {
                m65701j();
                return;
            }
            return;
        }
        int min = Math.min(bArr.length - i, i2);
        int i3 = 0;
        int i4 = (c18665a.f104615a != 0 ? 1 : 0) + min;
        if (i4 == 1 && i4 == min) {
            c18665a.f104615a = m65700i(bArr[i]) + 1;
            return;
        }
        int i5 = i4 % 2 == 0 ? i4 : i4 - 1;
        byte[] ensureBufferSize = ensureBufferSize(i5 / 2, c18665a);
        if (min < i4) {
            int i6 = i + 1;
            int m65700i = m65700i(bArr[i]) | ((c18665a.f104615a - 1) << 4);
            int i7 = c18665a.f104618d;
            c18665a.f104618d = i7 + 1;
            ensureBufferSize[i7] = (byte) m65700i;
            c18665a.f104615a = 0;
            i3 = 2;
            i = i6;
        }
        while (i3 < i5) {
            int i8 = i + 1;
            int i9 = i8 + 1;
            int m65700i2 = (m65700i(bArr[i]) << 4) | m65700i(bArr[i8]);
            i3 += 2;
            int i10 = c18665a.f104618d;
            c18665a.f104618d = i10 + 1;
            ensureBufferSize[i10] = (byte) m65700i2;
            i = i9;
        }
        if (i3 < min) {
            c18665a.f104615a = m65700i(bArr[i3]) + 1;
        }
    }

    @Override // org.apache.commons.codec.binary.BaseNCodec
    /* renamed from: e */
    public void mo65699e(byte[] bArr, int i, int i2, BaseNCodec.C18665a c18665a) {
        if (c18665a.f104620f) {
            return;
        }
        if (i2 < 0) {
            c18665a.f104620f = true;
            return;
        }
        int i3 = i2 * 2;
        if (i3 < 0) {
            throw new IllegalArgumentException("Input length exceeds maximum size for encoded data: " + i2);
        }
        byte[] ensureBufferSize = ensureBufferSize(i3, c18665a);
        int i4 = i2 + i;
        while (i < i4) {
            byte b = bArr[i];
            int i5 = c18665a.f104618d;
            int i6 = i5 + 1;
            byte[] bArr2 = this.f104574k;
            ensureBufferSize[i5] = bArr2[(b >> 4) & 15];
            c18665a.f104618d = i6 + 1;
            ensureBufferSize[i6] = bArr2[b & 15];
            i++;
        }
    }

    /* renamed from: i */
    public final int m65700i(byte b) {
        int i = b & 255;
        byte[] bArr = this.f104573j;
        byte b2 = i < bArr.length ? bArr[b] : (byte) -1;
        if (b2 != -1) {
            return b2;
        }
        throw new IllegalArgumentException("Invalid octet in encoded value: " + ((int) b));
    }

    @Override // org.apache.commons.codec.binary.BaseNCodec
    public boolean isInAlphabet(byte b) {
        int i = b & 255;
        byte[] bArr = this.f104573j;
        return i < bArr.length && bArr[b] != -1;
    }

    /* renamed from: j */
    public final void m65701j() {
        if (isStrictDecoding()) {
            throw new IllegalArgumentException("Strict decoding: Last encoded character is a valid base 16 alphabetcharacter but not a possible encoding. Decoding requires at least two characters to create one byte.");
        }
    }

    public Base16(boolean z) {
        this(z, BaseNCodec.DECODING_POLICY_DEFAULT);
    }

    public Base16(boolean z, CodecPolicy codecPolicy) {
        super(1, 2, 0, 0, (byte) 61, codecPolicy);
        if (z) {
            this.f104574k = f104571r;
            this.f104573j = f104570q;
        } else {
            this.f104574k = f104569p;
            this.f104573j = f104568o;
        }
    }
}
