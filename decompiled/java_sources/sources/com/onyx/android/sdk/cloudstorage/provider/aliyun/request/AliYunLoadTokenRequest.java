package com.onyx.android.sdk.cloudstorage.provider.aliyun.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunLoadTokenRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", CouchFieldKey.KEY_PROVIDER, "", "b", Constants.STRING_SIG, "code", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunLoadTokenRequest extends RxBaseRequest<AliYunTokenResponse> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String code;

    public AliYunLoadTokenRequest(@NotNull AliYunProvider provider, @NotNull String code) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(code, "code");
        this.provider = provider;
        this.code = code;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public AliYunTokenResponse execute() {
        Response<AliYunTokenResponse> execute = AliYunUtils.INSTANCE.getAliYunDriveService().loadToken(this.provider.getProviderContext().getClientID(), this.provider.getProviderContext().getSecret(), StringUtils.lowerCase("AUTHORIZATION_CODE"), this.code).execute();
        if (execute.isSuccessful()) {
            AliYunTokenResponse body = execute.body();
            Debug.INSTANCE.m32035d(AliYunLoadTokenRequest.class, "aliyun load token finish: " + JSONUtils.INSTANCE.toJson(body), new Object[0]);
            Intrinsics.checkNotNull(body);
            return body;
        }
        throw new Exception(execute.raw().message());
    }
}
