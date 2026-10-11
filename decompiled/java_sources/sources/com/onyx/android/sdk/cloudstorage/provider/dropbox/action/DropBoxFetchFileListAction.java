package com.onyx.android.sdk.cloudstorage.provider.dropbox.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxUtils;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxFetchFileListRequest;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\n\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxFetchFileListAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "fetchCloud", "", "getCloudPrefixPath", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "dropBoxProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxFetchFileListAction extends FetchFileInfoListAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final DropBoxProvider dropBoxProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropBoxFetchFileListAction(@NotNull DropBoxProvider dropBoxProvider, @NotNull CloudFileQueryArgs queryArgs) {
        super(queryArgs);
        Intrinsics.checkNotNullParameter(dropBoxProvider, "dropBoxProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.dropBoxProvider = dropBoxProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction
    @NotNull
    public CloudFileListResult fetchCloud() {
        return CloudFileListResult.INSTANCE.from(new DropBoxFetchFileListRequest(this.dropBoxProvider, getQueryArgs()).execute(), new Function1<com.dropbox.core.p006v2.files.Metadata, CloudFileBean>() { // from class: com.onyx.android.sdk.cloudstorage.provider.dropbox.action.DropBoxFetchFileListAction$fetchCloud$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CloudFileBean invoke(@NotNull com.dropbox.core.p006v2.files.Metadata metadata) {
                DropBoxProvider dropBoxProvider;
                DropBoxProvider dropBoxProvider2;
                Intrinsics.checkNotNullParameter(metadata, "metadata");
                DropBoxUtils dropBoxUtils = DropBoxUtils.INSTANCE;
                dropBoxProvider = DropBoxFetchFileListAction.this.dropBoxProvider;
                CloudStorageRecordProvider cloudStorageRecordProvider = dropBoxProvider.getCloudStorageRecordProvider();
                dropBoxProvider2 = DropBoxFetchFileListAction.this.dropBoxProvider;
                return dropBoxUtils.toCloudFile(cloudStorageRecordProvider, metadata, dropBoxProvider2.getAccountId());
            }
        });
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction
    @NotNull
    public String getCloudPrefixPath() {
        return "";
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public DropBoxProvider getDropBoxProvider() {
        return this.dropBoxProvider;
    }
}
