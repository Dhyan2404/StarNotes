package com.liulishuo.okdownload.core.interceptor;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.breakpoint.BlockInfo;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.cause.ResumeFailedCause;
import com.liulishuo.okdownload.core.connection.DownloadConnection;
import com.liulishuo.okdownload.core.download.DownloadChain;
import com.liulishuo.okdownload.core.exception.InterruptException;
import com.liulishuo.okdownload.core.exception.RetryException;
import com.liulishuo.okdownload.core.file.MultiPointOutputStream;
import com.liulishuo.okdownload.core.interceptor.Interceptor;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class BreakpointInterceptor implements Interceptor.Connect, Interceptor.Fetch {

    /* renamed from: a */
    public static final String f39502a = "BreakpointInterceptor";

    /* renamed from: b */
    public static final Pattern f39503b = Pattern.compile(".*\\d+ *- *(\\d+) */ *\\d+");

    @IntRange(from = -1)
    /* renamed from: b */
    public static long m31091b(@NonNull String str) {
        Matcher matcher = f39503b.matcher(str);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    @androidx.annotation.IntRange(from = -1)
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m31092a(@androidx.annotation.NonNull com.liulishuo.okdownload.core.connection.DownloadConnection.Connected r8) {
        /*
            r7 = this;
            java.lang.String r7 = "Content-Range"
            java.lang.String r7 = r8.getResponseHeaderField(r7)
            boolean r0 = com.liulishuo.okdownload.core.Util.isEmpty(r7)
            r1 = 0
            if (r0 != 0) goto L1a
            long r3 = m31091b(r7)
            int r7 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r7 <= 0) goto L1a
            r5 = 1
            long r3 = r3 + r5
            goto L1c
        L1a:
            r3 = -1
        L1c:
            int r7 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r7 >= 0) goto L30
            java.lang.String r7 = "Content-Length"
            java.lang.String r7 = r8.getResponseHeaderField(r7)
            boolean r8 = com.liulishuo.okdownload.core.Util.isEmpty(r7)
            if (r8 != 0) goto L30
            long r3 = java.lang.Long.parseLong(r7)
        L30:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.okdownload.core.interceptor.BreakpointInterceptor.m31092a(com.liulishuo.okdownload.core.connection.DownloadConnection$Connected):long");
    }

    @Override // com.liulishuo.okdownload.core.interceptor.Interceptor.Connect
    @NonNull
    public DownloadConnection.Connected interceptConnect(DownloadChain downloadChain) throws IOException {
        DownloadConnection.Connected processConnect = downloadChain.processConnect();
        BreakpointInfo info = downloadChain.getInfo();
        if (downloadChain.getCache().isInterrupt()) {
            throw InterruptException.SIGNAL;
        }
        if (info.getBlockCount() == 1 && !info.isChunked()) {
            long m31092a = m31092a(processConnect);
            long totalLength = info.getTotalLength();
            if (m31092a > 0 && m31092a != totalLength) {
                Util.m30983d(f39502a, "SingleBlock special check: the response instance-length[" + m31092a + "] isn't equal to the instance length from trial-connection[" + totalLength + IteratorUtils.f104924b);
                boolean z = info.getBlock(0).getRangeLeft() != 0;
                BlockInfo blockInfo = new BlockInfo(0L, m31092a);
                info.resetBlockInfos();
                info.addBlock(blockInfo);
                if (z) {
                    Util.m30986w(f39502a, "Discard breakpoint because of on this special case, we have to download from beginning");
                    throw new RetryException("Discard breakpoint because of on this special case, we have to download from beginning");
                }
                OkDownload.with().callbackDispatcher().dispatch().downloadFromBeginning(downloadChain.getTask(), info, ResumeFailedCause.CONTENT_LENGTH_CHANGED);
            }
        }
        try {
            if (downloadChain.getDownloadStore().update(info)) {
                return processConnect;
            }
            throw new IOException("Update store failed!");
        } catch (Exception e) {
            throw new IOException("Update store failed!", e);
        }
    }

    @Override // com.liulishuo.okdownload.core.interceptor.Interceptor.Fetch
    public long interceptFetch(DownloadChain downloadChain) throws IOException {
        long responseContentLength = downloadChain.getResponseContentLength();
        int blockIndex = downloadChain.getBlockIndex();
        boolean z = responseContentLength != -1;
        MultiPointOutputStream outputStream = downloadChain.getOutputStream();
        long j = 0;
        while (true) {
            try {
                long loopFetch = downloadChain.loopFetch();
                if (loopFetch == -1) {
                    break;
                }
                j += loopFetch;
            } finally {
                downloadChain.flushNoCallbackIncreaseBytes();
                if (!downloadChain.getCache().isUserCanceled()) {
                    outputStream.done(blockIndex);
                }
            }
        }
        if (z) {
            outputStream.inspectComplete(blockIndex);
            if (j != responseContentLength) {
                throw new IOException("Fetch-length isn't equal to the response content-length, " + j + "!= " + responseContentLength);
            }
        }
        return j;
    }
}
