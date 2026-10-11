package onyx.org.apache.commons.io.output;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import onyx.org.apache.commons.io.Charsets;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.input.XmlStreamReader;

/* loaded from: classes11.dex */
public class XmlStreamWriter extends Writer {

    /* renamed from: j */
    public static final int f104530j = 8192;

    /* renamed from: e */
    public final OutputStream f104531e;

    /* renamed from: f */
    public final Charset f104532f;

    /* renamed from: g */
    public StringWriter f104533g;

    /* renamed from: h */
    public Writer f104534h;

    /* renamed from: i */
    public Charset f104535i;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<XmlStreamWriter, Builder> {
        public Builder() {
            setCharsetDefault(StandardCharsets.UTF_8);
            setCharset(StandardCharsets.UTF_8);
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public XmlStreamWriter get() throws IOException {
            return new XmlStreamWriter(getOutputStream(), getCharset());
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f104534h == null) {
            this.f104535i = this.f104532f;
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.f104531e, this.f104535i);
            this.f104534h = outputStreamWriter;
            outputStreamWriter.write(this.f104533g.toString());
        }
        this.f104534h.close();
    }

    /* renamed from: f */
    public final void m65679f(char[] cArr, int i, int i2) throws IOException {
        StringBuffer buffer = this.f104533g.getBuffer();
        int length = buffer.length() + i2 > 8192 ? 8192 - buffer.length() : i2;
        this.f104533g.write(cArr, i, length);
        if (buffer.length() >= 5) {
            if (buffer.substring(0, 5).equals("<?xml")) {
                int indexOf = buffer.indexOf("?>");
                if (indexOf > 0) {
                    Matcher matcher = XmlStreamReader.ENCODING_PATTERN.matcher(buffer.substring(0, indexOf));
                    if (matcher.find()) {
                        String upperCase = matcher.group(1).toUpperCase(Locale.ROOT);
                        this.f104535i = Charset.forName(upperCase.substring(1, upperCase.length() - 1));
                    } else {
                        this.f104535i = this.f104532f;
                    }
                } else if (buffer.length() >= 8192) {
                    this.f104535i = this.f104532f;
                }
            } else {
                this.f104535i = this.f104532f;
            }
            if (this.f104535i != null) {
                this.f104533g = null;
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.f104531e, this.f104535i);
                this.f104534h = outputStreamWriter;
                outputStreamWriter.write(buffer.toString());
                if (i2 > length) {
                    this.f104534h.write(cArr, i + length, i2 - length);
                }
            }
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        Writer writer = this.f104534h;
        if (writer != null) {
            writer.flush();
        }
    }

    public String getDefaultEncoding() {
        return this.f104532f.name();
    }

    public String getEncoding() {
        return this.f104535i.name();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        if (this.f104533g != null) {
            m65679f(cArr, i, i2);
        } else {
            this.f104534h.write(cArr, i, i2);
        }
    }

    @Deprecated
    public XmlStreamWriter(File file) throws FileNotFoundException {
        this(file, (String) null);
    }

    @Deprecated
    public XmlStreamWriter(File file, String str) throws FileNotFoundException {
        this(new FileOutputStream(file), str);
    }

    @Deprecated
    public XmlStreamWriter(OutputStream outputStream) {
        this(outputStream, StandardCharsets.UTF_8);
    }

    public XmlStreamWriter(OutputStream outputStream, Charset charset) {
        this.f104533g = new StringWriter(8192);
        this.f104531e = outputStream;
        Objects.requireNonNull(charset);
        this.f104532f = charset;
    }

    @Deprecated
    public XmlStreamWriter(OutputStream outputStream, String str) {
        this(outputStream, Charsets.toCharset(str, StandardCharsets.UTF_8));
    }
}
