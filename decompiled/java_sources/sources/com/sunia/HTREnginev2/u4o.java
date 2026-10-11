package com.sunia.HTREnginev2;

import android.view.View;
import android.view.ViewTreeObserver;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class u4o extends Observable<Unit> {

    /* renamed from: e */
    public final View f86109e;

    /* renamed from: f */
    public final Function0<Boolean> f86110f;

    /* renamed from: com.sunia.HTREnginev2.u4o$a */
    /* loaded from: classes4.dex */
    public static final class ViewTreeObserverOnPreDrawListenerC14489a extends MainThreadDisposable implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: f */
        public final View f86111f;

        /* renamed from: g */
        public final Function0<Boolean> f86112g;

        /* renamed from: h */
        public final Observer<? super Unit> f86113h;

        public ViewTreeObserverOnPreDrawListenerC14489a(@NotNull View view, @NotNull Function0<Boolean> proceedDrawingPass, @NotNull Observer<? super Unit> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(proceedDrawingPass, "proceedDrawingPass");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f86111f = view;
            this.f86112g = proceedDrawingPass;
            this.f86113h = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f86111f.getViewTreeObserver().removeOnPreDrawListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (isDisposed()) {
                return true;
            }
            this.f86113h.onNext(Unit.INSTANCE);
            try {
                return this.f86112g.invoke().booleanValue();
            } catch (Exception e) {
                this.f86113h.onError(e);
                this.dispose();
                return true;
            }
        }
    }

    public u4o(@NotNull View view, @NotNull Function0<Boolean> proceedDrawingPass) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(proceedDrawingPass, "proceedDrawingPass");
        this.f86109e = view;
        this.f86110f = proceedDrawingPass;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Unit> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewTreeObserverOnPreDrawListenerC14489a viewTreeObserverOnPreDrawListenerC14489a = new ViewTreeObserverOnPreDrawListenerC14489a(this.f86109e, this.f86110f, observer);
            observer.onSubscribe(viewTreeObserverOnPreDrawListenerC14489a);
            this.f86109e.getViewTreeObserver().addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC14489a);
        }
    }
}
