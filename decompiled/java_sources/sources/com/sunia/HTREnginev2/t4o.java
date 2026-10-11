package com.sunia.HTREnginev2;

import android.view.View;
import android.view.ViewTreeObserver;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class t4o extends Observable<Unit> {

    /* renamed from: e */
    public final View f84880e;

    /* renamed from: com.sunia.HTREnginev2.t4o$a */
    /* loaded from: classes4.dex */
    public static final class ViewTreeObserverOnGlobalLayoutListenerC14435a extends MainThreadDisposable implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: f */
        public final View f84881f;

        /* renamed from: g */
        public final Observer<? super Unit> f84882g;

        public ViewTreeObserverOnGlobalLayoutListenerC14435a(@NotNull View view, @NotNull Observer<? super Unit> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f84881f = view;
            this.f84882g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f84881f.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (isDisposed()) {
                return;
            }
            this.f84882g.onNext(Unit.INSTANCE);
        }
    }

    public t4o(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f84880e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Unit> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewTreeObserverOnGlobalLayoutListenerC14435a viewTreeObserverOnGlobalLayoutListenerC14435a = new ViewTreeObserverOnGlobalLayoutListenerC14435a(this.f84880e, observer);
            observer.onSubscribe(viewTreeObserverOnGlobalLayoutListenerC14435a);
            this.f84880e.getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC14435a);
        }
    }
}
