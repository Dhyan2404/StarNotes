package org.apache.commons.codec.net;

import com.sunia.HTREnginev2.zbl;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import org.apache.commons.codec.CodecPolicy;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.BaseNCodec;

/* loaded from: classes9.dex */
public class BCodec extends zbl implements StringEncoder, StringDecoder {

    /* renamed from: c */
    public static final CodecPolicy f104865c = CodecPolicy.LENIENT;

    /* renamed from: a */
    public final Charset f104866a;

    /* renamed from: b */
    public final CodecPolicy f104867b;

    public BCodec() {
        this(StandardCharsets.UTF_8);
    }

    @Override // org.apache.commons.codec.StringDecoder
    public String decode(String str) throws DecoderException {
        if (str == null) {
            return null;
        }
        try {
            return decodeText(str);
        } catch (UnsupportedEncodingException | IllegalArgumentException e) {
            throw new DecoderException(e.getMessage(), e);
        }
    }

    @Override // com.sunia.HTREnginev2.zbl
    public byte[] doDecoding(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new Base64(0, BaseNCodec.getChunkSeparator(), false, this.f104867b).decode(bArr);
    }

    @Override // com.sunia.HTREnginev2.zbl
    public byte[] doEncoding(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeBase64(bArr);
    }

    public String encode(String str, Charset charset) throws EncoderException {
        if (str == null) {
            return null;
        }
        return encodeText(str, charset);
    }

    public Charset getCharset() {
        return this.f104866a;
    }

    public String getDefaultCharset() {
        return this.f104866a.name();
    }

    @Override // com.sunia.HTREnginev2.zbl
    public String getEncoding() {
        return "B";
    }

    public boolean isStrictDecoding() {
        return this.f104867b == CodecPolicy.STRICT;
    }

    public BCodec(Charset charset) {
        this(charset, f104865c);
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

    public BCodec(Charset charset, CodecPolicy codecPolicy) {
        this.f104866a = charset;
        this.f104867b = codecPolicy;
    }

    @Override // org.apache.commons.codec.Decoder
    public Object decode(Object obj) throws DecoderException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return decode((String) obj);
        }
        throw new DecoderException("Objects of type " + obj.getClass().getName() + " cannot be decoded using BCodec");
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) throws EncoderException {
        if (str == null) {
            return null;
        }
        return encode(str, getCharset());
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return encode((String) obj);
        }
        throw new EncoderException("Objects of type " + obj.getClass().getName() + " cannot be encoded using BCodec");
    }

    public BCodec(String str) {
        this(Charset.forName(str));
    }
}
