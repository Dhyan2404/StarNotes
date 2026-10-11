package org.apache.commons.codec.binary;

import java.util.Arrays;
import java.util.Objects;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.CodecPolicy;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;

/* loaded from: classes9.dex */
public abstract class BaseNCodec implements BinaryEncoder, BinaryDecoder {
    protected static final int MASK_8BITS = 255;
    public static final int MIME_CHUNK_SIZE = 76;
    protected static final byte PAD_DEFAULT = 61;
    public static final int PEM_CHUNK_SIZE = 64;

    /* renamed from: e */
    public static final int f104606e = -1;

    /* renamed from: f */
    public static final int f104607f = 2;

    /* renamed from: g */
    public static final int f104608g = 8192;

    /* renamed from: h */
    public static final int f104609h = 2147483639;

    @Deprecated
    protected final byte PAD;

    /* renamed from: a */
    public final int f104611a;

    /* renamed from: b */
    public final int f104612b;

    /* renamed from: c */
    public final int f104613c;

    /* renamed from: d */
    public final CodecPolicy f104614d;
    protected final int lineLength;
    protected final byte pad;
    protected static final CodecPolicy DECODING_POLICY_DEFAULT = CodecPolicy.LENIENT;

    /* renamed from: i */
    public static final byte[] f104610i = {13, 10};

    /* renamed from: org.apache.commons.codec.binary.BaseNCodec$a */
    /* loaded from: classes9.dex */
    public static class C18665a {

        /* renamed from: a */
        public int f104615a;

        /* renamed from: b */
        public long f104616b;

        /* renamed from: c */
        public byte[] f104617c;

        /* renamed from: d */
        public int f104618d;

        /* renamed from: e */
        public int f104619e;

        /* renamed from: f */
        public boolean f104620f;

        /* renamed from: g */
        public int f104621g;

        /* renamed from: h */
        public int f104622h;

        public String toString() {
            return String.format("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", getClass().getSimpleName(), Arrays.toString(this.f104617c), Integer.valueOf(this.f104621g), Boolean.valueOf(this.f104620f), Integer.valueOf(this.f104615a), Long.valueOf(this.f104616b), Integer.valueOf(this.f104622h), Integer.valueOf(this.f104618d), Integer.valueOf(this.f104619e));
        }
    }

