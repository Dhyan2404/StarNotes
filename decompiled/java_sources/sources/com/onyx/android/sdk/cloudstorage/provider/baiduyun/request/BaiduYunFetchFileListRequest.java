package com.onyx.android.sdk.cloudstorage.provider.baiduyun.request;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileQueryArgs;
import com.onyx.android.sdk.cloudstorage.model.QueryListResult;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunService;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileResponseBody;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunQueryArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\fR\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000e¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", "queryArgs", "Lretrofit2/Response;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunFetchFileListRequest extends RxBaseRequest<QueryListResult<BaiduYunFileInfo>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileQueryArgs queryArgs;

    public BaiduYunFetchFileListRequest(@NotNull BaiduYunProvider baiduYunProvider, @NotNull CloudFileQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.baiduYunProvider = baiduYunProvider;
        this.queryArgs = queryArgs;
    }

    /* renamed from: a */
    public final Response<BaiduYunFileResponseBody> m32394a(final CloudFileQueryArgs queryArgs) throws Exception {
        Response<BaiduYunFileResponseBody> executeCall = this.baiduYunProvider.getBaiduYunClient().executeCall(new Function1<BaiduYunService, Call<BaiduYunFileResponseBody>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunFetchFileListRequest$fetch$response$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<BaiduYunFileResponseBody> invoke(@NotNull BaiduYunService service) {
                BaiduYunProvider baiduYunProvider;
                Intrinsics.checkNotNullParameter(service, "service");
                baiduYunProvider = BaiduYunFetchFileListRequest.this.baiduYunProvider;
                String cloudFilePath = baiduYunProvider.getCloudStorageRecordProvider().getCloudFilePath(queryArgs.getParentId(), "/");
                int offset = (int) queryArgs.getOffset();
                int limit = queryArgs.getLimit();
                BaiduYunQueryArgs.Companion companion = BaiduYunQueryArgs.INSTANCE;
                return service.fetchFiles("list", "web", cloudFilePath, offset, limit, companion.getSortBy(queryArgs.getSortBy()), companion.getSortOrder(queryArgs.getOrder()));
            }
        });
        if (executeCall.isSuccessful()) {
            return executeCall;
        }
        throw new Exception(executeCall.raw().message());
    }

    /* renamed from: b */
    public final BaiduYunFileResponseBody m32395b() throws Exception {
        BaiduYunFileResponseBody baiduYunFileResponseBody;
        ArrayList arrayList = new ArrayList();
        CloudFileQueryArgs copy = this.queryArgs.copy();
        copy.setOffset(0L);
        copy.setLimit(1000);
        while (true) {
            BaiduYunFileResponseBody body = m32394a(copy).body();
            Intrinsics.checkNotNullExpressionValue(body, "body(...)");
            baiduYunFileResponseBody = body;
            CollectionKt.safeAddAll(arrayList, baiduYunFileResponseBody.getList());
            if (baiduYunFileResponseBody.getList() == null) {
                break;
            }
            List<BaiduYunFileInfo> list = baiduYunFileResponseBody.getList();
            Intrinsics.checkNotNull(list);
            if (list.size() < copy.getLimit()) {
                break;
            }
            copy.setOffset(copy.getOffset() + copy.getLimit());
        }
        baiduYunFileResponseBody.setList(CollectionKt.safelySubList(arrayList, (int) this.queryArgs.getOffset(), (int) Long.min(this.queryArgs.getOffset() + this.queryArgs.getLimit(), arrayList.size())));
        return baiduYunFileResponseBody;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public QueryListResult<BaiduYunFileInfo> execute() {
        BaiduYunFileResponseBody m32395b = m32395b();
        QueryListResult<BaiduYunFileInfo> queryListResult = new QueryListResult<>();
        queryListResult.setFetchSource(1);
        queryListResult.setList(m32395b.getList());
        if (m32395b.getErrno() != 0) {
            Debug.INSTANCE.m32052i(BaiduYunFetchFileListRequest.class, "baiduyun errno:" + m32395b.getErrno(), new Object[0]);
            queryListResult.setCode(m32395b.mapToStandardError());
        }
        return queryListResult;
    }
}
