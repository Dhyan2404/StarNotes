package com.onyx.android.sdk.data.account.action;

import com.couchbase.lite.internal.core.C4Replicator;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.account.request.cloud.PasswordVerifyRequest;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.utils.AreaCodeUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\nH\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\nH\u0014J\b\u0010\f\u001a\u00020\rH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/PasswordVerifyAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", C4Replicator.REPLICATOR_AUTH_USER_NAME, "", "password", "checkCurrentAccount", "", "(Ljava/lang/String;Ljava/lang/String;Z)V", "checkAccountFormat", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "verifyByPassword", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PasswordVerifyAction extends BaseRxAccountAction<Object> {
    private final boolean checkCurrentAccount;

    @NotNull
    private final String password;

    @NotNull
    private final String username;

    public /* synthetic */ PasswordVerifyAction(String str, String str2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? false : z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Object> checkAccountFormat() {
        boolean contains$default;
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) this.username, '@', false, 2, (Object) null);
        if (contains$default) {
            return new EmailCheckAction(this.username).build();
        }
        return new PhoneCheckAction(AreaCodeUtil.INSTANCE.getPrefixedAreaCode(onyxAccount != null ? onyxAccount.getAreaCode() : null), this.username).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void verifyByPassword() {
        new PasswordVerifyRequest(this.username, this.password).m72226execute();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable flatMap = Observable.just(Unit.INSTANCE).flatMap(new Function() { // from class: com.onyx.android.sdk.data.account.action.PasswordVerifyAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends Boolean> apply(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new NetworkCheckAction().build();
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<Object> doOnNext = RxjavaKt.flatMapIf(flatMap, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.data.account.action.PasswordVerifyAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = PasswordVerifyAction.this.checkCurrentAccount;
                return Boolean.valueOf(z);
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.data.account.action.PasswordVerifyAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it2) {
                String str;
                Intrinsics.checkNotNullParameter(it2, "it");
                str = PasswordVerifyAction.this.username;
                return new CheckCurrentAccountAction(str).build();
            }
        }).flatMap(new Function() { // from class: com.onyx.android.sdk.data.account.action.PasswordVerifyAction$create$4
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends Object> apply(@NotNull Object it2) {
                Observable checkAccountFormat;
                Intrinsics.checkNotNullParameter(it2, "it");
                checkAccountFormat = PasswordVerifyAction.this.checkAccountFormat();
                return checkAccountFormat;
            }
        }).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.data.account.action.PasswordVerifyAction$create$5
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                PasswordVerifyAction.this.verifyByPassword();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public PasswordVerifyAction(@NotNull String username, @NotNull String password, boolean z) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(password, "password");
        this.username = username;
        this.password = password;
        this.checkCurrentAccount = z;
    }
}
