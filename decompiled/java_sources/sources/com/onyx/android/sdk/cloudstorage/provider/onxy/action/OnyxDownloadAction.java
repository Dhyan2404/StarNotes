package com.onyx.android.sdk.cloudstorage.provider.onxy.action;

import com.alibaba.sdk.android.oss.model.GetObjectResult;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxDownloadRequest;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.oss.GetObjectBean;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\r\u001a\u00020\t\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0003H\u0014J\b\u0010\n\u001a\u00020\tH\u0016R\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxDownloadAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxDownloadRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "fetchFileInfoFromCloud", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "createDownloadRequest", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "onyxCloudProvider", "", "files", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Ljava/util/List;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxDownloadAction extends DownloadFileAction<OnyxDownloadRequest> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OnyxCloudProvider onyxCloudProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnyxDownloadAction(@NotNull OnyxCloudProvider onyxCloudProvider, @NotNull List<CloudFileBean> files) {
        super(files);
        Intrinsics.checkNotNullParameter(onyxCloudProvider, "onyxCloudProvider");
        Intrinsics.checkNotNullParameter(files, "files");
        this.onyxCloudProvider = onyxCloudProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction
    @NotNull
    public TransferCloudFileRequest<OnyxDownloadRequest> createDownloadRequest(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        OnyxCloudProvider onyxCloudProvider = this.onyxCloudProvider;
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        return new OnyxDownloadRequest(onyxCloudProvider.getOssManager(clusterInfo), cloudFile);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DownloadFileAction
    @NotNull
    public CloudFileBean fetchFileInfoFromCloud(@NotNull CloudFileBean fileBean) throws Exception {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        OnyxCloudUtils onyxCloudUtils = OnyxCloudUtils.INSTANCE;
        GetObjectBean getObjectBean = new GetObjectBean(onyxCloudUtils.getBaseListObjectBean(fileBean.getCloudFilePath()).getPrefix(), null, 2, null);
        OnyxCloudProvider onyxCloudProvider = this.onyxCloudProvider;
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        GetObjectResult syncGetObject = onyxCloudProvider.getOssManager(clusterInfo).syncGetObject(getObjectBean);
        CloudStorageRecordProvider cloudStorageRecordProvider = this.onyxCloudProvider.getCloudStorageRecordProvider();
        ObjectMetadata metadata = syncGetObject.getMetadata();
        Intrinsics.checkNotNullExpressionValue(metadata, "getMetadata(...)");
        CloudFileBean cloudFile = onyxCloudUtils.toCloudFile(cloudStorageRecordProvider, metadata);
        cloudFile.setParentId(fileBean.getParentId());
        return cloudFile;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OnyxCloudProvider getGoogleDriverProvider() {
        return this.onyxCloudProvider;
    }
}
