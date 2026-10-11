package com.sunia.HTREnginev2;

import android.view.View;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class p4o extends Observable<Integer> {

    /* renamed from: e */
    public final View f80453e;

    /* renamed from: com.sunia.HTREnginev2.p4o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnSystemUiVisibilityChangeListenerC14223a extends MainThreadDisposable implements View.OnSystemUiVisibilityChangeListener {

        /* renamed from: f */
        public final View f80454f;

        /* renamed from: g */
        public final Observer<? super Integer> f80455g;

        public ViewOnSystemUiVisibilityChangeListenerC14223a(@NotNull View view, @NotNull Observer<? super Integer> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f80454f = view;
            this.f80455g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f80454f.setOnSystemUiVisibilityChangeListener(null);
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            if (isDisposed()) {
                return;
            }
            this.f80455g.onNext(Integer.valueOf(i));
        }
    }

    public p4o(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f80453e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Integer> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnSystemUiVisibilityChangeListenerC14223a viewOnSystemUiVisibilityChangeListenerC14223a = new ViewOnSystemUiVisibilityChangeListenerC14223a(this.f80453e, observer);
            observer.onSubscribe(viewOnSystemUiVisibilityChangeListenerC14223a);
            this.f80453e.setOnSystemUiVisibilityChangeListener(viewOnSystemUiVisibilityChangeListenerC14223a);
        }
    }
}
