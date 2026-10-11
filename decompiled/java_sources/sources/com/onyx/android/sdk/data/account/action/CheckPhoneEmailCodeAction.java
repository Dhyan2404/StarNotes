package com.onyx.android.sdk.data.account.action;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.account.request.cloud.CheckPhoneEmailCodeRequest;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.error.ErrorCode;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\rH\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/CheckPhoneEmailCodeAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", LoginAuthConst.ACCOUNT_AUTH, "code", AccountVerifyPurpose.KEY_PURPOSE, "checkCurrentAccount", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "checkAccountExist", "token", "checkPhoneEmailCode", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CheckPhoneEmailCodeAction extends BaseRxAccountAction<String> {

    @Nullable
    private final String account;
    private final boolean checkCurrentAccount;

    @Nullable
    private final String code;

    @NotNull
    private final String purpose;

    public /* synthetic */ CheckPhoneEmailCodeAction(String str, String str2, String str3, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? "none" : str3, (i & 8) != 0 ? false : z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String checkAccountExist(String token) {
        if (Intrinsics.areEqual(this.purpose, AccountVerifyPurpose.PURPOSE_PASSWORD_RECOVER) && StringKt.isEmpty(token)) {
            throw ErrorCode.INSTANCE.httpErrorFromCode(ErrorCode.ACCOUNT_NOT_EXIST);
        }
        return token;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String checkPhoneEmailCode() {
        CheckPhoneEmailCodeRequest checkPhoneEmailCodeRequest = new CheckPhoneEmailCodeRequest(this.account, this.code);
        checkPhoneEmailCodeRequest.m72204execute();
        String token = checkPhoneEmailCodeRequest.getToken();
        return token == null ? "" : token;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable<R> flatMap = createCloudObservable().flatMap(new Function() { // from class: com.onyx.android.sdk.data.account.action.CheckPhoneEmailCodeAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends Boolean> apply(@NotNull AccountDataBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new NetworkCheckAction().build();
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<String> map = RxjavaKt.flatMapIf(flatMap, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.data.account.action.CheckPhoneEmailCodeAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = CheckPhoneEmailCodeAction.this.checkCurrentAccount;
                return Boolean.valueOf(z);
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.data.account.action.CheckPhoneEmailCodeAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it2) {
                String str;
                Intrinsics.checkNotNullParameter(it2, "it");
                str = CheckPhoneEmailCodeAction.this.account;
                if (str == null) {
                    str = "";
                }
                return new CheckCurrentAccountAction(str).build();
            }
        }).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new Function() { // from class: com.onyx.android.sdk.data.account.action.CheckPhoneEmailCodeAction$create$4
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final String apply(@NotNull Object it2) {
                String checkPhoneEmailCode;
                Intrinsics.checkNotNullParameter(it2, "it");
                checkPhoneEmailCode = CheckPhoneEmailCodeAction.this.checkPhoneEmailCode();
                return checkPhoneEmailCode;
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.data.account.action.CheckPhoneEmailCodeAction$create$5
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final String apply(@NotNull String it2) {
                String checkAccountExist;
                Intrinsics.checkNotNullParameter(it2, "it");
                checkAccountExist = CheckPhoneEmailCodeAction.this.checkAccountExist(it2);
                return checkAccountExist;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public CheckPhoneEmailCodeAction(@Nullable String str, @Nullable String str2, @NotNull String purpose, boolean z) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        this.account = str;
        this.code = str2;
        this.purpose = purpose;
        this.checkCurrentAccount = z;
    }
}
