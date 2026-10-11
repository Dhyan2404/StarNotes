package com.sunia.HTREnginev2;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.RequiresApi;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@RequiresApi(16)
/* loaded from: classes4.dex */
public final class s4o extends Observable<Unit> {

    /* renamed from: e */
    public final View f83805e;

    /* renamed from: com.sunia.HTREnginev2.s4o$a */
    /* loaded from: classes4.dex */
    public static final class ViewTreeObserverOnDrawListenerC14381a extends MainThreadDisposable implements ViewTreeObserver.OnDrawListener {

        /* renamed from: f */
        public final View f83806f;

        /* renamed from: g */
        public final Observer<? super Unit> f83807g;

        public ViewTreeObserverOnDrawListenerC14381a(@NotNull View view, @NotNull Observer<? super Unit> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f83806f = view;
            this.f83807g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f83806f.getViewTreeObserver().removeOnDrawListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            if (isDisposed()) {
                return;
            }
            this.f83807g.onNext(Unit.INSTANCE);
        }
    }

    public s4o(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f83805e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Unit> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewTreeObserverOnDrawListenerC14381a viewTreeObserverOnDrawListenerC14381a = new ViewTreeObserverOnDrawListenerC14381a(this.f83805e, observer);
            observer.onSubscribe(viewTreeObserverOnDrawListenerC14381a);
            this.f83805e.getViewTreeObserver().addOnDrawListener(viewTreeObserverOnDrawListenerC14381a);
        }
    }
}
