package com.evernote.client.conn.mobile;

import androidx.annotation.NonNull;
import com.evernote.client.conn.mobile.ByteStore;
import com.sunia.HTREnginev2.rwi;
import java.io.IOException;

/* loaded from: classes4.dex */
public class MemoryByteStore extends ByteStore {
    protected final rwi mByteArrayOutputStream = new rwi();
    protected int mBytesWritten;
    protected boolean mClosed;
    protected byte[] mData;

    /* loaded from: classes4.dex */
    public static class Factory implements ByteStore.Factory {
        @Override // com.evernote.client.conn.mobile.ByteStore.Factory
        public MemoryByteStore create() {
            return new MemoryByteStore();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.mClosed) {
            return;
        }
        this.mByteArrayOutputStream.reset();
        this.mClosed = true;
    }

    /* renamed from: f */
    public final void m17107f() throws IOException {
        if (this.mClosed) {
            throw new IOException("Already closed");
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
        byte[] byteArray = this.mByteArrayOutputStream.toByteArray();
        this.mData = byteArray;
        return byteArray;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.evernote.client.conn.mobile.ByteStore
    public void reset() throws IOException {
        try {
            close();
        } finally {
            this.mData = null;
            this.mBytesWritten = 0;
            this.mClosed = false;
        }
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i, int i2) throws IOException {
        m17107f();
        this.mByteArrayOutputStream.write(bArr, i, i2);
        this.mBytesWritten += i2;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        m17107f();
        this.mByteArrayOutputStream.write(i);
        this.mBytesWritten++;
    }
}
