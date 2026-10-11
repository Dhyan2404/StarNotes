package onyx.org.apache.commons.io.build;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.function.IntUnaryOperator;
import onyx.org.apache.commons.io.Charsets;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.file.PathUtils;

/* loaded from: classes11.dex */
public abstract class AbstractStreamBuilder<T, B extends AbstractStreamBuilder<T, B>> extends AbstractOriginSupplier<T, B> {

    /* renamed from: j */
    public static final int f104207j = Integer.MAX_VALUE;

    /* renamed from: k */
    public static final OpenOption[] f104208k = PathUtils.EMPTY_OPEN_OPTION_ARRAY;

    /* renamed from: b */
    public int f104209b = 8192;

    /* renamed from: c */
    public int f104210c = 8192;

    /* renamed from: d */
    public int f104211d = Integer.MAX_VALUE;

    /* renamed from: e */
    public Charset f104212e = Charset.defaultCharset();

    /* renamed from: f */
    public Charset f104213f = Charset.defaultCharset();

    /* renamed from: g */
    public OpenOption[] f104214g = f104208k;

    /* renamed from: h */
    public final IntUnaryOperator f104215h;

    /* renamed from: i */
    public IntUnaryOperator f104216i;

    public AbstractStreamBuilder() {
        IntUnaryOperator intUnaryOperator = new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.v4
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i) {
                int m65194e;
                m65194e = AbstractStreamBuilder.this.m65194e(i);
                return m65194e;
            }
        };
        this.f104215h = intUnaryOperator;
        this.f104216i = intUnaryOperator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ int m65194e(int i) {
        int i2 = this.f104211d;
        return i > i2 ? m65196f(i, i2) : i;
    }

    /* renamed from: d */
    public final int m65195d(int i) {
        return this.f104216i.applyAsInt(i);
    }

    /* renamed from: f */
    public final int m65196f(int i, int i2) {
        throw new IllegalArgumentException(String.format("Request %,d exceeds maximum %,d", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    public int getBufferSize() {
        return this.f104209b;
    }

    public int getBufferSizeDefault() {
        return this.f104210c;
    }

    public CharSequence getCharSequence() throws IOException {
        return checkOrigin().getCharSequence(getCharset());
    }

    public Charset getCharset() {
        return this.f104212e;
    }

    public Charset getCharsetDefault() {
        return this.f104213f;
    }

    public InputStream getInputStream() throws IOException {
        return checkOrigin().getInputStream(getOpenOptions());
    }

    public OpenOption[] getOpenOptions() {
        return this.f104214g;
    }

    public OutputStream getOutputStream() throws IOException {
        return checkOrigin().getOutputStream(getOpenOptions());
    }

    public Path getPath() {
        return checkOrigin().getPath();
    }

    public Reader getReader() throws IOException {
        return checkOrigin().getReader(getCharset());
    }

    public Writer getWriter() throws IOException {
        return checkOrigin().getWriter(getCharset(), getOpenOptions());
    }

    public B setBufferSize(int i) {
        if (i <= 0) {
            i = this.f104210c;
        }
        this.f104209b = m65195d(i);
        return (B) asThis();
    }

    public B setBufferSizeChecker(IntUnaryOperator intUnaryOperator) {
        if (intUnaryOperator == null) {
            intUnaryOperator = this.f104215h;
        }
        this.f104216i = intUnaryOperator;
        return (B) asThis();
    }

    public B setBufferSizeDefault(int i) {
        this.f104210c = i;
        return (B) asThis();
    }

    public B setBufferSizeMax(int i) {
        if (i <= 0) {
            i = Integer.MAX_VALUE;
        }
        this.f104211d = i;
        return (B) asThis();
    }

    public B setCharset(Charset charset) {
        this.f104212e = Charsets.toCharset(charset, this.f104213f);
        return (B) asThis();
    }

    public B setCharsetDefault(Charset charset) {
        this.f104213f = charset;
        return (B) asThis();
    }

    public B setOpenOptions(OpenOption... openOptionArr) {
        if (openOptionArr == null) {
            openOptionArr = f104208k;
        }
        this.f104214g = openOptionArr;
        return (B) asThis();
    }

    public B setBufferSize(Integer num) {
        setBufferSize(num != null ? num.intValue() : this.f104210c);
        return (B) asThis();
    }

    public B setCharset(String str) {
        return setCharset(Charsets.toCharset(str, this.f104213f));
    }
}
