package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileOperation;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DeleteCloudFileAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverDeleteFileRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0014J\b\u0010\t\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverDeleteFileAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DeleteCloudFileAction;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "fileOperation", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V", "deleteCloudData", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "getProvider", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverDeleteFileAction extends DeleteCloudFileAction {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriverDeleteFileAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileOperation fileOperation) {
        super(fileOperation);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(fileOperation, "fileOperation");
        this.googleDriverProvider = googleDriverProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.DeleteCloudFileAction
    @NotNull
    public CloudFileListResult deleteCloudData() {
        QueryListResult<CloudFileBean> execute = new GoogleDriverDeleteFileRequest(this.googleDriverProvider, getFileOperation()).execute();
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        cloudFileListResult.setCode(execute.getCode());
        cloudFileListResult.setList(execute.ensureList());
        cloudFileListResult.setCount(execute.getCount());
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getGoogleDriverProvider() {
        return this.googleDriverProvider;
    }
}
