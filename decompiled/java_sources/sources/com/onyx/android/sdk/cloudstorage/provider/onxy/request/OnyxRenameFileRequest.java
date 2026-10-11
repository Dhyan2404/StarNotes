package com.onyx.android.sdk.cloudstorage.provider.onxy.request;

import com.alibaba.fastjson2.TypeReference;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxRenameFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "onyxCloudProvider", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "b", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "c", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxRenameFileRequest extends RxBaseRequest<ObjectMetadata> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OnyxCloudProvider onyxCloudProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RxOSSManager rxOSSManager;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final CloudFileOperation fileOperation;

    public OnyxRenameFileRequest(@NotNull OnyxCloudProvider onyxCloudProvider, @NotNull RxOSSManager rxOSSManager, @NotNull CloudFileOperation fileOperation) {
        Intrinsics.checkNotNullParameter(onyxCloudProvider, "onyxCloudProvider");
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.onyxCloudProvider = onyxCloudProvider;
        this.rxOSSManager = rxOSSManager;
        this.fileOperation = fileOperation;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public ObjectMetadata execute() throws Exception {
        Object first;
        Object parseObject = JSONUtils.INSTANCE.parseObject(this.fileOperation.getDataJson(), new TypeReference<List<? extends CloudFileOperation.OperationData>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxRenameFileRequest$execute$operationData$1
        });
        Intrinsics.checkNotNull(parseObject);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) parseObject);
        Intrinsics.checkNotNull(first);
        CloudFileOperation.OperationData operationData = (CloudFileOperation.OperationData) first;
        operationData.setDest(null);
        ObjectMetadata copySmallFile = OnyxCloudUtils.INSTANCE.copySmallFile(this.onyxCloudProvider.getCloudStorageRecordProvider(), this.rxOSSManager, operationData, true);
        this.rxOSSManager.deleteFile(String.valueOf(copySmallFile.getRawMetadata().get(Constant.SRC_TAG)));
        return copySmallFile;
    }
}
