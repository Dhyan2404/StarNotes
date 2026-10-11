package org.mortbay.util;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import org.mortbay.log.Log;
import org.mortbay.thread.BoundedThreadPool;

/* renamed from: org.mortbay.util.IO */
/* loaded from: classes13.dex */
public class C20429IO extends BoundedThreadPool {
    public static final String CRLF = "\r\n";
    private static a __closedStream;
    private static c __nullStream;
    private static d __nullWriter;
    public static final byte[] CRLF_BYTES = {13, 10};
    public static int bufferSize = 16384;

    /* renamed from: org.mortbay.util.IO$a */
    /* loaded from: classes13.dex */
    public static class a extends InputStream {
        public a() {
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            return -1;
        }
    }

    /* renamed from: org.mortbay.util.IO$c */
    /* loaded from: classes13.dex */
    public static class c extends OutputStream {
        public c() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.OutputStream
        public void write(int i) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
        }
    }

    /* renamed from: org.mortbay.util.IO$d */
    /* loaded from: classes13.dex */
    public static class d extends Writer {
        public d() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i) {
        }

        @Override // java.io.Writer
        public void write(String str) {
        }

        @Override // java.io.Writer
        public void write(String str, int i, int i2) {
        }

        @Override // java.io.Writer
        public void write(char[] cArr) {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
        }
    }

    /* renamed from: org.mortbay.util.IO$e */
    /* loaded from: classes13.dex */
    public static class e {

        /* renamed from: a */
        public static final C20429IO f115313a;

        static {
            C20429IO c20429io = new C20429IO();
            f115313a = c20429io;
            try {
                c20429io.start();
            } catch (Exception e) {
                Log.warn(e);
                System.exit(1);
            }
        }
    }

    static {
        __nullStream = new c();
        __closedStream = new a();
        __nullWriter = new d();
    }

    public static void close(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.ignore(e2);
            }
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        copy(inputStream, outputStream, -1L);
    }

    public static void copyDir(File file, File file2) throws IOException {
        if (!file2.exists()) {
            file2.mkdirs();
        } else if (!file2.isDirectory()) {
            throw new IllegalArgumentException(file2.toString());
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (int i = 0; i < listFiles.length; i++) {
                String name = listFiles[i].getName();
                if (!".".equals(name) && !Constants.ATTRVAL_PARENT.equals(name)) {
                    copy(listFiles[i], new File(file2, name));
                }
            }
        }
    }

    public static void copyFile(File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        copy(fileInputStream, fileOutputStream);
        fileInputStream.close();
        fileOutputStream.close();
    }

    public static void copyThread(InputStream inputStream, OutputStream outputStream) {
        try {
            b bVar = new b(inputStream, outputStream);
            if (instance().dispatch(bVar)) {
                return;
            }
            bVar.run();
        } catch (Exception e2) {
            Log.warn(e2);
        }
    }

    public static boolean delete(File file) {
        if (!file.exists()) {
            return false;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            for (int i = 0; listFiles != null && i < listFiles.length; i++) {
                delete(listFiles[i]);
            }
        }
        return file.delete();
    }

    public static InputStream getClosedStream() {
        return __closedStream;
    }

    public static OutputStream getNullStream() {
        return __nullStream;
    }

    public static Writer getNullWriter() {
        return __nullWriter;
    }

    public static C20429IO instance() {
        return e.f115313a;
    }

    public static byte[] readBytes(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static String toString(InputStream inputStream) throws IOException {
        return toString(inputStream, null);
    }

    public static void copy(Reader reader, Writer writer) throws IOException {
        copy(reader, writer, -1L);
    }

    public static String toString(InputStream inputStream, String str) throws IOException {
        StringWriter stringWriter = new StringWriter();
        copy(str == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str), stringWriter);
        return stringWriter.toString();
    }

    public static void close(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                Log.ignore(e2);
            }
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        int read;
        byte[] bArr = new byte[bufferSize];
        if (j >= 0) {
            while (j > 0) {
                int i = bufferSize;
                if (j < i) {
                    read = inputStream.read(bArr, 0, (int) j);
                } else {
                    read = inputStream.read(bArr, 0, i);
                }
                if (read == -1) {
                    return;
                }
                j -= read;
                outputStream.write(bArr, 0, read);
            }
            return;
        }
        while (true) {
            int read2 = inputStream.read(bArr, 0, bufferSize);
            if (read2 < 0) {
                return;
            } else {
                outputStream.write(bArr, 0, read2);
            }
        }
    }

    /* renamed from: org.mortbay.util.IO$b */
    /* loaded from: classes13.dex */
    public static class b implements Runnable {

        /* renamed from: e */
        public InputStream f115309e;

        /* renamed from: f */
        public OutputStream f115310f;

        /* renamed from: g */
        public Reader f115311g;

        /* renamed from: h */
        public Writer f115312h;

        public b(InputStream inputStream, OutputStream outputStream) {
            this.f115309e = inputStream;
            this.f115310f = outputStream;
            this.f115311g = null;
            this.f115312h = null;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                InputStream inputStream = this.f115309e;
                if (inputStream != null) {
                    C20429IO.copy(inputStream, this.f115310f, -1L);
                } else {
                    C20429IO.copy(this.f115311g, this.f115312h, -1L);
                }
            } catch (IOException e) {
                Log.ignore(e);
                try {
                    OutputStream outputStream = this.f115310f;
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    Writer writer = this.f115312h;
                    if (writer != null) {
                        writer.close();
                    }
                } catch (IOException e2) {
                    Log.ignore(e2);
                }
            }
        }

        public b(Reader reader, Writer writer) {
            this.f115309e = null;
            this.f115310f = null;
            this.f115311g = reader;
            this.f115312h = writer;
        }
    }

    public static void copyThread(Reader reader, Writer writer) {
        try {
            b bVar = new b(reader, writer);
            if (instance().dispatch(bVar)) {
                return;
            }
            bVar.run();
        } catch (Exception e2) {
            Log.warn(e2);
        }
    }

    public static String toString(Reader reader) throws IOException {
        StringWriter stringWriter = new StringWriter();
        copy(reader, stringWriter);
        return stringWriter.toString();
    }

    public static void copy(Reader reader, Writer writer, long j) throws IOException {
        int read;
        int read2;
        char[] cArr = new char[bufferSize];
        if (j >= 0) {
            while (j > 0) {
                int i = bufferSize;
                if (j < i) {
                    read2 = reader.read(cArr, 0, (int) j);
                } else {
                    read2 = reader.read(cArr, 0, i);
                }
                if (read2 == -1) {
                    return;
                }
                j -= read2;
                writer.write(cArr, 0, read2);
            }
            return;
        }
        if (writer instanceof PrintWriter) {
            PrintWriter printWriter = (PrintWriter) writer;
            while (!printWriter.checkError() && (read = reader.read(cArr, 0, bufferSize)) != -1) {
                writer.write(cArr, 0, read);
            }
            return;
        }
        while (true) {
            int read3 = reader.read(cArr, 0, bufferSize);
            if (read3 == -1) {
                return;
            } else {
                writer.write(cArr, 0, read3);
            }
        }
    }

    public static void copy(File file, File file2) throws IOException {
        if (file.isDirectory()) {
            copyDir(file, file2);
        } else {
            copyFile(file, file2);
        }
    }
}