    public BaseNCodec(int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4, (byte) 61);
    }

    /* renamed from: b */
    public static int m65707b(int i, int i2) {
        return Integer.compare(i - 2147483648, i2 - 2147483648);
    }

    /* renamed from: c */
    public static int m65708c(int i) {
        if (i >= 0) {
            if (i > 2147483639) {
                return i;
            }
            return 2147483639;
        }
        throw new OutOfMemoryError("Unable to allocate array size: " + (i & 4294967295L));
    }

    public static byte[] getChunkSeparator() {
        return (byte[]) f104610i.clone();
    }

    /* renamed from: h */
    public static byte[] m65709h(C18665a c18665a, int i) {
        int length = c18665a.f104617c.length * 2;
        if (m65707b(length, i) < 0) {
            length = i;
        }
        if (m65707b(length, 2147483639) > 0) {
            length = m65708c(i);
        }
        byte[] bArr = new byte[length];
        byte[] bArr2 = c18665a.f104617c;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        c18665a.f104617c = bArr;
        return bArr;
    }

    public static boolean isWhiteSpace(byte b) {
        return b == 9 || b == 10 || b == 13 || b == 32;
    }

    /* renamed from: a */
    public int m65710a(C18665a c18665a) {
        if (c18665a.f104617c != null) {
            return c18665a.f104618d - c18665a.f104619e;
        }
        return 0;
    }

    public boolean containsAlphabetOrPad(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        for (byte b : bArr) {
            if (this.pad == b || isInAlphabet(b)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public abstract void mo65698d(byte[] bArr, int i, int i2, C18665a c18665a);

    @Override // org.apache.commons.codec.BinaryDecoder
    public byte[] decode(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        C18665a c18665a = new C18665a();
        mo65698d(bArr, 0, bArr.length, c18665a);
        mo65698d(bArr, 0, -1, c18665a);
        int i = c18665a.f104618d;
        byte[] bArr2 = new byte[i];
        m65712g(bArr2, 0, i, c18665a);
        return bArr2;
    }

    /* renamed from: e */
    public abstract void mo65699e(byte[] bArr, int i, int i2, C18665a c18665a);

    @Override // org.apache.commons.codec.BinaryEncoder
    public byte[] encode(byte[] bArr) {
        return (bArr == null || bArr.length == 0) ? bArr : encode(bArr, 0, bArr.length);
    }

    public String encodeAsString(byte[] bArr) {
        return StringUtils.newStringUtf8(encode(bArr));
    }

    public String encodeToString(byte[] bArr) {
        return StringUtils.newStringUtf8(encode(bArr));
    }

    public byte[] ensureBufferSize(int i, C18665a c18665a) {
        byte[] bArr = c18665a.f104617c;
        if (bArr == null) {
            c18665a.f104617c = new byte[Math.max(i, getDefaultBufferSize())];
            c18665a.f104618d = 0;
            c18665a.f104619e = 0;
        } else {
            int i2 = c18665a.f104618d;
            if ((i2 + i) - bArr.length > 0) {
                return m65709h(c18665a, i2 + i);
            }
        }
        return c18665a.f104617c;
    }

    /* renamed from: f */
    public boolean m65711f(C18665a c18665a) {
        return c18665a.f104617c != null;
    }

    /* renamed from: g */
    public int m65712g(byte[] bArr, int i, int i2, C18665a c18665a) {
        if (c18665a.f104617c == null) {
            return c18665a.f104620f ? -1 : 0;
        }
        int min = Math.min(m65710a(c18665a), i2);
        System.arraycopy(c18665a.f104617c, c18665a.f104619e, bArr, i, min);
        int i3 = c18665a.f104619e + min;
        c18665a.f104619e = i3;
        if (i3 >= c18665a.f104618d) {
            c18665a.f104617c = null;
        }
        return min;
    }

    public CodecPolicy getCodecPolicy() {
        return this.f104614d;
    }

    public int getDefaultBufferSize() {
        return 8192;
    }

    public long getEncodedLength(byte[] bArr) {
        int length = bArr.length;
        int i = this.f104611a;
        long j = (((length + i) - 1) / i) * this.f104612b;
        int i2 = this.lineLength;
        return i2 > 0 ? j + ((((i2 + j) - 1) / i2) * this.f104613c) : j;
    }

    public abstract boolean isInAlphabet(byte b);

    public boolean isInAlphabet(byte[] bArr, boolean z) {
        for (byte b : bArr) {
            if (!isInAlphabet(b) && (!z || (b != this.pad && !isWhiteSpace(b)))) {
                return false;
            }
        }
        return true;
    }

    public boolean isStrictDecoding() {
        return this.f104614d == CodecPolicy.STRICT;
    }

    public BaseNCodec(int i, int i2, int i3, int i4, byte b) {
        this(i, i2, i3, i4, b, DECODING_POLICY_DEFAULT);
    }

    public BaseNCodec(int i, int i2, int i3, int i4, byte b, CodecPolicy codecPolicy) {
        this.PAD = (byte) 61;
        this.f104611a = i;
        this.f104612b = i2;
        this.lineLength = i3 > 0 && i4 > 0 ? (i3 / i2) * i2 : 0;
        this.f104613c = i4;
        this.pad = b;
        Objects.requireNonNull(codecPolicy, "codecPolicy");
        this.f104614d = codecPolicy;
    }

    public byte[] encode(byte[] bArr, int i, int i2) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        C18665a c18665a = new C18665a();
        mo65699e(bArr, i, i2, c18665a);
        mo65699e(bArr, i, -1, c18665a);
        int i3 = c18665a.f104618d - c18665a.f104619e;
        byte[] bArr2 = new byte[i3];
        m65712g(bArr2, 0, i3, c18665a);
        return bArr2;
    }

    public boolean isInAlphabet(String str) {
        return isInAlphabet(StringUtils.getBytesUtf8(str), true);
    }

    @Override // org.apache.commons.codec.Decoder
    public Object decode(Object obj) throws DecoderException {
        if (obj instanceof byte[]) {
            return decode((byte[]) obj);
        }
        if (obj instanceof String) {
            return decode((String) obj);
        }
        throw new DecoderException("Parameter supplied to Base-N decode is not a byte[] or a String");
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj instanceof byte[]) {
            return encode((byte[]) obj);
        }
        throw new EncoderException("Parameter supplied to Base-N encode is not a byte[]");
    }

    public byte[] decode(String str) {
        return decode(StringUtils.getBytesUtf8(str));
    }
}
