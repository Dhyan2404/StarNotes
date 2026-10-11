package com.onyx.android.sdk.cloudstorage.provider.onxy.action;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxRenameFileRequest;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileExistsException;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J\b\u0010\u000b\u001a\u00020\nH\u0016R\u0014\u0010\u000e\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxRenameFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RenameCloudFileAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "createParentFolder", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "fileOperation", "rename", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "onyxCloudProvider", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxRenameFileAction extends RenameCloudFileAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OnyxCloudProvider onyxCloudProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnyxRenameFileAction(@NotNull OnyxCloudProvider onyxCloudProvider, @NotNull CloudFileOperation fileOperation) {
        super(fileOperation);
        Intrinsics.checkNotNullParameter(onyxCloudProvider, "onyxCloudProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.onyxCloudProvider = onyxCloudProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction
    @NotNull
    public Observable<CloudFileListResult> createParentFolder(@NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        Observable<CloudFileListResult> just = Observable.just(new CloudFileListResult());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RenameCloudFileAction
    @NotNull
    public CloudFileListResult rename(@NotNull CloudFileOperation fileOperation) {
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        try {
            OnyxCloudProvider onyxCloudProvider = this.onyxCloudProvider;
            ClusterInfo clusterInfo = getClusterInfo();
            Intrinsics.checkNotNull(clusterInfo);
            CollectionKt.safeAdd(cloudFileListResult.ensureList(), OnyxCloudUtils.INSTANCE.toCloudFile(this.onyxCloudProvider.getCloudStorageRecordProvider(), new OnyxRenameFileRequest(onyxCloudProvider, onyxCloudProvider.getOssManager(clusterInfo), fileOperation).execute()));
            cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        } catch (FileExistsException unused) {
            cloudFileListResult.setCode(1001);
        }
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OnyxCloudProvider getDropBoxProvider() {
        return this.onyxCloudProvider;
    }
}
