package com.evernote.client.conn.mobile;

import androidx.annotation.NonNull;
import com.evernote.client.conn.mobile.ByteStore;
import com.squareup.okhttp.internal.Util;
import com.sunia.HTREnginev2.rwi;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public class DiskBackedByteStore extends ByteStore {

    /* renamed from: e */
    public static final int f21168e = 2097152;
    protected final rwi mByteArrayOutputStream;
    protected int mBytesWritten;
    protected final File mCacheDir;
    protected File mCacheFile;
    protected boolean mClosed;
    protected OutputStream mCurrentOutputStream;
    protected byte[] mData;
    protected byte[] mFileBuffer;
    protected FileOutputStream mFileOutputStream;
    protected final int mMaxMemory;

    /* loaded from: classes4.dex */
    public static class Factory implements ByteStore.Factory {

        /* renamed from: a */
        public final File f21169a;

        /* renamed from: b */
        public final int f21170b;

        public Factory(File file) {
            this(file, 2097152);
        }

        public Factory(File file, int i) {
            this.f21169a = file;
            this.f21170b = i;
        }

        @Override // com.evernote.client.conn.mobile.ByteStore.Factory
        public DiskBackedByteStore create() {
            return new DiskBackedByteStore(this.f21169a, this.f21170b);
        }
    }

    public DiskBackedByteStore(File file, int i) {
        this.mCacheDir = file;
        this.mMaxMemory = i;
        rwi rwiVar = new rwi();
        this.mByteArrayOutputStream = rwiVar;
        this.mCurrentOutputStream = rwiVar;
    }

    /* renamed from: w */
    public static void m17103w(File file, byte[] bArr, int i) throws IOException {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            int i2 = 0;
            int i3 = i;
            int i4 = 0;
            while (i3 > 0 && i2 >= 0) {
                try {
                    i2 = fileInputStream2.read(bArr, i4, i3);
                    i4 += i2;
                    i3 -= i2;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    Util.closeQuietly(fileInputStream);
                    throw th;
                }
            }
            Util.closeQuietly(fileInputStream2);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: H */
    public final void m17104H(int i) throws IOException {
        if (m17106j(i)) {
            swapToDisk();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.mClosed) {
            return;
        }
        Util.closeQuietly(this.mFileOutputStream);
        this.mByteArrayOutputStream.reset();
        this.mClosed = true;
    }

    /* renamed from: f */
    public final void m17105f() throws IOException {
        if (this.mClosed) {
            throw new IOException("Already closed");
        }
        if (this.mCurrentOutputStream == null) {
            if (swapped()) {
                this.mCurrentOutputStream = this.mFileOutputStream;
            } else {
                this.mCurrentOutputStream = this.mByteArrayOutputStream;
            }
        }
    }

    @Override // com.evernote.client.conn.mobile.ByteStore
    public int getBytesWritten() {
        return this.mBytesWritten;
    }

    @Override // com.evernote.client.conn.mobile.ByteStore
    public byte[] getData() throws IOException {
        byte[] bArr = this.mData;
        if (bArr != null) {
            return bArr;
        }
        close();
        if (swapped()) {
            byte[] bArr2 = this.mFileBuffer;
            if (bArr2 == null || bArr2.length < this.mBytesWritten) {
                this.mFileBuffer = new byte[this.mBytesWritten];
            }
            m17103w(this.mCacheFile, this.mFileBuffer, this.mBytesWritten);
            this.mData = this.mFileBuffer;
        } else {
            this.mData = this.mByteArrayOutputStream.toByteArray();
        }
        return this.mData;
    }

    /* renamed from: j */
    public final boolean m17106j(int i) {
        return !swapped() && this.mBytesWritten + i > this.mMaxMemory;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.evernote.client.conn.mobile.ByteStore
    public void reset() throws IOException {
        try {
            close();
            File file = this.mCacheFile;
            if (file != null && file.isFile() && !this.mCacheFile.delete()) {
                throw new IOException("could not delete cache file");
            }
        } finally {
            this.mFileOutputStream = null;
            this.mCurrentOutputStream = null;
            this.mBytesWritten = 0;
            this.mClosed = false;
            this.mData = null;
        }
    }

    public void swapToDisk() throws IOException {
        if (!this.mCacheDir.exists() && !this.mCacheDir.mkdirs()) {
            throw new IOException("could not create cache dir");
        }
        if (!this.mCacheDir.isDirectory()) {
            throw new IOException("cache dir is no directory");
        }
        this.mCacheFile = File.createTempFile("byte_store", null, this.mCacheDir);
        FileOutputStream fileOutputStream = new FileOutputStream(this.mCacheFile);
        this.mFileOutputStream = fileOutputStream;
        this.mByteArrayOutputStream.writeTo(fileOutputStream);
        this.mByteArrayOutputStream.reset();
        this.mCurrentOutputStream = this.mFileOutputStream;
    }

    public boolean swapped() {
        return this.mBytesWritten > this.mMaxMemory;
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i, int i2) throws IOException {
        m17105f();
        m17104H(i2);
        this.mCurrentOutputStream.write(bArr, i, i2);
        this.mBytesWritten += i2;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        m17105f();
        m17104H(1);
        this.mCurrentOutputStream.write(i);
        this.mBytesWritten++;
    }
}
