package com.onyx.android.sdk.cloudstorage.provider.common.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudFileListResult;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QueryChildCountRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;", "execute", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "oldConditionGroup", "", "isDir", "", "a", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class QueryChildCountRequest extends RxBaseRequest<CloudFileListResult> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaseCloudStorageProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs queryArgs;

    public QueryChildCountRequest(@NotNull BaseCloudStorageProvider provider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.provider = provider;
        this.queryArgs = queryArgs;
    }

    /* renamed from: a */
    public final long m32620a(CBQueryArgs oldConditionGroup, boolean isDir) {
        CBQueryArgs andWith = new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_DIR, Boolean.valueOf(isDir)));
        if (oldConditionGroup != null) {
            andWith = andWith.andWith(oldConditionGroup.getWhereEx());
        }
        this.queryArgs.setConditionGroup(andWith);
        return this.provider.getCloudStorageRecordProvider().queryDataCount(this.queryArgs);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public CloudFileListResult execute() {
        CloudFileListResult cloudFileListResult = new CloudFileListResult();
        CBQueryArgs conditionGroup = this.queryArgs.getConditionGroup();
        CloudFileBean cloudFileBean = new CloudFileBean(null, null, null, null, false, 0L, null, null, null, null, null, null, 0L, 0L, 16383, null);
        cloudFileBean.setProvider(Provider.valueOf(this.queryArgs.getProvider()));
        String parentId = this.queryArgs.getParentId();
        if (parentId == null) {
            parentId = "";
        }
        cloudFileBean.setUniqueId(parentId);
        cloudFileBean.setChildFolderCount(m32620a(conditionGroup, true));
        cloudFileBean.setChildFileCount(m32620a(conditionGroup, false));
        cloudFileListResult.ensureList().add(cloudFileBean);
        Intrinsics.checkNotNull(cloudFileListResult.getList());
        cloudFileListResult.setCount(r3.size());
        this.queryArgs.setConditionGroup(conditionGroup);
        return cloudFileListResult;
    }
}
