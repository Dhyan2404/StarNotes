package com.onyx.android.sdk.rxgesture;

import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0011\u001a\u00020\u0000H\u0016¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxBaseClickMultiFingerGesture;", "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;", "()V", "filterByCancel", "", "gestureContext", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "filterByMultiTouch", "filterByPalm", "filterByTouchUp", "filterByUpToDownDistance", "filterByUpToDownTime", "getUpToDownTime", "", "onMultiFingerClicked", "onNext", "", "subscribe", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class RxBaseClickMultiFingerGesture extends RxBaseGesture<RxBaseClickMultiFingerGesture> {

    /* renamed from: com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture$h */
    /* loaded from: classes8.dex */
    public static final class C7953h<T> implements Predicate {

        /* renamed from: e */
        public static final C7953h<T> f46399e = new C7953h<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull RxGestureContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.getIsScale();
        }
    }

    /* renamed from: com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture$i */
    /* loaded from: classes8.dex */
    public static final class C7954i<T> implements Predicate {

        /* renamed from: e */
        public static final C7954i<T> f46400e = new C7954i<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull RxGestureContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.getIsHasMultipleMove();
        }
    }

    public abstract boolean filterByCancel(@NotNull RxGestureContext gestureContext);

    public abstract boolean filterByMultiTouch(@NotNull RxGestureContext gestureContext);

    public abstract boolean filterByPalm(@NotNull RxGestureContext gestureContext);

    public abstract boolean filterByTouchUp(@NotNull RxGestureContext gestureContext);

    public abstract boolean filterByUpToDownDistance(@NotNull RxGestureContext gestureContext);

    public abstract boolean filterByUpToDownTime(@NotNull RxGestureContext gestureContext);

    public abstract long getUpToDownTime(@NotNull RxGestureContext gestureContext);

    @NotNull
    public abstract RxGestureContext onMultiFingerClicked(@NotNull RxGestureContext gestureContext);

    @Override // com.onyx.android.sdk.rxgesture.RxBaseGesture
    public void onNext(@NotNull RxGestureContext gestureContext) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        if (isDisposed()) {
            RxGestureLog.INSTANCE.m35973i(getClass(), "isDisposed!");
        }
        super.onNext(gestureContext);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.rxgesture.RxBaseGesture
    @NotNull
    public RxBaseClickMultiFingerGesture subscribe() {
        setDisposable(createObservable().filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture.b
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxBaseClickMultiFingerGesture.this.filterByCancel(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture.c
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxBaseClickMultiFingerGesture.this.filterByTouchUp(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture.d
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxBaseClickMultiFingerGesture.this.filterByMultiTouch(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture.e
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxBaseClickMultiFingerGesture.this.filterByPalm(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture.f
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxBaseClickMultiFingerGesture.this.filterByUpToDownDistance(p0);
            }
        }).filter(new Predicate() { // from class: com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture.g
            @Override // io.reactivex.rxjava3.functions.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final boolean test(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxBaseClickMultiFingerGesture.this.filterByUpToDownTime(p0);
            }
        }).filter(C7953h.f46399e).filter(C7954i.f46400e).map(new Function() { // from class: com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture.j
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final RxGestureContext apply(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxBaseClickMultiFingerGesture.this.onMultiFingerClicked(p0);
            }
        }).doOnError(new Consumer() { // from class: com.onyx.android.sdk.rxgesture.RxBaseClickMultiFingerGesture.a
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                RxBaseClickMultiFingerGesture.this.onError(p0);
            }
        }).subscribe());
        return this;
    }
}
