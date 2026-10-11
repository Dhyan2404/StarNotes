package com.onyx.galaxy.note.common.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pay.PayBundle;
import com.onyx.galaxy.note.common.crash.XCrashHandler;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/ThirdPartySdkInitAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ThirdPartySdkInitAction extends RxBaseAction<ThirdPartySdkInitAction> {

    /* renamed from: com.onyx.galaxy.note.common.action.ThirdPartySdkInitAction$a */
    /* loaded from: classes9.dex */
    public static final class C11610a<T, R> implements Function {

        /* renamed from: e */
        public static final C11610a<T, R> f55973e = new C11610a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StatisticsPreInitAction> apply(@NotNull ThirdPartySdkInitAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new StatisticsPreInitAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.ThirdPartySdkInitAction$b */
    /* loaded from: classes9.dex */
    public static final class C11611b<T, R> implements Function {
        public C11611b() {
        }

        /* renamed from: a */
        public final void m44975a(@NotNull StatisticsPreInitAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ThirdPartySdkInitAction.this.m44973l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m44975a((StatisticsPreInitAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.ThirdPartySdkInitAction$c */
    /* loaded from: classes9.dex */
    public static final class C11612c<T, R> implements Function {
        public C11612c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ThirdPartySdkInitAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ThirdPartySdkInitAction.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ThirdPartySdkInitAction> create() {
        Observable<ThirdPartySdkInitAction> map = Observable.just(this).flatMap(C11610a.f55973e).map(new C11611b()).map(new C11612c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m44973l() {
        StatisticsBundle.INSTANCE.init(ResManager.INSTANCE.getAppContext(), new Function0<Unit>() { // from class: com.onyx.galaxy.note.common.action.ThirdPartySdkInitAction$thirdPartySdkInit$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                RxTimerUtil.INSTANCE.timer(3000L, new RxTimerUtil.TimerObserver() { // from class: com.onyx.galaxy.note.common.action.ThirdPartySdkInitAction$thirdPartySdkInit$1.1
                    @Override // io.reactivex.rxjava3.core.Observer
                    public /* bridge */ /* synthetic */ void onNext(Long l) {
                        onNext(l.longValue());
                    }

                    public void onNext(long t) {
                        XCrashHandler.INSTANCE.init(ResManager.INSTANCE.getAppContext());
                    }
                });
                PayBundle.INSTANCE.initStatisticBus(StatisticsBundle.INSTANCE.getStatisticsEventBus());
            }
        });
    }
}
