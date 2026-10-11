package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ByteBufferUtil {

    /* renamed from: a */
    public static final int f15462a = 16384;

    /* renamed from: b */
    public static final AtomicReference<byte[]> f15463b = new AtomicReference<>();

    /* renamed from: com.bumptech.glide.util.ByteBufferUtil$b */
    /* loaded from: classes3.dex */
    public static final class C2037b {

        /* renamed from: a */
        public final int f15467a;

        /* renamed from: b */
        public final int f15468b;

        /* renamed from: c */
        public final byte[] f15469c;

        public C2037b(@NonNull byte[] bArr, int i, int i2) {
            this.f15469c = bArr;
            this.f15467a = i;
            this.f15468b = i2;
        }
    }

    @Nullable
    /* renamed from: a */
    public static C2037b m9173a(@NonNull ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new C2037b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    @NonNull
    public static ByteBuffer fromFile(@NonNull File file) throws IOException {
        RandomAccessFile randomAccessFile;
        FileChannel fileChannel = null;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            if (length == 0) {
                throw new IOException("File unsuitable for memory mapping");
            }
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                fileChannel = randomAccessFile.getChannel();
                MappedByteBuffer load = fileChannel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                try {
                    fileChannel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
                return load;
            } catch (Throwable th) {
                th = th;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    @NonNull
    public static ByteBuffer fromStream(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = f15463b.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (true) {
            int read = inputStream.read(andSet);
            if (read < 0) {
                f15463b.set(andSet);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return (ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0);
            }
            byteArrayOutputStream.write(andSet, 0, read);
        }
    }

    @NonNull
    public static byte[] toBytes(@NonNull ByteBuffer byteBuffer) {
        C2037b m9173a = m9173a(byteBuffer);
        if (m9173a != null && m9173a.f15467a == 0 && m9173a.f15468b == m9173a.f15469c.length) {
            return byteBuffer.array();
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[asReadOnlyBuffer.limit()];
        asReadOnlyBuffer.position(0);
        asReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static void toFile(@NonNull ByteBuffer byteBuffer, @NonNull File file) throws IOException {
        RandomAccessFile randomAccessFile;
        byteBuffer.position(0);
        FileChannel fileChannel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileChannel = randomAccessFile.getChannel();
                fileChannel.write(byteBuffer);
                fileChannel.force(false);
                fileChannel.close();
                randomAccessFile.close();
                try {
                    fileChannel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th) {
                th = th;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    public static void toStream(@NonNull ByteBuffer byteBuffer, @NonNull OutputStream outputStream) throws IOException {
        C2037b m9173a = m9173a(byteBuffer);
        if (m9173a != null) {
            byte[] bArr = m9173a.f15469c;
            int i = m9173a.f15467a;
            outputStream.write(bArr, i, m9173a.f15468b + i);
            return;
        }
        byte[] andSet = f15463b.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (byteBuffer.remaining() > 0) {
            int min = Math.min(byteBuffer.remaining(), andSet.length);
            byteBuffer.get(andSet, 0, min);
            outputStream.write(andSet, 0, min);
        }
        f15463b.set(andSet);
    }

    /* renamed from: com.bumptech.glide.util.ByteBufferUtil$a */
    /* loaded from: classes3.dex */
    public static class C2036a extends InputStream {

        /* renamed from: g */
        public static final int f15464g = -1;

        /* renamed from: e */
        @NonNull
        public final ByteBuffer f15465e;

        /* renamed from: f */
        public int f15466f = -1;

        public C2036a(@NonNull ByteBuffer byteBuffer) {
            this.f15465e = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f15465e.remaining();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i) {
            this.f15466f = this.f15465e.position();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f15465e.hasRemaining()) {
                return this.f15465e.get() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            int i = this.f15466f;
            if (i == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.f15465e.position(i);
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            if (!this.f15465e.hasRemaining()) {
                return -1L;
            }
            long min = Math.min(j, available());
            this.f15465e.position((int) (r2.position() + min));
            return min;
        }

        @Override // java.io.InputStream
        public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
            if (!this.f15465e.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i2, available());
            this.f15465e.get(bArr, i, min);
            return min;
        }
    }

    @NonNull
    public static InputStream toStream(@NonNull ByteBuffer byteBuffer) {
        return new C2036a(byteBuffer);
    }
}
