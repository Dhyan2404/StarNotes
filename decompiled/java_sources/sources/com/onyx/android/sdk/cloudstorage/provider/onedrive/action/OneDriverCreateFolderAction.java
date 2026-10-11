package com.onyx.android.sdk.cloudstorage.provider.onedrive.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriverCreateFolderRequest;
import com.onyx.android.sdk.data.common.data.ResponeData;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\n\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverCreateFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "cloudFile", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriverCreateFolderAction extends CreateCloudFolderAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneDriverCreateFolderAction(@NotNull OneDriveProvider oneDriveProvider, @NotNull CloudFileBean cloudFile) {
        super(cloudFile);
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.oneDriveProvider = oneDriveProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction
    @NotNull
    public ResponeData<CloudFileBean> createFolder(@NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        ResponeData<CloudFileBean> responeData = new ResponeData<>();
        try {
            responeData.setData(OneDriverFileInfo.INSTANCE.toCloudFile(this.oneDriveProvider.getCloudStorageRecordProvider(), new OneDriverCreateFolderRequest(this.oneDriveProvider.getOneDriveClient(), cloudFile).execute(), this.oneDriveProvider.getAccountId()));
            CloudFileBean data = responeData.getData();
            if (data != null) {
                data.setParentId(cloudFile.getParentId());
            }
        } catch (CloudNoteException e) {
            if (!CloudNoteException.INSTANCE.isConflictError(e)) {
                throw e;
            }
            responeData.setCode(1001);
        }
        return responeData;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OneDriveProvider getWebDavProvider() {
        return this.oneDriveProvider;
    }
}
