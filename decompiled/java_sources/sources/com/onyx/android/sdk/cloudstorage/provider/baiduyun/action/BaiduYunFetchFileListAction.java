package com.onyx.android.sdk.cloudstorage.provider.baiduyun.action;

import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunFetchFileListRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\n\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunFetchFileListAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "fetchCloud", "", "getCloudPrefixPath", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunFetchFileListAction extends FetchFileInfoListAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaiduYunFetchFileListAction(@NotNull BaiduYunProvider baiduYunProvider, @NotNull CloudFileQueryArgs queryArgs) {
        super(queryArgs);
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.baiduYunProvider = baiduYunProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction
    @NotNull
    public CloudFileListResult fetchCloud() {
        QueryListResult<BaiduYunFileInfo> execute = new BaiduYunFetchFileListRequest(this.baiduYunProvider, getQueryArgs()).execute();
        List<BaiduYunFileInfo> ensureList = execute.ensureList();
        execute.setList(new ArrayList());
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        CloudFileListResult cloudFileListResult = (CloudFileListResult) jSONUtils.parseObject(jSONUtils.toJson(execute), CloudFileListResult.class);
        if (cloudFileListResult == null) {
            throw new Exception("BaiduYunFetchFileListAction fetchCloud cloudFileResult is null.");
        }
        cloudFileListResult.setList(BaiduYunFileInfo.INSTANCE.toCloudFiles(ensureList, this.baiduYunProvider.getAccountId()));
        cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction
    @NotNull
    public String getCloudPrefixPath() {
        return "/";
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public BaiduYunProvider getWebDavProvider() {
        return this.baiduYunProvider;
    }
}
