package onyx.org.apache.commons.io.input;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import onyx.org.apache.commons.io.Charsets;
import onyx.org.apache.commons.io.FileSystem;
import onyx.org.apache.commons.io.StandardLineSeparator;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;

/* loaded from: classes11.dex */
public class ReversedLinesFileReader implements Closeable {

    /* renamed from: o */
    public static final String f104373o = "";

    /* renamed from: p */
    public static final int f104374p = FileSystem.getCurrent().getBlockSize();

    /* renamed from: e */
    public final int f104375e;

    /* renamed from: f */
    public final Charset f104376f;

    /* renamed from: g */
    public final SeekableByteChannel f104377g;

    /* renamed from: h */
    public final long f104378h;

    /* renamed from: i */
    public final long f104379i;

    /* renamed from: j */
    public final byte[][] f104380j;

    /* renamed from: k */
    public final int f104381k;

    /* renamed from: l */
    public final int f104382l;

    /* renamed from: m */
    public C18648b f104383m;

    /* renamed from: n */
    public boolean f104384n;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<ReversedLinesFileReader, Builder> {
        public Builder() {
            setBufferSizeDefault(ReversedLinesFileReader.f104374p);
            setBufferSize(ReversedLinesFileReader.f104374p);
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public ReversedLinesFileReader get() throws IOException {
            return new ReversedLinesFileReader(getPath(), getBufferSize(), getCharset());
        }
    }

    /* renamed from: onyx.org.apache.commons.io.input.ReversedLinesFileReader$b */
    /* loaded from: classes11.dex */
    public final class C18648b {

        /* renamed from: a */
        public final long f104385a;

        /* renamed from: b */
        public final byte[] f104386b;

        /* renamed from: c */
        public byte[] f104387c;

        /* renamed from: d */
        public int f104388d;

        /* renamed from: c */
        public final void m65493c() {
            int i = this.f104388d + 1;
            if (i > 0) {
                this.f104387c = Arrays.copyOf(this.f104386b, i);
            } else {
                this.f104387c = null;
            }
            this.f104388d = -1;
        }

        /* renamed from: d */
        public final int m65494d(byte[] bArr, int i) {
            for (byte[] bArr2 : ReversedLinesFileReader.this.f104380j) {
                boolean z = true;
                for (int length = bArr2.length - 1; length >= 0; length--) {
                    int length2 = (i + length) - (bArr2.length - 1);
                    z &= length2 >= 0 && bArr[length2] == bArr2[length];
                }
                if (z) {
                    return bArr2.length;
                }
            }
            return 0;
        }

        /* renamed from: e */
        public final String m65495e() {
            String str;
            byte[] bArr;
            boolean z = this.f104385a == 1;
            int i = this.f104388d;
            while (true) {
                if (i > -1) {
                    if (!z && i < ReversedLinesFileReader.this.f104381k) {
                        m65493c();
                        break;
                    }
                    int m65494d = m65494d(this.f104386b, i);
                    if (m65494d > 0) {
                        int i2 = i + 1;
                        int i3 = (this.f104388d - i2) + 1;
                        if (i3 < 0) {
                            throw new IllegalStateException("Unexpected negative line length=" + i3);
                        }
                        str = new String(Arrays.copyOfRange(this.f104386b, i2, i3 + i2), ReversedLinesFileReader.this.f104376f);
                        this.f104388d = i - m65494d;
                    } else {
                        i -= ReversedLinesFileReader.this.f104382l;
                        if (i < 0) {
                            m65493c();
                            break;
                        }
                    }
                } else {
                    break;
                }
            }
            str = null;
            if (!z || (bArr = this.f104387c) == null) {
                return str;
            }
            String str2 = new String(bArr, ReversedLinesFileReader.this.f104376f);
            this.f104387c = null;
            return str2;
        }

        /* renamed from: f */
        public final C18648b m65496f() throws IOException {
            if (this.f104388d > -1) {
                throw new IllegalStateException("Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=" + this.f104388d);
            }
            long j = this.f104385a;
            if (j > 1) {
                ReversedLinesFileReader reversedLinesFileReader = ReversedLinesFileReader.this;
                return new C18648b(j - 1, reversedLinesFileReader.f104375e, this.f104387c);
            }
            if (this.f104387c == null) {
                return null;
            }
            throw new IllegalStateException("Unexpected leftover of the last block: leftOverOfThisFilePart=" + new String(this.f104387c, ReversedLinesFileReader.this.f104376f));
        }

        public C18648b(long j, int i, byte[] bArr) throws IOException {
            this.f104385a = j;
            byte[] bArr2 = new byte[(bArr != null ? bArr.length : 0) + i];
            this.f104386b = bArr2;
            long j2 = (j - 1) * ReversedLinesFileReader.this.f104375e;
            if (j > 0) {
                ReversedLinesFileReader.this.f104377g.position(j2);
                if (ReversedLinesFileReader.this.f104377g.read(ByteBuffer.wrap(bArr2, 0, i)) != i) {
                    throw new IllegalStateException("Count of requested bytes and actually read bytes don't match");
                }
            }
            if (bArr != null) {
                System.arraycopy(bArr, 0, bArr2, i, bArr.length);
            }
            this.f104388d = bArr2.length - 1;
            this.f104387c = null;
        }
    }

    @Deprecated
    public ReversedLinesFileReader(File file) throws IOException {
        this(file, f104374p, Charset.defaultCharset());
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f104377g.close();
    }

    public String readLine() throws IOException {
        String m65495e = this.f104383m.m65495e();
        while (m65495e == null) {
            C18648b m65496f = this.f104383m.m65496f();
            this.f104383m = m65496f;
            if (m65496f == null) {
                break;
            }
            m65495e = m65496f.m65495e();
        }
        if (!"".equals(m65495e) || this.f104384n) {
            return m65495e;
        }
        this.f104384n = true;
        return readLine();
    }

    public List<String> readLines(int i) throws IOException {
        if (i < 0) {
            throw new IllegalArgumentException("lineCount < 0");
        }
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            String readLine = readLine();
            if (readLine == null) {
                return arrayList;
            }
            arrayList.add(readLine);
        }
        return arrayList;
    }

