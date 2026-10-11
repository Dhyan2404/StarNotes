package com.onyx.android.sdk.cloudstorage.provider.aliyun.action;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunFetchAllFileListRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0014J\b\u0010\t\u001a\u00020\bH\u0014J\b\u0010\u000b\u001a\u00020\nH\u0016R\u0014\u0010\u000e\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRefreshFileListAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RefreshCloudFileInfoListAction;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "fetchByQueryArgs", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchAllByRecursive", "", "getCloudPrefixPath", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "aliYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunRefreshFileListAction extends RefreshCloudFileInfoListAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider aliYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AliYunRefreshFileListAction(@NotNull AliYunProvider aliYunProvider, @NotNull CloudFileQueryArgs queryArgs) {
        super(queryArgs);
        Intrinsics.checkNotNullParameter(aliYunProvider, "aliYunProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.aliYunProvider = aliYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction
    @NotNull
    public List<CloudFileBean> fetchAllByRecursive() {
        CloudFileQueryArgs cloudFileQueryArgs = new CloudFileQueryArgs();
        cloudFileQueryArgs.setLimit(100);
        return this.aliYunProvider.toCloudFiles(new AliYunFetchAllFileListRequest(this.aliYunProvider, AliYunQueryArgs.INSTANCE.from(this.aliYunProvider.getDefaultDriveId(), cloudFileQueryArgs)).execute());
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction
    @NotNull
    public Observable<CloudFileListResult> fetchByQueryArgs() {
        return new AliYunFetchFileListAction(this.aliYunProvider, getQueryArgs()).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction
    @NotNull
    public String getCloudPrefixPath() {
        return CloudStorageConstants.INSTANCE.getCloudOnyxPath(Provider.ALI_YUN);
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public AliYunProvider getAliYunProvider() {
        return this.aliYunProvider;
    }
}
