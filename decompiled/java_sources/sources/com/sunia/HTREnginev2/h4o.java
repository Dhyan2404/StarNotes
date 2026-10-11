package com.sunia.HTREnginev2;

import android.view.View;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class h4o extends Observable<Unit> {

    /* renamed from: e */
    public final View f71814e;

    /* renamed from: f */
    public final Function0<Boolean> f71815f;

    /* renamed from: com.sunia.HTREnginev2.h4o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnLongClickListenerC13809a extends MainThreadDisposable implements View.OnLongClickListener {

        /* renamed from: f */
        public final View f71816f;

        /* renamed from: g */
        public final Function0<Boolean> f71817g;

        /* renamed from: h */
        public final Observer<? super Unit> f71818h;

        public ViewOnLongClickListenerC13809a(@NotNull View view, @NotNull Function0<Boolean> handled, @NotNull Observer<? super Unit> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(handled, "handled");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f71816f = view;
            this.f71817g = handled;
            this.f71818h = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f71816f.setOnLongClickListener(null);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(@NotNull View v) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            if (isDisposed()) {
                return false;
            }
            try {
                if (!this.f71817g.invoke().booleanValue()) {
                    return false;
                }
                this.f71818h.onNext(Unit.INSTANCE);
                return true;
            } catch (Exception e) {
                this.f71818h.onError(e);
                dispose();
                return false;
            }
        }
    }

    public h4o(@NotNull View view, @NotNull Function0<Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        this.f71814e = view;
        this.f71815f = handled;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Unit> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnLongClickListenerC13809a viewOnLongClickListenerC13809a = new ViewOnLongClickListenerC13809a(this.f71814e, this.f71815f, observer);
            observer.onSubscribe(viewOnLongClickListenerC13809a);
            this.f71814e.setOnLongClickListener(viewOnLongClickListenerC13809a);
        }
    }
}
