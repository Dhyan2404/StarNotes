package com.sunia.HTREnginev2;

import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes4.dex */
public class t2j {

    /* renamed from: h */
    public static final Logger f84800h = LoggerFactory.getLogger((Class<?>) t2j.class);

    /* renamed from: i */
    public static final int f84801i = 22;

    /* renamed from: j */
    public static final long f84802j = 0;

    /* renamed from: k */
    public static final String f84803k = "0123456789abcdef";

    /* renamed from: a */
    public final File f84804a;

    /* renamed from: b */
    public RandomAccessFile f84805b;

    /* renamed from: c */
    public FileChannel f84806c;

    /* renamed from: d */
    public FileLock f84807d;

    /* renamed from: f */
    public boolean f84809f;

    /* renamed from: e */
    public ByteBuffer f84808e = null;

    /* renamed from: g */
    public long f84810g = 0;

    public t2j(File file) throws IOException {
        FileLock fileLock;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        this.f84804a = file;
        try {
            randomAccessFile = new RandomAccessFile(file, "rwd");
        } catch (Throwable th) {
            th = th;
            fileLock = null;
        }
        try {
            FileChannel channel = randomAccessFile.getChannel();
            if (channel == null) {
                throw new IOException("Failed to access channel for '" + file + CloudStorageConstants.SINGLE_QUOTES);
            }
            FileLock tryLock = channel.tryLock();
            if (tryLock != null) {
                this.f84805b = randomAccessFile;
                this.f84806c = channel;
                this.f84807d = tryLock;
            } else {
                throw new IOException("Failed to lock '" + file + "' (another JVM running UUIDGenerator?)");
            }
        } catch (Throwable th2) {
            th = th2;
            fileLock = null;
            randomAccessFile2 = randomAccessFile;
            m57293b(file, randomAccessFile2, fileLock);
            throw th;
        }
    }

    /* renamed from: b */
    public static void m57293b(File file, RandomAccessFile randomAccessFile, FileLock fileLock) {
        if (fileLock != null) {
            try {
                fileLock.release();
            } catch (Throwable th) {
                f84800h.error("Failed to release lock (for file '{}')", file, th);
            }
        }
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                f84800h.error("Failed to close file '{}'", file, th2);
            }
        }
    }

    /* renamed from: a */
    public void m57294a() {
        RandomAccessFile randomAccessFile = this.f84805b;
        this.f84805b = null;
        FileLock fileLock = this.f84807d;
        this.f84807d = null;
        m57293b(this.f84804a, randomAccessFile, fileLock);
    }

    /* renamed from: c */
    public long m57295c() {
        String str;
        try {
            int size = (int) this.f84806c.size();
            this.f84809f = size != 22;
            if (size == 0) {
                f84800h.warn("Missing or empty file, can not read timestamp value");
                return 0L;
            }
            if (size > 100) {
                size = 100;
            }
            byte[] bArr = new byte[size];
            try {
                this.f84805b.readFully(bArr);
                char[] cArr = new char[size];
                for (int i = 0; i < size; i++) {
                    cArr[i] = (char) (bArr[i] & 255);
                }
                String trim = new String(cArr).trim();
                long j = -1;
                if (trim.startsWith("[0") && trim.length() >= 3 && Character.toLowerCase(trim.charAt(2)) == 'x') {
                    int indexOf = trim.indexOf(93, 3);
                    if (indexOf <= 0) {
                        str = "does not end with ']' marker";
                    } else {
                        String substring = trim.substring(3, indexOf);
                        if (substring.length() > 16) {
                            str = "length of the (hex) timestamp too long; expected 16, had " + substring.length() + " ('" + substring + "')";
                        } else {
                            try {
                                j = Long.parseLong(substring, 16);
                                str = null;
                            } catch (NumberFormatException e) {
                                str = "does not contain a valid hex timestamp; got '" + substring + "' (parse error: " + e + MotionUtils.f31762d;
                            }
                        }
                    }
                } else {
                    str = "does not start with '[0x' prefix";
                }
                if (j < 0) {
                    f84800h.error("(file '{}') Malformed timestamp file contents: {}", this.f84804a, str);
                    return 0L;
                }
                this.f84810g = j;
                return j;
            } catch (IOException e2) {
                f84800h.error("(file '{}') Failed to read {} bytes", this.f84804a, Integer.valueOf(size), e2);
                return 0L;
            }
        } catch (IOException e3) {
            f84800h.error("Failed to read file size", (Throwable) e3);
            return 0L;
        }
    }

    /* renamed from: d */
    public void m57296d(long j) throws IOException {
        long j2 = this.f84810g;
        if (j <= j2) {
            if (j == j2) {
                f84800h.warn("(file '{}') Trying to re-write existing timestamp ({})", this.f84804a, Long.valueOf(j));
                return;
            }
            throw new IOException("" + this.f84804a + " trying to overwrite existing value (" + this.f84810g + ") with an earlier timestamp (" + j + MotionUtils.f31762d);
        }
        if (this.f84808e == null) {
            ByteBuffer allocate = ByteBuffer.allocate(22);
            this.f84808e = allocate;
            allocate.put(0, UTF8JsonGenerator.f21287g);
            this.f84808e.put(1, (byte) 48);
            this.f84808e.put(2, (byte) 120);
            this.f84808e.put(19, UTF8JsonGenerator.f21288h);
            this.f84808e.put(20, (byte) 13);
            this.f84808e.put(21, (byte) 10);
        }
        for (int i = 18; i >= 3; i--) {
            this.f84808e.put(i, (byte) "0123456789abcdef".charAt(((int) j) & 15));
            j >>= 4;
        }
        this.f84808e.position(0);
        this.f84806c.write(this.f84808e, 0L);
        if (this.f84809f) {
            this.f84805b.setLength(22L);
            this.f84809f = false;
        }
        this.f84806c.force(false);
    }
}
