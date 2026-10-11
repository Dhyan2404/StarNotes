package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverFetchAllFileListRequest;
import io.reactivex.rxjava3.core.Observable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0014J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0014J\b\u0010\r\u001a\u00020\u000eH\u0014J\b\u0010\u000f\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverRefreshFileListAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RefreshCloudFileInfoListAction;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "fetchAllByRecursive", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchByQueryArgs", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "getCloudPrefixPath", "", "getProvider", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverRefreshFileListAction extends RefreshCloudFileInfoListAction {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriverRefreshFileListAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileQueryArgs queryArgs) {
        super(queryArgs);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.googleDriverProvider = googleDriverProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction
    @NotNull
    public List<CloudFileBean> fetchAllByRecursive() {
        new CloudFileQueryArgs().setLimit(1000);
        List<File> execute = new GoogleDriverFetchAllFileListRequest(this.googleDriverProvider, getQueryArgs()).execute();
        GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
        return companion.toCloudFiles(this.googleDriverProvider.getCloudStorageRecordProvider(), companion.toFolderMap(execute), execute, this.googleDriverProvider.getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction
    @NotNull
    public Observable<CloudFileListResult> fetchByQueryArgs() {
        return new GoogleDriverFetchFileListAction(this.googleDriverProvider, getQueryArgs()).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction
    @NotNull
    public String getCloudPrefixPath() {
        return "";
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getGoogleDriverProvider() {
        return this.googleDriverProvider;
    }
}
