package com.liulishuo.okdownload.core.interceptor;

import androidx.annotation.NonNull;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.dispatcher.CallbackDispatcher;
import com.liulishuo.okdownload.core.download.DownloadChain;
import com.liulishuo.okdownload.core.exception.InterruptException;
import com.liulishuo.okdownload.core.file.MultiPointOutputStream;
import com.liulishuo.okdownload.core.interceptor.Interceptor;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public class FetchDataInterceptor implements Interceptor.Fetch {

    /* renamed from: a */
    public final InputStream f39504a;

    /* renamed from: b */
    public final byte[] f39505b;

    /* renamed from: c */
    public final MultiPointOutputStream f39506c;

    /* renamed from: d */
    public final int f39507d;

    /* renamed from: e */
    public final DownloadTask f39508e;

    /* renamed from: f */
    public final CallbackDispatcher f39509f = OkDownload.with().callbackDispatcher();

    public FetchDataInterceptor(int i, @NonNull InputStream inputStream, @NonNull MultiPointOutputStream multiPointOutputStream, DownloadTask downloadTask) {
        this.f39507d = i;
        this.f39504a = inputStream;
        this.f39505b = new byte[downloadTask.getReadBufferSize()];
        this.f39506c = multiPointOutputStream;
        this.f39508e = downloadTask;
    }

    @Override // com.liulishuo.okdownload.core.interceptor.Interceptor.Fetch
    public long interceptFetch(DownloadChain downloadChain) throws IOException {
        if (downloadChain.getCache().isInterrupt()) {
            throw InterruptException.SIGNAL;
        }
        OkDownload.with().downloadStrategy().inspectNetworkOnWifi(downloadChain.getTask());
        int read = this.f39504a.read(this.f39505b);
        if (read == -1) {
            return read;
        }
        this.f39506c.write(this.f39507d, this.f39505b, read);
        long j = read;
        downloadChain.increaseCallbackBytes(j);
        if (this.f39509f.isFetchProcessMoment(this.f39508e)) {
            downloadChain.flushNoCallbackIncreaseBytes();
        }
        return j;
    }
}
