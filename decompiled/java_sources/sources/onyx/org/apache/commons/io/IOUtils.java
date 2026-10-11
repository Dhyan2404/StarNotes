package onyx.org.apache.commons.io;

import com.sunia.HTREnginev2.jvd;
import com.sunia.HTREnginev2.kig;
import com.sunia.HTREnginev2.mfi;
import com.sunia.HTREnginev2.tfi;
import com.sunia.HTREnginev2.ufi;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.CharArrayWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.UncheckedIOException;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.Selector;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.IOUtils;
import onyx.org.apache.commons.io.function.IOConsumer;
import onyx.org.apache.commons.io.function.IOFunction;
import onyx.org.apache.commons.io.function.IOSupplier;
import onyx.org.apache.commons.io.function.IOTriFunction;
import onyx.org.apache.commons.io.input.QueueInputStream;
import onyx.org.apache.commons.io.output.AppendableWriter;
import onyx.org.apache.commons.io.output.ByteArrayOutputStream;
import onyx.org.apache.commons.io.output.NullOutputStream;
import onyx.org.apache.commons.io.output.NullWriter;
import onyx.org.apache.commons.io.output.StringBuilderWriter;
import onyx.org.apache.commons.io.output.ThresholdingOutputStream;
import onyx.org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;

/* loaded from: classes11.dex */
public class IOUtils {

    /* renamed from: CR */
    public static final int f104191CR = 13;
    public static final int DEFAULT_BUFFER_SIZE = 8192;
    public static final char DIR_SEPARATOR_UNIX = '/';
    public static final char DIR_SEPARATOR_WINDOWS = '\\';
    public static final int EOF = -1;

