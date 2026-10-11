package com.sunia.HTREnginev2;

import android.view.MotionEvent;
import android.view.View;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class m3o extends Observable<MotionEvent> {

    /* renamed from: e */
    public final View f77148e;

    /* renamed from: f */
    public final Function1<MotionEvent, Boolean> f77149f;

    /* renamed from: com.sunia.HTREnginev2.m3o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnHoverListenerC14075a extends MainThreadDisposable implements View.OnHoverListener {

        /* renamed from: f */
        public final View f77150f;

        /* renamed from: g */
        public final Function1<MotionEvent, Boolean> f77151g;

        /* renamed from: h */
        public final Observer<? super MotionEvent> f77152h;

        /* JADX WARN: Multi-variable type inference failed */
        public ViewOnHoverListenerC14075a(@NotNull View view, @NotNull Function1<? super MotionEvent, Boolean> handled, @NotNull Observer<? super MotionEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(handled, "handled");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f77150f = view;
            this.f77151g = handled;
            this.f77152h = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f77150f.setOnHoverListener(null);
        }

        @Override // android.view.View.OnHoverListener
        public boolean onHover(@NotNull View v, @NotNull MotionEvent event) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(event, "event");
            if (isDisposed()) {
                return false;
            }
            try {
                if (!this.f77151g.invoke(event).booleanValue()) {
                    return false;
                }
                this.f77152h.onNext(event);
                return true;
            } catch (Exception e) {
                this.f77152h.onError(e);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m3o(@NotNull View view, @NotNull Function1<? super MotionEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        this.f77148e = view;
        this.f77149f = handled;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super MotionEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnHoverListenerC14075a viewOnHoverListenerC14075a = new ViewOnHoverListenerC14075a(this.f77148e, this.f77149f, observer);
            observer.onSubscribe(viewOnHoverListenerC14075a);
            this.f77148e.setOnHoverListener(viewOnHoverListenerC14075a);
        }
    }
}
