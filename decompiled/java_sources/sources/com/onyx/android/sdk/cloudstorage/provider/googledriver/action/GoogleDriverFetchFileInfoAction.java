package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\u0002H\u0002R\u000e\u0010\u0005\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileInfoAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "cloudFile", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "getProvider", "searchCloudFileList", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverFetchFileInfoAction extends BaseCloudStorageAction<CloudFileBean> {

    @NotNull
    private final CloudFileBean cloudFile;

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    public GoogleDriverFetchFileInfoAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileBean cloudFile) {
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(cloudFile, "cloudFile");
        this.googleDriverProvider = googleDriverProvider;
        this.cloudFile = cloudFile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CloudFileBean searchCloudFileList() throws Exception {
        GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
        GoogleDriveManager ourInstance = companion.getOurInstance();
        String accountId = this.cloudFile.getAccountId();
        Intrinsics.checkNotNull(accountId);
        String uniqueId = this.cloudFile.getUniqueId();
        Intrinsics.checkNotNull(uniqueId);
        File fetch = ourInstance.fetch(accountId, uniqueId);
        GoogleDriveManager ourInstance2 = companion.getOurInstance();
        String accountId2 = this.cloudFile.getAccountId();
        Intrinsics.checkNotNull(accountId2);
        File fetchFileFullInfo = ourInstance2.fetchFileFullInfo(fetch, accountId2);
        if (fetchFileFullInfo != null) {
            fetch = fetchFileFullInfo;
        }
        CloudFileBean cloudFile = companion.toCloudFile(this.googleDriverProvider.getCloudStorageRecordProvider(), fetch, this.googleDriverProvider.getAccountId());
        cloudFile.setParentId(this.cloudFile.getParentId());
        return cloudFile;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileBean> create() {
        Observable map = createObservable().map(new Function() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverFetchFileInfoAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final CloudFileBean apply(@NotNull BaseCloudStorageProvider it2) {
                CloudFileBean searchCloudFileList;
                Intrinsics.checkNotNullParameter(it2, "it");
                searchCloudFileList = GoogleDriverFetchFileInfoAction.this.searchCloudFileList();
                return searchCloudFileList;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getHuaweiYunProvider() {
        return this.googleDriverProvider;
    }
}
