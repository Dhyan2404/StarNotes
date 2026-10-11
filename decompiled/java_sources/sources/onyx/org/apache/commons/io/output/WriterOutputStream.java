package onyx.org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import onyx.org.apache.commons.io.Charsets;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.charset.CharsetDecoders;

/* loaded from: classes11.dex */
public class WriterOutputStream extends OutputStream {

    /* renamed from: j */
    public static final int f104522j = 8192;

    /* renamed from: e */
    public final Writer f104523e;

    /* renamed from: f */
    public final CharsetDecoder f104524f;

    /* renamed from: g */
    public final boolean f104525g;

    /* renamed from: h */
    public final ByteBuffer f104526h;

    /* renamed from: i */
    public final CharBuffer f104527i;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<WriterOutputStream, Builder> {

        /* renamed from: l */
        public CharsetDecoder f104528l = getCharset().newDecoder();

        /* renamed from: m */
        public boolean f104529m;

        public Builder setCharsetDecoder(CharsetDecoder charsetDecoder) {
            if (charsetDecoder == null) {
                charsetDecoder = getCharsetDefault().newDecoder();
            }
            this.f104528l = charsetDecoder;
            super.setCharset(charsetDecoder.charset());
            return this;
        }

        public Builder setWriteImmediately(boolean z) {
            this.f104529m = z;
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public WriterOutputStream get() throws IOException {
            return new WriterOutputStream(getWriter(), this.f104528l, getBufferSize(), this.f104529m);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractStreamBuilder
        public Builder setCharset(Charset charset) {
            super.setCharset(charset);
            this.f104528l = getCharset().newDecoder();
            return this;
        }

        @Override // onyx.org.apache.commons.io.build.AbstractStreamBuilder
        public Builder setCharset(String str) {
            super.setCharset(str);
            this.f104528l = getCharset().newDecoder();
            return this;
        }
    }

    @Deprecated
    public WriterOutputStream(Writer writer) {
        this(writer, Charset.defaultCharset(), 8192, false);
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: f */
    public static void m65676f(Charset charset) {
        if (StandardCharsets.UTF_16.name().equals(charset.name())) {
            byte[] bytes = "vés".getBytes(charset);
            CharsetDecoder newDecoder = charset.newDecoder();
            ByteBuffer allocate = ByteBuffer.allocate(16);
            CharBuffer allocate2 = CharBuffer.allocate(3);
            int length = bytes.length;
            int i = 0;
            while (i < length) {
                allocate.put(bytes[i]);
                allocate.flip();
                try {
                    newDecoder.decode(allocate, allocate2, i == length + (-1));
                    allocate.compact();
                    i++;
                } catch (IllegalArgumentException unused) {
                    throw new UnsupportedOperationException("UTF-16 requested when running on an IBM JDK with broken UTF-16 support. Please find a JDK that supports UTF-16 if you intend to use UF-16 with WriterOutputStream");
                }
            }
            allocate2.rewind();
            if (!"vés".equals(allocate2.toString())) {
                throw new UnsupportedOperationException("UTF-16 requested when running on an IBM JDK with broken UTF-16 support. Please find a JDK that supports UTF-16 if you intend to use UF-16 with WriterOutputStream");
            }
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        m65678w(true);
        m65677j();
        this.f104523e.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        m65677j();
        this.f104523e.flush();
    }

    /* renamed from: j */
    public final void m65677j() throws IOException {
        if (this.f104527i.position() > 0) {
            this.f104523e.write(this.f104527i.array(), 0, this.f104527i.position());
            this.f104527i.rewind();
        }
    }

    /* renamed from: w */
    public final void m65678w(boolean z) throws IOException {
        CoderResult decode;
        this.f104526h.flip();
        while (true) {
            decode = this.f104524f.decode(this.f104526h, this.f104527i, z);
            if (!decode.isOverflow()) {
                break;
            } else {
                m65677j();
            }
        }
        if (!decode.isUnderflow()) {
            throw new IOException("Unexpected coder result");
        }
        this.f104526h.compact();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Deprecated
    public WriterOutputStream(Writer writer, Charset charset) {
        this(writer, charset, 8192, false);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int min = Math.min(i2, this.f104526h.remaining());
            this.f104526h.put(bArr, i, min);
            m65678w(false);
            i2 -= min;
            i += min;
        }
        if (this.f104525g) {
            m65677j();
        }
    }

    @Deprecated
    public WriterOutputStream(Writer writer, Charset charset, int i, boolean z) {
        this(writer, Charsets.toCharset(charset).newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE).replaceWith("?"), i, z);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Deprecated
    public WriterOutputStream(Writer writer, CharsetDecoder charsetDecoder) {
        this(writer, charsetDecoder, 8192, false);
    }

    @Deprecated
    public WriterOutputStream(Writer writer, CharsetDecoder charsetDecoder, int i, boolean z) {
        this.f104526h = ByteBuffer.allocate(128);
        m65676f(CharsetDecoders.toCharsetDecoder(charsetDecoder).charset());
        this.f104523e = writer;
        this.f104524f = CharsetDecoders.toCharsetDecoder(charsetDecoder);
        this.f104525g = z;
        this.f104527i = CharBuffer.allocate(i);
    }

    @Deprecated
    public WriterOutputStream(Writer writer, String str) {
        this(writer, str, 8192, false);
    }

    @Deprecated
    public WriterOutputStream(Writer writer, String str, int i, boolean z) {
        this(writer, Charsets.toCharset(str), i, z);
    }
}
