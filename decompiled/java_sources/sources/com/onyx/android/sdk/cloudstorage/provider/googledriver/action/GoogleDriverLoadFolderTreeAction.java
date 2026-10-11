package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.LoadFolderTreeAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverFetchAllFileListRequest;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0003H\u0016J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverLoadFolderTreeAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "getProvider", "loadAllFolderResult", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverLoadFolderTreeAction extends LoadFolderTreeAction {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriverLoadFolderTreeAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileQueryArgs queryArgs) {
        super(queryArgs);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.googleDriverProvider = googleDriverProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.LoadFolderTreeAction
    @NotNull
    public QueryListResult<CloudFileBean> loadAllFolderResult() {
        final CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        final GoogleDriverProvider googleDriverProvider = this.googleDriverProvider;
        List<File> execute = new GoogleDriverFetchAllFileListRequest(cloudFileQueryArgs, googleDriverProvider) { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverLoadFolderTreeAction$loadAllFolderResult$list$1
            @Override // com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverFetchAllFileListRequest
            public boolean abort(@NotNull File file) {
                Intrinsics.checkNotNullParameter(file, "file");
                return !GoogleDriveManager.INSTANCE.isDir(file);
            }
        }.execute();
        GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
        List<CloudFileBean> cloudFiles = companion.toCloudFiles(this.googleDriverProvider.getCloudStorageRecordProvider(), companion.toFolderMap(execute), execute, this.googleDriverProvider.getAccountId());
        QueryListResult<CloudFileBean> queryListResult = new QueryListResult<>();
        if (queryListResult.isSuccessful()) {
            queryListResult.setList(cloudFiles);
            queryListResult.setCount(queryListResult.ensureList().size());
        }
        return queryListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getWebDavProvider() {
        return this.googleDriverProvider;
    }
}
