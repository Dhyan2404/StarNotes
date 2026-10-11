package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverCreateFolderRequest;
import com.onyx.android.sdk.data.common.data.ResponeData;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\b2\u0006\u0010\u0004\u001a\u00020\u0005H\u0014J\b\u0010\t\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverCreateFolderAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "cloudFile", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "createFolder", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "getProvider", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverCreateFolderAction extends CreateCloudFolderAction {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriverCreateFolderAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileBean cloudFile) {
        super(cloudFile);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.googleDriverProvider = googleDriverProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CreateCloudFolderAction
    @NotNull
    public ResponeData<CloudFileBean> createFolder(@NotNull CloudFileBean cloudFile) {
        List<CloudFileBean> listOf;
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        ResponeData<CloudFileBean> responeData = new ResponeData<>();
        try {
            File execute = new GoogleDriverCreateFolderRequest(this.googleDriverProvider, cloudFile).execute();
            GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
            responeData.setData(companion.toCloudFile(this.googleDriverProvider.getCloudStorageRecordProvider(), execute, this.googleDriverProvider.getAccountId()));
            CloudFileBean data = responeData.getData();
            Intrinsics.checkNotNull(data);
            data.setParentId(cloudFile.getParentId());
            CloudStorageRecordProvider cloudStorageRecordProvider = this.googleDriverProvider.getCloudStorageRecordProvider();
            String parentId = cloudFile.getParentId();
            CloudFileBean data2 = responeData.getData();
            Intrinsics.checkNotNull(data2);
            listOf = CollectionsKt__CollectionsJVMKt.listOf(data2);
            companion.setFileInfoPath(cloudStorageRecordProvider, parentId, listOf);
        } catch (Exception unused) {
            responeData.setCode(1001);
        }
        return responeData;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getWebDavProvider() {
        return this.googleDriverProvider;
    }
}
