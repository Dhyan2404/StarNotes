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
public final class y1o extends Observable<Unit> {

    /* renamed from: e */
    public final View f90318e;

    /* renamed from: com.sunia.HTREnginev2.y1o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnClickListenerC14686a extends MainThreadDisposable implements View.OnClickListener {

        /* renamed from: f */
        public final View f90319f;

        /* renamed from: g */
        public final Observer<? super Unit> f90320g;

        public ViewOnClickListenerC14686a(@NotNull View view, @NotNull Observer<? super Unit> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f90319f = view;
            this.f90320g = observer;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@NotNull View v) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            if (isDisposed()) {
                return;
            }
            this.f90320g.onNext(Unit.INSTANCE);
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f90319f.setOnClickListener(null);
        }
    }

    public y1o(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f90318e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Unit> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnClickListenerC14686a viewOnClickListenerC14686a = new ViewOnClickListenerC14686a(this.f90318e, observer);
            observer.onSubscribe(viewOnClickListenerC14686a);
            this.f90318e.setOnClickListener(viewOnClickListenerC14686a);
        }
    }
}
