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
public final class q4o extends Observable<MotionEvent> {

    /* renamed from: e */
    public final View f81625e;

    /* renamed from: f */
    public final Function1<MotionEvent, Boolean> f81626f;

    /* renamed from: com.sunia.HTREnginev2.q4o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnTouchListenerC14281a extends MainThreadDisposable implements View.OnTouchListener {

        /* renamed from: f */
        public final View f81627f;

        /* renamed from: g */
        public final Function1<MotionEvent, Boolean> f81628g;

        /* renamed from: h */
        public final Observer<? super MotionEvent> f81629h;

        /* JADX WARN: Multi-variable type inference failed */
        public ViewOnTouchListenerC14281a(@NotNull View view, @NotNull Function1<? super MotionEvent, Boolean> handled, @NotNull Observer<? super MotionEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(handled, "handled");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f81627f = view;
            this.f81628g = handled;
            this.f81629h = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f81627f.setOnTouchListener(null);
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(@NotNull View v, @NotNull MotionEvent event) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(event, "event");
            if (isDisposed()) {
                return false;
            }
            try {
                if (!this.f81628g.invoke(event).booleanValue()) {
                    return false;
                }
                this.f81629h.onNext(event);
                return true;
            } catch (Exception e) {
                this.f81629h.onError(e);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public q4o(@NotNull View view, @NotNull Function1<? super MotionEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        this.f81625e = view;
        this.f81626f = handled;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super MotionEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnTouchListenerC14281a viewOnTouchListenerC14281a = new ViewOnTouchListenerC14281a(this.f81625e, this.f81626f, observer);
            observer.onSubscribe(viewOnTouchListenerC14281a);
            this.f81625e.setOnTouchListener(viewOnTouchListenerC14281a);
        }
    }
}
