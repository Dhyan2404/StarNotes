package com.liulishuo.okdownload.core.interceptor.connect;

import androidx.annotation.NonNull;
import com.google.android.material.motion.MotionUtils;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.breakpoint.BlockInfo;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.connection.DownloadConnection;
import com.liulishuo.okdownload.core.download.DownloadChain;
import com.liulishuo.okdownload.core.exception.InterruptException;
import com.liulishuo.okdownload.core.interceptor.Interceptor;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class HeaderInterceptor implements Interceptor.Connect {

    /* renamed from: a */
    public static final String f39510a = "HeaderInterceptor";

    @Override // com.liulishuo.okdownload.core.interceptor.Interceptor.Connect
    @NonNull
    public DownloadConnection.Connected interceptConnect(DownloadChain downloadChain) throws IOException {
        BreakpointInfo info = downloadChain.getInfo();
        DownloadConnection connectionOrCreate = downloadChain.getConnectionOrCreate();
        DownloadTask task = downloadChain.getTask();
        Map<String, List<String>> headerMapFields = task.getHeaderMapFields();
        if (headerMapFields != null) {
            Util.addUserRequestHeaderField(headerMapFields, connectionOrCreate);
        }
        if (headerMapFields == null || !headerMapFields.containsKey("User-Agent")) {
            Util.addDefaultUserAgent(connectionOrCreate);
        }
        int blockIndex = downloadChain.getBlockIndex();
        BlockInfo block = info.getBlock(blockIndex);
        if (block == null) {
            throw new IOException("No block-info found on " + blockIndex);
        }
        connectionOrCreate.addHeader("Range", ("bytes=" + block.getRangeLeft() + "-") + block.getRangeRight());
        Util.m30983d(f39510a, "AssembleHeaderRange (" + task.getId() + ") block(" + blockIndex + ") downloadFrom(" + block.getRangeLeft() + ") currentOffset(" + block.getCurrentOffset() + MotionUtils.f31762d);
        String etag = info.getEtag();
        if (!Util.isEmpty(etag)) {
            connectionOrCreate.addHeader("If-Match", etag);
        }
        if (downloadChain.getCache().isInterrupt()) {
            throw InterruptException.SIGNAL;
        }
        OkDownload.with().callbackDispatcher().dispatch().connectStart(task, blockIndex, connectionOrCreate.getRequestProperties());
        DownloadConnection.Connected processConnect = downloadChain.processConnect();
        if (downloadChain.getCache().isInterrupt()) {
            throw InterruptException.SIGNAL;
        }
        Map<String, List<String>> responseHeaderFields = processConnect.getResponseHeaderFields();
        if (responseHeaderFields == null) {
            responseHeaderFields = new HashMap<>();
        }
        OkDownload.with().callbackDispatcher().dispatch().connectEnd(task, blockIndex, processConnect.getResponseCode(), responseHeaderFields);
        OkDownload.with().downloadStrategy().resumeAvailableResponseCheck(processConnect, blockIndex, info).inspect();
        String responseHeaderField = processConnect.getResponseHeaderField("Content-Length");
        downloadChain.setResponseContentLength((responseHeaderField == null || responseHeaderField.length() == 0) ? Util.parseContentLengthFromContentRange(processConnect.getResponseHeaderField("Content-Range")) : Util.parseContentLength(responseHeaderField));
        return processConnect;
    }
}
