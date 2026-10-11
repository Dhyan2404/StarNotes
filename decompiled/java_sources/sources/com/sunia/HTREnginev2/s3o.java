package com.sunia.HTREnginev2;

import android.view.KeyEvent;
import android.view.View;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class s3o extends Observable<KeyEvent> {

    /* renamed from: e */
    public final View f83777e;

    /* renamed from: f */
    public final Function1<KeyEvent, Boolean> f83778f;

    /* renamed from: com.sunia.HTREnginev2.s3o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnKeyListenerC14379a extends MainThreadDisposable implements View.OnKeyListener {

        /* renamed from: f */
        public final View f83779f;

        /* renamed from: g */
        public final Function1<KeyEvent, Boolean> f83780g;

        /* renamed from: h */
        public final Observer<? super KeyEvent> f83781h;

        /* JADX WARN: Multi-variable type inference failed */
        public ViewOnKeyListenerC14379a(@NotNull View view, @NotNull Function1<? super KeyEvent, Boolean> handled, @NotNull Observer<? super KeyEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(handled, "handled");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f83779f = view;
            this.f83780g = handled;
            this.f83781h = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f83779f.setOnKeyListener(null);
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(@NotNull View v, int i, @NotNull KeyEvent event) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(event, "event");
            if (isDisposed()) {
                return false;
            }
            try {
                if (!this.f83780g.invoke(event).booleanValue()) {
                    return false;
                }
                this.f83781h.onNext(event);
                return true;
            } catch (Exception e) {
                this.f83781h.onError(e);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s3o(@NotNull View view, @NotNull Function1<? super KeyEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        this.f83777e = view;
        this.f83778f = handled;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super KeyEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnKeyListenerC14379a viewOnKeyListenerC14379a = new ViewOnKeyListenerC14379a(this.f83777e, this.f83778f, observer);
            observer.onSubscribe(viewOnKeyListenerC14379a);
            this.f83777e.setOnKeyListener(viewOnKeyListenerC14379a);
        }
    }
}
