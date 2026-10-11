package com.onyx.android.sdk.cloudstorage.provider.aliyun.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunLoadTokenRequest;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014J\b\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "aliYunProvider", "", C6997f.f39671c, Constants.STRING_SIG, "code", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunLoadTokenAction extends BaseCloudStorageAction<AliYunTokenResponse> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider aliYunProvider;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String code;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunLoadTokenAction$a */
    /* loaded from: classes7.dex */
    public static final class C7189a<T, R> implements Function {
        public C7189a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AliYunTokenResponse apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AliYunLoadTokenAction.this.m32331l();
        }
    }

    public AliYunLoadTokenAction(@NotNull AliYunProvider aliYunProvider, @NotNull String code) {
        Intrinsics.checkNotNullParameter(aliYunProvider, "aliYunProvider");
        Intrinsics.checkNotNullParameter(code, "code");
        this.aliYunProvider = aliYunProvider;
        this.code = code;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AliYunTokenResponse> create() {
        Observable map = createObservable().map(new C7189a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider */
    public BaseCloudStorageProvider getGoogleDriverProvider() {
        return this.aliYunProvider;
    }

    /* renamed from: l */
    public final AliYunTokenResponse m32331l() throws Exception {
        AliYunTokenResponse execute = new AliYunLoadTokenRequest(this.aliYunProvider, this.code).execute();
        this.aliYunProvider.setTokenResponse(execute);
        return execute;
    }
}
