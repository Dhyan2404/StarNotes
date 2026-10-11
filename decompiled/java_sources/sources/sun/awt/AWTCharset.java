package sun.awt;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

/* loaded from: classes16.dex */
public class AWTCharset extends Charset {
    protected Charset awtCs;
    protected Charset javaCs;

    /* loaded from: classes16.dex */
    public class Decoder extends CharsetDecoder {
        protected CharsetDecoder dec;
        ByteBuffer fbb;

        /* renamed from: nr */
        private String f116320nr;

        public Decoder(AWTCharset aWTCharset) {
            this(aWTCharset.javaCs.newDecoder());
        }

        @Override // java.nio.charset.CharsetDecoder
        public CoderResult decodeLoop(ByteBuffer byteBuffer, CharBuffer charBuffer) {
            return this.dec.decode(byteBuffer, charBuffer, true);
        }

        @Override // java.nio.charset.CharsetDecoder
        public CoderResult implFlush(CharBuffer charBuffer) {
            this.dec.decode(this.fbb, charBuffer, true);
            return this.dec.flush(charBuffer);
        }

        @Override // java.nio.charset.CharsetDecoder
        public void implOnMalformedInput(CodingErrorAction codingErrorAction) {
            this.dec.onMalformedInput(codingErrorAction);
        }

        @Override // java.nio.charset.CharsetDecoder
        public void implOnUnmappableCharacter(CodingErrorAction codingErrorAction) {
            this.dec.onUnmappableCharacter(codingErrorAction);
        }

        @Override // java.nio.charset.CharsetDecoder
        public void implReplaceWith(String str) {
            CharsetDecoder charsetDecoder = this.dec;
            if (charsetDecoder != null) {
                charsetDecoder.replaceWith(str);
            }
        }

        @Override // java.nio.charset.CharsetDecoder
        public void implReset() {
            this.dec.reset();
        }

        public Decoder(CharsetDecoder charsetDecoder) {
            super(AWTCharset.this.awtCs, charsetDecoder.averageCharsPerByte(), charsetDecoder.maxCharsPerByte());
            this.fbb = ByteBuffer.allocate(0);
            this.dec = charsetDecoder;
        }
    }

    /* loaded from: classes16.dex */
    public class Encoder extends CharsetEncoder {
        protected CharsetEncoder enc;

        public Encoder(AWTCharset aWTCharset) {
            this(aWTCharset.javaCs.newEncoder());
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean canEncode(char c) {
            return this.enc.canEncode(c);
        }

        @Override // java.nio.charset.CharsetEncoder
        public CoderResult encodeLoop(CharBuffer charBuffer, ByteBuffer byteBuffer) {
            return this.enc.encode(charBuffer, byteBuffer, true);
        }

        @Override // java.nio.charset.CharsetEncoder
        public CoderResult implFlush(ByteBuffer byteBuffer) {
            return this.enc.flush(byteBuffer);
        }

        @Override // java.nio.charset.CharsetEncoder
        public void implOnMalformedInput(CodingErrorAction codingErrorAction) {
            this.enc.onMalformedInput(codingErrorAction);
        }

        @Override // java.nio.charset.CharsetEncoder
        public void implOnUnmappableCharacter(CodingErrorAction codingErrorAction) {
            this.enc.onUnmappableCharacter(codingErrorAction);
        }

        @Override // java.nio.charset.CharsetEncoder
        public void implReplaceWith(byte[] bArr) {
            CharsetEncoder charsetEncoder = this.enc;
            if (charsetEncoder != null) {
                charsetEncoder.replaceWith(bArr);
            }
        }

        @Override // java.nio.charset.CharsetEncoder
        public void implReset() {
            this.enc.reset();
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean isLegalReplacement(byte[] bArr) {
            return true;
        }

        public Encoder(CharsetEncoder charsetEncoder) {
            super(AWTCharset.this.awtCs, charsetEncoder.averageBytesPerChar(), charsetEncoder.maxBytesPerChar());
            this.enc = charsetEncoder;
        }

        @Override // java.nio.charset.CharsetEncoder
        public boolean canEncode(CharSequence charSequence) {
            return this.enc.canEncode(charSequence);
        }
    }

    public AWTCharset(String str, Charset charset) {
        super(str, null);
        this.javaCs = charset;
        this.awtCs = this;
    }

    @Override // java.nio.charset.Charset
    public boolean contains(Charset charset) {
        Charset charset2 = this.javaCs;
        if (charset2 == null) {
            return false;
        }
        return charset2.contains(charset);
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        if (this.javaCs != null) {
            return new Decoder(this.javaCs.newDecoder());
        }
        throw new Error("Decoder is not supported by this Charset");
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        if (this.javaCs != null) {
            return new Encoder(this.javaCs.newEncoder());
        }
        throw new Error("Encoder is not supported by this Charset");
    }
}
