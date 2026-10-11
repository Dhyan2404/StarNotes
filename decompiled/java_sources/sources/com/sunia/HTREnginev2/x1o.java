package com.sunia.HTREnginev2;

import android.view.View;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class x1o extends Observable<Unit> {

    /* renamed from: e */
    public final View f89189e;

    /* renamed from: f */
    public final boolean f89190f;

    /* renamed from: com.sunia.HTREnginev2.x1o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnAttachStateChangeListenerC14632a extends MainThreadDisposable implements View.OnAttachStateChangeListener {

        /* renamed from: f */
        public final View f89191f;

        /* renamed from: g */
        public final boolean f89192g;

        /* renamed from: h */
        public final Observer<? super Unit> f89193h;

        public ViewOnAttachStateChangeListenerC14632a(@NotNull View view, boolean z, @NotNull Observer<? super Unit> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f89191f = view;
            this.f89192g = z;
            this.f89193h = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f89191f.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(@NotNull View v) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            if (!this.f89192g || isDisposed()) {
                return;
            }
            this.f89193h.onNext(Unit.INSTANCE);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(@NotNull View v) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            if (this.f89192g || isDisposed()) {
                return;
            }
            this.f89193h.onNext(Unit.INSTANCE);
        }
    }

    public x1o(@NotNull View view, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f89189e = view;
        this.f89190f = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Unit> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnAttachStateChangeListenerC14632a viewOnAttachStateChangeListenerC14632a = new ViewOnAttachStateChangeListenerC14632a(this.f89189e, this.f89190f, observer);
            observer.onSubscribe(viewOnAttachStateChangeListenerC14632a);
            this.f89189e.addOnAttachStateChangeListener(viewOnAttachStateChangeListenerC14632a);
        }
    }
}
