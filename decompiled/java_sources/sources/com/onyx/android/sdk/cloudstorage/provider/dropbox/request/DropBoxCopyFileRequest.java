package com.onyx.android.sdk.cloudstorage.provider.dropbox.request;

import com.dropbox.core.p006v2.files.RelocationBatchErrorEntry;
import com.dropbox.core.p006v2.files.RelocationBatchResultEntry;
import com.dropbox.core.p006v2.files.RelocationBatchV2JobStatus;
import com.dropbox.core.p006v2.files.RelocationBatchV2Launch;
import com.dropbox.core.p006v2.files.RelocationBatchV2Result;
import com.dropbox.core.p006v2.files.RelocationPath;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u0019\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0014J\u0012\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0014J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\fH\u0002J\u0016\u0010\u0018\u001a\u00020\u00172\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0006H\u0002R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxCopyFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "parent", "", "fetchCloudFileList", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "dataList", "", "copy", "targetFolder", "", "getTargetCloudPath", "Lcom/dropbox/core/v2/files/RelocationBatchV2Result;", "batchResult", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "d", "jobId", "Lcom/dropbox/core/v2/files/RelocationBatchV2JobStatus;", "c", "Lcom/dropbox/core/v2/files/RelocationPath;", "list", "Lcom/dropbox/core/v2/files/RelocationBatchV2Launch;", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "dropBoxProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDropBoxCopyFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DropBoxCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxCopyFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1549#2:130\n1620#2,3:131\n*S KotlinDebug\n*F\n+ 1 DropBoxCopyFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxCopyFileRequest\n*L\n46#1:130\n46#1:131,3\n*E\n"})
/* loaded from: classes7.dex */
public final class DropBoxCopyFileRequest extends CopyCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DropBoxProvider dropBoxProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropBoxCopyFileRequest(@NotNull DropBoxProvider dropBoxProvider, @NotNull CloudFileOperation args) {
        super(dropBoxProvider, args);
        Intrinsics.checkNotNullParameter(dropBoxProvider, "dropBoxProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.dropBoxProvider = dropBoxProvider;
    }

