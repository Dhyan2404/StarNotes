package com.onyx.android.sdk_google.account;

import android.content.Intent;
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

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk_google/account/HandleMicrosoftAuthResultAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Landroid/content/Intent;", "e", "Landroid/content/Intent;", "data", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Intent;)V", "sdk-google_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandleMicrosoftAuthResultAction extends RxBaseAction<AuthResultArgs> {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public final Intent data;

    /* renamed from: com.onyx.android.sdk_google.account.HandleMicrosoftAuthResultAction$a */
    /* loaded from: classes8.dex */
    public static final class C10590a<T, R> implements Function {
        public C10590a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AuthResultArgs apply(@NotNull HandleMicrosoftAuthResultAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleMicrosoftAuthResultAction.this.m41606l();
        }
    }

    public HandleMicrosoftAuthResultAction(@Nullable Intent intent) {
        this.data = intent;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AuthResultArgs> create() {
        Observable<AuthResultArgs> map = Observable.just(this).map(new C10590a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final AuthResultArgs m41606l() {
        String stringExtra;
        String stringExtra2;
        String stringExtra3;
        Intent intent = this.data;
        String str = (intent == null || (stringExtra3 = intent.getStringExtra(RequestMicrosoftAuthAction.MICROSOFT_ID_KEY)) == null) ? "" : stringExtra3;
        Intent intent2 = this.data;
        String str2 = (intent2 == null || (stringExtra2 = intent2.getStringExtra(RequestMicrosoftAuthAction.MICROSOFT_ID_TOKEN_KEY)) == null) ? "" : stringExtra2;
        Intent intent3 = this.data;
        return new AuthResultArgs(str, str2, (intent3 == null || (stringExtra = intent3.getStringExtra(RequestMicrosoftAuthAction.MICROSOFT_ACCESS_TOKEN_KEY)) == null) ? "" : stringExtra, null, 8, null);
    }
}
