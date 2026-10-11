package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.Objects;
import java.util.function.Supplier;
import onyx.org.apache.commons.io.Charsets;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.charset.CharsetEncoders;
import onyx.org.apache.commons.io.function.IOSupplier;
import onyx.org.apache.commons.io.function.Uncheck;
import onyx.org.apache.commons.io.input.CharSequenceInputStream;

/* loaded from: classes11.dex */
public class CharSequenceInputStream extends InputStream {

    /* renamed from: j */
    public static final int f104293j = -1;

    /* renamed from: e */
    public final ByteBuffer f104294e;

    /* renamed from: f */
    public int f104295f;

    /* renamed from: g */
    public final CharBuffer f104296g;

    /* renamed from: h */
    public int f104297h;

    /* renamed from: i */
    public final CharsetEncoder f104298i;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<CharSequenceInputStream, Builder> {

        /* renamed from: l */
        public CharsetEncoder f104299l = CharSequenceInputStream.m65425H(getCharset());

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j */
        public /* synthetic */ CharSequenceInputStream m65431j() throws IOException {
            return new CharSequenceInputStream(getCharSequence(), getBufferSize(), this.f104299l);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public /* synthetic */ CharsetEncoder m65432k() {
            return CharSequenceInputStream.m65425H(getCharsetDefault());
        }

        /* renamed from: i */
        public CharsetEncoder m65433i() {
            return this.f104299l;
        }

        public Builder setCharsetEncoder(CharsetEncoder charsetEncoder) {
            CharsetEncoder charsetEncoder2 = CharsetEncoders.toCharsetEncoder(charsetEncoder, new Supplier() { // from class: com.sunia.HTREnginev2.xqd
                @Override // java.util.function.Supplier
                public final Object get() {
                    CharsetEncoder m65432k;
                    m65432k = CharSequenceInputStream.Builder.this.m65432k();
                    return m65432k;
                }
            });
            this.f104299l = charsetEncoder2;
            super.setCharset(charsetEncoder2.charset());
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public CharSequenceInputStream get() {
            return (CharSequenceInputStream) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.wqd
                @Override // onyx.org.apache.commons.io.function.IOSupplier
                public final Object get() {
                    CharSequenceInputStream m65431j;
                    m65431j = CharSequenceInputStream.Builder.this.m65431j();
                    return m65431j;
                }
            });
        }

        @Override // onyx.org.apache.commons.io.build.AbstractStreamBuilder
        public Builder setCharset(Charset charset) {
            super.setCharset(charset);
            this.f104299l = CharSequenceInputStream.m65425H(getCharset());
            return this;
        }
    }

    /* renamed from: H */
    public static CharsetEncoder m65425H(Charset charset) {
        return Charsets.toCharset(charset).newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f104294e.remaining();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    /* renamed from: j */
    public final void m65427j() throws CharacterCodingException {
        this.f104294e.compact();
        CoderResult encode = this.f104298i.encode(this.f104296g, this.f104294e, true);
        if (encode.isError()) {
            encode.throwException();
        }
        this.f104294e.flip();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        this.f104297h = this.f104296g.position();
        this.f104295f = this.f104294e.position();
        this.f104296g.mark();
        this.f104294e.mark();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        while (!this.f104294e.hasRemaining()) {
            m65427j();
            if (!this.f104294e.hasRemaining() && !this.f104296g.hasRemaining()) {
                return -1;
            }
        }
        return this.f104294e.get() & 255;
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.f104297h != -1) {
            if (this.f104296g.position() != 0) {
                this.f104298i.reset();
                this.f104296g.rewind();
                this.f104294e.rewind();
                this.f104294e.limit(0);
                while (this.f104296g.position() < this.f104297h) {
                    this.f104294e.rewind();
                    this.f104294e.limit(0);
                    m65427j();
                }
            }
            if (this.f104296g.position() != this.f104297h) {
                throw new IllegalStateException("Unexpected CharBuffer position: actual=" + this.f104296g.position() + " expected=" + this.f104297h);
            }
            this.f104294e.position(this.f104295f);
            this.f104297h = -1;
            this.f104295f = -1;
        }
        mark(0);
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = 0;
        while (j > 0 && available() > 0) {
            read();
            j--;
            j2++;
        }
        return j2;
    }

    /* renamed from: w */
    public CharsetEncoder m65428w() {
        return this.f104298i;
    }

    @Deprecated
    public CharSequenceInputStream(CharSequence charSequence, Charset charset) {
        this(charSequence, charset, 8192);
    }

    @Deprecated
    public CharSequenceInputStream(CharSequence charSequence, Charset charset, int i) {
        this(charSequence, i, m65425H(charset));
    }

    public CharSequenceInputStream(CharSequence charSequence, int i, CharsetEncoder charsetEncoder) {
        this.f104298i = charsetEncoder;
        ByteBuffer allocate = ByteBuffer.allocate(ReaderInputStream.m65478j(charsetEncoder, i));
        this.f104294e = allocate;
        allocate.flip();
        this.f104296g = CharBuffer.wrap(charSequence);
        this.f104297h = -1;
        this.f104295f = -1;
        try {
            m65427j();
        } catch (CharacterCodingException unused) {
            this.f104294e.clear();
            this.f104294e.flip();
            this.f104296g.rewind();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        Objects.requireNonNull(bArr, "array");
        if (i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException("Array Size=" + bArr.length + ", offset=" + i + ", length=" + i2);
        }
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (!this.f104294e.hasRemaining() && !this.f104296g.hasRemaining()) {
            return -1;
        }
        while (i2 > 0) {
            if (this.f104294e.hasRemaining()) {
                int min = Math.min(this.f104294e.remaining(), i2);
                this.f104294e.get(bArr, i, min);
                i += min;
                i2 -= min;
                i3 += min;
            } else {
                m65427j();
                if (!this.f104294e.hasRemaining() && !this.f104296g.hasRemaining()) {
                    break;
                }
            }
        }
        if (i3 != 0 || this.f104296g.hasRemaining()) {
            return i3;
        }
        return -1;
    }

    @Deprecated
    public CharSequenceInputStream(CharSequence charSequence, String str) {
        this(charSequence, str, 8192);
    }

    @Deprecated
    public CharSequenceInputStream(CharSequence charSequence, String str, int i) {
        this(charSequence, Charsets.toCharset(str), i);
    }
}
