package com.onyx.android.sdk.rxgesture;

import android.view.MotionEvent;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0002\u001a\u00020\u0000H\u0016J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxNoGesture;", "Lcom/onyx/android/sdk/rxgesture/RxBaseGesture;", "subscribe", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "Lio/reactivex/rxjava3/core/Observable;", "c", "d", Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RxNoGesture extends RxBaseGesture<RxNoGesture> {

    /* renamed from: com.onyx.android.sdk.rxgesture.RxNoGesture$b */
    /* loaded from: classes8.dex */
    public static final class C7984b<T> implements Consumer {
        public C7984b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RxGestureContext it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RxNoGesture.this.m36006d(it2);
        }
    }

    /* renamed from: c */
    public final Observable<RxGestureContext> m36005c(RxGestureContext gestureContext) {
        GestureFilter gestureFilter = new GestureFilter();
        gestureFilter.setClazz(RxNoGesture.class);
        gestureFilter.setFilterSingleTap(true);
        gestureFilter.setFilterDoubleTap(true);
        return gestureFilter.apply(gestureContext);
    }

    /* renamed from: d */
    public final RxGestureContext m36006d(RxGestureContext gestureContext) {
        RxGestureListener listener;
        MotionEvent curMotionEvent = gestureContext.getCurMotionEvent();
        if (curMotionEvent != null && (listener = getListener()) != null) {
            listener.onNoGestures(gestureContext, curMotionEvent);
        }
        return gestureContext;
    }

    @Override // com.onyx.android.sdk.rxgesture.RxBaseGesture
    @NotNull
    public RxNoGesture subscribe() {
        setDisposable(createObservable().flatMap(new Function() { // from class: com.onyx.android.sdk.rxgesture.RxNoGesture.a
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Observable<RxGestureContext> apply(@NotNull RxGestureContext p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return RxNoGesture.this.m36005c(p0);
            }
        }).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C7984b()).doOnError(new Consumer() { // from class: com.onyx.android.sdk.rxgesture.RxNoGesture.c
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                RxNoGesture.this.onError(p0);
            }
        }).subscribe());
        return this;
    }
}
