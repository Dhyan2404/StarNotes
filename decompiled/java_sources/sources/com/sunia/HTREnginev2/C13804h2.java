package com.sunia.HTREnginev2;

import android.widget.AbsListView;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.widget.AbsListViewScrollEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: com.sunia.HTREnginev2.h2 */
/* loaded from: classes4.dex */
public final class C13804h2 extends Observable<AbsListViewScrollEvent> {

    /* renamed from: e */
    public final AbsListView f71728e;

    /* renamed from: com.sunia.HTREnginev2.h2$a */
    /* loaded from: classes4.dex */
    public static final class a extends MainThreadDisposable implements AbsListView.OnScrollListener {

        /* renamed from: f */
        public int f71729f;

        /* renamed from: g */
        public final AbsListView f71730g;

        /* renamed from: h */
        public final Observer<? super AbsListViewScrollEvent> f71731h;

        public a(@NotNull AbsListView view, @NotNull Observer<? super AbsListViewScrollEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f71730g = view;
            this.f71731h = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f71730g.setOnScrollListener(null);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(@NotNull AbsListView absListView, int i, int i2, int i3) {
            Intrinsics.checkParameterIsNotNull(absListView, "absListView");
            if (isDisposed()) {
                return;
            }
            this.f71731h.onNext(new AbsListViewScrollEvent(this.f71730g, this.f71729f, i, i2, i3));
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(@NotNull AbsListView absListView, int i) {
            Intrinsics.checkParameterIsNotNull(absListView, "absListView");
            this.f71729f = i;
            if (isDisposed()) {
                return;
            }
            AbsListView absListView2 = this.f71730g;
            this.f71731h.onNext(new AbsListViewScrollEvent(absListView2, i, absListView2.getFirstVisiblePosition(), this.f71730g.getChildCount(), this.f71730g.getCount()));
        }
    }

    public C13804h2(@NotNull AbsListView view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f71728e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super AbsListViewScrollEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            a aVar = new a(this.f71728e, observer);
            observer.onSubscribe(aVar);
            this.f71728e.setOnScrollListener(aVar);
        }
    }
}
