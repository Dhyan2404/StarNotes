package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0014J\u0016\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u000bH\u0014J\u0018\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\fH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverDeleteFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "fileOperation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "deleteByPathList", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "pathList", "", "", "deleteCloudFileList", "", "dataList", "fetchCloudFileList", "", CouchFieldKey.KEY_PARENT_ID, "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverDeleteFileRequest extends DeleteCloudFileRequest {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriverDeleteFileRequest(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileOperation fileOperation) {
        super(googleDriverProvider, fileOperation);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.googleDriverProvider = googleDriverProvider;
        setProvider(Provider.GOOGLE_DRIVE);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public QueryListResult<CloudFileBean> deleteByPathList(@NotNull List<String> pathList) {
        Intrinsics.checkNotNullParameter(pathList, "pathList");
        return new QueryListResult<>();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    public void deleteCloudFileList(@NotNull List<CloudFileBean> dataList) {
        List<String> emptyList;
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        QueryListResult<CloudFileBean> deleteByPathList = deleteByPathList(emptyList);
        for (CloudFileBean cloudFileBean : dataList) {
            GoogleDriveManager ourInstance = GoogleDriveManager.INSTANCE.getOurInstance();
            String accountId = this.googleDriverProvider.getAccountId();
            String uniqueId = cloudFileBean.getUniqueId();
            Intrinsics.checkNotNull(uniqueId);
            ourInstance.softDelete(accountId, uniqueId);
        }
        CollectionKt.safeAddAll(deleteByPathList.ensureList(), dataList);
        processDeleteResponse(deleteByPathList);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@Nullable String parentId) {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(getProvider().getTitle());
        cloudFileQueryArgs.setParentId(parentId);
        return GoogleDriveManager.INSTANCE.toCloudFiles(this.googleDriverProvider.getCloudStorageRecordProvider(), new GoogleDriverFetchFileListRequest(this.googleDriverProvider, cloudFileQueryArgs).execute().ensureList(), this.googleDriverProvider.getAccountId());
    }
}
