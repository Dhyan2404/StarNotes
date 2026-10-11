package com.onyx.android.sdk.cloudstorage.provider.baiduyun.request;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunService;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileResponseBody;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunQueryArgs;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCreateFolderRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;", "b", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;", "args", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunCreateFolderRequest extends RxBaseRequest<BaiduYunFileResponseBody> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunQueryArgs args;

    public BaiduYunCreateFolderRequest(@NotNull BaiduYunProvider baiduYunProvider, @NotNull BaiduYunQueryArgs args) {
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        Intrinsics.checkNotNullParameter(args, "args");
        this.baiduYunProvider = baiduYunProvider;
        this.args = args;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public BaiduYunFileResponseBody execute() {
        final String method = this.args.getMethod();
        this.args.setMethod(null);
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        final Map map = (Map) jSONUtils.parseObject(jSONUtils.toJson(this.args), new TypeReference<Map<String, ? extends String>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunCreateFolderRequest$execute$map$1
        });
        Response executeCall = this.baiduYunProvider.getBaiduYunClient().executeCall(new Function1<BaiduYunService, Call<BaiduYunFileResponseBody>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunCreateFolderRequest$execute$response$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<BaiduYunFileResponseBody> invoke(@NotNull BaiduYunService service) {
                Intrinsics.checkNotNullParameter(service, "service");
                return service.createFolder(method, map);
            }
        });
        if (executeCall.isSuccessful()) {
            Object body = executeCall.body();
            Intrinsics.checkNotNullExpressionValue(body, "body(...)");
            return (BaiduYunFileResponseBody) body;
        }
        throw new Exception(executeCall.raw().message());
    }
}
