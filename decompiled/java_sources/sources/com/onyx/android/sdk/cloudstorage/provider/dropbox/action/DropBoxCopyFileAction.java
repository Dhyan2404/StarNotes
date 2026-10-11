package com.onyx.android.sdk.cloudstorage.provider.dropbox.action;

import com.dropbox.core.p006v2.DbxClientV2;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxUtils;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxCopyFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxFetchAllFileListRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0004H\u0014J\b\u0010\r\u001a\u00020\fH\u0016R\u0014\u0010\u0010\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "copyCloudData", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "parentData", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchAllChildCloudFiles", "targetFolder", "", "getTargetCloudPath", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "dropBoxProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxCopyFileAction extends CopyCloudFileAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final DropBoxProvider dropBoxProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropBoxCopyFileAction(@NotNull DropBoxProvider dropBoxProvider, @NotNull CloudFileOperation fileOperation) {
        super(fileOperation);
        Intrinsics.checkNotNullParameter(dropBoxProvider, "dropBoxProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.dropBoxProvider = dropBoxProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public CloudFileListResult copyCloudData() {
        DropBoxCopyFileRequest dropBoxCopyFileRequest = new DropBoxCopyFileRequest(this.dropBoxProvider, getFileOperation());
        dropBoxCopyFileRequest.setCut(getCut());
        QueryListResult<CloudFileBean> execute = dropBoxCopyFileRequest.execute();
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
        final ArrayList arrayList = new ArrayList();
        final DbxClientV2 dbxClient = this.dropBoxProvider.getDbxClient();
        final String path = parentData.getPath();
        Intrinsics.checkNotNull(path);
        DropBoxFetchAllFileListRequest dropBoxFetchAllFileListRequest = new DropBoxFetchAllFileListRequest(dbxClient, path) { // from class: com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxCopyFileAction$fetchAllChildCloudFiles$request$1
            @Override // com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxFetchAllFileListRequest
            public boolean onBatchList(@NotNull List<? extends com.dropbox.core.p006v2.files.Metadata> list) {
                DropBoxProvider dropBoxProvider;
                DropBoxProvider dropBoxProvider2;
                Intrinsics.checkNotNullParameter(list, "list");
                for (com.dropbox.core.p006v2.files.Metadata metadata : list) {
                    DropBoxUtils dropBoxUtils = DropBoxUtils.INSTANCE;
                    dropBoxProvider = DropBoxCopyFileAction.this.dropBoxProvider;
                    CloudStorageRecordProvider cloudStorageRecordProvider = dropBoxProvider.getCloudStorageRecordProvider();
                    dropBoxProvider2 = DropBoxCopyFileAction.this.dropBoxProvider;
                    CloudFileBean cloudFile = dropBoxUtils.toCloudFile(cloudStorageRecordProvider, metadata, dropBoxProvider2.getAccountId());
                    if (!cloudFile.getDir()) {
                        arrayList.add(cloudFile);
                    }
                }
                return false;
            }
        };
        dropBoxFetchAllFileListRequest.setRecursive(false);
        dropBoxFetchAllFileListRequest.execute();
        return arrayList;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.dropBoxProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "");
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public DropBoxProvider getOnyxCloudProvider() {
        return this.dropBoxProvider;
    }
}
