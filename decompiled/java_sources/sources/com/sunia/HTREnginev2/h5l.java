package com.sunia.HTREnginev2;

import android.widget.PopupMenu;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class h5l extends Observable<Unit> {

    /* renamed from: e */
    public final PopupMenu f71841e;

    /* renamed from: com.sunia.HTREnginev2.h5l$a */
    /* loaded from: classes4.dex */
    public static final class C13811a extends MainThreadDisposable implements PopupMenu.OnDismissListener {

        /* renamed from: f */
        public final PopupMenu f71842f;

        /* renamed from: g */
        public final Observer<? super Unit> f71843g;

        public C13811a(@NotNull PopupMenu view, @NotNull Observer<? super Unit> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f71842f = view;
            this.f71843g = observer;
        }

        @Override // android.widget.PopupMenu.OnDismissListener
        public void onDismiss(@NotNull PopupMenu popupMenu) {
            Intrinsics.checkParameterIsNotNull(popupMenu, "popupMenu");
            if (isDisposed()) {
                return;
            }
            this.f71843g.onNext(Unit.INSTANCE);
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f71842f.setOnDismissListener(null);
        }
    }

    public h5l(@NotNull PopupMenu view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f71841e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Unit> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C13811a c13811a = new C13811a(this.f71841e, observer);
            this.f71841e.setOnDismissListener(c13811a);
            observer.onSubscribe(c13811a);
        }
    }
}
