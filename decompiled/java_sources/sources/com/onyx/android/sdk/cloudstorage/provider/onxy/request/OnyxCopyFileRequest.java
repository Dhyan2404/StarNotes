package com.onyx.android.sdk.cloudstorage.provider.onxy.request;

import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0014J\u0012\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0014R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxCopyFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "parent", "", "fetchCloudFileList", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "dataList", "", "copy", "targetFolder", "", "getTargetCloudPath", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "onyxCloudProvider", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "b", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxCopyFileRequest extends CopyCloudFileRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OnyxCloudProvider onyxCloudProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RxOSSManager rxOSSManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnyxCopyFileRequest(@NotNull OnyxCloudProvider onyxCloudProvider, @NotNull RxOSSManager rxOSSManager, @NotNull CloudFileOperation args) {
        super(onyxCloudProvider, args);
        Intrinsics.checkNotNullParameter(onyxCloudProvider, "onyxCloudProvider");
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        Intrinsics.checkNotNullParameter(args, "args");
        this.onyxCloudProvider = onyxCloudProvider;
        this.rxOSSManager = rxOSSManager;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    public void copy(@NotNull List<CloudFileOperation.OperationData> dataList) throws Exception {
        Intrinsics.checkNotNullParameter(dataList, "dataList");
        for (CloudFileOperation.OperationData operationData : dataList) {
            OnyxCloudUtils onyxCloudUtils = OnyxCloudUtils.INSTANCE;
            ObjectMetadata copySmallFile = onyxCloudUtils.copySmallFile(this.onyxCloudProvider.getCloudStorageRecordProvider(), this.rxOSSManager, operationData, false);
            CollectionKt.safeAdd(getResult().ensureList(), onyxCloudUtils.toCloudFile(this.onyxCloudProvider.getCloudStorageRecordProvider(), copySmallFile));
            if (getCut()) {
                this.rxOSSManager.deleteFile(String.valueOf(copySmallFile.getRawMetadata().get(Constant.SRC_TAG)));
            }
        }
        getResult().setCount(getResult().ensureList().size());
        Debug.INSTANCE.m32035d(OnyxCopyFileRequest.class, "copy/move success size:" + getResult().getCount(), new Object[0]);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @NotNull
    public List<CloudFileBean> fetchCloudFileList(@NotNull CloudFileBean parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setParentId(parent.getUniqueId());
        return OnyxCloudUtils.INSTANCE.toCloudFiles(this.onyxCloudProvider.getCloudStorageRecordProvider(), new OnyxFetchFileListRequest(this.onyxCloudProvider, this.rxOSSManager, cloudFileQueryArgs).execute().ensureList());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.CopyCloudFileRequest
    @Nullable
    public String getTargetCloudPath(@NotNull CloudFileOperation.OperationData targetFolder) {
        Intrinsics.checkNotNullParameter(targetFolder, "targetFolder");
        return this.onyxCloudProvider.getCloudStorageRecordProvider().getCloudFilePath(targetFolder.getOrigin(), "");
    }
}
