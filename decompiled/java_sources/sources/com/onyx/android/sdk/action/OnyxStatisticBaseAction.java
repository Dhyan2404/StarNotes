package com.onyx.android.sdk.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.p029db.OnyxStatisticDBBundle;
import com.onyx.android.sdk.p029db.OnyxStatisticProvider;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 \n*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\nB\u0005¢\u0006\u0002\u0010\u0004J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/action/OnyxStatisticBaseAction;", "T", "", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "()V", "createOnyxStatisticProviderObservable", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", "getObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "Companion", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class OnyxStatisticBaseAction<T> extends RxBaseAction<T> {
    public static final int BATCH_SIZE = 100;

    /* renamed from: com.onyx.android.sdk.action.OnyxStatisticBaseAction$a */
    /* loaded from: classes7.dex */
    public static final class C7081a<T, R> implements Function {

        /* renamed from: e */
        public static final C7081a<T, R> f40613e = new C7081a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OnyxStatisticProvider apply(@NotNull OnyxStatisticBaseAction<T> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OnyxStatisticDBBundle.INSTANCE.getOnyxStatisticProvider();
        }
    }

    @NotNull
    public final Observable<OnyxStatisticProvider> createOnyxStatisticProviderObservable() {
        Observable map = Observable.just(this).observeOn(getObserveOn()).map(C7081a.f40613e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public Scheduler getObserveOn() {
        return OnyxStatisticDBBundle.INSTANCE.getOnyxStatisticScheduler().getObserveOn();
    }
}
