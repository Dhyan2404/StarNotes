package com.onyx.android.sdk.cloudstorage.provider.onedrive.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriverFetchFileInfoRequest;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.download.data.action.DownloadAction;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0014J\b\u0010\t\u001a\u00020\bH\u0016J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0006H\u0014R\u0014\u0010\u0010\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverDownloadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "oldFileBean", "fetchFileInfoFromCloud", "fileBean", "", "queryDownloadLink", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "getProvider", "cloudFileBean", "url", "Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;", "createDownloadAction", "i", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "j", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "fileInfo", "", "cloudFileBeans", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriverDownloadAction extends DownloadFileByUrlAction {

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public OneDriverFileInfo fileInfo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneDriverDownloadAction(@NotNull OneDriveProvider oneDriveProvider, @NotNull List<CloudFileBean> cloudFileBeans) {
        super(cloudFileBeans);
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(cloudFileBeans, "cloudFileBeans");
        this.oneDriveProvider = oneDriveProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction
    @NotNull
    public DownloadAction createDownloadAction(@NotNull CloudFileBean cloudFileBean, @NotNull String url) {
        Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
        Intrinsics.checkNotNullParameter(url, "url");
        DownloadAction createDownloadAction = super.createDownloadAction(cloudFileBean, url);
        createDownloadAction.getHeaderParams().remove(Constant.HEADER_USER_AGENT);
        return createDownloadAction;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction
    @NotNull
    public CloudFileBean fetchFileInfoFromCloud(@NotNull CloudFileBean oldFileBean) {
        Intrinsics.checkNotNullParameter(oldFileBean, "oldFileBean");
        OneDriverFetchFileInfoRequest oneDriverFetchFileInfoRequest = new OneDriverFetchFileInfoRequest(this.oneDriveProvider.getOneDriveClient());
        oneDriverFetchFileInfoRequest.setPath(oldFileBean.getCloudFilePath());
        this.fileInfo = oneDriverFetchFileInfoRequest.execute();
        OneDriverFileInfo.Companion companion = OneDriverFileInfo.INSTANCE;
        CloudStorageRecordProvider cloudStorageRecordProvider = this.oneDriveProvider.getCloudStorageRecordProvider();
        OneDriverFileInfo oneDriverFileInfo = this.fileInfo;
        Intrinsics.checkNotNull(oneDriverFileInfo);
        CloudFileBean cloudFile = companion.toCloudFile(cloudStorageRecordProvider, oneDriverFileInfo, this.oneDriveProvider.getAccountId());
        cloudFile.setParentId(oldFileBean.getParentId());
        return cloudFile;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileByUrlAction
    @NotNull
    public String queryDownloadLink(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        if (this.fileInfo == null) {
            OneDriverFetchFileInfoRequest oneDriverFetchFileInfoRequest = new OneDriverFetchFileInfoRequest(this.oneDriveProvider.getOneDriveClient());
            oneDriverFetchFileInfoRequest.setPath(fileBean.getCloudFilePath());
            this.fileInfo = oneDriverFetchFileInfoRequest.execute();
        }
        OneDriverFileInfo oneDriverFileInfo = this.fileInfo;
        Intrinsics.checkNotNull(oneDriverFileInfo);
        String link = oneDriverFileInfo.getLink();
        Intrinsics.checkNotNull(link);
        return link;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OneDriveProvider getWebDavProvider() {
        return this.oneDriveProvider;
    }
}
