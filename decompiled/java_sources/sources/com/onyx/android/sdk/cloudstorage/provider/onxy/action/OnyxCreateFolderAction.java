package com.onyx.android.sdk.cloudstorage.provider.onxy.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxCreateFolderRequest;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.data.ResponeData;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileExistsException;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\f\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxCreateFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "getProvider", "", "r", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "onyxCloudProvider", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxCreateFolderAction extends CreateCloudFolderAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OnyxCloudProvider onyxCloudProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnyxCreateFolderAction(@NotNull OnyxCloudProvider onyxCloudProvider, @NotNull CloudFileBean cloudFile) {
        super(cloudFile);
        Intrinsics.checkNotNullParameter(onyxCloudProvider, "onyxCloudProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.onyxCloudProvider = onyxCloudProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction
    @NotNull
    public ResponeData<CloudFileBean> createFolder(@NotNull CloudFileBean cloudFile) throws Exception {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        ResponeData<CloudFileBean> responeData = new ResponeData<>();
        try {
            OnyxCloudProvider onyxCloudProvider = this.onyxCloudProvider;
            ClusterInfo clusterInfo = getClusterInfo();
            Intrinsics.checkNotNull(clusterInfo);
            responeData.setData(OnyxCloudUtils.INSTANCE.toCloudFile(this.onyxCloudProvider.getCloudStorageRecordProvider(), new OnyxCreateFolderRequest(onyxCloudProvider.getOssManager(clusterInfo), m32801r(cloudFile)).execute()));
        } catch (FileExistsException unused) {
            responeData.setCode(1001);
        }
        return responeData;
    }

    /* renamed from: r */
    public final String m32801r(CloudFileBean cloudFile) {
        String cloudFilePath = this.onyxCloudProvider.getCloudStorageRecordProvider().getCloudFilePath(cloudFile.getParentId(), "");
        if (cloudFilePath == null || cloudFilePath.length() == 0) {
            String name = cloudFile.getName();
            Intrinsics.checkNotNull(name);
            return name;
        }
        String concat = FilenameUtils.concat(cloudFilePath, cloudFile.getName());
        Intrinsics.checkNotNullExpressionValue(concat, "concat(...)");
        return concat;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OnyxCloudProvider getGoogleDriverProvider() {
        return this.onyxCloudProvider;
    }
}
