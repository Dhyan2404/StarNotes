package org.apache.poi.util;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.util.Arrays;
import java.util.Locale;
import java.util.zip.CRC32;
import org.apache.commons.io.input.BoundedInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.EmptyFileException;

@Internal
/* loaded from: classes13.dex */
public final class IOUtils {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    private static final int SKIP_BUFFER_SIZE = 2048;
    private static byte[] SKIP_BYTE_BUFFER;
    private static final Logger LOG = LogManager.getLogger((Class<?>) IOUtils.class);
    private static int BYTE_ARRAY_MAX_OVERRIDE = -1;
    private static int MAX_BYTE_ARRAY_INIT_SIZE = -1;

    private IOUtils() {
    }

    public static int calculateByteArrayInitLength(boolean z, int i, int i2) {
        int min = Math.min(i, i2);
        if (!z) {
            min = Math.min(4096, min);
        }
        int i3 = MAX_BYTE_ARRAY_INIT_SIZE;
        return (i3 <= 0 || min <= i3) ? min : i3;
    }

    public static long calculateChecksum(byte[] bArr) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, 0, bArr.length);
        return crc32.getValue();
    }

    private static void checkByteSizeLimit(int i) {
        int i2 = BYTE_ARRAY_MAX_OVERRIDE;
        if (i2 == -1 || i <= i2) {
            return;
        }
        throwRFE(i, i2);
    }

    private static void checkLength(long j, int i) {
        int i2 = BYTE_ARRAY_MAX_OVERRIDE;
        if (i2 > 0) {
            if (j > i2) {
                throwRFE(j, i2);
            }
        } else if (j > i) {
            throwRFE(j, i);
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Exception e) {
            LOG.atError().withThrowable(e).log("Unable to close resource");
        }
    }

    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        return copy(inputStream, outputStream, -1L);
    }

    public static int getMaxByteArrayInitSize() {
        return MAX_BYTE_ARRAY_INIT_SIZE;
    }

    public static byte[] peekFirst8Bytes(InputStream inputStream) throws IOException, EmptyFileException {
        return peekFirstNBytes(inputStream, 8);
    }

    public static byte[] peekFirstNBytes(InputStream inputStream, int i) throws IOException, EmptyFileException {
        checkByteSizeLimit(i);
        inputStream.mark(i);
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream(i);
        try {
            copy(new BoundedInputStream(inputStream, i), unsynchronizedByteArrayOutputStream);
            int size = unsynchronizedByteArrayOutputStream.size();
            if (size == 0) {
                throw new EmptyFileException();
            }
            if (size < i) {
                unsynchronizedByteArrayOutputStream.write(new byte[i - size]);
            }
            byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
            if (inputStream instanceof PushbackInputStream) {
                ((PushbackInputStream) inputStream).unread(byteArray, 0, size);
            } else {
                inputStream.reset();
            }
            unsynchronizedByteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    unsynchronizedByteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static int readByte(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    public static int readFully(InputStream inputStream, byte[] bArr) throws IOException {
        return readFully(inputStream, bArr, 0, bArr.length);
    }

    public static byte[] safelyAllocate(long j, int i) {
        safelyAllocateCheck(j, i);
        int i2 = (int) j;
        checkByteSizeLimit(i2);
        return new byte[i2];
    }

    public static void safelyAllocateCheck(long j, int i) {
        if (j >= 0) {
            if (j > 2147483647L) {
                throw new RecordFormatException("Can't allocate an array > 2147483647");
            }
            checkLength(j, i);
        } else {
            throw new RecordFormatException("Can't allocate an array of length < 0, but had " + j + CloudStorageConstants.OPERATION_AND + i);
        }
    }

    public static byte[] safelyClone(byte[] bArr, int i, int i2, int i3) {
        if (bArr == null) {
            return null;
        }
        if (i >= 0 && i2 >= 0 && i3 >= 0) {
            int min = Math.min(bArr.length - i, i2);
            safelyAllocateCheck(min, i3);
            return Arrays.copyOfRange(bArr, i, min + i);
        }
        throw new RecordFormatException("Invalid offset/length specified: offset: " + i + ", lenght: " + i2 + ", maxLength: " + i3);
    }

    public static void setByteArrayMaxOverride(int i) {
        BYTE_ARRAY_MAX_OVERRIDE = i;
    }

    public static void setMaxByteArrayInitSize(int i) {
        MAX_BYTE_ARRAY_INIT_SIZE = i;
    }

    public static long skipFully(InputStream inputStream, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("Skip count must be non-negative, actual: " + j);
        }
        if (j == 0) {
            return 0L;
        }
        if (SKIP_BYTE_BUFFER == null) {
            SKIP_BYTE_BUFFER = new byte[2048];
        }
        long j2 = j;
        while (j2 > 0) {
            long read = inputStream.read(SKIP_BYTE_BUFFER, 0, (int) Math.min(j2, 2048L));
            if (read < 0) {
                break;
            }
            j2 -= read;
        }
        if (j == j2) {
            return -1L;
        }
        return j - j2;
    }

    private static void throwRFE(long j, int i) {
        throw new RecordFormatException(String.format(Locale.ROOT, "Tried to allocate an array of length %,d, but the maximum length for this record type is %,d.\nIf the file is not corrupt and not large, please open an issue on bugzilla to request \nincreasing the maximum allowable size for this record type.\nYou can set a higher override value with IOUtils.setByteArrayMaxOverride()", Long.valueOf(j), Integer.valueOf(i)));
    }

    private static void throwRecordTruncationException(int i) {
        throw new RecordFormatException(String.format(Locale.ROOT, "Tried to read data but the maximum length for this record type is %,d.\nIf the file is not corrupt and not large, please open an issue on bugzilla to request \nincreasing the maximum allowable size for this record type.\nYou can set a higher override value with IOUtils.setByteArrayMaxOverride()", Integer.valueOf(i)));
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        return toByteArray(inputStream, Integer.MAX_VALUE);
    }

    public static byte[] toByteArrayWithMaxLength(InputStream inputStream, int i) throws IOException {
        return toByteArray(inputStream, i, i, false, false);
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        byte[] bArr = new byte[4096];
        int i = -1;
        long j2 = 0;
        while (true) {
            int min = (int) (j >= 0 ? Math.min(j - j2, 4096L) : 4096L);
            if (min > 0) {
                int read = inputStream.read(bArr, 0, min);
                if (read > 0) {
                    outputStream.write(bArr, 0, read);
                    j2 += read;
                }
                i = read;
            }
            if (i < 0 || (j != -1 && j2 >= j)) {
                break;
            }
        }
        return j2;
    }

    public static int readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        do {
            int read = inputStream.read(bArr, i + i3, i2 - i3);
            if (read < 0) {
                if (i3 == 0) {
                    return -1;
                }
                return i3;
            }
            i3 += read;
        } while (i3 != i2);
        return i3;
    }

    public static byte[] toByteArray(InputStream inputStream, int i) throws IOException {
        return toByteArray(inputStream, i, Integer.MAX_VALUE);
    }

    public static int readFully(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws IOException {
        int i = 0;
        do {
            int read = readableByteChannel.read(byteBuffer);
            if (read >= 0) {
                i += read;
                if (i == byteBuffer.capacity()) {
                    break;
                }
            } else {
                if (i == 0) {
                    return -1;
                }
                return i;
            }
        } while (byteBuffer.position() != byteBuffer.capacity());
        return i;
    }

    public static byte[] toByteArray(InputStream inputStream, int i, int i2) throws IOException {
        return toByteArray(inputStream, i, i2, true, i != Integer.MAX_VALUE);
    }

    public static long calculateChecksum(InputStream inputStream) throws IOException {
        CRC32 crc32 = new CRC32();
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return crc32.getValue();
            }
            if (read > 0) {
                crc32.update(bArr, 0, read);
            }
        }
    }

    private static byte[] toByteArray(InputStream inputStream, int i, int i2, boolean z, boolean z2) throws IOException {
        int read;
        if (i >= 0 && i2 >= 0) {
            int max = Math.max(i2, BYTE_ARRAY_MAX_OVERRIDE);
            if (i != Integer.MAX_VALUE || max != Integer.MAX_VALUE) {
                checkLength(i, max);
            }
            int min = z2 ? Math.min(i, max) : max;
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream(calculateByteArrayInitLength(z2, i, max));
            try {
                byte[] bArr = new byte[4096];
                int i3 = 0;
                do {
                    read = inputStream.read(bArr, 0, Math.min(4096, min - i3));
                    i3 += Math.max(read, 0);
                    if (read > 0) {
                        unsynchronizedByteArrayOutputStream.write(bArr, 0, read);
                    }
                    checkByteSizeLimit(i3);
                    if (i3 >= min) {
                        break;
                    }
                } while (read > -1);
                if (BYTE_ARRAY_MAX_OVERRIDE < 0 && read > -1 && !z2 && inputStream.read() >= 0) {
                    throwRecordTruncationException(max);
                }
                if (z && min != Integer.MAX_VALUE && i3 < min) {
                    throw new EOFException("unexpected EOF - expected len: " + min + " - actual len: " + i3);
                }
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                unsynchronizedByteArrayOutputStream.close();
                return byteArray;
            } finally {
            }
        } else {
            throw new RecordFormatException("Can't allocate an array of length < 0");
        }
    }

    public static long copy(InputStream inputStream, File file) throws IOException {
        File parentFile = file.getParentFile();
        if (!parentFile.exists() && !parentFile.mkdirs()) {
            throw new IllegalStateException("Can't create destination directory: " + parentFile);
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            long copy = copy(inputStream, fileOutputStream);
            fileOutputStream.close();
            return copy;
        } finally {
        }
    }

    public static byte[] toByteArray(ByteBuffer byteBuffer, int i) {
        if (byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0) {
            return byteBuffer.array();
        }
        checkByteSizeLimit(i);
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return bArr;
    }
}
