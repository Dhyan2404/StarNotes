package com.onyx.android.sdk.cloudstorage.provider.onxy.action;

import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxSearchFileRequest;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0016J\b\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxSearchFileListAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "searchCloudFileList", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "onyxCloudProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxSearchFileListAction extends BaseCloudStorageAction<CloudFileListResult> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OnyxCloudProvider onyxCloudProvider;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs queryArgs;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onxy.action.OnyxSearchFileListAction$a */
    /* loaded from: classes7.dex */
    public static final class C7336a<T, R> implements Function {
        public C7336a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudFileListResult apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OnyxSearchFileListAction.this.searchCloudFileList();
        }
    }

    public OnyxSearchFileListAction(@NotNull OnyxCloudProvider onyxCloudProvider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(onyxCloudProvider, "onyxCloudProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.onyxCloudProvider = onyxCloudProvider;
        this.queryArgs = queryArgs;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudFileListResult> create() {
        Observable map = createObservableWithUpdateClusterInfo().map(new C7336a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final CloudFileListResult searchCloudFileList() throws Exception {
        OnyxCloudProvider onyxCloudProvider = this.onyxCloudProvider;
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        QueryListResult<OSSObjectSummary> execute = new OnyxSearchFileRequest(onyxCloudProvider.getOssManager(clusterInfo), this.queryArgs).execute();
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        cloudFileListResult.setList(OnyxCloudUtils.INSTANCE.toCloudFiles(this.onyxCloudProvider.getCloudStorageRecordProvider(), execute.ensureList()));
        cloudFileListResult.setCount(cloudFileListResult.ensureList().size());
        cloudFileListResult.setFetchSource(execute.getFetchSource());
        return cloudFileListResult;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OnyxCloudProvider getDropBoxProvider() {
        return this.onyxCloudProvider;
    }
}
