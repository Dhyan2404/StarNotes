package com.onyx.android.sdk.cloudstorage.provider.webdav.action;

import android.annotation.SuppressLint;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavClient;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavUtils;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavDownloadRequest;
import com.onyx.android.sdk.cloudstorage.provider.webdav.request.WebDavFetchFileRequest;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.DavResource;
import java.util.List;
import java.util.Optional;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\r\u001a\u00020\t\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0015J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0003H\u0014J\b\u0010\n\u001a\u00020\tH\u0016R\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavDownloadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavDownloadRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "fetchFileInfoFromCloud", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "createDownloadRequest", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;", "webDavProvider", "", "files", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class WebDavDownloadAction extends DownloadFileAction<WebDavDownloadRequest> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final WebDavProvider webDavProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebDavDownloadAction(@NotNull WebDavProvider webDavProvider, @NotNull List<CloudFileBean> files) {
        super(files);
        Intrinsics.checkNotNullParameter(webDavProvider, "webDavProvider");
        Intrinsics.checkNotNullParameter(files, "files");
        this.webDavProvider = webDavProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction
    @NotNull
    public TransferCloudFileRequest<WebDavDownloadRequest> createDownloadRequest(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new WebDavDownloadRequest(this.webDavProvider.getWebDavClient(), cloudFile);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction
    @SuppressLint({"NewApi"})
    @NotNull
    public CloudFileBean fetchFileInfoFromCloud(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        WebDavClient webDavClient = this.webDavProvider.getWebDavClient();
        String cloudFilePath = fileBean.getCloudFilePath();
        Intrinsics.checkNotNull(cloudFilePath);
        Optional<DavResource> execute = new WebDavFetchFileRequest(webDavClient, cloudFilePath).execute();
        if (!execute.isPresent()) {
            return fileBean;
        }
        WebDavUtils webDavUtils = WebDavUtils.INSTANCE;
        CloudStorageRecordProvider cloudStorageRecordProvider = this.webDavProvider.getCloudStorageRecordProvider();
        DavResource davResource = execute.get();
        Intrinsics.checkNotNullExpressionValue(davResource, "get(...)");
        CloudFileBean cloudFile = webDavUtils.toCloudFile(cloudStorageRecordProvider, davResource, this.webDavProvider.getAccountId());
        cloudFile.setParentId(fileBean.getParentId());
        return cloudFile;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public WebDavProvider getOnyxCloudProvider() {
        return this.webDavProvider;
    }
}
