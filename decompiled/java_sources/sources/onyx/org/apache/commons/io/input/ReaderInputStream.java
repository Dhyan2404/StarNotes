package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.Objects;
import java.util.function.Supplier;
import onyx.org.apache.commons.io.Charsets;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.charset.CharsetEncoders;
import onyx.org.apache.commons.io.input.ReaderInputStream;

/* loaded from: classes11.dex */
public class ReaderInputStream extends InputStream {

    /* renamed from: e */
    public final Reader f104366e;

    /* renamed from: f */
    public final CharsetEncoder f104367f;

    /* renamed from: g */
    public final CharBuffer f104368g;

    /* renamed from: h */
    public final ByteBuffer f104369h;

    /* renamed from: i */
    public CoderResult f104370i;

    /* renamed from: j */
    public boolean f104371j;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<ReaderInputStream, Builder> {

        /* renamed from: l */
        public CharsetEncoder f104372l = ReaderInputStream.m65476M(getCharset());

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i */
        public /* synthetic */ CharsetEncoder m65482i() {
            return ReaderInputStream.m65476M(getCharsetDefault());
        }

        /* renamed from: h */
        public CharsetEncoder m65483h() {
            return this.f104372l;
        }

        public Builder setCharsetEncoder(CharsetEncoder charsetEncoder) {
            CharsetEncoder charsetEncoder2 = CharsetEncoders.toCharsetEncoder(charsetEncoder, new Supplier() { // from class: com.sunia.HTREnginev2.edl
                @Override // java.util.function.Supplier
                public final Object get() {
                    CharsetEncoder m65482i;
                    m65482i = ReaderInputStream.Builder.this.m65482i();
                    return m65482i;
                }
            });
            this.f104372l = charsetEncoder2;
            super.setCharset(charsetEncoder2.charset());
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public ReaderInputStream get() throws IOException {
            return new ReaderInputStream(getReader(), this.f104372l, getBufferSize());
        }

        @Override // onyx.org.apache.commons.io.build.AbstractStreamBuilder
        public Builder setCharset(Charset charset) {
            super.setCharset(charset);
            this.f104372l = ReaderInputStream.m65476M(getCharset());
            return this;
        }
    }

    @Deprecated
    public ReaderInputStream(Reader reader) {
        this(reader, Charset.defaultCharset());
    }

    /* renamed from: I */
    public static float m65475I(CharsetEncoder charsetEncoder) {
        return charsetEncoder.maxBytesPerChar() * 2.0f;
    }

    /* renamed from: M */
    public static CharsetEncoder m65476M(Charset charset) {
        return Charsets.toCharset(charset).newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: j */
    public static int m65478j(CharsetEncoder charsetEncoder, int i) {
        float m65475I = m65475I(charsetEncoder);
        if (i >= m65475I) {
            return i;
        }
        throw new IllegalArgumentException(String.format("Buffer size %,d must be at least %s for a CharsetEncoder %s.", Integer.valueOf(i), Float.valueOf(m65475I), charsetEncoder.charset().displayName()));
    }

    /* renamed from: H */
    public CharsetEncoder m65479H() {
        return this.f104367f;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f104366e.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        while (!this.f104369h.hasRemaining()) {
            m65480w();
            if (this.f104371j && !this.f104369h.hasRemaining()) {
                return -1;
            }
        }
        return this.f104369h.get() & 255;
    }

    /* renamed from: w */
    public final void m65480w() throws IOException {
        CoderResult coderResult;
        boolean z = this.f104371j;
        if (z) {
            return;
        }
        if (!z && ((coderResult = this.f104370i) == null || coderResult.isUnderflow())) {
            this.f104368g.compact();
            int position = this.f104368g.position();
            int read = this.f104366e.read(this.f104368g.array(), position, this.f104368g.remaining());
            if (read == -1) {
                this.f104371j = true;
            } else {
                this.f104368g.position(position + read);
            }
            this.f104368g.flip();
        }
        this.f104369h.compact();
        this.f104370i = this.f104367f.encode(this.f104368g, this.f104369h, this.f104371j);
        if (this.f104371j) {
            this.f104370i = this.f104367f.flush(this.f104369h);
        }
        if (this.f104370i.isError()) {
            this.f104370i.throwException();
        }
        this.f104369h.flip();
    }

    @Deprecated
    public ReaderInputStream(Reader reader, Charset charset) {
        this(reader, charset, 8192);
    }

    @Deprecated
    public ReaderInputStream(Reader reader, Charset charset, int i) {
        this(reader, Charsets.toCharset(charset).newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE), i);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        Objects.requireNonNull(bArr, "array");
        if (i2 < 0 || i < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException("Array size=" + bArr.length + ", offset=" + i + ", length=" + i2);
        }
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        while (i2 > 0) {
            if (this.f104369h.hasRemaining()) {
                int min = Math.min(this.f104369h.remaining(), i2);
                this.f104369h.get(bArr, i, min);
                i += min;
                i2 -= min;
                i3 += min;
            } else {
                if (this.f104371j) {
                    break;
                }
                m65480w();
            }
        }
        if (i3 == 0 && this.f104371j) {
            return -1;
        }
        return i3;
    }

    @Deprecated
    public ReaderInputStream(Reader reader, CharsetEncoder charsetEncoder) {
        this(reader, charsetEncoder, 8192);
    }

    @Deprecated
    public ReaderInputStream(Reader reader, CharsetEncoder charsetEncoder, int i) {
        this.f104366e = reader;
        CharsetEncoder charsetEncoder2 = CharsetEncoders.toCharsetEncoder(charsetEncoder);
        this.f104367f = charsetEncoder2;
        CharBuffer allocate = CharBuffer.allocate(m65478j(charsetEncoder2, i));
        this.f104368g = allocate;
        allocate.flip();
        ByteBuffer allocate2 = ByteBuffer.allocate(128);
        this.f104369h = allocate2;
        allocate2.flip();
    }

    @Deprecated
    public ReaderInputStream(Reader reader, String str) {
        this(reader, str, 8192);
    }

    @Deprecated
    public ReaderInputStream(Reader reader, String str, int i) {
        this(reader, Charsets.toCharset(str), i);
    }
}
