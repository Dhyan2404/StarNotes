package com.onyx.android.sdk.cloudstorage.provider.aliyun.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunService;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\u0005¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\nR\u0014\u0010\u000e\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunSearchFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;", "execute", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "cloudFileQueryArgs", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileListResult;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", CouchFieldKey.KEY_PROVIDER, "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunSearchFileRequest extends RxBaseRequest<QueryListResult<AliYunFileInfo>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs queryArgs;

    public AliYunSearchFileRequest(@NotNull AliYunProvider provider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.provider = provider;
        this.queryArgs = queryArgs;
    }

    /* renamed from: a */
    public final AliYunFileListResult m32348a(CloudFileQueryArgs cloudFileQueryArgs) throws Exception {
        final AliYunQueryArgs from = AliYunQueryArgs.INSTANCE.from(this.provider.getDefaultDriveId(), cloudFileQueryArgs);
        Object body = this.provider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunFileListResult>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunSearchFileRequest$search$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<AliYunFileListResult> invoke(@NotNull AliYunService aliYunService) {
                Intrinsics.checkNotNullParameter(aliYunService, "aliYunService");
                return aliYunService.searchFile(AliYunQueryArgs.this);
            }
        }).body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return (AliYunFileListResult) body;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<AliYunFileInfo> execute() {
        AliYunFileListResult m32348a = m32348a(this.queryArgs);
        QueryListResult<AliYunFileInfo> queryListResult = new QueryListResult<>();
        queryListResult.setList(m32348a.getItems());
        queryListResult.setCount(queryListResult.ensureList().size());
        queryListResult.setFetchSource(1);
        queryListResult.setCursor(m32348a.getNextMarker());
        return queryListResult;
    }
}
