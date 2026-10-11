package com.onyx.android.sdk.cloudstorage.provider.aliyun.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunCopyFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunFetchAllFileListRequest;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunUtils;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0013\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0004H\u0014J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0014J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0014J\b\u0010\u0012\u001a\u00020\u0011H\u0014J\b\u0010\u0014\u001a\u00020\u0013H\u0016R\u0014\u0010\u0017\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCopyFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "copyCloudData", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "parentData", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchAllChildCloudFiles", "targetFolder", "", "getTargetCloudPath", "fileInfoPath", "getCloudFileLocalPath", "delResult", "Lio/reactivex/rxjava3/core/Observable;", "processAfterDelete", "", "getMaxQueryLimit", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", CouchFieldKey.KEY_PROVIDER, "", C6997f.f39671c, "J", "delayDuration", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAliYunCopyFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunCopyFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCopyFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"})
/* loaded from: classes7.dex */
public final class AliYunCopyFileAction extends CopyCloudFileAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider provider;

    /* renamed from: f, reason: from kotlin metadata */
    public final long delayDuration;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AliYunCopyFileAction(@NotNull AliYunProvider provider, @NotNull CloudFileOperation fileOperation) {
        super(fileOperation);
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.provider = provider;
        this.delayDuration = 5L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public CloudFileListResult copyCloudData() {
        Object first;
        List mutableListOf;
        AliYunCopyFileRequest aliYunCopyFileRequest = new AliYunCopyFileRequest(this.provider, getFileOperation());
        aliYunCopyFileRequest.setCut(getCut());
        QueryListResult<CloudFileBean> execute = aliYunCopyFileRequest.execute();
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        cloudFileListResult.setCode(execute.getCode());
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) execute.ensureList());
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(first);
        cloudFileListResult.setList(mutableListOf);
        cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public List<CloudFileBean> fetchAllChildCloudFiles(@NotNull CloudFileOperation.OperationData parentData) {
        Intrinsics.checkNotNullParameter(parentData, "parentData");
        String path = parentData.getPath();
        CloudFileBean queryFileInfoByLocalPath = path != null ? this.provider.getCloudStorageRecordProvider().queryFileInfoByLocalPath(path) : null;
        String uniqueId = queryFileInfoByLocalPath != null ? queryFileInfoByLocalPath.getUniqueId() : null;
        AliYunQueryArgs aliYunQueryArgs = new AliYunQueryArgs();
        aliYunQueryArgs.setDriveId(this.provider.getDefaultDriveId());
        aliYunQueryArgs.setParentFileId(AliYunUtils.INSTANCE.normalizeToCloudParentId(uniqueId));
        aliYunQueryArgs.setLimit(100);
        AliYunFetchAllFileListRequest aliYunFetchAllFileListRequest = new AliYunFetchAllFileListRequest(this.provider, aliYunQueryArgs);
        aliYunFetchAllFileListRequest.setRecursive(false);
        return this.provider.toCloudFiles(aliYunFetchAllFileListRequest.execute());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public String getCloudFileLocalPath(@NotNull String fileInfoPath) {
        Intrinsics.checkNotNullParameter(fileInfoPath, "fileInfoPath");
        return AliYunUtils.INSTANCE.getCloudFileLocalPath(this.provider, fileInfoPath);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    public int getMaxQueryLimit() {
        return 100;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.provider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "/");
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public Observable<CloudFileListResult> processAfterDelete(@NotNull CloudFileListResult delResult) {
        Intrinsics.checkNotNullParameter(delResult, "delResult");
        Observable<CloudFileListResult> delay = super.processAfterDelete(delResult).delay(delResult.isSuccessful() ? this.delayDuration : 0L, TimeUnit.SECONDS);
        Intrinsics.checkNotNullExpressionValue(delay, "delay(...)");
        return delay;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public AliYunProvider getWebDavProvider() {
        return this.provider;
    }
}
