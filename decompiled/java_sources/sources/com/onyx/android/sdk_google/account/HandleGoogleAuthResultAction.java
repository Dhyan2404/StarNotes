package com.onyx.android.sdk_google.account;

import android.content.Context;
import android.content.Intent;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.gms.auth.api.identity.Identity;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.AuthResultArgs;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u0019\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\r\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk_google/account/HandleGoogleAuthResultAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "Landroid/content/Intent;", C6997f.f39671c, "Landroid/content/Intent;", "data", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/content/Intent;)V", "Companion", "sdk-google_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandleGoogleAuthResultAction extends RxBaseAction<AuthResultArgs> {

    /* renamed from: g */
    @NotNull
    public static final String f52869g = "HandleGoogleAuthResultAction";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final Intent data;

    /* renamed from: com.onyx.android.sdk_google.account.HandleGoogleAuthResultAction$a */
    /* loaded from: classes8.dex */
    public static final class C10589a<T, R> implements Function {
        public C10589a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AuthResultArgs apply(@NotNull HandleGoogleAuthResultAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleGoogleAuthResultAction.this.m41604l();
        }
    }

    public HandleGoogleAuthResultAction(@NotNull Context context, @Nullable Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.data = intent;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AuthResultArgs> create() {
        Observable<AuthResultArgs> map = Observable.just(this).map(new C10589a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final AuthResultArgs m41604l() {
        try {
            SignInCredential signInCredentialFromIntent = Identity.getSignInClient(this.context).getSignInCredentialFromIntent(this.data);
            Intrinsics.checkNotNullExpressionValue(signInCredentialFromIntent, "getSignInCredentialFromIntent(...)");
            String googleIdToken = signInCredentialFromIntent.getGoogleIdToken();
            if (googleIdToken == null) {
                googleIdToken = "";
            }
            String id = signInCredentialFromIntent.getId();
            Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
            return new AuthResultArgs(id, googleIdToken, null, null, 12, null);
        } catch (Exception e) {
            LogUtils.eTag(f52869g, "google auth failed:" + e.getMessage());
            throw e;
        }
    }
}
