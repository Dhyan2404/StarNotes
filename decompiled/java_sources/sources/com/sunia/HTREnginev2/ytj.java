package com.sunia.HTREnginev2;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import org.apache.commons.compress.archivers.zip.CharsetAccessor;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;

/* loaded from: classes12.dex */
public class ytj implements ZipEncoding, CharsetAccessor {

    /* renamed from: c */
    public static final char f91064c = '?';

    /* renamed from: d */
    public static final byte[] f91065d = {63};

    /* renamed from: e */
    public static final String f91066e = String.valueOf('?');

    /* renamed from: f */
    public static final char[] f91067f = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public final Charset f91068a;

    /* renamed from: b */
    public final boolean f91069b;

    public ytj(Charset charset, boolean z) {
        this.f91068a = charset;
        this.f91069b = z;
    }

    /* renamed from: a */
    public static ByteBuffer m58485a(CharsetEncoder charsetEncoder, CharBuffer charBuffer, ByteBuffer byteBuffer) {
        while (charBuffer.hasRemaining()) {
            if (charsetEncoder.encode(charBuffer, byteBuffer, false).isOverflow()) {
                byteBuffer = ZipEncodingHelper.m66532b(byteBuffer, m58487c(charsetEncoder, charBuffer.remaining()));
            }
        }
        return byteBuffer;
    }

    /* renamed from: b */
    public static CharBuffer m58486b(CharBuffer charBuffer, char c) {
        charBuffer.position(0).limit(6);
        charBuffer.put('%');
        charBuffer.put('U');
        char[] cArr = f91067f;
        charBuffer.put(cArr[(c >> '\f') & 15]);
        charBuffer.put(cArr[(c >> '\b') & 15]);
        charBuffer.put(cArr[(c >> 4) & 15]);
        charBuffer.put(cArr[c & 15]);
        charBuffer.flip();
        return charBuffer;
    }

    /* renamed from: c */
    public static int m58487c(CharsetEncoder charsetEncoder, int i) {
        return (int) Math.ceil(i * charsetEncoder.averageBytesPerChar());
    }

    /* renamed from: d */
    public static int m58488d(CharsetEncoder charsetEncoder, int i) {
        return (int) Math.ceil(charsetEncoder.maxBytesPerChar() + ((i - 1) * charsetEncoder.averageBytesPerChar()));
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
    public boolean canEncode(String str) {
        return m58490f().canEncode(str);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
    public String decode(byte[] bArr) throws IOException {
        return m58489e().decode(ByteBuffer.wrap(bArr)).toString();
    }

    /* renamed from: e */
    public final CharsetDecoder m58489e() {
        return !this.f91069b ? this.f91068a.newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT) : this.f91068a.newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE).replaceWith(f91066e);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
    public ByteBuffer encode(String str) {
        CharsetEncoder m58490f = m58490f();
        CharBuffer wrap = CharBuffer.wrap(str);
        ByteBuffer allocate = ByteBuffer.allocate(m58488d(m58490f, wrap.remaining()));
        CharBuffer charBuffer = null;
        while (wrap.hasRemaining()) {
            CoderResult encode = m58490f.encode(wrap, allocate, false);
            if (encode.isUnmappable() || encode.isMalformed()) {
                if (m58487c(m58490f, encode.length() * 6) > allocate.remaining()) {
                    int i = 0;
                    for (int position = wrap.position(); position < wrap.limit(); position++) {
                        i += !m58490f.canEncode(wrap.get(position)) ? 6 : 1;
                    }
                    allocate = ZipEncodingHelper.m66532b(allocate, m58487c(m58490f, i) - allocate.remaining());
                }
                if (charBuffer == null) {
                    charBuffer = CharBuffer.allocate(6);
                }
                for (int i2 = 0; i2 < encode.length(); i2++) {
                    allocate = m58485a(m58490f, m58486b(charBuffer, wrap.get()), allocate);
                }
            } else if (!encode.isOverflow()) {
                if (encode.isUnderflow() || encode.isError()) {
                    break;
                }
            } else {
                allocate = ZipEncodingHelper.m66532b(allocate, m58487c(m58490f, wrap.remaining()));
            }
        }
        m58490f.encode(wrap, allocate, true);
        allocate.limit(allocate.position());
        allocate.rewind();
        return allocate;
    }

    /* renamed from: f */
    public final CharsetEncoder m58490f() {
        return this.f91069b ? this.f91068a.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE).replaceWith(f91065d) : this.f91068a.newEncoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT);
    }

    @Override // org.apache.commons.compress.archivers.zip.CharsetAccessor
    public Charset getCharset() {
        return this.f91068a;
    }
}
