package com.onyx.android.sdk.auth.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.auth.request.PasswordAuthRequest;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/auth/action/PasswordAuthAction;", "Lcom/onyx/android/sdk/auth/action/BaseAuthAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "e", Constants.STRING_SIG, "digest", C6997f.f39671c, "password", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "sdk-auth_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PasswordAuthAction extends BaseAuthAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String digest;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String password;

    /* renamed from: com.onyx.android.sdk.auth.action.PasswordAuthAction$a */
    /* loaded from: classes7.dex */
    public static final class C7105a<T, R> implements Function {
        public C7105a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull PasswordAuthAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(PasswordAuthAction.this.m31868l());
        }
    }

    public PasswordAuthAction(@NotNull String digest, @NotNull String password) {
        Intrinsics.checkNotNullParameter(digest, "digest");
        Intrinsics.checkNotNullParameter(password, "password");
        this.digest = digest;
        this.password = password;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).observeOn(getObserveOn()).map(new C7105a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final boolean m31868l() {
        return new PasswordAuthRequest(this.digest, this.password).execute().booleanValue();
    }
}
