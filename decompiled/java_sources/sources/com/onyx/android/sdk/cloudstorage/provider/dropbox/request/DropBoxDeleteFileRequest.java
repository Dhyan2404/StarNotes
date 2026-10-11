package com.onyx.android.sdk.cloudstorage.provider.dropbox.request;

import com.dropbox.core.p006v2.files.DeleteArg;
import com.dropbox.core.p006v2.files.DeleteBatchError;
import com.dropbox.core.p006v2.files.DeleteBatchJobStatus;
import com.dropbox.core.p006v2.files.DeleteBatchLaunch;
import com.dropbox.core.p006v2.files.DeleteBatchResult;
import com.dropbox.core.p006v2.files.DeleteBatchResultEntry;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxUtils;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDeleteFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/DeleteCloudFileRequest;", "", CouchFieldKey.KEY_PARENT_ID, "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchCloudFileList", "", "pathList", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "deleteByPathList", "Lcom/dropbox/core/v2/files/DeleteBatchError;", "errorResult", "e", "Lcom/dropbox/core/v2/files/DeleteBatchResult;", "deleteResult", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "dropBoxProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDropBoxDeleteFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DropBoxDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDeleteFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n1549#2:111\n1620#2,3:112\n1855#2,2:115\n*S KotlinDebug\n*F\n+ 1 DropBoxDeleteFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDeleteFileRequest\n*L\n50#1:111\n50#1:112,3\n94#1:115,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DropBoxDeleteFileRequest extends DeleteCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DropBoxProvider dropBoxProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropBoxDeleteFileRequest(@NotNull DropBoxProvider dropBoxProvider, @NotNull CloudFileOperation args) {
        super(dropBoxProvider, args);
        Intrinsics.checkNotNullParameter(dropBoxProvider, "dropBoxProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.dropBoxProvider = dropBoxProvider;
        setProvider(Provider.DROP_BOX);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public QueryListResult<CloudFileBean> deleteByPathList(@NotNull List<String> pathList) {
        int collectionSizeOrDefault;
        DeleteBatchJobStatus deleteBatchCheck;
        Intrinsics.checkNotNullParameter(pathList, "pathList");
        List<String> list = pathList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new DeleteArg((String) it2.next()));
        }
        DeleteBatchLaunch deleteBatch = this.dropBoxProvider.getDbxClient().files().deleteBatch(arrayList);
        if (!deleteBatch.isAsyncJobId()) {
            Debug.INSTANCE.m32035d(DropBoxDeleteFileRequest.class, "batch delete files by sync", new Object[0]);
            if (!deleteBatch.isComplete()) {
                return new CloudFileListResult();
            }
            DeleteBatchResult completeValue = deleteBatch.getCompleteValue();
            Intrinsics.checkNotNullExpressionValue(completeValue, "getCompleteValue(...)");
            return m32652f(completeValue);
        }
        Debug.INSTANCE.m32035d(DropBoxDeleteFileRequest.class, "batch delete files by async", new Object[0]);
        while (true) {
            Thread.sleep(500L);
            deleteBatchCheck = this.dropBoxProvider.getDbxClient().files().deleteBatchCheck(deleteBatch.getAsyncJobIdValue());
            if (!deleteBatchCheck.isInProgress()) {
                break;
            }
            Debug.INSTANCE.m32035d(DropBoxDeleteFileRequest.class, "batch delete in progressing", new Object[0]);
        }
        if (deleteBatchCheck.isComplete()) {
            DeleteBatchResult completeValue2 = deleteBatchCheck.getCompleteValue();
            Intrinsics.checkNotNullExpressionValue(completeValue2, "getCompleteValue(...)");
            return m32652f(completeValue2);
        }
        DeleteBatchError failedValue = deleteBatchCheck.getFailedValue();
        Intrinsics.checkNotNullExpressionValue(failedValue, "getFailedValue(...)");
        return m32651e(failedValue);
    }

    /* renamed from: e */
    public final QueryListResult<CloudFileBean> m32651e(DeleteBatchError errorResult) {
        QueryListResult<CloudFileBean> queryListResult = new QueryListResult<>();
        queryListResult.setCode(2);
        queryListResult.setMessage(errorResult.name());
        return queryListResult;
    }

    /* renamed from: f */
    public final QueryListResult<CloudFileBean> m32652f(DeleteBatchResult deleteResult) {
        QueryListResult<CloudFileBean> queryListResult = new QueryListResult<>();
        List<DeleteBatchResultEntry> entries = deleteResult.getEntries();
        Intrinsics.checkNotNullExpressionValue(entries, "getEntries(...)");
        for (DeleteBatchResultEntry deleteBatchResultEntry : entries) {
            if (deleteBatchResultEntry.isSuccess()) {
                List<CloudFileBean> ensureList = queryListResult.ensureList();
                DropBoxUtils dropBoxUtils = DropBoxUtils.INSTANCE;
                CloudStorageRecordProvider cloudStorageRecordProvider = this.dropBoxProvider.getCloudStorageRecordProvider();
                com.dropbox.core.p006v2.files.Metadata metadata = deleteBatchResultEntry.getSuccessValue().getMetadata();
                Intrinsics.checkNotNullExpressionValue(metadata, "getMetadata(...)");
                CollectionKt.safeAdd(ensureList, dropBoxUtils.toCloudFile(cloudStorageRecordProvider, metadata, this.dropBoxProvider.getAccountId()));
            }
        }
        queryListResult.setCount(queryListResult.ensureList().size());
        Debug.INSTANCE.m32035d(DropBoxDeleteFileRequest.class, "batch delete success size:" + queryListResult.getCount(), new Object[0]);
        return queryListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.DeleteCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@Nullable String parentId) {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(getProvider().getTitle());
        cloudFileQueryArgs.setParentId(parentId);
        return DropBoxUtils.INSTANCE.toCloudFiles(this.dropBoxProvider.getCloudStorageRecordProvider(), new DropBoxFetchFileListRequest(this.dropBoxProvider, cloudFileQueryArgs).execute().ensureList(), this.dropBoxProvider.getAccountId());
    }
}
