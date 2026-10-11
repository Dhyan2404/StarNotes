package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverSearchFileRequest;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016J\b\u0010\u000b\u001a\u00020\u0002H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSearchFileListAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "getProvider", "searchCloudFileList", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverSearchFileListAction extends BaseCloudStorageAction<CloudFileListResult> {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    @NotNull
    private final CloudFileQueryArgs queryArgs;

    public GoogleDriverSearchFileListAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.googleDriverProvider = googleDriverProvider;
        this.queryArgs = queryArgs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CloudFileListResult searchCloudFileList() throws Exception {
        QueryListResult<File> execute = new GoogleDriverSearchFileRequest(this.googleDriverProvider, this.queryArgs).execute();
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        cloudFileListResult.setList(GoogleDriveManager.INSTANCE.toCloudFiles(this.googleDriverProvider.getCloudStorageRecordProvider(), execute.ensureList(), this.googleDriverProvider.getAccountId()));
        cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        cloudFileListResult.setFetchSource(execute.getFetchSource());
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileListResult> create() {
        Observable map = createObservable().map(new Function() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverSearchFileListAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final CloudFileListResult apply(@NotNull BaseCloudStorageProvider it2) {
                CloudFileListResult searchCloudFileList;
                Intrinsics.checkNotNullParameter(it2, "it");
                searchCloudFileList = GoogleDriverSearchFileListAction.this.searchCloudFileList();
                return searchCloudFileList;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getAliYunProvider() {
        return this.googleDriverProvider;
    }
}
