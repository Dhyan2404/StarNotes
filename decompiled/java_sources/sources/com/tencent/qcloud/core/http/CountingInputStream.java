package com.tencent.qcloud.core.http;

import com.tencent.qcloud.core.common.QCloudProgressListener;
import com.tencent.qcloud.core.logger.QCloudLogger;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes10.dex */
class CountingInputStream extends FilterInputStream {
    private long bytesTotal;
    private long bytesWritten;
    private long mark;
    private QCloudProgressListener progressListener;
    private long recentReportBytes;

    public CountingInputStream(InputStream inputStream, long j, QCloudProgressListener qCloudProgressListener) {
        super(inputStream);
        this.bytesWritten = 0L;
        this.recentReportBytes = 0L;
        this.mark = -1L;
        this.bytesTotal = j;
        this.progressListener = qCloudProgressListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void reportProgress() {
        /*
            r7 = this;
            com.tencent.qcloud.core.common.QCloudProgressListener r0 = r7.progressListener
            if (r0 != 0) goto L5
            return
        L5:
            long r1 = r7.bytesWritten
            long r3 = r7.recentReportBytes
            long r3 = r1 - r3
            r5 = 51200(0xc800, double:2.5296E-319)
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 > 0) goto L22
            r5 = 10
            long r3 = r3 * r5
            long r5 = r7.bytesTotal
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 > 0) goto L22
            int r3 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r3 != 0) goto L20
            goto L22
        L20:
            r3 = 0
            goto L23
        L22:
            r3 = 1
        L23:
            if (r3 == 0) goto L2c
            r7.recentReportBytes = r1
            long r3 = r7.bytesTotal
            r0.onProgress(r1, r3)
        L2c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qcloud.core.http.CountingInputStream.reportProgress():void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        QCloudLogger.m59786i("Test", "CountingInputStream is closed", new Object[0]);
    }

    public long getBytesTotal() {
        return this.bytesTotal;
    }

    public long getTotalTransferred() {
        return this.bytesWritten;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        super.mark(i);
        this.mark = this.bytesWritten;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read > 0) {
            readBytesInternal(read);
        }
        return read;
    }

    public void readBytesInternal(long j) {
        this.bytesWritten += j;
        reportProgress();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.mark == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.bytesWritten = this.mark;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = super.skip(j);
        readBytesInternal(skip);
        return skip;
    }
}
