package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverDownloadRequest;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0014J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0014J\b\u0010\u000e\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverDownloadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverDownloadRequest;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "files", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/util/List;)V", "createDownloadRequest", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "cloudFile", "fetchFileInfoFromCloud", "fileBean", "getProvider", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverDownloadAction extends DownloadFileAction<GoogleDriverDownloadRequest> {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriverDownloadAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull List<CloudFileBean> files) {
        super(files);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(files, "files");
        this.googleDriverProvider = googleDriverProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction
    @NotNull
    public TransferCloudFileRequest<GoogleDriverDownloadRequest> createDownloadRequest(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new GoogleDriverDownloadRequest(this.googleDriverProvider, cloudFile);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction
    @NotNull
    public CloudFileBean fetchFileInfoFromCloud(@NotNull CloudFileBean fileBean) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        String accountId = this.googleDriverProvider.getAccountId();
        GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
        GoogleDriveManager ourInstance = companion.getOurInstance();
        String parentId = fileBean.getParentId();
        String localFilePath = fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        List<File> files = ourInstance.findFiles(accountId, parentId, localFilePath).getFiles();
        Intrinsics.checkNotNullExpressionValue(files, "getFiles(...)");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) files);
        File file = (File) firstOrNull;
        if (file == null) {
            return fileBean;
        }
        CloudFileBean cloudFile = companion.toCloudFile(this.googleDriverProvider.getCloudStorageRecordProvider(), file, accountId);
        cloudFile.setParentId(fileBean.getParentId());
        return cloudFile;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getOnyxCloudProvider() {
        return this.googleDriverProvider;
    }
}