    /* renamed from: c */
    public final RelocationBatchV2JobStatus m32648c(String jobId) throws Exception {
        if (getCut()) {
            RelocationBatchV2JobStatus moveBatchCheckV2 = this.dropBoxProvider.getDbxClient().files().moveBatchCheckV2(jobId);
            Intrinsics.checkNotNullExpressionValue(moveBatchCheckV2, "moveBatchCheckV2(...)");
            return moveBatchCheckV2;
        }
        RelocationBatchV2JobStatus copyBatchCheckV2 = this.dropBoxProvider.getDbxClient().files().copyBatchCheckV2(jobId);
        Intrinsics.checkNotNullExpressionValue(copyBatchCheckV2, "copyBatchCheckV2(...)");
        return copyBatchCheckV2;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    public void copy(@NotNull List<CloudFileOperation.OperationData> dataList) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        List<CloudFileOperation.OperationData> list = dataList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CloudFileOperation.OperationData operationData : list) {
            RelocationPath relocationPath = new RelocationPath(operationData.getPath(), FilenameUtils.concat(operationData.getDest(), operationData.getNewName()));
            Debug.INSTANCE.m32035d(DropBoxCopyFileRequest.class, "move/copy relocationPath:" + relocationPath.toStringMultiline(), new Object[0]);
            arrayList.add(relocationPath);
        }
        RelocationBatchV2Launch m32650e = m32650e(arrayList);
        if (!m32650e.isAsyncJobId()) {
            Debug.INSTANCE.m32035d(DropBoxCopyFileRequest.class, "batch copy/move files by sync", new Object[0]);
            if (m32650e.isComplete()) {
                List<CloudFileBean> ensureList = getResult().ensureList();
                RelocationBatchV2Result completeValue = m32650e.getCompleteValue();
                Intrinsics.checkNotNullExpressionValue(completeValue, "getCompleteValue(...)");
                CollectionKt.safeAddAll(ensureList, m32649d(completeValue).ensureList());
                return;
            }
            return;
        }
        Debug.INSTANCE.m32035d(DropBoxCopyFileRequest.class, "batch copy/move files by async", new Object[0]);
        while (true) {
            Thread.sleep(500L);
            String asyncJobIdValue = m32650e.getAsyncJobIdValue();
            Intrinsics.checkNotNullExpressionValue(asyncJobIdValue, "getAsyncJobIdValue(...)");
            RelocationBatchV2JobStatus m32648c = m32648c(asyncJobIdValue);
            if (!m32648c.isInProgress()) {
                List<CloudFileBean> ensureList2 = getResult().ensureList();
                RelocationBatchV2Result completeValue2 = m32648c.getCompleteValue();
                Intrinsics.checkNotNullExpressionValue(completeValue2, "getCompleteValue(...)");
                CollectionKt.safeAddAll(ensureList2, m32649d(completeValue2).ensureList());
                return;
            }
            Debug.INSTANCE.m32035d(DropBoxCopyFileRequest.class, "batch in progressing", new Object[0]);
        }
    }

    /* renamed from: d */
    public final QueryListResult<CloudFileBean> m32649d(RelocationBatchV2Result batchResult) throws Exception {
        QueryListResult<CloudFileBean> queryListResult = new QueryListResult<>();
        for (RelocationBatchResultEntry relocationBatchResultEntry : batchResult.getEntries()) {
            if (relocationBatchResultEntry.isFailure()) {
                DropBoxUtils dropBoxUtils = DropBoxUtils.INSTANCE;
                RelocationBatchErrorEntry failureValue = relocationBatchResultEntry.getFailureValue();
                Intrinsics.checkNotNullExpressionValue(failureValue, "getFailureValue(...)");
                throw dropBoxUtils.mapToStandardError(failureValue);
            }
            if (relocationBatchResultEntry.isSuccess()) {
                List<CloudFileBean> ensureList = queryListResult.ensureList();
                DropBoxUtils dropBoxUtils2 = DropBoxUtils.INSTANCE;
                CloudStorageRecordProvider cloudStorageRecordProvider = this.dropBoxProvider.getCloudStorageRecordProvider();
                com.dropbox.core.p006v2.files.Metadata successValue = relocationBatchResultEntry.getSuccessValue();
                Intrinsics.checkNotNullExpressionValue(successValue, "getSuccessValue(...)");
                CollectionKt.safeAdd(ensureList, dropBoxUtils2.toCloudFile(cloudStorageRecordProvider, successValue, this.dropBoxProvider.getAccountId()));
            }
        }
        queryListResult.setCount(queryListResult.ensureList().size());
        Debug.INSTANCE.m32035d(DropBoxCopyFileRequest.class, "batch copy/move success size:" + queryListResult.getCount(), new Object[0]);
        return queryListResult;
    }

    /* renamed from: e */
    public final RelocationBatchV2Launch m32650e(List<? extends RelocationPath> list) throws Exception {
        if (getCut()) {
            RelocationBatchV2Launch moveBatchV2 = this.dropBoxProvider.getDbxClient().files().moveBatchV2(list);
            Intrinsics.checkNotNullExpressionValue(moveBatchV2, "moveBatchV2(...)");
            return moveBatchV2;
        }
        RelocationBatchV2Launch copyBatchV2 = this.dropBoxProvider.getDbxClient().files().copyBatchV2(list);
        Intrinsics.checkNotNullExpressionValue(copyBatchV2, "copyBatchV2(...)");
        return copyBatchV2;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@NotNull CloudFileBean parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setParentId(parent.getUniqueId());
        return DropBoxUtils.INSTANCE.toCloudFiles(this.dropBoxProvider.getCloudStorageRecordProvider(), new DropBoxFetchFileListRequest(this.dropBoxProvider, cloudFileQueryArgs).execute().ensureList(), this.dropBoxProvider.getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.dropBoxProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "");
    }
}
