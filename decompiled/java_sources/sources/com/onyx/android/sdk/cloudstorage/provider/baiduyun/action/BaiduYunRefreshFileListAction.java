package com.onyx.android.sdk.cloudstorage.provider.baiduyun.action;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunFetchAllFileListRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0014J\b\u0010\t\u001a\u00020\bH\u0014J\b\u0010\u000b\u001a\u00020\nH\u0016R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RefreshCloudFileInfoListAction;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "fetchByQueryArgs", "", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fetchAllByRecursive", "", "getCloudPrefixPath", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "getProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunRefreshFileListAction extends RefreshCloudFileInfoListAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaiduYunRefreshFileListAction(@NotNull BaiduYunProvider baiduYunProvider, @NotNull CloudFileQueryArgs queryArgs) {
        super(queryArgs);
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.baiduYunProvider = baiduYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction
    @NotNull
    public List<CloudFileBean> fetchAllByRecursive() {
        List<CloudFileBean> emptyList;
        final ArrayList arrayList = new ArrayList();
        final BaiduYunQueryArgs createFetchAllQueryArgs = BaiduYunQueryArgs.INSTANCE.createFetchAllQueryArgs(0);
        createFetchAllQueryArgs.setOrder("time");
        if (StringKt.isNotBlank(getQueryArgs().getParentId())) {
            CloudFileBean queryFileInfo = this.baiduYunProvider.getCloudStorageRecordProvider().queryFileInfo(getQueryArgs().getParentId());
            createFetchAllQueryArgs.setPath(queryFileInfo != null ? queryFileInfo.getCloudFilePath() : null);
        }
        final BaiduYunProvider baiduYunProvider = this.baiduYunProvider;
        if (new BaiduYunFetchAllFileListRequest(createFetchAllQueryArgs, baiduYunProvider) { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunRefreshFileListAction$fetchAllByRecursive$responseBody$1
            @Override // com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunFetchAllFileListRequest
            public boolean onBatchList(@NotNull List<? extends BaiduYunFileInfo> list) {
                BaiduYunProvider baiduYunProvider2;
                Intrinsics.checkNotNullParameter(list, "list");
                List<CloudFileBean> list2 = arrayList;
                BaiduYunFileInfo.Companion companion = BaiduYunFileInfo.INSTANCE;
                baiduYunProvider2 = this.baiduYunProvider;
                CollectionKt.safeAddAll(list2, companion.toCloudFiles(list, baiduYunProvider2.getAccountId()));
                return false;
            }
        }.execute().isSuccessful()) {
            return arrayList;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction
    @NotNull
    public Observable<CloudFileListResult> fetchByQueryArgs() {
        return new BaiduYunFetchFileListAction(this.baiduYunProvider, getQueryArgs()).create();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.RefreshCloudFileInfoListAction
    @NotNull
    public String getCloudPrefixPath() {
        return "/";
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider */
    public BaseCloudStorageProvider getBaiduYunProvider() {
        return this.baiduYunProvider;
    }
}
