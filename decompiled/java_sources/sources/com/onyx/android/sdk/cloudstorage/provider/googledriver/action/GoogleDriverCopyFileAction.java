package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverCopyFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverFetchAllFileListRequest;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0014J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\rH\u0014J\b\u0010\u000e\u001a\u00020\u0003H\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\rH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverCopyFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "fileOperation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "copyCloudData", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "fetchAllChildCloudFiles", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "parentData", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "getProvider", "getTargetCloudPath", "", "targetFolder", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverCopyFileAction extends CopyCloudFileAction {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriverCopyFileAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileOperation fileOperation) {
        super(fileOperation);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.googleDriverProvider = googleDriverProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public CloudFileListResult copyCloudData() {
        GoogleDriverCopyFileRequest googleDriverCopyFileRequest = new GoogleDriverCopyFileRequest(this.googleDriverProvider, getFileOperation());
        googleDriverCopyFileRequest.setCut(getCut());
        QueryListResult<CloudFileBean> execute = googleDriverCopyFileRequest.execute();
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        cloudFileListResult.setCode(execute.getCode());
        cloudFileListResult.setList(execute.ensureList());
        cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public List<CloudFileBean> fetchAllChildCloudFiles(@NotNull CloudFileOperation.OperationData parentData) {
        Intrinsics.checkNotNullParameter(parentData, "parentData");
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
        String path = parentData.getPath();
        Intrinsics.checkNotNull(path);
        CloudFileBean queryFileInfoByLocalPath = this.googleDriverProvider.getCloudStorageRecordProvider().queryFileInfoByLocalPath(companion.getCloudFileLocalPath(path, this.googleDriverProvider.getAccountId()));
        String uniqueId = queryFileInfoByLocalPath != null ? queryFileInfoByLocalPath.getUniqueId() : null;
        cloudFileQueryArgs.setParentId(uniqueId);
        GoogleDriverFetchAllFileListRequest googleDriverFetchAllFileListRequest = new GoogleDriverFetchAllFileListRequest(this.googleDriverProvider, cloudFileQueryArgs);
        googleDriverFetchAllFileListRequest.setRecursive(false);
        return companion.setFileInfoPath(this.googleDriverProvider.getCloudStorageRecordProvider(), uniqueId, companion.toCloudFiles(this.googleDriverProvider.getCloudStorageRecordProvider(), googleDriverFetchAllFileListRequest.execute(), this.googleDriverProvider.getAccountId()));
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.googleDriverProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "");
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getGoogleDriverProvider() {
        return this.googleDriverProvider;
    }
}
