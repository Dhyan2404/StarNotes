package com.onyx.android.sdk.cloudstorage.provider.onxy.request;

import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudUtils;
import com.onyx.android.sdk.data.common.oss.GetListObjectBean;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;", "onyxCloudProvider", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "b", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "c", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxFetchFileListRequest extends RxBaseRequest<QueryListResult<OSSObjectSummary>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OnyxCloudProvider onyxCloudProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RxOSSManager rxOSSManager;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs queryArgs;

    public OnyxFetchFileListRequest(@NotNull OnyxCloudProvider onyxCloudProvider, @NotNull RxOSSManager rxOSSManager, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(onyxCloudProvider, "onyxCloudProvider");
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.onyxCloudProvider = onyxCloudProvider;
        this.rxOSSManager = rxOSSManager;
        this.queryArgs = queryArgs;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<OSSObjectSummary> execute() {
        QueryListResult<OSSObjectSummary> queryListResult = new QueryListResult<>();
        queryListResult.setFetchSource(1);
        queryListResult.setList(new ArrayList());
        String cloudFilePath = this.onyxCloudProvider.getCloudStorageRecordProvider().getCloudFilePath(this.queryArgs.getParentId(), "");
        OnyxCloudUtils onyxCloudUtils = OnyxCloudUtils.INSTANCE;
        final GetListObjectBean baseListObjectBean = onyxCloudUtils.getBaseListObjectBean(cloudFilePath);
        baseListObjectBean.setMaxKeys(Integer.valueOf(this.queryArgs.getLimit()));
        Debug.INSTANCE.m32035d(OnyxFetchFileListRequest.class, "query.getListBean:" + JSONUtils.INSTANCE.toJson(baseListObjectBean), new Object[0]);
        List<OSSObjectSummary> removeCurrentObject = onyxCloudUtils.removeCurrentObject(this.rxOSSManager.syncGetObjectList(baseListObjectBean), cloudFilePath);
        CollectionKt.safelyRemove(removeCurrentObject, new Comparable<OSSObjectSummary>() { // from class: com.onyx.android.sdk.cloudstorage.provider.onxy.request.OnyxFetchFileListRequest$execute$list$1$1
            @Override // java.lang.Comparable
            public int compareTo(@NotNull OSSObjectSummary other) {
                Intrinsics.checkNotNullParameter(other, "other");
                return StringKt.equals(FileUtils.INSTANCE.getParent(other.getKey()), GetListObjectBean.this.getPrefix()) ? 1 : 0;
            }
        }, false);
        queryListResult.setCount((long) removeCurrentObject.size());
        if (this.queryArgs.getOffset() < removeCurrentObject.size()) {
            onyxCloudUtils.sort(removeCurrentObject, this.queryArgs.getSortBy(), this.queryArgs.getOrder());
            queryListResult.setList(removeCurrentObject.subList((int) this.queryArgs.getOffset(), (int) Math.min(this.queryArgs.getOffset() + this.queryArgs.getLimit(), removeCurrentObject.size())));
        }
        return queryListResult;
    }
}
