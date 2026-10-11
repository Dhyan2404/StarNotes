package com.onyx.galaxy.note.account.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.BaseRxAccountAction;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.GoogleVerifyArgs;
import com.onyx.android.sdk.data.account.request.cloud.GoogleLogoffRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/action/GoogleLogOffAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/account/bean/GoogleVerifyArgs;", "l", "", "e", Constants.STRING_SIG, "token", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class GoogleLogOffAction extends BaseRxAccountAction<Boolean> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String token;

    /* renamed from: com.onyx.galaxy.note.account.action.GoogleLogOffAction$a */
    /* loaded from: classes9.dex */
    public static final class C10683a<T, R> implements Function {
        public C10683a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DataResponse<Object> apply(@NotNull GoogleLogOffAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new GoogleLogoffRequest(GoogleLogOffAction.this.m41779l()).execute();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.GoogleLogOffAction$b */
    /* loaded from: classes9.dex */
    public static final class C10684b<T> implements Consumer {

        /* renamed from: e */
        public static final C10684b<T> f53400e = new C10684b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DataResponse<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountDataBundle.INSTANCE.logoffAccount();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.GoogleLogOffAction$c */
    /* loaded from: classes9.dex */
    public static final class C10685c<T, R> implements Function {

        /* renamed from: e */
        public static final C10685c<T, R> f53401e = new C10685c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull DataResponse<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    public GoogleLogOffAction(@NotNull String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.token = token;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).observeOn(getCloudScheduler()).map(new C10683a()).doOnNext(C10684b.f53400e).map(C10685c.f53401e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final GoogleVerifyArgs m41779l() {
        GoogleVerifyArgs googleVerifyArgs = new GoogleVerifyArgs();
        googleVerifyArgs.setToken(this.token);
        return googleVerifyArgs;
    }
}
