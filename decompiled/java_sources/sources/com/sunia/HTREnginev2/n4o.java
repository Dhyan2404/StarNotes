package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.RequiresApi;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.view.ViewScrollChangeEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@RequiresApi(23)
/* loaded from: classes4.dex */
public final class n4o extends Observable<ViewScrollChangeEvent> {

    /* renamed from: e */
    public final View f78296e;

    /* renamed from: com.sunia.HTREnginev2.n4o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnScrollChangeListenerC14124a extends MainThreadDisposable implements View.OnScrollChangeListener {

        /* renamed from: f */
        public final View f78297f;

        /* renamed from: g */
        public final Observer<? super ViewScrollChangeEvent> f78298g;

        public ViewOnScrollChangeListenerC14124a(@NotNull View view, @NotNull Observer<? super ViewScrollChangeEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f78297f = view;
            this.f78298g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f78297f.setOnScrollChangeListener(null);
        }

        @Override // android.view.View.OnScrollChangeListener
        public void onScrollChange(@NotNull View v, int i, int i2, int i3, int i4) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            if (isDisposed()) {
                return;
            }
            this.f78298g.onNext(new ViewScrollChangeEvent(v, i, i2, i3, i4));
        }
    }

    public n4o(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f78296e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super ViewScrollChangeEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewOnScrollChangeListenerC14124a viewOnScrollChangeListenerC14124a = new ViewOnScrollChangeListenerC14124a(this.f78296e, observer);
            observer.onSubscribe(viewOnScrollChangeListenerC14124a);
            this.f78296e.setOnScrollChangeListener(viewOnScrollChangeListenerC14124a);
        }
    }
}
