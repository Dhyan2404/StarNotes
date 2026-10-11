package com.twelvemonkeys.io;

import com.twelvemonkeys.lang.DateUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;

/* loaded from: classes10.dex */
public class WriterOutputStream extends OutputStream {

    /* renamed from: g */
    public static final boolean f94264g = m60694w();
    protected final InterfaceC16979b decoder;

    /* renamed from: e */
    public final ByteArrayOutputStream f94265e;

    /* renamed from: f */
    public volatile boolean f94266f;
    protected Writer writer;

    /* renamed from: com.twelvemonkeys.io.WriterOutputStream$a */
    /* loaded from: classes10.dex */
    public static final class C16978a implements InterfaceC16979b {

        /* renamed from: a */
        public final Charset f94267a;

        public C16978a(String str) {
            this.f94267a = Charset.forName(str == null ? System.getProperty("file.encoding", "ISO-8859-1") : str);
        }

        @Override // com.twelvemonkeys.io.WriterOutputStream.InterfaceC16979b
        /* renamed from: a */
        public void mo60696a(Writer writer, byte[] bArr, int i, int i2) throws IOException {
            CharBuffer decode = this.f94267a.decode(ByteBuffer.wrap(bArr, i, i2));
            writer.write(decode.array(), 0, decode.length());
        }
    }

    /* renamed from: com.twelvemonkeys.io.WriterOutputStream$b */
    /* loaded from: classes10.dex */
    public interface InterfaceC16979b {
        /* renamed from: a */
        void mo60696a(Writer writer, byte[] bArr, int i, int i2) throws IOException;
    }

    /* renamed from: com.twelvemonkeys.io.WriterOutputStream$c */
    /* loaded from: classes10.dex */
    public static final class C16980c implements InterfaceC16979b {

        /* renamed from: a */
        public final String f94268a;

        public C16980c(String str) {
            this.f94268a = str;
        }

        @Override // com.twelvemonkeys.io.WriterOutputStream.InterfaceC16979b
        /* renamed from: a */
        public void mo60696a(Writer writer, byte[] bArr, int i, int i2) throws IOException {
            String str = this.f94268a;
            writer.write(str == null ? new String(bArr, i, i2) : new String(bArr, i, i2, str));
        }
    }

    public WriterOutputStream(Writer writer, String str) {
        this.f94265e = new FastByteArrayOutputStream(1024);
        this.f94266f = false;
        this.writer = writer;
        this.decoder = m60693j(str);
    }

    /* renamed from: j */
    public static InterfaceC16979b m60693j(String str) {
        return f94264g ? new C16978a(str) : new C16980c(str);
    }

    public static void main(String[] strArr) throws IOException {
        byte[] bytes = "������ klashf lkash ljah lhaaklhghdfgu ksd".getBytes("UTF-8");
        PrintWriter printWriter = new PrintWriter(new NullOutputStream());
        C16980c c16980c = new C16980c("UTF-8");
        for (int i = 0; i < 10000; i++) {
            c16980c.mo60696a(printWriter, bytes, 0, bytes.length);
        }
        long currentTimeMillis = System.currentTimeMillis();
        for (int i2 = 0; i2 < 1000000; i2++) {
            c16980c.mo60696a(printWriter, bytes, 0, bytes.length);
        }
        long delta = DateUtil.delta(currentTimeMillis);
        System.out.println("StringDecoder");
        System.out.println("time: " + delta);
        StringWriter stringWriter = new StringWriter();
        c16980c.mo60696a(stringWriter, bytes, 0, bytes.length);
        String stringWriter2 = stringWriter.toString();
        System.out.println("str: \"" + stringWriter2 + "\"");
        System.out.println("chars.length: " + stringWriter2.length());
        System.out.println();
        if (f94264g) {
            C16978a c16978a = new C16978a("UTF-8");
            for (int i3 = 0; i3 < 10000; i3++) {
                c16978a.mo60696a(printWriter, bytes, 0, bytes.length);
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            for (int i4 = 0; i4 < 1000000; i4++) {
                c16978a.mo60696a(printWriter, bytes, 0, bytes.length);
            }
            long delta2 = DateUtil.delta(currentTimeMillis2);
            System.out.println("CharsetDecoder");
            System.out.println("time: " + delta2);
            StringWriter stringWriter3 = new StringWriter();
            c16978a.mo60696a(stringWriter3, bytes, 0, bytes.length);
            String stringWriter4 = stringWriter3.toString();
            System.out.println("str: \"" + stringWriter4 + "\"");
            System.out.println("chars.length: " + stringWriter4.length());
            System.out.println();
        }
        WriterOutputStream writerOutputStream = new WriterOutputStream(new PrintWriter(System.out), "UTF-8");
        writerOutputStream.write(bytes);
        writerOutputStream.flush();
        System.out.println();
        for (byte b : bytes) {
            writerOutputStream.write(b & 255);
        }
        writerOutputStream.flush();
    }

    /* renamed from: w */
    public static boolean m60694w() {
        try {
            Class.forName("java.nio.charset.Charset");
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        flush();
        this.writer.close();
        this.writer = null;
    }

    /* renamed from: f */
    public final void m60695f() throws IOException {
        if (this.f94266f || this.f94265e.size() <= 0) {
            return;
        }
        this.f94266f = true;
        this.f94265e.writeTo(this);
        this.f94265e.reset();
        this.f94266f = false;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        m60695f();
        this.writer.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        if (bArr != null) {
            write(bArr, 0, bArr.length);
            return;
        }
        throw new NullPointerException("bytes == null");
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        m60695f();
        this.decoder.mo60696a(this.writer, bArr, i, i2);
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.f94265e.write(i);
    }

    public WriterOutputStream(Writer writer) {
        this(writer, null);
    }
}
