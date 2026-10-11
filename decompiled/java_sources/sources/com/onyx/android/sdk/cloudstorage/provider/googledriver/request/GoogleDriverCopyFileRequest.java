package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.utils.GoogleDriverUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0014J\b\u0010\u000e\u001a\u00020\bH\u0002J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u0011H\u0014J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\rH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverCopyFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "args", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "rootFolder", "Lcom/google/api/services/drive/model/File;", "copy", "", "dataList", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "ensureRootFolderCreated", "fetchCloudFileList", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "parent", "getTargetCloudPath", "", "targetFolder", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverCopyFileRequest extends CopyCloudFileRequest {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    @Nullable
    private File rootFolder;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriverCopyFileRequest(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileOperation args) {
        super(googleDriverProvider, args);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.googleDriverProvider = googleDriverProvider;
    }

    private final File ensureRootFolderCreated() throws Exception {
        List<String> listOf;
        if (this.rootFolder == null) {
            GoogleDriveManager ourInstance = GoogleDriveManager.INSTANCE.getOurInstance();
            String accountId = getProvider().getAccountId();
            listOf = CollectionsKt__CollectionsJVMKt.listOf("");
            this.rootFolder = ourInstance.ensureParentFolderCreated(accountId, listOf);
        }
        File file = this.rootFolder;
        Intrinsics.checkNotNull(file);
        return file;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    public void copy(@NotNull List<CloudFileOperation.OperationData> dataList) {
        String uniqueId;
        String str;
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        for (CloudFileOperation.OperationData operationData : dataList) {
            Debug.INSTANCE.m32035d(GoogleDriverCopyFileRequest.class, "operationData:" + JSONUtils.INSTANCE.toJson(operationData), new Object[0]);
            String dest = operationData.getDest();
            if (dest == null || dest.length() == 0) {
                uniqueId = ensureRootFolderCreated().getId();
            } else {
                GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
                String dest2 = operationData.getDest();
                Intrinsics.checkNotNull(dest2);
                CloudFileBean queryFileInfoByLocalPath = this.googleDriverProvider.getCloudStorageRecordProvider().queryFileInfoByLocalPath(companion.getCloudFileLocalPath(dest2, getProvider().getAccountId()));
                uniqueId = queryFileInfoByLocalPath != null ? queryFileInfoByLocalPath.getUniqueId() : null;
            }
            String str2 = uniqueId;
            String origin = operationData.getOrigin();
            if (origin == null) {
                GoogleDriveManager.Companion companion2 = GoogleDriveManager.INSTANCE;
                String path = operationData.getPath();
                Intrinsics.checkNotNull(path);
                CloudFileBean queryFileInfoByLocalPath2 = this.googleDriverProvider.getCloudStorageRecordProvider().queryFileInfoByLocalPath(companion2.getCloudFileLocalPath(path, getProvider().getAccountId()));
                str = queryFileInfoByLocalPath2 != null ? queryFileInfoByLocalPath2.getUniqueId() : null;
            } else {
                str = origin;
            }
            try {
                GoogleDriveManager ourInstance = GoogleDriveManager.INSTANCE.getOurInstance();
                String accountId = getProvider().getAccountId();
                Intrinsics.checkNotNull(str);
                String newName = operationData.getNewName();
                Intrinsics.checkNotNull(newName);
                Intrinsics.checkNotNull(str2);
                ourInstance.copy(accountId, str, newName, str2, getCut());
            } catch (Exception e) {
                throw GoogleDriverUtils.INSTANCE.mapToStandardError(e);
            }
        }
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@NotNull CloudFileBean parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        String uniqueId = parent.getUniqueId();
        if (uniqueId == null || uniqueId.length() == 0) {
            uniqueId = ensureRootFolderCreated().getId();
            Intrinsics.checkNotNullExpressionValue(uniqueId, "getId(...)");
        }
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setParentId(uniqueId);
        return GoogleDriveManager.INSTANCE.toCloudFiles(this.googleDriverProvider.getCloudStorageRecordProvider(), new GoogleDriverFetchFileListRequest(this.googleDriverProvider, cloudFileQueryArgs).execute().ensureList(), this.googleDriverProvider.getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.googleDriverProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "");
    }
}
