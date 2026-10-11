package com.onyx.galaxy.note.common.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0014¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/StatisticsPreInitAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class StatisticsPreInitAction extends RxBaseAction<StatisticsPreInitAction> {

    /* renamed from: com.onyx.galaxy.note.common.action.StatisticsPreInitAction$a */
    /* loaded from: classes9.dex */
    public static final class C11603a<T, R> implements Function {

        /* renamed from: e */
        public static final C11603a<T, R> f55960e = new C11603a<>();

        /* renamed from: a */
        public final void m44958a(@NotNull StatisticsPreInitAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StatisticsBundle.INSTANCE.preInit(ResManager.INSTANCE.getAppContext());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m44958a((StatisticsPreInitAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.StatisticsPreInitAction$b */
    /* loaded from: classes9.dex */
    public static final class C11604b<T, R> implements Function {
        public C11604b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StatisticsPreInitAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StatisticsPreInitAction.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StatisticsPreInitAction> create() {
        Observable<StatisticsPreInitAction> map = Observable.just(this).observeOn(RxScheduler.INSTANCE.sharedSingleThreadManager().getObserveOn()).map(C11603a.f55960e).map(new C11604b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
