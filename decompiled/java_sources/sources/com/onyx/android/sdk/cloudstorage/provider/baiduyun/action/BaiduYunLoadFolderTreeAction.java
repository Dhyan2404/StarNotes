package com.onyx.android.sdk.cloudstorage.provider.baiduyun.action;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileResponseBody;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunFetchAllFileListRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.LoadFolderTreeAction;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.BooleanUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0016R\u0014\u0010\t\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "loadAllFolderResult", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunLoadFolderTreeAction extends LoadFolderTreeAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaiduYunLoadFolderTreeAction(@NotNull BaiduYunProvider baiduYunProvider, @NotNull CloudFileQueryArgs queryArgs) {
        super(queryArgs);
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.baiduYunProvider = baiduYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.LoadFolderTreeAction
    @NotNull
    public QueryListResult<CloudFileBean> loadAllFolderResult() {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final BaiduYunQueryArgs createFetchAllQueryArgs = BaiduYunQueryArgs.INSTANCE.createFetchAllQueryArgs(0);
        createFetchAllQueryArgs.setLimit(1000);
        createFetchAllQueryArgs.setWeb(BooleanUtils.toInteger(false));
        final BaiduYunProvider baiduYunProvider = this.baiduYunProvider;
        BaiduYunFileResponseBody execute = new BaiduYunFetchAllFileListRequest(createFetchAllQueryArgs, baiduYunProvider) { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.action.BaiduYunLoadFolderTreeAction$loadAllFolderResult$responseBody$1
            @Override // com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunFetchAllFileListRequest
            public boolean onBatchList(@NotNull List<? extends BaiduYunFileInfo> list) {
                BaiduYunProvider baiduYunProvider2;
                Intrinsics.checkNotNullParameter(list, "list");
                BaiduYunFileInfo.Companion companion = BaiduYunFileInfo.INSTANCE;
                baiduYunProvider2 = this.baiduYunProvider;
                List<CloudFileBean> cloudFiles = companion.toCloudFiles(list, baiduYunProvider2.getAccountId());
                Map<String, CloudFileBean> map = linkedHashMap;
                for (CloudFileBean cloudFileBean : cloudFiles) {
                    if (cloudFileBean.getDir() && StringKt.isNotBlank(cloudFileBean.getCloudFilePath())) {
                        String cloudFilePath = cloudFileBean.getCloudFilePath();
                        Intrinsics.checkNotNull(cloudFilePath);
                        map.put(cloudFilePath, cloudFileBean);
                    }
                }
                return linkedHashMap.size() < list.size();
            }
        }.execute();
        QueryListResult<CloudFileBean> queryListResult = new QueryListResult<>();
        queryListResult.setCode(execute.getErrno());
        if (queryListResult.isSuccessful()) {
            queryListResult.setList(new ArrayList(linkedHashMap.values()));
            queryListResult.setCount(queryListResult.ensureList().size());
        }
        return queryListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public BaiduYunProvider getGoogleDriverProvider() {
        return this.baiduYunProvider;
    }
}
