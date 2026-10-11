package com.onyx.android.sdk.cloudstorage.provider.baiduyun.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.CloudStorageServiceFactory;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.BaiduYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunService;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.scribe.model.OAuthConstants;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\nR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunLoadTokenRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/BaiduYunTokenResponse;", "execute", "", "", "generateQueryMap", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunService;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "baiduYunProvider", "b", Constants.STRING_SIG, "code", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunLoadTokenRequest extends RxBaseRequest<BaiduYunTokenResponse> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider baiduYunProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final String code;

    public BaiduYunLoadTokenRequest(@NotNull BaiduYunProvider baiduYunProvider, @Nullable String str) {
        Intrinsics.checkNotNullParameter(baiduYunProvider, "baiduYunProvider");
        this.baiduYunProvider = baiduYunProvider;
        this.code = str;
    }

    /* renamed from: a */
    public final BaiduYunService m32396a() {
        return (BaiduYunService) CloudStorageServiceFactory.INSTANCE.getSpecifyService(BaiduYunService.class, CloudStorageConstants.BAIDU_YUN_AUTH_URL);
    }

    public final Map<String, String> generateQueryMap() {
        Map<String, String> queryMap = this.baiduYunProvider.getQueryMap();
        queryMap.put("grant_type", CloudStorageConstants.AUTHORIZATION_GRANT_TYPE);
        String str = this.code;
        Intrinsics.checkNotNull(str);
        queryMap.put("code", str);
        queryMap.put(OAuthConstants.REDIRECT_URI, CloudStorageConstants.BAIDU_YUN_AUTH_SUCCESS_CALLBACK_URL);
        return queryMap;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public BaiduYunTokenResponse execute() {
        Response<BaiduYunTokenResponse> execute = m32396a().accessToken(generateQueryMap()).execute();
        Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
        if (execute.isSuccessful()) {
            BaiduYunTokenResponse body = execute.body();
            Debug.INSTANCE.m32035d(BaiduYunLoadTokenRequest.class, "baidu yun load token finish: " + JSONUtils.INSTANCE.toJson(body), new Object[0]);
            Intrinsics.checkNotNull(body);
            return body;
        }
        throw new Exception(execute.raw().message());
    }
}