    public String toString(int i) throws IOException {
        List<String> readLines = readLines(i);
        Collections.reverse(readLines);
        if (readLines.isEmpty()) {
            return "";
        }
        return String.join(System.lineSeparator(), readLines) + System.lineSeparator();
    }

    @Deprecated
    public ReversedLinesFileReader(File file, Charset charset) throws IOException {
        this(file.toPath(), charset);
    }

    @Deprecated
    public ReversedLinesFileReader(File file, int i, Charset charset) throws IOException {
        this(file.toPath(), i, charset);
    }

    @Deprecated
    public ReversedLinesFileReader(File file, int i, String str) throws IOException {
        this(file.toPath(), i, str);
    }

    @Deprecated
    public ReversedLinesFileReader(Path path, Charset charset) throws IOException {
        this(path, f104374p, charset);
    }

    @Deprecated
    public ReversedLinesFileReader(Path path, int i, Charset charset) throws IOException {
        int i2;
        this.f104375e = i;
        Charset charset2 = Charsets.toCharset(charset);
        this.f104376f = charset2;
        if (charset2.newEncoder().maxBytesPerChar() != 1.0f && charset2 != StandardCharsets.UTF_8) {
            if (charset2 != Charset.forName("Shift_JIS") && charset2 != Charset.forName("windows-31j") && charset2 != Charset.forName("x-windows-949") && charset2 != Charset.forName("gbk") && charset2 != Charset.forName("x-windows-950")) {
                if (charset2 != StandardCharsets.UTF_16BE && charset2 != StandardCharsets.UTF_16LE) {
                    if (charset2 == StandardCharsets.UTF_16) {
                        throw new UnsupportedEncodingException("For UTF-16, you need to specify the byte order (use UTF-16BE or UTF-16LE)");
                    }
                    throw new UnsupportedEncodingException("Encoding " + charset + " is not supported yet (feel free to submit a patch)");
                }
                this.f104382l = 2;
            } else {
                this.f104382l = 1;
            }
        } else {
            this.f104382l = 1;
        }
        byte[][] bArr = {StandardLineSeparator.CRLF.getBytes(charset2), StandardLineSeparator.LF.getBytes(charset2), StandardLineSeparator.CR.getBytes(charset2)};
        this.f104380j = bArr;
        this.f104381k = bArr[0].length;
        SeekableByteChannel newByteChannel = Files.newByteChannel(path, StandardOpenOption.READ);
        this.f104377g = newByteChannel;
        long size = newByteChannel.size();
        this.f104378h = size;
        long j = i;
        int i3 = (int) (size % j);
        if (i3 > 0) {
            this.f104379i = (size / j) + 1;
        } else {
            this.f104379i = size / j;
            if (size > 0) {
                i2 = i;
                this.f104383m = new C18648b(this.f104379i, i2, null);
            }
        }
        i2 = i3;
        this.f104383m = new C18648b(this.f104379i, i2, null);
    }

    @Deprecated
    public ReversedLinesFileReader(Path path, int i, String str) throws IOException {
        this(path, i, Charsets.toCharset(str));
    }
}
