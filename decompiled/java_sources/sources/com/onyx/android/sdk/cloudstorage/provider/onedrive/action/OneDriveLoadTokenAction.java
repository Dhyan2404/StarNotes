package com.onyx.android.sdk.cloudstorage.provider.onedrive.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.AuthResult;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.request.LoadOneDriveTokenRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u001a\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0007H\u0014J\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\t\u001a\u00020\u0003H\u0002R\u0014\u0010\r\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, AbstractLogger.RESPONSE, "l", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", "", C6997f.f39671c, Constants.STRING_SIG, "code", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriveLoadTokenAction extends BaseCloudStorageAction<Pair<? extends OneDriveTokenResponse, ? extends AuthResult>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String code;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriveLoadTokenAction$a */
    /* loaded from: classes7.dex */
    public static final class C7325a<T, R> implements Function {
        public C7325a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OneDriveTokenResponse apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadOneDriveTokenRequest(OneDriveLoadTokenAction.this.oneDriveProvider, OneDriveLoadTokenAction.this.code).execute();
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.onedrive.action.OneDriveLoadTokenAction$b */
    /* loaded from: classes7.dex */
    public static final class C7326b<T, R> implements Function {
        public C7326b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<OneDriveTokenResponse, AuthResult> apply(@NotNull OneDriveTokenResponse it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OneDriveLoadTokenAction.this.m32750l(it2);
        }
    }

    public OneDriveLoadTokenAction(@NotNull OneDriveProvider oneDriveProvider, @NotNull String code) {
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(code, "code");
        this.oneDriveProvider = oneDriveProvider;
        this.code = code;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Pair<OneDriveTokenResponse, AuthResult>> create() {
        Observable<Pair<OneDriveTokenResponse, AuthResult>> map = createObservable().map(new C7325a()).map(new C7326b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Pair<OneDriveTokenResponse, AuthResult> m32750l(OneDriveTokenResponse response) {
        if (!OneDriveTokenResponse.INSTANCE.isValid(response)) {
            return TuplesKt.m61535to(response, AuthResult.INSTANCE.authFail());
        }
        this.oneDriveProvider.setDriveToken(response);
        return TuplesKt.m61535to(response, AuthResult.INSTANCE.authSuccess());
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public OneDriveProvider getGoogleDriverProvider() {
        return this.oneDriveProvider;
    }
}
