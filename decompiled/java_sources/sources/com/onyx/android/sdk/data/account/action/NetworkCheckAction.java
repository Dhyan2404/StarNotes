package com.onyx.android.sdk.data.account.action;

import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.action.NetworkCheckAction;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u000bH\u0014R\u001a\u0010\u0004\u001a\u00020\u0002X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "()V", "autoThrowException", "getAutoThrowException", Constants.BOOLEAN_VALUE_SIG, "setAutoThrowException", "(Z)V", "checkNetwork", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NetworkCheckAction extends RxBaseAction<Boolean> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private boolean autoThrowException = true;

    @Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002Jd\u0010\u0003\u001a\u00020\u00042\u001e\b\u0002\u0010\u0005\u001a\u0018\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006j\b\u0012\u0004\u0012\u00020\u0007`\b2\u001e\b\u0002\u0010\t\u001a\u0018\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\u0006j\b\u0012\u0004\u0012\u00020\n`\b2\u0012\b\u0002\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\u00040\fj\u0002`\r2\b\b\u0002\u0010\u000e\u001a\u00020\u0007¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;", "", "()V", "checkNetwork", "", "doOnNext", "Lkotlin/Function1;", "", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "doOnError", "", "doFinally", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "showTimeoutMessage", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void checkNetwork$default(Companion companion, Function1 function1, Function1 function12, Function0 function0, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                function1 = new Function1<Boolean, Unit>() { // from class: com.onyx.android.sdk.data.account.action.NetworkCheckAction$Companion$checkNetwork$1
                    public final void invoke(boolean z2) {
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                        invoke(bool.booleanValue());
                        return Unit.INSTANCE;
                    }
                };
            }
            if ((i & 2) != 0) {
                function12 = new Function1<Throwable, Unit>() { // from class: com.onyx.android.sdk.data.account.action.NetworkCheckAction$Companion$checkNetwork$2
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Throwable it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                        invoke2(th);
                        return Unit.INSTANCE;
                    }
                };
            }
            if ((i & 4) != 0) {
                function0 = new Function0<Unit>() { // from class: com.onyx.android.sdk.data.account.action.NetworkCheckAction$Companion$checkNetwork$3
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }
                };
            }
            if ((i & 8) != 0) {
                z = true;
            }
            companion.checkNetwork(function1, function12, function0, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void checkNetwork$lambda$0(Function0 tmp0) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            tmp0.invoke();
        }

        public final void checkNetwork(@NotNull final Function1<? super Boolean, Unit> doOnNext, @NotNull final Function1<? super Throwable, Unit> doOnError, @NotNull final Function0<Unit> doFinally, final boolean showTimeoutMessage) {
            Intrinsics.checkNotNullParameter(doOnNext, "doOnNext");
            Intrinsics.checkNotNullParameter(doOnError, "doOnError");
            Intrinsics.checkNotNullParameter(doFinally, "doFinally");
            OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
            Observable<Boolean> doFinally2 = new NetworkCheckAction().build().doOnNext(new Consumer(doOnNext) { // from class: com.onyx.android.sdk.data.account.action.NetworkCheckAction$sam$io_reactivex_rxjava3_functions_Consumer$0
                private final /* synthetic */ Function1 function;

                {
                    Intrinsics.checkNotNullParameter(doOnNext, "function");
                    this.function = doOnNext;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public final /* synthetic */ void accept(Object obj) {
                    this.function.invoke(obj);
                }
            }).doOnError(new Consumer(doOnError) { // from class: com.onyx.android.sdk.data.account.action.NetworkCheckAction$sam$io_reactivex_rxjava3_functions_Consumer$0
                private final /* synthetic */ Function1 function;

                {
                    Intrinsics.checkNotNullParameter(doOnError, "function");
                    this.function = doOnError;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public final /* synthetic */ void accept(Object obj) {
                    this.function.invoke(obj);
                }
            }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.qtj
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    NetworkCheckAction.Companion.checkNetwork$lambda$0(Function0.this);
                }
            });
            Intrinsics.checkNotNullExpressionValue(doFinally2, "doFinally(...)");
            OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doFinally2, null, new Function1<OnyxException, Boolean>() { // from class: com.onyx.android.sdk.data.account.action.NetworkCheckAction$Companion$checkNetwork$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull OnyxException it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(!showTimeoutMessage);
                }
            }, 1, null);
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkNetwork() {
        if (NetworkUtils.INSTANCE.isNetworkConnected(getAppContext())) {
            return true;
        }
        if (this.autoThrowException) {
            throw OnyxException.INSTANCE.m31891of(ErrorType.NETWORK_CHECK_FAIL);
        }
        return false;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).map(new Function() { // from class: com.onyx.android.sdk.data.account.action.NetworkCheckAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final Boolean apply(@NotNull NetworkCheckAction it2) {
                boolean checkNetwork;
                Intrinsics.checkNotNullParameter(it2, "it");
                checkNetwork = NetworkCheckAction.this.checkNetwork();
                return Boolean.valueOf(checkNetwork);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean getAutoThrowException() {
        return this.autoThrowException;
    }

    public final void setAutoThrowException(boolean z) {
        this.autoThrowException = z;
    }
}