    /* renamed from: LF */
    public static final int f104192LF = 10;
    public static final char DIR_SEPARATOR = File.separatorChar;
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];

    @Deprecated
    public static final String LINE_SEPARATOR = System.lineSeparator();
    public static final String LINE_SEPARATOR_UNIX = StandardLineSeparator.LF.getString();
    public static final String LINE_SEPARATOR_WINDOWS = StandardLineSeparator.CRLF.getString();

    /* renamed from: a */
    public static final ThreadLocal<byte[]> f104193a = ThreadLocal.withInitial(new Supplier() { // from class: com.sunia.HTREnginev2.qfi
        @Override // java.util.function.Supplier
        public final Object get() {
            return IOUtils.byteArray();
        }
    });

    /* renamed from: b */
    public static final byte[] f104194b = byteArray();

    /* renamed from: c */
    public static final ThreadLocal<char[]> f104195c = ThreadLocal.withInitial(new Supplier() { // from class: com.sunia.HTREnginev2.sfi
        @Override // java.util.function.Supplier
        public final Object get() {
            char[] m65172e;
            m65172e = IOUtils.m65172e();
            return m65172e;
        }
    });

    /* renamed from: d */
    public static final char[] f104196d = m65172e();

    @Deprecated
    public IOUtils() {
    }

    public static BufferedInputStream buffer(InputStream inputStream) {
        Objects.requireNonNull(inputStream, "inputStream");
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream);
    }

    public static byte[] byteArray() {
        return byteArray(8192);
    }

    public static void close(Closeable closeable) throws IOException {
        if (closeable != null) {
            closeable.close();
        }
    }

    public static void closeQuietly(Closeable closeable) {
        closeQuietly(closeable, null);
    }

    public static long consume(InputStream inputStream) throws IOException {
        return copyLarge(inputStream, NullOutputStream.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001a, code lost:
    
        if (r5 == r4) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001c, code lost:
    
        r8 = r9.read(r2, r5, 8192 - r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        if (r8 == 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
    
        if (r8 != (-1)) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0031, code lost:
    
        r5 = r5 + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0026, code lost:
    
        if (r6 != r4) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002c, code lost:
    
        if (r10.read() != (-1)) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0030, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0032, code lost:
    
        if (r6 != r4) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0034, code lost:
    
        r8 = r10.read(r3, r6, 8192 - r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x003a, code lost:
    
        if (r8 == 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x003c, code lost:
    
        if (r8 != (-1)) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0049, code lost:
    
        r6 = r6 + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x003e, code lost:
    
        if (r5 != r4) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0044, code lost:
    
        if (r9.read() != (-1)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0048, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x004e, code lost:
    
        if (r2[r4] == r3[r4]) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0051, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0050, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean contentEquals(java.io.InputStream r9, java.io.InputStream r10) throws java.io.IOException {
        /*
            r0 = 1
            if (r9 != r10) goto L4
            return r0
        L4:
            r1 = 0
            if (r9 == 0) goto L54
            if (r10 != 0) goto La
            goto L54
        La:
            byte[] r2 = m65181n()
            byte[] r3 = byteArray()
        L12:
            r4 = r1
            r5 = r4
            r6 = r5
        L15:
            r7 = 8192(0x2000, float:1.14794E-41)
            if (r4 >= r7) goto L12
            r7 = -1
            if (r5 != r4) goto L32
        L1c:
            int r8 = 8192 - r5
            int r8 = r9.read(r2, r5, r8)
            if (r8 == 0) goto L1c
            if (r8 != r7) goto L31
            if (r6 != r4) goto L2f
            int r9 = r10.read()
            if (r9 != r7) goto L2f
            goto L30
        L2f:
            r0 = r1
        L30:
            return r0
        L31:
            int r5 = r5 + r8
        L32:
            if (r6 != r4) goto L4a
        L34:
            int r8 = 8192 - r6
            int r8 = r10.read(r3, r6, r8)
            if (r8 == 0) goto L34
            if (r8 != r7) goto L49
            if (r5 != r4) goto L47
            int r9 = r9.read()
            if (r9 != r7) goto L47
            goto L48
        L47:
            r0 = r1
        L48:
            return r0
        L49:
            int r6 = r6 + r8
        L4a:
            r7 = r2[r4]
            r8 = r3[r4]
            if (r7 == r8) goto L51
            return r1
        L51:
            int r4 = r4 + 1
            goto L15
        L54:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: onyx.org.apache.commons.io.IOUtils.contentEquals(java.io.InputStream, java.io.InputStream):boolean");
    }

    public static boolean contentEqualsIgnoreEOL(Reader reader, Reader reader2) throws UncheckedIOException {
        if (reader == reader2) {
            return true;
        }
        if (reader == null || reader2 == null) {
            return false;
        }
        return m65178k(toBufferedReader(reader), toBufferedReader(reader2));
    }

    public static int copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        long copyLarge = copyLarge(inputStream, outputStream);
        if (copyLarge > 2147483647L) {
            return -1;
        }
        return (int) copyLarge;
    }

    public static long copyLarge(InputStream inputStream, OutputStream outputStream) throws IOException {
        return copy(inputStream, outputStream, 8192);
    }

    /* renamed from: e */
    public static char[] m65172e() {
        return m65173f(8192);
    }

    /* renamed from: f */
    public static char[] m65173f(int i) {
        return new char[i];
    }

    /* renamed from: g */
    public static void m65174g() {
        f104193a.remove();
        f104195c.remove();
        Arrays.fill(f104194b, (byte) 0);
        Arrays.fill(f104196d, (char) 0);
    }

    /* renamed from: h */
    public static void m65175h(Closeable closeable) {
        closeQuietly(closeable, null);
    }

    /* renamed from: i */
    public static boolean m65176i(Iterator<?> it2, Iterator<?> it3) {
        while (it2.hasNext()) {
            if (!it3.hasNext() || !Objects.equals(it2.next(), it3.next())) {
                return false;
            }
        }
        return !it3.hasNext();
    }

    /* renamed from: j */
    public static boolean m65177j(Stream<?> stream, Stream<?> stream2) {
        if (stream == stream2) {
            return true;
        }
        if (stream == null || stream2 == null) {
            return false;
        }
        return m65176i(stream.iterator(), stream2.iterator());
    }

    /* renamed from: k */
    public static boolean m65178k(BufferedReader bufferedReader, BufferedReader bufferedReader2) {
        if (bufferedReader == bufferedReader2) {
            return true;
        }
        if (bufferedReader == null || bufferedReader2 == null) {
            return false;
        }
        return m65177j(bufferedReader.lines(), bufferedReader2.lines());
    }

    /* renamed from: l */
    public static byte[] m65179l(byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        return bArr;
    }

    public static int length(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public static LineIterator lineIterator(InputStream inputStream, Charset charset) {
        return new LineIterator(new InputStreamReader(inputStream, Charsets.toCharset(charset)));
    }

    /* renamed from: m */
    public static char[] m65180m(char[] cArr) {
        Arrays.fill(cArr, (char) 0);
        return cArr;
    }

    /* renamed from: n */
    public static byte[] m65181n() {
        return m65179l(f104193a.get());
    }

    /* renamed from: o */
    public static byte[] m65182o() {
        return m65179l(f104194b);
    }

    /* renamed from: p */
    public static char[] m65183p() {
        return m65180m(f104195c.get());
    }

    /* renamed from: q */
    public static char[] m65184q() {
        return m65180m(f104196d);
    }

    /* renamed from: r */
    public static /* synthetic */ void m65185r(ThresholdingOutputStream thresholdingOutputStream) throws IOException {
        throw new IllegalArgumentException(String.format("Cannot read more than %,d into a byte array", Integer.MAX_VALUE));
    }

    public static int read(InputStream inputStream, byte[] bArr) throws IOException {
        return read(inputStream, bArr, 0, bArr.length);
    }

    public static void readFully(InputStream inputStream, byte[] bArr) throws IOException {
        readFully(inputStream, bArr, 0, bArr.length);
    }

    @Deprecated
    public static List<String> readLines(InputStream inputStream) throws UncheckedIOException {
        return readLines(inputStream, Charset.defaultCharset());
    }

    public static byte[] resourceToByteArray(String str) throws IOException {
        return resourceToByteArray(str, null);
    }

    public static String resourceToString(String str, Charset charset) throws IOException {
        return resourceToString(str, charset, null);
    }

    public static URL resourceToURL(String str) throws IOException {
        return resourceToURL(str, null);
    }

    /* renamed from: s */
    public static /* synthetic */ OutputStream m65186s(UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream, ThresholdingOutputStream thresholdingOutputStream) throws IOException {
        return unsynchronizedByteArrayOutputStream;
    }

    public static long skip(InputStream inputStream, long j) throws IOException {
        return skip(inputStream, j, new ufi());
    }

    public static void skipFully(InputStream inputStream, long j) throws IOException {
        long skip = skip(inputStream, j, new ufi());
        if (skip == j) {
            return;
        }
        throw new EOFException("Bytes to skip: " + j + " actual: " + skip);
    }

    /* renamed from: t */
    public static /* synthetic */ String m65187t() throws IOException {
        throw new NullPointerException("input");
    }

    public static InputStream toBufferedInputStream(InputStream inputStream) throws IOException {
        return ByteArrayOutputStream.toBufferedInputStream(inputStream);
    }

    public static BufferedReader toBufferedReader(Reader reader) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader);
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        final UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = UnsynchronizedByteArrayOutputStream.builder().get();
        try {
            ThresholdingOutputStream thresholdingOutputStream = new ThresholdingOutputStream(Integer.MAX_VALUE, new IOConsumer() { // from class: com.sunia.HTREnginev2.wfi
                @Override // onyx.org.apache.commons.io.function.IOConsumer
                public final void accept(Object obj) {
                    IOUtils.m65185r((ThresholdingOutputStream) obj);
                }
            }, new IOFunction() { // from class: com.sunia.HTREnginev2.xfi
                @Override // onyx.org.apache.commons.io.function.IOFunction
                public final Object apply(Object obj) {
                    OutputStream m65186s;
                    m65186s = IOUtils.m65186s(UnsynchronizedByteArrayOutputStream.this, (ThresholdingOutputStream) obj);
                    return m65186s;
                }
            });
            try {
                copy(inputStream, thresholdingOutputStream);
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                thresholdingOutputStream.close();
                unsynchronizedByteArrayOutputStream.close();
                return byteArray;
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (unsynchronizedByteArrayOutputStream != null) {
                    try {
                        unsynchronizedByteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Deprecated
    public static char[] toCharArray(InputStream inputStream) throws IOException {
        return toCharArray(inputStream, Charset.defaultCharset());
    }

    @Deprecated
    public static InputStream toInputStream(CharSequence charSequence) {
        return toInputStream(charSequence, Charset.defaultCharset());
    }

    @Deprecated
    public static String toString(byte[] bArr) {
        return new String(bArr, Charset.defaultCharset());
    }

    /* renamed from: u */
    public static int m65188u(IOTriFunction<byte[], Integer, Integer, Integer> iOTriFunction, byte[] bArr, int i, int i2) throws IOException {
        if (i2 < 0) {
            throw new IllegalArgumentException("Length must not be negative: " + i2);
        }
        int i3 = i2;
        while (i3 > 0) {
            int intValue = iOTriFunction.apply(bArr, Integer.valueOf((i2 - i3) + i), Integer.valueOf(i3)).intValue();
            if (-1 == intValue) {
                break;
            }
            i3 -= intValue;
        }
        return i2 - i3;
    }

    /* renamed from: v */
    public static byte[] m65189v(IOTriFunction<byte[], Integer, Integer, Integer> iOTriFunction, int i) throws IOException {
        if (i < 0) {
            throw new IllegalArgumentException("Size must be equal or greater than zero: " + i);
        }
        if (i == 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] byteArray = byteArray(i);
        int i2 = 0;
        while (i2 < i) {
            int intValue = iOTriFunction.apply(byteArray, Integer.valueOf(i2), Integer.valueOf(i - i2)).intValue();
            if (intValue == -1) {
                break;
            }
            i2 += intValue;
        }
        if (i2 == i) {
            return byteArray;
        }
        throw new IOException("Unexpected read size, current: " + i2 + ", expected: " + i);
    }

    public static void write(byte[] bArr, OutputStream outputStream) throws IOException {
        if (bArr != null) {
            outputStream.write(bArr);
        }
    }

    public static void writeChunked(byte[] bArr, OutputStream outputStream) throws IOException {
        if (bArr != null) {
            int length = bArr.length;
            int i = 0;
            while (length > 0) {
                int min = Math.min(length, 8192);
                outputStream.write(bArr, i, min);
                length -= min;
                i += min;
            }
        }
    }

    @Deprecated
    public static void writeLines(Collection<?> collection, String str, OutputStream outputStream) throws IOException {
        writeLines(collection, str, outputStream, Charset.defaultCharset());
    }

    public static Writer writer(Appendable appendable) {
        Objects.requireNonNull(appendable, "appendable");
        return appendable instanceof Writer ? (Writer) appendable : appendable instanceof StringBuilder ? new StringBuilderWriter((StringBuilder) appendable) : new AppendableWriter(appendable);
    }

    public static byte[] byteArray(int i) {
        return new byte[i];
    }

    public static void close(Closeable... closeableArr) throws IOExceptionList {
        IOConsumer.forAll(new IOConsumer() { // from class: com.sunia.HTREnginev2.vfi
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                IOUtils.close((Closeable) obj);
            }
        }, closeableArr);
    }

    public static void closeQuietly(Closeable... closeableArr) {
        if (closeableArr != null) {
            closeQuietly((Stream<Closeable>) Arrays.stream(closeableArr));
        }
    }

    public static long consume(Reader reader) throws IOException {
        return copyLarge(reader, NullWriter.INSTANCE);
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        return copyLarge(inputStream, outputStream, byteArray(i));
    }

    public static long copyLarge(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
        Objects.requireNonNull(inputStream, "inputStream");
        Objects.requireNonNull(outputStream, "outputStream");
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 == read) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
    }

    public static int length(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        return cArr.length;
    }

    public static LineIterator lineIterator(InputStream inputStream, String str) {
        return lineIterator(inputStream, Charsets.toCharset(str));
    }

    public static int read(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        inputStream.getClass();
        return m65188u(new tfi(inputStream), bArr, i, i2);
    }

    public static void readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int read = read(inputStream, bArr, i, i2);
        if (read == i2) {
            return;
        }
        throw new EOFException("Length to read: " + i2 + " actual: " + read);
    }

    public static List<String> readLines(InputStream inputStream, Charset charset) throws UncheckedIOException {
        return readLines(new InputStreamReader(inputStream, Charsets.toCharset(charset)));
    }

    public static byte[] resourceToByteArray(String str, ClassLoader classLoader) throws IOException {
        return toByteArray(resourceToURL(str, classLoader));
    }

    public static String resourceToString(String str, Charset charset, ClassLoader classLoader) throws IOException {
        return toString(resourceToURL(str, classLoader), charset);
    }

    public static URL resourceToURL(String str, ClassLoader classLoader) throws IOException {
        URL resource = classLoader == null ? IOUtils.class.getResource(str) : classLoader.getResource(str);
        if (resource != null) {
            return resource;
        }
        throw new IOException("Resource not found: " + str);
    }

    public static long skip(InputStream inputStream, long j, Supplier<byte[]> supplier) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("Skip count must be non-negative, actual: " + j);
        }
        long j2 = j;
        while (j2 > 0) {
            long read = inputStream.read(supplier.get(), 0, (int) Math.min(j2, r4.length));
            if (read < 0) {
                break;
            }
            j2 -= read;
        }
        return j - j2;
    }

    public static InputStream toBufferedInputStream(InputStream inputStream, int i) throws IOException {
        return ByteArrayOutputStream.toBufferedInputStream(inputStream, i);
    }

    public static BufferedReader toBufferedReader(Reader reader, int i) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    public static char[] toCharArray(InputStream inputStream, Charset charset) throws IOException {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        copy(inputStream, charArrayWriter, charset);
        return charArrayWriter.toCharArray();
    }

    public static InputStream toInputStream(CharSequence charSequence, Charset charset) {
        return toInputStream(charSequence.toString(), charset);
    }

    public static String toString(byte[] bArr, String str) {
        return new String(bArr, Charsets.toCharset(str));
    }

    @Deprecated
    public static void write(byte[] bArr, Writer writer) throws IOException {
        write(bArr, writer, Charset.defaultCharset());
    }

    public static void writeLines(Collection<?> collection, String str, OutputStream outputStream, Charset charset) throws IOException {
        if (collection == null) {
            return;
        }
        if (str == null) {
            str = System.lineSeparator();
        }
        if (StandardCharsets.UTF_16.equals(charset)) {
            charset = StandardCharsets.UTF_16BE;
        }
        byte[] bytes = str.getBytes(charset);
        for (Object obj : collection) {
            if (obj != null) {
                write(obj.toString(), outputStream, charset);
            }
            outputStream.write(bytes);
        }
    }

    public static BufferedInputStream buffer(InputStream inputStream, int i) {
        Objects.requireNonNull(inputStream, "inputStream");
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i);
    }

    public static void close(Closeable closeable, IOConsumer<IOException> iOConsumer) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                if (iOConsumer != null) {
                    iOConsumer.accept(e);
                }
            }
        }
    }

    public static void closeQuietly(Closeable closeable, Consumer<IOException> consumer) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                if (consumer != null) {
                    consumer.accept(e);
                }
            }
        }
    }

    @Deprecated
    public static void copy(InputStream inputStream, Writer writer) throws IOException {
        copy(inputStream, writer, Charset.defaultCharset());
    }

    public static int length(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    public static LineIterator lineIterator(Reader reader) {
        return new LineIterator(reader);
    }

    public static int read(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws IOException {
        int remaining = byteBuffer.remaining();
        while (byteBuffer.remaining() > 0 && -1 != readableByteChannel.read(byteBuffer)) {
        }
        return remaining - byteBuffer.remaining();
    }

    public static List<String> readLines(InputStream inputStream, String str) throws UncheckedIOException {
        return readLines(inputStream, Charsets.toCharset(str));
    }

    public static void skipFully(InputStream inputStream, long j, Supplier<byte[]> supplier) throws IOException {
        if (j >= 0) {
            long skip = skip(inputStream, j, supplier);
            if (skip == j) {
                return;
            }
            throw new EOFException("Bytes to skip: " + j + " actual: " + skip);
        }
        throw new IllegalArgumentException("Bytes to skip must not be negative: " + j);
    }

    public static InputStream toInputStream(CharSequence charSequence, String str) {
        return toInputStream(charSequence, Charsets.toCharset(str));
    }

    @Deprecated
    public static String toString(InputStream inputStream) throws IOException {
        return toString(inputStream, Charset.defaultCharset());
    }

    public static void write(byte[] bArr, Writer writer, Charset charset) throws IOException {
        if (bArr != null) {
            writer.write(new String(bArr, Charsets.toCharset(charset)));
        }
    }

    public static void copy(InputStream inputStream, Writer writer, Charset charset) throws IOException {
        copy((Reader) new InputStreamReader(inputStream, Charsets.toCharset(charset)), writer);
    }

    public static int length(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    public static byte[] readFully(InputStream inputStream, int i) throws IOException {
        byte[] byteArray = byteArray(i);
        readFully(inputStream, byteArray, 0, byteArray.length);
        return byteArray;
    }

    public static List<String> readLines(Reader reader) throws UncheckedIOException {
        return (List) toBufferedReader(reader).lines().collect(Collectors.toList());
    }

    @Deprecated
    public static InputStream toInputStream(String str) {
        return toInputStream(str, Charset.defaultCharset());
    }

    public static String toString(InputStream inputStream, Charset charset) throws IOException {
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter();
        try {
            copy(inputStream, stringBuilderWriter, charset);
            String stringBuilderWriter2 = stringBuilderWriter.toString();
            stringBuilderWriter.close();
            return stringBuilderWriter2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    stringBuilderWriter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void write(byte[] bArr, Writer writer, String str) throws IOException {
        write(bArr, writer, Charsets.toCharset(str));
    }

    public static void writeChunked(char[] cArr, Writer writer) throws IOException {
        if (cArr != null) {
            int length = cArr.length;
            int i = 0;
            while (length > 0) {
                int min = Math.min(length, 8192);
                writer.write(cArr, i, min);
                length -= min;
                i += min;
            }
        }
    }

    public static BufferedOutputStream buffer(OutputStream outputStream) {
        Objects.requireNonNull(outputStream, "outputStream");
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream);
    }

    public static void close(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
    }

    public static void closeQuietly(InputStream inputStream) {
        m65175h(inputStream);
    }

    public static long skip(ReadableByteChannel readableByteChannel, long j) throws IOException {
        if (j >= 0) {
            ByteBuffer allocate = ByteBuffer.allocate((int) Math.min(j, 8192L));
            long j2 = j;
            while (j2 > 0) {
                allocate.position(0);
                allocate.limit((int) Math.min(j2, 8192L));
                int read = readableByteChannel.read(allocate);
                if (read == -1) {
                    break;
                }
                j2 -= read;
            }
            return j - j2;
        }
        throw new IllegalArgumentException("Skip count must be non-negative, actual: " + j);
    }

    public static char[] toCharArray(InputStream inputStream, String str) throws IOException {
        return toCharArray(inputStream, Charsets.toCharset(str));
    }

    public static InputStream toInputStream(String str, Charset charset) {
        return new ByteArrayInputStream(str.getBytes(Charsets.toCharset(charset)));
    }

    @Deprecated
    public static void write(char[] cArr, OutputStream outputStream) throws IOException {
        write(cArr, outputStream, Charset.defaultCharset());
    }

    public static void closeQuietly(Iterable<Closeable> iterable) {
        if (iterable != null) {
            iterable.forEach(new mfi());
        }
    }

    public static void copy(InputStream inputStream, Writer writer, String str) throws IOException {
        copy(inputStream, writer, Charsets.toCharset(str));
    }

    public static long copyLarge(InputStream inputStream, OutputStream outputStream, long j, long j2) throws IOException {
        return copyLarge(inputStream, outputStream, j, j2, m65181n());
    }

    public static void readFully(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws IOException {
        int remaining = byteBuffer.remaining();
        int read = read(readableByteChannel, byteBuffer);
        if (read == remaining) {
            return;
        }
        throw new EOFException("Length to read: " + remaining + " actual: " + read);
    }

    public static void skipFully(ReadableByteChannel readableByteChannel, long j) throws IOException {
        if (j >= 0) {
            long skip = skip(readableByteChannel, j);
            if (skip == j) {
                return;
            }
            throw new EOFException("Bytes to skip: " + j + " actual: " + skip);
        }
        throw new IllegalArgumentException("Bytes to skip must not be negative: " + j);
    }

    public static char[] toCharArray(Reader reader) throws IOException {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        copy(reader, (Writer) charArrayWriter);
        return charArrayWriter.toCharArray();
    }

    public static InputStream toInputStream(String str, String str2) {
        return new ByteArrayInputStream(str.getBytes(Charsets.toCharset(str2)));
    }

    public static void write(char[] cArr, OutputStream outputStream, Charset charset) throws IOException {
        if (cArr != null) {
            write(new String(cArr), outputStream, charset);
        }
    }

    public static BufferedOutputStream buffer(OutputStream outputStream, int i) {
        Objects.requireNonNull(outputStream, "outputStream");
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i);
    }

    public static void closeQuietly(OutputStream outputStream) {
        m65175h(outputStream);
    }

    public static QueueInputStream copy(java.io.ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        Objects.requireNonNull(byteArrayOutputStream, "outputStream");
        QueueInputStream queueInputStream = new QueueInputStream();
        byteArrayOutputStream.writeTo(queueInputStream.newQueueOutputStream());
        return queueInputStream;
    }

    public static long copyLarge(InputStream inputStream, OutputStream outputStream, long j, long j2, byte[] bArr) throws IOException {
        long j3 = 0;
        if (j > 0) {
            skipFully(inputStream, j);
        }
        if (j2 == 0) {
            return 0L;
        }
        int length = bArr.length;
        int i = (j2 <= 0 || j2 >= ((long) length)) ? length : (int) j2;
        while (i > 0) {
            int read = inputStream.read(bArr, 0, i);
            if (-1 == read) {
                break;
            }
            outputStream.write(bArr, 0, read);
            j3 += read;
            if (j2 > 0) {
                i = (int) Math.min(j2 - j3, length);
            }
        }
        return j3;
    }

    public static int read(Reader reader, char[] cArr) throws IOException {
        return read(reader, cArr, 0, cArr.length);
    }

    public static void write(char[] cArr, OutputStream outputStream, String str) throws IOException {
        write(cArr, outputStream, Charsets.toCharset(str));
    }

    public static void closeQuietly(Reader reader) {
        m65175h(reader);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001a, code lost:
    
        if (r5 == r4) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001c, code lost:
    
        r8 = r9.read(r2, r5, 8192 - r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        if (r8 == 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
    
        if (r8 != (-1)) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0031, code lost:
    
        r5 = r5 + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0026, code lost:
    
        if (r6 != r4) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002c, code lost:
    
        if (r10.read() != (-1)) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0030, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0032, code lost:
    
        if (r6 != r4) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0034, code lost:
    
        r8 = r10.read(r3, r6, 8192 - r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x003a, code lost:
    
        if (r8 == 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x003c, code lost:
    
        if (r8 != (-1)) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0049, code lost:
    
        r6 = r6 + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x003e, code lost:
    
        if (r5 != r4) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0044, code lost:
    
        if (r9.read() != (-1)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0048, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x004e, code lost:
    
        if (r2[r4] == r3[r4]) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0051, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0050, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean contentEquals(java.io.Reader r9, java.io.Reader r10) throws java.io.IOException {
        /*
            r0 = 1
            if (r9 != r10) goto L4
            return r0
        L4:
            r1 = 0
            if (r9 == 0) goto L54
            if (r10 != 0) goto La
            goto L54
        La:
            char[] r2 = m65183p()
            char[] r3 = m65172e()
        L12:
            r4 = r1
            r5 = r4
            r6 = r5
        L15:
            r7 = 8192(0x2000, float:1.14794E-41)
            if (r4 >= r7) goto L12
            r7 = -1
            if (r5 != r4) goto L32
        L1c:
            int r8 = 8192 - r5
            int r8 = r9.read(r2, r5, r8)
            if (r8 == 0) goto L1c
            if (r8 != r7) goto L31
            if (r6 != r4) goto L2f
            int r9 = r10.read()
            if (r9 != r7) goto L2f
            goto L30
        L2f:
            r0 = r1
        L30:
            return r0
        L31:
            int r5 = r5 + r8
        L32:
            if (r6 != r4) goto L4a
        L34:
            int r8 = 8192 - r6
            int r8 = r10.read(r3, r6, r8)
            if (r8 == 0) goto L34
            if (r8 != r7) goto L49
            if (r5 != r4) goto L47
            int r9 = r9.read()
            if (r9 != r7) goto L47
            goto L48
        L47:
            r0 = r1
        L48:
            return r0
        L49:
            int r6 = r6 + r8
        L4a:
            char r7 = r2[r4]
            char r8 = r3[r4]
            if (r7 == r8) goto L51
            return r1
        L51:
            int r4 = r4 + 1
            goto L15
        L54:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: onyx.org.apache.commons.io.IOUtils.contentEquals(java.io.Reader, java.io.Reader):boolean");
    }

    public static int read(Reader reader, char[] cArr, int i, int i2) throws IOException {
        if (i2 < 0) {
            throw new IllegalArgumentException("Length must not be negative: " + i2);
        }
        int i3 = i2;
        while (i3 > 0) {
            int read = reader.read(cArr, (i2 - i3) + i, i3);
            if (-1 == read) {
                break;
            }
            i3 -= read;
        }
        return i2 - i3;
    }

    public static void write(char[] cArr, Writer writer) throws IOException {
        if (cArr != null) {
            writer.write(cArr);
        }
    }

    public static BufferedReader buffer(Reader reader) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader);
    }

    public static void closeQuietly(Selector selector) {
        m65175h(selector);
    }

    public static void readFully(Reader reader, char[] cArr) throws IOException {
        readFully(reader, cArr, 0, cArr.length);
    }

    public static void skipFully(Reader reader, long j) throws IOException {
        long skip = skip(reader, j);
        if (skip == j) {
            return;
        }
        throw new EOFException("Chars to skip: " + j + " actual: " + skip);
    }

    @Deprecated
    public static void write(CharSequence charSequence, OutputStream outputStream) throws IOException {
        write(charSequence, outputStream, Charset.defaultCharset());
    }

    public static void writeLines(Collection<?> collection, String str, OutputStream outputStream, String str2) throws IOException {
        writeLines(collection, str, outputStream, Charsets.toCharset(str2));
    }

    public static BufferedReader buffer(Reader reader, int i) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    public static void closeQuietly(ServerSocket serverSocket) {
        m65175h(serverSocket);
    }

    public static long copy(Reader reader, Appendable appendable) throws IOException {
        return copy(reader, appendable, CharBuffer.allocate(8192));
    }

    public static void readFully(Reader reader, char[] cArr, int i, int i2) throws IOException {
        int read = read(reader, cArr, i, i2);
        if (read == i2) {
            return;
        }
        throw new EOFException("Length to read: " + i2 + " actual: " + read);
    }

    public static long skip(Reader reader, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("Skip count must be non-negative, actual: " + j);
        }
        long j2 = j;
        while (j2 > 0) {
            long read = reader.read(m65184q(), 0, (int) Math.min(j2, r4.length));
            if (read < 0) {
                break;
            }
            j2 -= read;
        }
        return j - j2;
    }

    public static byte[] toByteArray(InputStream inputStream, int i) throws IOException {
        if (i == 0) {
            return EMPTY_BYTE_ARRAY;
        }
        Objects.requireNonNull(inputStream, "input");
        return m65189v(new tfi(inputStream), i);
    }

    public static String toString(InputStream inputStream, String str) throws IOException {
        return toString(inputStream, Charsets.toCharset(str));
    }

    public static void write(CharSequence charSequence, OutputStream outputStream, Charset charset) throws IOException {
        if (charSequence != null) {
            write(charSequence.toString(), outputStream, charset);
        }
    }

    public static void writeLines(Collection<?> collection, String str, Writer writer) throws IOException {
        if (collection == null) {
            return;
        }
        if (str == null) {
            str = System.lineSeparator();
        }
        for (Object obj : collection) {
            if (obj != null) {
                writer.write(obj.toString());
            }
            writer.write(str);
        }
    }

    public static BufferedWriter buffer(Writer writer) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer);
    }

    public static void closeQuietly(Socket socket) {
        m65175h(socket);
    }

    public static long copy(Reader reader, Appendable appendable, CharBuffer charBuffer) throws IOException {
        long j = 0;
        while (true) {
            int read = reader.read(charBuffer);
            if (-1 == read) {
                return j;
            }
            charBuffer.flip();
            appendable.append(charBuffer, 0, read);
            j += read;
        }
    }

    public static String toString(IOSupplier<InputStream> iOSupplier, Charset charset) throws IOException {
        return toString(iOSupplier, charset, new IOSupplier() { // from class: com.sunia.HTREnginev2.ofi
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                String m65187t;
                m65187t = IOUtils.m65187t();
                return m65187t;
            }
        });
    }

    public static void write(CharSequence charSequence, OutputStream outputStream, String str) throws IOException {
        write(charSequence, outputStream, Charsets.toCharset(str));
    }

    public static BufferedWriter buffer(Writer writer, int i) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i);
    }

    public static void closeQuietly(Stream<Closeable> stream) {
        if (stream != null) {
            stream.forEach(new mfi());
        }
    }

    public static long copyLarge(Reader reader, Writer writer) throws IOException {
        return copyLarge(reader, writer, m65183p());
    }

    public static byte[] toByteArray(InputStream inputStream, long j) throws IOException {
        if (j <= 2147483647L) {
            return toByteArray(inputStream, (int) j);
        }
        throw new IllegalArgumentException("Size cannot be greater than Integer max value: " + j);
    }

    public static String toString(IOSupplier<InputStream> iOSupplier, Charset charset, IOSupplier<String> iOSupplier2) throws IOException {
        if (iOSupplier == null) {
            return iOSupplier2.get();
        }
        InputStream inputStream = iOSupplier.get();
        try {
            String iOUtils = inputStream != null ? toString(inputStream, charset) : iOSupplier2.get();
            if (inputStream != null) {
                inputStream.close();
            }
            return iOUtils;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static void write(CharSequence charSequence, Writer writer) throws IOException {
        if (charSequence != null) {
            write(charSequence.toString(), writer);
        }
    }

    public static void closeQuietly(Writer writer) {
        m65175h(writer);
    }

    public static long copyLarge(Reader reader, Writer writer, char[] cArr) throws IOException {
        long j = 0;
        while (true) {
            int read = reader.read(cArr);
            if (-1 == read) {
                return j;
            }
            writer.write(cArr, 0, read);
            j += read;
        }
    }

    @Deprecated
    public static void write(String str, OutputStream outputStream) throws IOException {
        write(str, outputStream, Charset.defaultCharset());
    }

    @Deprecated
    public static void copy(Reader reader, OutputStream outputStream) throws IOException {
        copy(reader, outputStream, Charset.defaultCharset());
    }

    @Deprecated
    public static byte[] toByteArray(Reader reader) throws IOException {
        return toByteArray(reader, Charset.defaultCharset());
    }

    public static void write(String str, OutputStream outputStream, Charset charset) throws IOException {
        if (str != null) {
            Channels.newChannel(outputStream).write(Charsets.toCharset(charset).encode(str));
        }
    }

    public static void copy(Reader reader, OutputStream outputStream, Charset charset) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, Charsets.toCharset(charset));
        copy(reader, (Writer) outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static long copyLarge(Reader reader, Writer writer, long j, long j2) throws IOException {
        return copyLarge(reader, writer, j, j2, m65183p());
    }

    public static byte[] toByteArray(Reader reader, Charset charset) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            copy(reader, byteArrayOutputStream, charset);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void write(String str, OutputStream outputStream, String str2) throws IOException {
        write(str, outputStream, Charsets.toCharset(str2));
    }

    public static long copyLarge(Reader reader, Writer writer, long j, long j2, char[] cArr) throws IOException {
        long j3 = 0;
        if (j > 0) {
            skipFully(reader, j);
        }
        if (j2 == 0) {
            return 0L;
        }
        int length = cArr.length;
        if (j2 > 0 && j2 < cArr.length) {
            length = (int) j2;
        }
        while (length > 0) {
            int read = reader.read(cArr, 0, length);
            if (-1 == read) {
                break;
            }
            writer.write(cArr, 0, read);
            j3 += read;
            if (j2 > 0) {
                length = (int) Math.min(j2 - j3, cArr.length);
            }
        }
        return j3;
    }

    public static void write(String str, Writer writer) throws IOException {
        if (str != null) {
            writer.write(str);
        }
    }

    @Deprecated
    public static void write(StringBuffer stringBuffer, OutputStream outputStream) throws IOException {
        write(stringBuffer, outputStream, (String) null);
    }

    public static void copy(Reader reader, OutputStream outputStream, String str) throws IOException {
        copy(reader, outputStream, Charsets.toCharset(str));
    }

    public static String toString(Reader reader) throws IOException {
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter();
        try {
            copy(reader, (Writer) stringBuilderWriter);
            String stringBuilderWriter2 = stringBuilderWriter.toString();
            stringBuilderWriter.close();
            return stringBuilderWriter2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    stringBuilderWriter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Deprecated
    public static void write(StringBuffer stringBuffer, OutputStream outputStream, String str) throws IOException {
        if (stringBuffer != null) {
            write(stringBuffer.toString(), outputStream, Charsets.toCharset(str));
        }
    }

    public static int copy(Reader reader, Writer writer) throws IOException {
        long copyLarge = copyLarge(reader, writer);
        if (copyLarge > 2147483647L) {
            return -1;
        }
        return (int) copyLarge;
    }

    @Deprecated
    public static void write(StringBuffer stringBuffer, Writer writer) throws IOException {
        if (stringBuffer != null) {
            writer.write(stringBuffer.toString());
        }
    }

    public static long copy(URL url, File file) throws IOException {
        Objects.requireNonNull(file, "file");
        OutputStream newOutputStream = Files.newOutputStream(file.toPath(), new OpenOption[0]);
        try {
            long copy = copy(url, newOutputStream);
            if (newOutputStream != null) {
                newOutputStream.close();
            }
            return copy;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newOutputStream != null) {
                    try {
                        newOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static byte[] toByteArray(Reader reader, String str) throws IOException {
        return toByteArray(reader, Charsets.toCharset(str));
    }

    @Deprecated
    public static byte[] toByteArray(String str) {
        return str.getBytes(Charset.defaultCharset());
    }

    public static byte[] toByteArray(URI uri) throws IOException {
        return toByteArray(uri.toURL());
    }

    public static byte[] toByteArray(URL url) throws IOException {
        jvd m55053j = jvd.m55053j(url);
        try {
            byte[] byteArray = toByteArray(m55053j);
            if (m55053j != null) {
                m55053j.close();
            }
            return byteArray;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (m55053j != null) {
                    try {
                        m55053j.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Deprecated
    public static String toString(URI uri) throws IOException {
        return toString(uri, Charset.defaultCharset());
    }

    public static long copy(URL url, OutputStream outputStream) throws IOException {
        Objects.requireNonNull(url, "url");
        InputStream openStream = url.openStream();
        try {
            long copyLarge = copyLarge(openStream, outputStream);
            if (openStream != null) {
                openStream.close();
            }
            return copyLarge;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (openStream != null) {
                    try {
                        openStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static String toString(URI uri, Charset charset) throws IOException {
        return toString(uri.toURL(), Charsets.toCharset(charset));
    }

    public static String toString(URI uri, String str) throws IOException {
        return toString(uri, Charsets.toCharset(str));
    }

    @Deprecated
    public static String toString(URL url) throws IOException {
        return toString(url, Charset.defaultCharset());
    }

    public static String toString(URL url, Charset charset) throws IOException {
        url.getClass();
        return toString(new kig(url), charset);
    }

    public static byte[] toByteArray(URLConnection uRLConnection) throws IOException {
        InputStream inputStream = uRLConnection.getInputStream();
        try {
            byte[] byteArray = toByteArray(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
            return byteArray;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static String toString(URL url, String str) throws IOException {
        return toString(url, Charsets.toCharset(str));
    }
}
