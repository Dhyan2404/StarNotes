package com.onyx.android.sdk.cloudstorage.provider.onedrive.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.request.OneDriverFetchAllFileListRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0014J\b\u0010\t\u001a\u00020\bH\u0014J\b\u0010\u000b\u001a\u00020\nH\u0016R\u0014\u0010\u000e\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverRefreshFileListAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RefreshCloudFileInfoListAction;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "fetchByQueryArgs", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchAllByRecursive", "", "getCloudPrefixPath", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriverRefreshFileListAction extends RefreshCloudFileInfoListAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneDriverRefreshFileListAction(@NotNull OneDriveProvider oneDriveProvider, @NotNull CloudFileQueryArgs queryArgs) {
        super(queryArgs);
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.oneDriveProvider = oneDriveProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction
    @NotNull
    public List<CloudFileBean> fetchAllByRecursive() {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setLimit(1000);
        return OneDriverFileInfo.INSTANCE.toCloudFiles(this.oneDriveProvider.getCloudStorageRecordProvider(), new OneDriverFetchAllFileListRequest(this.oneDriveProvider, cloudFileQueryArgs).execute(), this.oneDriveProvider.getAccountId());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction
    @NotNull
    public Observable<CloudFileListResult> fetchByQueryArgs() {
        return new OneDriverFetchFileListAction(this.oneDriveProvider, getQueryArgs()).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction
    @NotNull
    public String getCloudPrefixPath() {
        return "/";
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OneDriveProvider getOneDriveProvider() {
        return this.oneDriveProvider;
    }
}
