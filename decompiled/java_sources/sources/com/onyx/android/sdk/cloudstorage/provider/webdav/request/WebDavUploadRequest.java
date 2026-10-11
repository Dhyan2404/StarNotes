package com.onyx.android.sdk.cloudstorage.provider.webdav.request;

import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import com.thegrizzlylabs.sardineandroid.impl.handler.UploadResponseHandler;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "Lcom/thegrizzlylabs/sardineandroid/DavResource;", "execute", "e", "Lokhttp3/Response;", "uploadResponse", "", "url", "d", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;", "webDavClient", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "", "c", "J", "threadTime", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavUploadRequest extends TransferCloudFileRequest<DavResource> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final WebDavClient webDavClient;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    /* renamed from: c, reason: from kotlin metadata */
    public final long threadTime;

    public WebDavUploadRequest(@NotNull WebDavClient webDavClient, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(webDavClient, "webDavClient");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.webDavClient = webDavClient;
        this.fileBean = fileBean;
        this.threadTime = 500L;
    }

    /* renamed from: d */
    public final DavResource m32880d(Response uploadResponse, String url) throws Exception {
        Object first;
        List<DavResource> list = this.webDavClient.list(url, 0);
        Intrinsics.checkNotNullExpressionValue(list, "list(...)");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        DavResource davResource = (DavResource) first;
        if (davResource == null) {
            Debug.INSTANCE.m32059w(WebDavUploadRequest.class, "webdav upload got null davResource: " + url, new Object[0]);
        } else if (WebDavUtils.INSTANCE.getSize(davResource) <= 0) {
            Debug debug = Debug.INSTANCE;
            debug.m32059w(WebDavUploadRequest.class, "webdav upload got 0kb size davResource: " + davResource, new Object[0]);
            debug.m32059w(WebDavUploadRequest.class, "webdav upload url: " + url, new Object[0]);
            debug.m32059w(WebDavUploadRequest.class, "webdav upload response detail: " + uploadResponse, new Object[0]);
        }
        Intrinsics.checkNotNull(davResource);
        return davResource;
    }

    /* renamed from: e */
    public final DavResource m32881e() throws Exception {
        boolean startsWith$default;
        String localFilePath = this.fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        File file = new File(localFilePath);
        getProgressInfo().setTotalBytes(file.length());
        if (getProgressInfo().getTotalBytes() <= 0) {
            Debug debug = Debug.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append("filepath: ");
            sb.append(file.getAbsolutePath());
            sb.append(" \nfile exist:");
            FileUtils fileUtils = FileUtils.INSTANCE;
            sb.append(fileUtils.fileExist(file));
            sb.append(" \nfile size:");
            sb.append(fileUtils.getFileSize(file));
            debug.m32052i(WebDavUploadRequest.class, sb.toString(), new Object[0]);
        }
        Benchmark benchmark = new Benchmark();
        String cloudFilePath = this.fileBean.getCloudFilePath();
        Intrinsics.checkNotNull(cloudFilePath);
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(cloudFilePath, separator, false, 2, null);
        if (!startsWith$default) {
            cloudFilePath = separator + cloudFilePath;
        }
        Debug.INSTANCE.m32035d(WebDavUploadRequest.class, "upload cloudPath:" + cloudFilePath, new Object[0]);
        WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
        String webDavURL = this.webDavClient.getWebDavURL();
        Intrinsics.checkNotNull(webDavURL);
        String combineUrl = webDavUtils.combineUrl(webDavURL, cloudFilePath);
        Response upload = this.webDavClient.upload(combineUrl, file, new WebDavClient.ProgressHandler() { // from class: com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavUploadRequest$uploadFile$uploadResponse$1
            @Override // com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient.ProgressHandler
            public void onProgressUpdate(long progress) {
                ProgressInfo progressInfo;
                WebDavUploadRequest webDavUploadRequest = WebDavUploadRequest.this;
                progressInfo = webDavUploadRequest.getProgressInfo();
                webDavUploadRequest.onProgress(progressInfo, progress);
            }
        });
        new UploadResponseHandler().handleResponse(upload);
        benchmark.report(WebDavUploadRequest.class.getSimpleName() + " webdav upload local file: " + this.fileBean.localFileString());
        for (int i = 0; i < 3; i++) {
            Thread.sleep(this.threadTime);
            try {
                return this.m32880d(upload, combineUrl);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.m32880d(upload, combineUrl);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public DavResource execute() {
        return m32881e();
    }
}
