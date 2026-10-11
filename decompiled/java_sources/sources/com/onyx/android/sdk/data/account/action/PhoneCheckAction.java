package com.onyx.android.sdk.data.account.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.request.cloud.PhoneCheckRequest;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/PhoneCheckAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", "areaCode", "", "phone", "(Ljava/lang/String;Ljava/lang/String;)V", "checkPhoneFormat", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PhoneCheckAction extends BaseRxAccountAction<Object> {

    @NotNull
    private final String areaCode;

    @NotNull
    private final String phone;

    public PhoneCheckAction(@NotNull String areaCode, @NotNull String phone) {
        Intrinsics.checkNotNullParameter(areaCode, "areaCode");
        Intrinsics.checkNotNullParameter(phone, "phone");
        this.areaCode = areaCode;
        this.phone = phone;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object checkPhoneFormat() {
        new PhoneCheckRequest(this.areaCode, this.phone).m72228execute();
        return Unit.INSTANCE;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<R> map = createCloudObservable().map(new Function() { // from class: com.onyx.android.sdk.data.account.action.PhoneCheckAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final Object apply(@NotNull AccountDataBundle it2) {
                Object checkPhoneFormat;
                Intrinsics.checkNotNullParameter(it2, "it");
                checkPhoneFormat = PhoneCheckAction.this.checkPhoneFormat();
                return checkPhoneFormat;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
