package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriverFetchFileListRequest;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0014J\b\u0010\t\u001a\u00020\nH\u0014J\b\u0010\u000b\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "fetchCloud", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "getCloudPrefixPath", "", "getProvider", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverFetchFileListAction extends FetchFileInfoListAction {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriverFetchFileListAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudFileQueryArgs queryArgs) {
        super(queryArgs);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.googleDriverProvider = googleDriverProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction
    @NotNull
    public CloudFileListResult fetchCloud() {
        CloudFileListResult from = CloudFileListResult.INSTANCE.from(new GoogleDriverFetchFileListRequest(this.googleDriverProvider, getQueryArgs()).execute(), new Function1<File, CloudFileBean>() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverFetchFileListAction$fetchCloud$cloudResult$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CloudFileBean invoke(@NotNull File file) {
                GoogleDriverProvider googleDriverProvider;
                GoogleDriverProvider googleDriverProvider2;
                Intrinsics.checkNotNullParameter(file, "file");
                GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
                googleDriverProvider = GoogleDriverFetchFileListAction.this.googleDriverProvider;
                CloudStorageRecordProvider cloudStorageRecordProvider = googleDriverProvider.getCloudStorageRecordProvider();
                googleDriverProvider2 = GoogleDriverFetchFileListAction.this.googleDriverProvider;
                return companion.toCloudFile(cloudStorageRecordProvider, file, googleDriverProvider2.getAccountId());
            }
        });
        String parentId = getQueryArgs().getParentId();
        if (parentId != null) {
            GoogleDriveManager.INSTANCE.setFileInfoPath(this.googleDriverProvider.getCloudStorageRecordProvider(), parentId, from.ensureList());
        }
        return from;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction
    @NotNull
    public String getCloudPrefixPath() {
        return "";
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getWebDavProvider() {
        return this.googleDriverProvider;
    }
}
