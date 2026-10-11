package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.base.scheduler.RxScheduler;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\u000eR\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/TemplateManagerBundle;", "", "()V", "observeOn", "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOn", "()Lio/reactivex/rxjava3/core/Scheduler;", "rxScheduler", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "getRxScheduler", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "rxScheduler$delegate", "Lkotlin/Lazy;", "createObservable", "Lio/reactivex/rxjava3/core/Observable;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TemplateManagerBundle {

    @NotNull
    public static final TemplateManagerBundle INSTANCE = new TemplateManagerBundle();

    /* renamed from: rxScheduler$delegate, reason: from kotlin metadata */
    @NotNull
    private static final Lazy rxScheduler;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.universal.editor.data.TemplateManagerBundle$rxScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        rxScheduler = lazy;
    }

    private TemplateManagerBundle() {
    }

    private final RxScheduler getRxScheduler() {
        return (RxScheduler) rxScheduler.getValue();
    }

    @NotNull
    public final Observable<TemplateManagerBundle> createObservable() {
        Observable<TemplateManagerBundle> observeOn = Observable.just(this).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return getRxScheduler().getObserveOn();
    }
}
