package com.sunia.HTREnginev2;

import android.view.View;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.view.ViewAttachAttachedEvent;
import com.jakewharton.rxbinding4.view.ViewAttachDetachedEvent;
import com.jakewharton.rxbinding4.view.ViewAttachEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class w1o extends Observable<ViewAttachEvent> {

    /* renamed from: e */
    public final View f88147e;

    /* renamed from: com.sunia.HTREnginev2.w1o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnAttachStateChangeListenerC14582a extends MainThreadDisposable implements View.OnAttachStateChangeListener {

        /* renamed from: f */
        public final View f88148f;

        /* renamed from: g */
        public final Observer<? super ViewAttachEvent> f88149g;

        public ViewOnAttachStateChangeListenerC14582a(@NotNull View view, @NotNull Observer<? super ViewAttachEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f88148f = view;
            this.f88149g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f88148f.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(@NotNull View v) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            if (isDisposed()) {
                return;
            }
            this.f88149g.onNext(new ViewAttachAttachedEvent(this.f88148f));
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(@NotNull View v) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            if (isDisposed()) {
                return;
            }
            this.f88149g.onNext(new ViewAttachDetachedEvent(this.f88148f));
        }
    }

    public w1o(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f88147e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super ViewAttachEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnAttachStateChangeListenerC14582a viewOnAttachStateChangeListenerC14582a = new ViewOnAttachStateChangeListenerC14582a(this.f88147e, observer);
            observer.onSubscribe(viewOnAttachStateChangeListenerC14582a);
            this.f88147e.addOnAttachStateChangeListener(viewOnAttachStateChangeListenerC14582a);
        }
    }
}
