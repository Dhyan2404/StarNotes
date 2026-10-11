package com.sunia.HTREnginev2;

import android.view.DragEvent;
import android.view.View;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class a3o extends Observable<DragEvent> {

    /* renamed from: e */
    public final View f64295e;

    /* renamed from: f */
    public final Function1<DragEvent, Boolean> f64296f;

    /* renamed from: com.sunia.HTREnginev2.a3o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnDragListenerC13469a extends MainThreadDisposable implements View.OnDragListener {

        /* renamed from: f */
        public final View f64297f;

        /* renamed from: g */
        public final Function1<DragEvent, Boolean> f64298g;

        /* renamed from: h */
        public final Observer<? super DragEvent> f64299h;

        /* JADX WARN: Multi-variable type inference failed */
        public ViewOnDragListenerC13469a(@NotNull View view, @NotNull Function1<? super DragEvent, Boolean> handled, @NotNull Observer<? super DragEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(handled, "handled");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f64297f = view;
            this.f64298g = handled;
            this.f64299h = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f64297f.setOnDragListener(null);
        }

        @Override // android.view.View.OnDragListener
        public boolean onDrag(@NotNull View v, @NotNull DragEvent event) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(event, "event");
            if (isDisposed()) {
                return false;
            }
            try {
                if (!this.f64298g.invoke(event).booleanValue()) {
                    return false;
                }
                this.f64299h.onNext(event);
                return true;
            } catch (Exception e) {
                this.f64299h.onError(e);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a3o(@NotNull View view, @NotNull Function1<? super DragEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        this.f64295e = view;
        this.f64296f = handled;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super DragEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnDragListenerC13469a viewOnDragListenerC13469a = new ViewOnDragListenerC13469a(this.f64295e, this.f64296f, observer);
            observer.onSubscribe(viewOnDragListenerC13469a);
            this.f64295e.setOnDragListener(viewOnDragListenerC13469a);
        }
    }
}
