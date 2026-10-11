package com.tencent.qcloud.core.http;

import com.tencent.qcloud.core.common.QCloudProgressListener;
import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class CountingSink extends ForwardingSink {
    private long bytesTotal;
    private long bytesWritten;
    private long lastTimeBytesWritten;
    private QCloudProgressListener progressListener;
    private long recentReportBytes;

    public CountingSink(Sink sink, long j, QCloudProgressListener qCloudProgressListener) {
        super(sink);
        this.lastTimeBytesWritten = 0L;
        this.bytesWritten = 0L;
        this.recentReportBytes = 0L;
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
            if (r3 == 0) goto L30
            r7.recentReportBytes = r1
            long r3 = r7.lastTimeBytesWritten
            long r1 = r1 + r3
            long r5 = r7.bytesTotal
            long r3 = r3 + r5
            r0.onProgress(r1, r3)
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qcloud.core.http.CountingSink.reportProgress():void");
    }

    public long getBytesWritten() {
        return this.bytesWritten;
    }

    public long getTotalTransferred() {
        return this.bytesWritten + this.lastTimeBytesWritten;
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(Buffer buffer, long j) throws IOException {
        super.write(buffer, j);
        writeBytesInternal(j);
    }

    public void writeBytesInternal(long j) {
        this.bytesWritten += j;
        reportProgress();
    }

    public CountingSink(Sink sink, long j, long j2, QCloudProgressListener qCloudProgressListener) {
        super(sink);
        this.bytesWritten = 0L;
        this.recentReportBytes = 0L;
        this.bytesTotal = j;
        this.lastTimeBytesWritten = j2;
        this.progressListener = qCloudProgressListener;
    }
}
