package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverErrorBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0014J\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverDeleteFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;", "", CouchFieldKey.KEY_PARENT_ID, "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchCloudFileList", "", "dataList", "", "deleteCloudFileList", "pathList", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "deleteByPathList", "fileInfo", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriverDeleteFileRequest extends DeleteCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneDriverDeleteFileRequest(@NotNull OneDriveProvider oneDriveProvider, @NotNull CloudFileOperation args) {
        super(oneDriveProvider, args);
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.oneDriveProvider = oneDriveProvider;
        setProvider(Provider.ONE_DRIVE);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public QueryListResult<CloudFileBean> deleteByPathList(@NotNull List<String> pathList) {
        Intrinsics.checkNotNullParameter(pathList, "pathList");
        return new QueryListResult<>();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    public void deleteCloudFileList(@NotNull List<CloudFileBean> dataList) throws Exception {
        List<String> emptyList;
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        QueryListResult<CloudFileBean> deleteByPathList = deleteByPathList(emptyList);
        Iterator<CloudFileBean> it2 = dataList.iterator();
        while (it2.hasNext()) {
            m32774e(it2.next());
        }
        CollectionKt.safeAddAll(deleteByPathList.ensureList(), dataList);
        processDeleteResponse(deleteByPathList);
    }

    /* renamed from: e */
    public final void m32774e(CloudFileBean fileInfo) throws Exception {
        Response<OneDriverFileInfo> execute = this.oneDriveProvider.getOneDriveClient().getOneDriveService().deleteFile(fileInfo.getUniqueId()).execute();
        if (execute.isSuccessful() || execute.code() == 404) {
            return;
        }
        OneDriverErrorBody.Companion companion = OneDriverErrorBody.INSTANCE;
        Intrinsics.checkNotNull(execute);
        throw companion.parseError(execute);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@Nullable String parentId) {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(getProvider().getTitle());
        cloudFileQueryArgs.setParentId(parentId);
        return OneDriverFileInfo.INSTANCE.toCloudFiles(this.oneDriveProvider.getCloudStorageRecordProvider(), new OneDriverFetchFileListRequest(this.oneDriveProvider, cloudFileQueryArgs).execute().ensureList(), this.oneDriveProvider.getAccountId());
    }
}
