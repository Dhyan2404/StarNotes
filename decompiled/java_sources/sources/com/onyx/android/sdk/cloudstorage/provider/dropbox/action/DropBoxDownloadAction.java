package com.onyx.android.sdk.cloudstorage.provider.dropbox.action;

import com.dropbox.core.p006v2.DbxClientV2;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxUtils;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxDownloadRequest;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxFetchFileRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\r\u001a\u00020\t\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0003H\u0014J\b\u0010\n\u001a\u00020\tH\u0016R\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "fetchFileInfoFromCloud", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "createDownloadRequest", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "dropBoxProvider", "", "files", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxDownloadAction extends DownloadFileAction<DropBoxDownloadRequest> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final DropBoxProvider dropBoxProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropBoxDownloadAction(@NotNull DropBoxProvider dropBoxProvider, @NotNull List<CloudFileBean> files) {
        super(files);
        Intrinsics.checkNotNullParameter(dropBoxProvider, "dropBoxProvider");
        Intrinsics.checkNotNullParameter(files, "files");
        this.dropBoxProvider = dropBoxProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction
    @NotNull
    public TransferCloudFileRequest<DropBoxDownloadRequest> createDownloadRequest(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        return new DropBoxDownloadRequest(this.dropBoxProvider.getDbxClient(), cloudFile);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction
    @NotNull
    public CloudFileBean fetchFileInfoFromCloud(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        DbxClientV2 dbxClient = this.dropBoxProvider.getDbxClient();
        String cloudFilePath = fileBean.getCloudFilePath();
        Intrinsics.checkNotNull(cloudFilePath);
        com.dropbox.core.p006v2.files.Metadata execute = new DropBoxFetchFileRequest(dbxClient, cloudFilePath).execute();
        if (execute == null) {
            return fileBean;
        }
        CloudFileBean cloudFile = DropBoxUtils.INSTANCE.toCloudFile(this.dropBoxProvider.getCloudStorageRecordProvider(), execute, this.dropBoxProvider.getAccountId());
        cloudFile.setParentId(fileBean.getParentId());
        return cloudFile;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public DropBoxProvider getWebDavProvider() {
        return this.dropBoxProvider;
    }
}
