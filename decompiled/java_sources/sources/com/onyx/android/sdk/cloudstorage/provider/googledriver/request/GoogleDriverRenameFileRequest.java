package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.alibaba.fastjson2.TypeReference;
import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/google/api/services/drive/model/File;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "fileOperation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "operationData", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "getOperationData", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;", "setOperationData", "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)V", "execute", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverRenameFileRequest extends RxBaseRequest<File> {

    @NotNull
    private final CloudFileOperation fileOperation;

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    @Nullable
    private CloudFileOperation.OperationData operationData;

    public GoogleDriverRenameFileRequest(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileOperation fileOperation) {
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.googleDriverProvider = googleDriverProvider;
        this.fileOperation = fileOperation;
    }

    @Nullable
    public final CloudFileOperation.OperationData getOperationData() {
        return this.operationData;
    }

    public final void setOperationData(@Nullable CloudFileOperation.OperationData operationData) {
        this.operationData = operationData;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @Nullable
    public File execute() {
        CloudFileOperation.OperationData operationData;
        Object firstOrNull;
        Debug debug = Debug.INSTANCE;
        debug.m32046e("---provider--accountId---" + this.googleDriverProvider.getAccountId());
        List list = (List) JSONUtils.INSTANCE.parseObject(this.fileOperation.getDataJson(), new TypeReference<List<? extends CloudFileOperation.OperationData>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverRenameFileRequest$execute$1
        });
        if (list != null) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
            operationData = (CloudFileOperation.OperationData) firstOrNull;
        } else {
            operationData = null;
        }
        this.operationData = operationData;
        if (operationData == null) {
            return null;
        }
        GoogleDriveManager ourInstance = GoogleDriveManager.INSTANCE.getOurInstance();
        String accountId = this.googleDriverProvider.getAccountId();
        CloudFileOperation.OperationData operationData2 = this.operationData;
        Intrinsics.checkNotNull(operationData2);
        String origin = operationData2.getOrigin();
        Intrinsics.checkNotNull(origin);
        CloudFileOperation.OperationData operationData3 = this.operationData;
        Intrinsics.checkNotNull(operationData3);
        String newName = operationData3.getNewName();
        Intrinsics.checkNotNull(newName);
        File rename = ourInstance.rename(accountId, origin, newName);
        StringBuilder sb = new StringBuilder();
        CloudFileOperation.OperationData operationData4 = this.operationData;
        Intrinsics.checkNotNull(operationData4);
        sb.append(operationData4.getPath());
        sb.append(" rename to ");
        sb.append(rename.toPrettyString());
        debug.m32035d(GoogleDriverRenameFileRequest.class, sb.toString(), new Object[0]);
        return rename;
    }
}
