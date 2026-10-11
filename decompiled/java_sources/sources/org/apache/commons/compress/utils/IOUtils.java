package org.apache.commons.compress.utils;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;

/* loaded from: classes12.dex */
public final class IOUtils {

    /* renamed from: a */
    public static final int f107327a = 8024;

    /* renamed from: b */
    public static final int f107328b = 4096;
    public static final LinkOption[] EMPTY_LINK_OPTIONS = new LinkOption[0];

    /* renamed from: c */
    public static final byte[] f107329c = new byte[4096];

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        return copy(inputStream, outputStream, f107327a);
    }

    public static long copyRange(InputStream inputStream, long j, OutputStream outputStream) throws IOException {
        return copyRange(inputStream, j, outputStream, f107327a);
    }

    public static int read(File file, byte[] bArr) throws IOException {
        InputStream newInputStream = Files.newInputStream(file.toPath(), new OpenOption[0]);
        try {
            int readFully = readFully(newInputStream, bArr, 0, bArr.length);
            if (newInputStream != null) {
                newInputStream.close();
            }
            return readFully;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newInputStream != null) {
                    try {
                        newInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static int readFully(InputStream inputStream, byte[] bArr) throws IOException {
        return readFully(inputStream, bArr, 0, bArr.length);
    }

    public static byte[] readRange(InputStream inputStream, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copyRange(inputStream, i, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static long skip(InputStream inputStream, long j) throws IOException {
        int readFully;
        long j2 = j;
        while (j2 > 0) {
            long skip = inputStream.skip(j2);
            if (skip == 0) {
                break;
            }
            j2 -= skip;
        }
        while (j2 > 0 && (readFully = readFully(inputStream, f107329c, 0, (int) Math.min(j2, 4096L))) >= 1) {
            j2 -= readFully;
        }
        return j - j2;
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        if (i >= 1) {
            byte[] bArr = new byte[i];
            long j = 0;
            while (true) {
                int read = inputStream.read(bArr);
                if (-1 == read) {
                    return j;
                }
                if (outputStream != null) {
                    outputStream.write(bArr, 0, read);
                }
                j += read;
            }
        } else {
            throw new IllegalArgumentException("buffersize must be bigger than 0");
        }
    }

    public static long copyRange(InputStream inputStream, long j, OutputStream outputStream, int i) throws IOException {
        int read;
        if (i >= 1) {
            int min = (int) Math.min(i, j);
            byte[] bArr = new byte[min];
            long j2 = 0;
            while (j2 < j && -1 != (read = inputStream.read(bArr, 0, (int) Math.min(j - j2, min)))) {
                if (outputStream != null) {
                    outputStream.write(bArr, 0, read);
                }
                j2 += read;
            }
            return j2;
        }
        throw new IllegalArgumentException("buffersize must be bigger than 0");
    }

    public static int readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i2 < 0 || i < 0 || (i3 = i2 + i) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        int i4 = 0;
        while (i4 != i2) {
            int read = inputStream.read(bArr, i + i4, i2 - i4);
            if (read == -1) {
                break;
            }
            i4 += read;
        }
        return i4;
    }

    public static byte[] readRange(ReadableByteChannel readableByteChannel, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteBuffer allocate = ByteBuffer.allocate(Math.min(i, f107327a));
        int i2 = 0;
        while (i2 < i) {
            allocate.limit(Math.min(i - i2, allocate.capacity()));
            int read = readableByteChannel.read(allocate);
            if (read <= 0) {
                break;
            }
            byteArrayOutputStream.write(allocate.array(), 0, read);
            allocate.rewind();
            i2 += read;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static void readFully(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws IOException {
        int remaining = byteBuffer.remaining();
        int i = 0;
        while (i < remaining) {
            int read = readableByteChannel.read(byteBuffer);
            if (read <= 0) {
                break;
            } else {
                i += read;
            }
        }
        if (i < remaining) {
            throw new EOFException();
        }
    }

    public static void copy(File file, OutputStream outputStream) throws IOException {
        Files.copy(file.toPath(), outputStream);
    }
}
