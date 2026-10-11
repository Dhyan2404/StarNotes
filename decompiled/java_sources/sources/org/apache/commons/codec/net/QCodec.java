package org.apache.commons.codec.net;

import com.sunia.HTREnginev2.zbl;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.BitSet;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes9.dex */
public class QCodec extends zbl implements StringEncoder, StringDecoder {

    /* renamed from: c */
    public static final BitSet f104873c;

    /* renamed from: d */
    public static final byte f104874d = 32;

    /* renamed from: e */
    public static final byte f104875e = 95;

    /* renamed from: a */
    public final Charset f104876a;

    /* renamed from: b */
    public boolean f104877b;

    static {
        BitSet bitSet = new BitSet(256);
        f104873c = bitSet;
        bitSet.set(32);
        bitSet.set(33);
        bitSet.set(34);
        bitSet.set(35);
        bitSet.set(36);
        bitSet.set(37);
        bitSet.set(38);
        bitSet.set(39);
        bitSet.set(40);
        bitSet.set(41);
        bitSet.set(42);
        bitSet.set(43);
        bitSet.set(44);
        bitSet.set(45);
        bitSet.set(46);
        bitSet.set(47);
        for (int i = 48; i <= 57; i++) {
            f104873c.set(i);
        }
        BitSet bitSet2 = f104873c;
        bitSet2.set(58);
        bitSet2.set(59);
        bitSet2.set(60);
        bitSet2.set(62);
        bitSet2.set(64);
        for (int i2 = 65; i2 <= 90; i2++) {
            f104873c.set(i2);
        }
        BitSet bitSet3 = f104873c;
        bitSet3.set(91);
        bitSet3.set(92);
        bitSet3.set(93);
        bitSet3.set(94);
        bitSet3.set(96);
        for (int i3 = 97; i3 <= 122; i3++) {
            f104873c.set(i3);
        }
        BitSet bitSet4 = f104873c;
        bitSet4.set(123);
        bitSet4.set(124);
        bitSet4.set(125);
        bitSet4.set(126);
    }

    public QCodec() {
        this(StandardCharsets.UTF_8);
    }

    @Override // org.apache.commons.codec.StringDecoder
    public String decode(String str) throws DecoderException {
        if (str == null) {
            return null;
        }
        try {
            return decodeText(str);
        } catch (UnsupportedEncodingException e) {
            throw new DecoderException(e.getMessage(), e);
        }
    }

    @Override // com.sunia.HTREnginev2.zbl
    public byte[] doDecoding(byte[] bArr) throws DecoderException {
        boolean z;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            if (bArr[i] == 95) {
                z = true;
                break;
            }
            i++;
        }
        if (!z) {
            return QuotedPrintableCodec.decodeQuotedPrintable(bArr);
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b = bArr[i2];
            if (b != 95) {
                bArr2[i2] = b;
            } else {
                bArr2[i2] = 32;
            }
        }
        return QuotedPrintableCodec.decodeQuotedPrintable(bArr2);
    }

    @Override // com.sunia.HTREnginev2.zbl
    public byte[] doEncoding(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] encodeQuotedPrintable = QuotedPrintableCodec.encodeQuotedPrintable(f104873c, bArr);
        if (this.f104877b) {
            for (int i = 0; i < encodeQuotedPrintable.length; i++) {
                if (encodeQuotedPrintable[i] == 32) {
                    encodeQuotedPrintable[i] = f104875e;
                }
            }
        }
        return encodeQuotedPrintable;
    }

    public String encode(String str, Charset charset) throws EncoderException {
        if (str == null) {
            return null;
        }
        return encodeText(str, charset);
    }

    public Charset getCharset() {
        return this.f104876a;
    }

    public String getDefaultCharset() {
        return this.f104876a.name();
    }

    @Override // com.sunia.HTREnginev2.zbl
    public String getEncoding() {
        return "Q";
    }

    public boolean isEncodeBlanks() {
        return this.f104877b;
    }

    public void setEncodeBlanks(boolean z) {
        this.f104877b = z;
    }

    public QCodec(Charset charset) {
        this.f104877b = false;
        this.f104876a = charset;
    }

    public String encode(String str, String str2) throws EncoderException {
        if (str == null) {
            return null;
        }
        try {
            return encodeText(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new EncoderException(e.getMessage(), e);
        }
    }

    @Override // org.apache.commons.codec.Decoder
    public Object decode(Object obj) throws DecoderException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return decode((String) obj);
        }
        throw new DecoderException("Objects of type " + obj.getClass().getName() + " cannot be decoded using Q codec");
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) throws EncoderException {
        if (str == null) {
            return null;
        }
        return encode(str, getCharset());
    }

    public QCodec(String str) {
        this(Charset.forName(str));
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return encode((String) obj);
        }
        throw new EncoderException("Objects of type " + obj.getClass().getName() + " cannot be encoded using Q codec");
    }
}
