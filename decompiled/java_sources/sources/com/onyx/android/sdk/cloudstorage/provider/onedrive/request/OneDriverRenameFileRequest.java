package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveClient;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveService;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverErrorBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.OneDriverUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverRenameFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "oneDriveClient", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "c", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "operationData", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriverRenameFileRequest extends RxBaseRequest<OneDriverFileInfo> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveClient oneDriveClient;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileOperation fileOperation;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public CloudFileOperation.OperationData operationData;

    public OneDriverRenameFileRequest(@NotNull OneDriveClient oneDriveClient, @NotNull CloudFileOperation fileOperation) {
        Intrinsics.checkNotNullParameter(oneDriveClient, "oneDriveClient");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.oneDriveClient = oneDriveClient;
        this.fileOperation = fileOperation;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public OneDriverFileInfo execute() {
        Object first;
        List list = (List) JSONUtils.INSTANCE.parseObject(this.fileOperation.getDataJson(), new TypeReference<List<? extends CloudFileOperation.OperationData>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriverRenameFileRequest$execute$list$1
        });
        Intrinsics.checkNotNull(list);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        CloudFileOperation.OperationData operationData = (CloudFileOperation.OperationData) first;
        this.operationData = operationData;
        OneDriverUtils oneDriverUtils = OneDriverUtils.INSTANCE;
        Intrinsics.checkNotNull(operationData);
        String newName = operationData.getNewName();
        Intrinsics.checkNotNull(newName);
        Map<String, Object> fileUpdateMap = oneDriverUtils.getFileUpdateMap(newName);
        if (this.fileOperation.getStrategy() == CloudFileOperation.OperationStrategy.OVERWRITE) {
            fileUpdateMap.put(OneDriverConstants.GRAPH_CONFLICT_BEHAVIOR, "replace");
        }
        OneDriveService oneDriveService = this.oneDriveClient.getOneDriveService();
        CloudFileOperation.OperationData operationData2 = this.operationData;
        Intrinsics.checkNotNull(operationData2);
        Response<OneDriverFileInfo> execute = oneDriveService.renameFile(operationData2.getOrigin(), fileUpdateMap).execute();
        if (execute.isSuccessful()) {
            OneDriverFileInfo body = execute.body();
            Debug debug = Debug.INSTANCE;
            StringBuilder sb = new StringBuilder();
            CloudFileOperation.OperationData operationData3 = this.operationData;
            Intrinsics.checkNotNull(operationData3);
            sb.append(operationData3.getPath());
            sb.append(" rename to ");
            sb.append(body.getCloudFilePath());
            debug.m32035d(OneDriverRenameFileRequest.class, sb.toString(), new Object[0]);
            OneDriverFileInfo body2 = execute.body();
            Intrinsics.checkNotNullExpressionValue(body2, "body(...)");
            return body2;
        }
        OneDriverErrorBody.Companion companion = OneDriverErrorBody.INSTANCE;
        Intrinsics.checkNotNull(execute);
        throw companion.parseError(execute);
    }
}
