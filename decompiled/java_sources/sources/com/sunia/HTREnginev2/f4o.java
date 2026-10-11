package com.sunia.HTREnginev2;

import android.view.View;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.view.ViewLayoutChangeEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class f4o extends Observable<ViewLayoutChangeEvent> {

    /* renamed from: e */
    public final View f69653e;

    /* renamed from: com.sunia.HTREnginev2.f4o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnLayoutChangeListenerC13707a extends MainThreadDisposable implements View.OnLayoutChangeListener {

        /* renamed from: f */
        public final View f69654f;

        /* renamed from: g */
        public final Observer<? super ViewLayoutChangeEvent> f69655g;

        public ViewOnLayoutChangeListenerC13707a(@NotNull View view, @NotNull Observer<? super ViewLayoutChangeEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f69654f = view;
            this.f69655g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f69654f.removeOnLayoutChangeListener(this);
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(@NotNull View v, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            if (isDisposed()) {
                return;
            }
            this.f69655g.onNext(new ViewLayoutChangeEvent(v, i, i2, i3, i4, i5, i6, i7, i8));
        }
    }

    public f4o(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f69653e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super ViewLayoutChangeEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnLayoutChangeListenerC13707a viewOnLayoutChangeListenerC13707a = new ViewOnLayoutChangeListenerC13707a(this.f69653e, observer);
            observer.onSubscribe(viewOnLayoutChangeListenerC13707a);
            this.f69653e.addOnLayoutChangeListener(viewOnLayoutChangeListenerC13707a);
        }
    }
}
