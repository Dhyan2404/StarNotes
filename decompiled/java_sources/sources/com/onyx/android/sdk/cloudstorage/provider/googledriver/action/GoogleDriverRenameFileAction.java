package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverRenameFileRequest;
import io.reactivex.rxjava3.core.Observable;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000bH\u0014J\b\u0010\f\u001a\u00020\u0003H\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverRenameFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RenameCloudFileAction;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "fileOperation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "createParentFolder", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "fileBean", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "getProvider", "rename", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverRenameFileAction extends RenameCloudFileAction {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriverRenameFileAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileOperation fileOperation) {
        super(fileOperation);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.googleDriverProvider = googleDriverProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction
    @NotNull
    public Observable<CloudFileListResult> createParentFolder(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        return new GoogleDriverCreateFolderAction(this.googleDriverProvider, fileBean).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction
    @NotNull
    public CloudFileListResult rename(@NotNull CloudFileOperation fileOperation) {
        List<CloudFileBean> listOf;
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        try {
            GoogleDriverRenameFileRequest googleDriverRenameFileRequest = new GoogleDriverRenameFileRequest(this.googleDriverProvider, fileOperation);
            File execute = googleDriverRenameFileRequest.execute();
            CloudFileOperation.OperationData operationData = googleDriverRenameFileRequest.getOperationData();
            if (execute != null) {
                cloudFileListResult.setCode(0);
                GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
                CloudFileBean cloudFile = companion.toCloudFile(this.googleDriverProvider.getCloudStorageRecordProvider(), execute, this.googleDriverProvider.getAccountId());
                CloudStorageRecordProvider cloudStorageRecordProvider = this.googleDriverProvider.getCloudStorageRecordProvider();
                Intrinsics.checkNotNull(operationData);
                CloudFileBean queryFileInfo = cloudStorageRecordProvider.queryFileInfo(operationData.getOrigin());
                CloudStorageRecordProvider cloudStorageRecordProvider2 = this.googleDriverProvider.getCloudStorageRecordProvider();
                String parentId = queryFileInfo != null ? queryFileInfo.getParentId() : null;
                listOf = CollectionsKt__CollectionsJVMKt.listOf(cloudFile);
                companion.setFileInfoPath(cloudStorageRecordProvider2, parentId, listOf);
                CollectionKt.safeAdd(cloudFileListResult.ensureList(), cloudFile);
            } else {
                cloudFileListResult.setCode(2);
            }
            cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        } catch (Exception unused) {
            cloudFileListResult.setCode(1001);
        }
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getGoogleDriverProvider() {
        return this.googleDriverProvider;
    }
}
