package com.onyx.android.sdk.data.account.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.request.cloud.LogOffByPhoneEmailRequest;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0014J\b\u0010\t\u001a\u00020\u0002H\u0002R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/LogOffByPhoneEmailAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", "mobi", "", "code", "(Ljava/lang/String;Ljava/lang/String;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "logOffByPhoneEmail", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LogOffByPhoneEmailAction extends BaseRxAccountAction<Object> {

    @NotNull
    private final String code;

    @NotNull
    private final String mobi;

    public LogOffByPhoneEmailAction(@NotNull String mobi, @NotNull String code) {
        Intrinsics.checkNotNullParameter(mobi, "mobi");
        Intrinsics.checkNotNullParameter(code, "code");
        this.mobi = mobi;
        this.code = code;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object logOffByPhoneEmail() {
        new LogOffByPhoneEmailRequest(this.mobi, this.code).m72214execute();
        return Unit.INSTANCE;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> doOnNext = createCloudObservable().map(new Function() { // from class: com.onyx.android.sdk.data.account.action.LogOffByPhoneEmailAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final Object apply(@NotNull AccountDataBundle it2) {
                Object logOffByPhoneEmail;
                Intrinsics.checkNotNullParameter(it2, "it");
                logOffByPhoneEmail = LogOffByPhoneEmailAction.this.logOffByPhoneEmail();
                return logOffByPhoneEmail;
            }
        }).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.data.account.action.LogOffByPhoneEmailAction$create$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                AccountDataBundle.INSTANCE.logoffAccount();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
