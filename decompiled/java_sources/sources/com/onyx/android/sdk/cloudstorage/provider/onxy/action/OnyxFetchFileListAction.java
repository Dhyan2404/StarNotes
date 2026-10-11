package com.onyx.android.sdk.cloudstorage.provider.onxy.action;

import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxFetchFileListRequest;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\n\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxFetchFileListAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "fetchCloud", "", "getCloudPrefixPath", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "getProvider", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "onyxCloudProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxFetchFileListAction extends FetchFileInfoListAction {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OnyxCloudProvider onyxCloudProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnyxFetchFileListAction(@NotNull OnyxCloudProvider onyxCloudProvider, @NotNull CloudFileQueryArgs queryArgs) {
        super(queryArgs);
        Intrinsics.checkNotNullParameter(onyxCloudProvider, "onyxCloudProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.onyxCloudProvider = onyxCloudProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction
    @NotNull
    public CloudFileListResult fetchCloud() throws Exception {
        OnyxCloudProvider onyxCloudProvider = this.onyxCloudProvider;
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        QueryListResult<OSSObjectSummary> execute = new OnyxFetchFileListRequest(onyxCloudProvider, onyxCloudProvider.getOssManager(clusterInfo), getQueryArgs()).execute();
        List<OSSObjectSummary> ensureList = execute.ensureList();
        execute.setList(new ArrayList());
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Object parseObject = jSONUtils.parseObject(jSONUtils.toJson(execute), (Class<Object>) CloudFileListResult.class);
        Intrinsics.checkNotNull(parseObject);
        CloudFileListResult cloudFileListResult = (CloudFileListResult) parseObject;
        cloudFileListResult.setList(OnyxCloudUtils.INSTANCE.toCloudFiles(this.onyxCloudProvider.getCloudStorageRecordProvider(), ensureList));
        cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.FetchFileInfoListAction
    @NotNull
    public String getCloudPrefixPath() {
        return "";
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OnyxCloudProvider getGoogleDriverProvider() {
        return this.onyxCloudProvider;
    }
}
