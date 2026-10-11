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
public final class g4o extends Observable<Unit> {

    /* renamed from: e */
    public final View f70692e;

    /* renamed from: com.sunia.HTREnginev2.g4o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnLayoutChangeListenerC13757a extends MainThreadDisposable implements View.OnLayoutChangeListener {

        /* renamed from: f */
        public final View f70693f;

        /* renamed from: g */
        public final Observer<? super Unit> f70694g;

        public ViewOnLayoutChangeListenerC13757a(@NotNull View view, @NotNull Observer<? super Unit> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f70693f = view;
            this.f70694g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f70693f.removeOnLayoutChangeListener(this);
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(@NotNull View v, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            if (isDisposed()) {
                return;
            }
            this.f70694g.onNext(Unit.INSTANCE);
        }
    }

    public g4o(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f70692e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Unit> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnLayoutChangeListenerC13757a viewOnLayoutChangeListenerC13757a = new ViewOnLayoutChangeListenerC13757a(this.f70692e, observer);
            observer.onSubscribe(viewOnLayoutChangeListenerC13757a);
            this.f70692e.addOnLayoutChangeListener(viewOnLayoutChangeListenerC13757a);
        }
    }
}
