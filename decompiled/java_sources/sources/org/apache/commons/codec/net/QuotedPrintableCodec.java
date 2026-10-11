package org.apache.commons.codec.net;

import com.sunia.HTREnginev2.izn;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.util.BitSet;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;
import org.apache.commons.codec.binary.StringUtils;

/* loaded from: classes9.dex */
public class QuotedPrintableCodec implements BinaryEncoder, BinaryDecoder, StringEncoder, StringDecoder {

    /* renamed from: c */
    public static final BitSet f104878c = new BitSet(256);

    /* renamed from: d */
    public static final byte f104879d = 61;

    /* renamed from: e */
    public static final byte f104880e = 9;

    /* renamed from: f */
    public static final byte f104881f = 32;

    /* renamed from: g */
    public static final byte f104882g = 13;

    /* renamed from: h */
    public static final byte f104883h = 10;

    /* renamed from: i */
    public static final int f104884i = 73;

    /* renamed from: a */
    public final Charset f104885a;

    /* renamed from: b */
    public final boolean f104886b;

    static {
        for (int i = 33; i <= 60; i++) {
            f104878c.set(i);
        }
        for (int i2 = 62; i2 <= 126; i2++) {
            f104878c.set(i2);
        }
        BitSet bitSet = f104878c;
        bitSet.set(9);
        bitSet.set(32);
    }

    public QuotedPrintableCodec() {
        this(StandardCharsets.UTF_8, false);
    }

    /* renamed from: a */
    public static int m65862a(int i, boolean z, ByteArrayOutputStream byteArrayOutputStream) {
        if (z) {
            return m65863b(i, byteArrayOutputStream);
        }
        byteArrayOutputStream.write(i);
        return 1;
    }

    /* renamed from: b */
    public static final int m65863b(int i, ByteArrayOutputStream byteArrayOutputStream) {
        byteArrayOutputStream.write(61);
        char m54845b = izn.m54845b(i >> 4);
        char m54845b2 = izn.m54845b(i);
        byteArrayOutputStream.write(m54845b);
        byteArrayOutputStream.write(m54845b2);
        return 3;
    }

    /* renamed from: c */
    public static int m65864c(int i, byte[] bArr) {
        byte b = bArr[i];
        return b < 0 ? b + 256 : b;
    }

    /* renamed from: d */
    public static boolean m65865d(int i) {
        return i == 32 || i == 9;
    }

    public static final byte[] decodeQuotedPrintable(byte[] bArr) throws DecoderException {
        if (bArr == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < bArr.length) {
            byte b = bArr[i];
            if (b == 61) {
                i++;
                try {
                    byte b2 = bArr[i];
                    if (b2 != 13) {
                        i++;
                        byteArrayOutputStream.write((char) ((izn.m54844a(b2) << 4) + izn.m54844a(bArr[i])));
                    }
                } catch (ArrayIndexOutOfBoundsException e) {
                    throw new DecoderException("Invalid quoted-printable encoding", e);
                }
            } else if (b != 13 && b != 10) {
                byteArrayOutputStream.write(b);
            }
            i++;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static final byte[] encodeQuotedPrintable(BitSet bitSet, byte[] bArr) {
        return encodeQuotedPrintable(bitSet, bArr, false);
    }

    @Override // org.apache.commons.codec.BinaryDecoder
    public byte[] decode(byte[] bArr) throws DecoderException {
        return decodeQuotedPrintable(bArr);
    }

    @Override // org.apache.commons.codec.BinaryEncoder
    public byte[] encode(byte[] bArr) {
        return encodeQuotedPrintable(f104878c, bArr, this.f104886b);
    }

    public Charset getCharset() {
        return this.f104885a;
    }

    public String getDefaultCharset() {
        return this.f104885a.name();
    }

    public QuotedPrintableCodec(boolean z) {
        this(StandardCharsets.UTF_8, z);
    }

    public static final byte[] encodeQuotedPrintable(BitSet bitSet, byte[] bArr, boolean z) {
        if (bArr == null) {
            return null;
        }
        if (bitSet == null) {
            bitSet = f104878c;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (z) {
            int i = 1;
            for (int i2 = 0; i2 < bArr.length - 3; i2++) {
                int m65864c = m65864c(i2, bArr);
                if (i < 73) {
                    i += m65862a(m65864c, !bitSet.get(m65864c), byteArrayOutputStream);
                } else {
                    m65862a(m65864c, !bitSet.get(m65864c) || m65865d(m65864c), byteArrayOutputStream);
                    byteArrayOutputStream.write(61);
                    byteArrayOutputStream.write(13);
                    byteArrayOutputStream.write(10);
                    i = 1;
                }
            }
            int m65864c2 = m65864c(bArr.length - 3, bArr);
            if (i + m65862a(m65864c2, !bitSet.get(m65864c2) || (m65865d(m65864c2) && i > 68), byteArrayOutputStream) > 71) {
                byteArrayOutputStream.write(61);
                byteArrayOutputStream.write(13);
                byteArrayOutputStream.write(10);
            }
            int length = bArr.length - 2;
            while (length < bArr.length) {
                int m65864c3 = m65864c(length, bArr);
                m65862a(m65864c3, !bitSet.get(m65864c3) || (length > bArr.length + (-2) && m65865d(m65864c3)), byteArrayOutputStream);
                length++;
            }
        } else {
            int length2 = bArr.length;
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = bArr[i3];
                if (i4 < 0) {
                    i4 += 256;
                }
                if (bitSet.get(i4)) {
                    byteArrayOutputStream.write(i4);
                } else {
                    m65863b(i4, byteArrayOutputStream);
                }
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public String decode(String str, Charset charset) throws DecoderException {
        if (str == null) {
            return null;
        }
        return new String(decode(StringUtils.getBytesUsAscii(str)), charset);
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) throws EncoderException {
        return encode(str, getCharset());
    }

    public QuotedPrintableCodec(Charset charset) {
        this(charset, false);
    }

    public String decode(String str, String str2) throws DecoderException, UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        return new String(decode(StringUtils.getBytesUsAscii(str)), str2);
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            return encode((byte[]) obj);
        }
        if (obj instanceof String) {
            return encode((String) obj);
        }
        throw new EncoderException("Objects of type " + obj.getClass().getName() + " cannot be quoted-printable encoded");
    }

    public QuotedPrintableCodec(Charset charset, boolean z) {
        this.f104885a = charset;
        this.f104886b = z;
    }

    @Override // org.apache.commons.codec.StringDecoder
    public String decode(String str) throws DecoderException {
        return decode(str, getCharset());
    }

    @Override // org.apache.commons.codec.Decoder
    public Object decode(Object obj) throws DecoderException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            return decode((byte[]) obj);
        }
        if (obj instanceof String) {
            return decode((String) obj);
        }
        throw new DecoderException("Objects of type " + obj.getClass().getName() + " cannot be quoted-printable decoded");
    }

    public QuotedPrintableCodec(String str) throws IllegalCharsetNameException, IllegalArgumentException, UnsupportedCharsetException {
        this(Charset.forName(str), false);
    }

    public String encode(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        return StringUtils.newStringUsAscii(encode(str.getBytes(charset)));
    }

    public String encode(String str, String str2) throws UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        return StringUtils.newStringUsAscii(encode(str.getBytes(str2)));
    }
}
