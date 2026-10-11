package com.dropbox.core.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.CharacterCodingException;

/* loaded from: classes4.dex */
public class IOUtil {
    public static final int DEFAULT_COPY_BUFFER_SIZE = 16384;
    public static final InputStream EmptyInputStream = new C2308a();
    public static final OutputStream BlackHoleOutputStream = new C2309b();

    /* loaded from: classes4.dex */
    public interface ProgressListener {
        void onProgress(long j);
    }

    /* loaded from: classes4.dex */
    public static final class ReadException extends WrappedException {
        private static final long serialVersionUID = 0;

        public ReadException(String str, IOException iOException) {
            super(str, iOException);
        }

        public ReadException(IOException iOException) {
            super(iOException);
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class WrappedException extends IOException {
        private static final long serialVersionUID = 0;

        public WrappedException(String str, IOException iOException) {
            super(str + ": " + iOException.getMessage(), iOException);
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            String message = super.getCause().getMessage();
            return message == null ? "" : message;
        }

        public WrappedException(IOException iOException) {
            super(iOException);
        }

        @Override // java.lang.Throwable
        public IOException getCause() {
            return (IOException) super.getCause();
        }
    }

    /* loaded from: classes4.dex */
    public static final class WriteException extends WrappedException {
        private static final long serialVersionUID = 0;

        public WriteException(String str, IOException iOException) {
            super(str, iOException);
        }

        public WriteException(IOException iOException) {
            super(iOException);
        }
    }

    /* renamed from: com.dropbox.core.util.IOUtil$a */
    /* loaded from: classes4.dex */
    public static class C2308a extends InputStream {
        @Override // java.io.InputStream
        public int read() {
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) {
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            return -1;
        }
    }

    /* renamed from: com.dropbox.core.util.IOUtil$b */
    /* loaded from: classes4.dex */
    public static class C2309b extends OutputStream {
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

    public static void closeInput(InputStream inputStream) {
        try {
            inputStream.close();
        } catch (IOException unused) {
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void copyStreamToStream(InputStream inputStream, OutputStream outputStream) throws ReadException, WriteException {
        copyStreamToStream(inputStream, outputStream, 16384);
    }

    public static InputStream limit(InputStream inputStream, long j) {
        return new C2310c(inputStream, j);
    }

    public static byte[] slurp(InputStream inputStream, int i) throws IOException {
        return slurp(inputStream, i, new byte[16384]);
    }

    public static String toUtf8String(InputStream inputStream) throws ReadException, CharacterCodingException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            copyStreamToStream(inputStream, byteArrayOutputStream);
            return StringUtil.utf8ToString(byteArrayOutputStream.toByteArray());
        } catch (WriteException e) {
            throw new RuntimeException("impossible", e);
        }
    }

    public static Reader utf8Reader(InputStream inputStream) {
        return new InputStreamReader(inputStream, StringUtil.UTF8.newDecoder());
    }

    public static Writer utf8Writer(OutputStream outputStream) {
        return new OutputStreamWriter(outputStream, StringUtil.UTF8.newEncoder());
    }

    public void copyFileToStream(File file, OutputStream outputStream) throws ReadException, WriteException {
        copyFileToStream(file, outputStream, 16384);
    }

    public void copyStreamToFile(InputStream inputStream, File file) throws ReadException, WriteException {
        copyStreamToFile(inputStream, file, 16384);
    }

    public static void closeInput(Reader reader) {
        try {
            reader.close();
        } catch (IOException unused) {
        }
    }

    public static void copyStreamToStream(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws ReadException, WriteException {
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return;
                }
                try {
                    outputStream.write(bArr, 0, read);
                } catch (IOException e) {
                    throw new WriteException(e);
                }
            } catch (IOException e2) {
                throw new ReadException(e2);
            }
        }
    }

    public static byte[] slurp(InputStream inputStream, int i, byte[] bArr) throws IOException {
        if (i >= 0) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            copyStreamToStream(inputStream, byteArrayOutputStream, bArr);
            return byteArrayOutputStream.toByteArray();
        }
        throw new RuntimeException("'byteLimit' must be non-negative: " + i);
    }

    public void copyFileToStream(File file, OutputStream outputStream, int i) throws ReadException, WriteException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                copyStreamToStream(fileInputStream, outputStream, i);
            } finally {
                closeInput(fileInputStream);
            }
        } catch (IOException e) {
            throw new ReadException(e);
        }
    }

    public void copyStreamToFile(InputStream inputStream, File file, int i) throws ReadException, WriteException {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                copyStreamToStream(inputStream, fileOutputStream, i);
                try {
                    fileOutputStream.close();
                } catch (IOException e) {
                    throw new WriteException(e);
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                    throw th;
                } catch (IOException e2) {
                    throw new WriteException(e2);
                }
            }
        } catch (IOException e3) {
            throw new WriteException(e3);
        }
    }

    /* renamed from: com.dropbox.core.util.IOUtil$c */
    /* loaded from: classes4.dex */
    public static final class C2310c extends FilterInputStream {

        /* renamed from: e */
        public long f16632e;

        public C2310c(InputStream inputStream, long j) {
            super(inputStream);
            if (inputStream == null) {
                throw new NullPointerException("in");
            }
            if (j < 0) {
                throw new IllegalArgumentException("limit must be non-negative");
            }
            this.f16632e = j;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() throws IOException {
            return (int) Math.min(((FilterInputStream) this).in.available(), this.f16632e);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (this.f16632e == 0) {
                return -1;
            }
            int read = ((FilterInputStream) this).in.read();
            if (read != -1) {
                this.f16632e--;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void reset() throws IOException {
            throw new IOException("mark not supported");
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) throws IOException {
            long skip = ((FilterInputStream) this).in.skip(Math.min(j, this.f16632e));
            this.f16632e -= skip;
            return skip;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            long j = this.f16632e;
            if (j == 0) {
                return -1;
            }
            int read = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, j));
            if (read != -1) {
                this.f16632e -= read;
            }
            return read;
        }
    }

    public static void copyStreamToStream(InputStream inputStream, OutputStream outputStream, int i) throws ReadException, WriteException {
        copyStreamToStream(inputStream, outputStream, new byte[i]);
    }
}
