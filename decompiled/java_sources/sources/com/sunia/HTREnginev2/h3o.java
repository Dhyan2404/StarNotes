package com.sunia.HTREnginev2;

import android.view.View;
import android.view.ViewGroup;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.view.ViewGroupHierarchyChangeEvent;
import com.jakewharton.rxbinding4.view.ViewGroupHierarchyChildViewAddEvent;
import com.jakewharton.rxbinding4.view.ViewGroupHierarchyChildViewRemoveEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class h3o extends Observable<ViewGroupHierarchyChangeEvent> {

    /* renamed from: e */
    public final ViewGroup f71785e;

    /* renamed from: com.sunia.HTREnginev2.h3o$a */
    /* loaded from: classes4.dex */
    public static final class ViewGroupOnHierarchyChangeListenerC13806a extends MainThreadDisposable implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: f */
        public final ViewGroup f71786f;

        /* renamed from: g */
        public final Observer<? super ViewGroupHierarchyChangeEvent> f71787g;

        public ViewGroupOnHierarchyChangeListenerC13806a(@NotNull ViewGroup viewGroup, @NotNull Observer<? super ViewGroupHierarchyChangeEvent> observer) {
            Intrinsics.checkParameterIsNotNull(viewGroup, "viewGroup");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f71786f = viewGroup;
            this.f71787g = observer;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(@NotNull View parent, @NotNull View child) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            Intrinsics.checkParameterIsNotNull(child, "child");
            if (isDisposed()) {
                return;
            }
            this.f71787g.onNext(new ViewGroupHierarchyChildViewAddEvent(this.f71786f, child));
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(@NotNull View parent, @NotNull View child) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            Intrinsics.checkParameterIsNotNull(child, "child");
            if (isDisposed()) {
                return;
            }
            this.f71787g.onNext(new ViewGroupHierarchyChildViewRemoveEvent(this.f71786f, child));
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f71786f.setOnHierarchyChangeListener(null);
        }
    }

    public h3o(@NotNull ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "viewGroup");
        this.f71785e = viewGroup;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super ViewGroupHierarchyChangeEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ViewGroupOnHierarchyChangeListenerC13806a viewGroupOnHierarchyChangeListenerC13806a = new ViewGroupOnHierarchyChangeListenerC13806a(this.f71785e, observer);
            observer.onSubscribe(viewGroupOnHierarchyChangeListenerC13806a);
            this.f71785e.setOnHierarchyChangeListener(viewGroupOnHierarchyChangeListenerC13806a);
        }
    }
}
