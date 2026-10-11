package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunCopyFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunFetchAllFileListRequest;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.utils.HuaweiYunUtils;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
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

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0013\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0004H\u0014J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0014J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0014J\b\u0010\u0012\u001a\u00020\u0011H\u0014J\b\u0010\u0014\u001a\u00020\u0013H\u0016R\u0014\u0010\u0017\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "copyCloudData", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "parentData", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchAllChildCloudFiles", "targetFolder", "", "getTargetCloudPath", "fileInfoPath", "getCloudFileLocalPath", "delResult", "Lio/reactivex/rxjava3/core/Observable;", "processAfterDelete", "", "getMaxQueryLimit", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "huaweiYunProvider", "", C6997f.f39671c, "J", "delayDuration", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHuaweiYunCopyFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunCopyFileAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCopyFileAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1#2:87\n*E\n"})
/* loaded from: classes7.dex */
public final class HuaweiYunCopyFileAction extends CopyCloudFileAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider huaweiYunProvider;

    /* renamed from: f, reason: from kotlin metadata */
    public final long delayDuration;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HuaweiYunCopyFileAction(@NotNull HuaweiYunProvider huaweiYunProvider, @NotNull CloudFileOperation fileOperation) {
        super(fileOperation);
        Intrinsics.checkNotNullParameter(huaweiYunProvider, "huaweiYunProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.huaweiYunProvider = huaweiYunProvider;
        this.delayDuration = 5L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public CloudFileListResult copyCloudData() {
        Object first;
        List mutableListOf;
        HuaweiYunCopyFileRequest huaweiYunCopyFileRequest = new HuaweiYunCopyFileRequest(this.huaweiYunProvider, getFileOperation());
        huaweiYunCopyFileRequest.setCut(getCut());
        QueryListResult<CloudFileBean> execute = huaweiYunCopyFileRequest.execute();
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
        CloudFileBean queryFileInfoByLocalPath = path != null ? this.huaweiYunProvider.getCloudStorageRecordProvider().queryFileInfoByLocalPath(path) : null;
        String uniqueId = queryFileInfoByLocalPath != null ? queryFileInfoByLocalPath.getUniqueId() : null;
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setProvider(Provider.HUAWEI_YUN.getTitle());
        cloudFileQueryArgs.setParentId(HuaweiYunUtils.INSTANCE.normalizeToCloudParentId(uniqueId));
        cloudFileQueryArgs.setLimit(100);
        HuaweiYunFetchAllFileListRequest huaweiYunFetchAllFileListRequest = new HuaweiYunFetchAllFileListRequest(this.huaweiYunProvider, cloudFileQueryArgs);
        huaweiYunFetchAllFileListRequest.setRecursive(false);
        return this.huaweiYunProvider.toCloudFiles(huaweiYunFetchAllFileListRequest.execute());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @NotNull
    public String getCloudFileLocalPath(@NotNull String fileInfoPath) {
        Intrinsics.checkNotNullParameter(fileInfoPath, "fileInfoPath");
        return HuaweiYunUtils.INSTANCE.getCloudFileLocalPath(this.huaweiYunProvider, fileInfoPath);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    public int getMaxQueryLimit() {
        return 100;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.CopyCloudFileAction
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.huaweiYunProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "/");
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
    public HuaweiYunProvider getWebDavProvider() {
        return this.huaweiYunProvider;
    }
}
