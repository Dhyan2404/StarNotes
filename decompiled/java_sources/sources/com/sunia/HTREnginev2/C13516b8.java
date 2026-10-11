package com.sunia.HTREnginev2;

import android.view.View;
import android.widget.AdapterView;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.widget.AdapterViewItemClickEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: com.sunia.HTREnginev2.b8 */
/* loaded from: classes4.dex */
public final class C13516b8 extends Observable<AdapterViewItemClickEvent> {

    /* renamed from: e */
    public final AdapterView<?> f65506e;

    /* renamed from: com.sunia.HTREnginev2.b8$a */
    /* loaded from: classes4.dex */
    public static final class a extends MainThreadDisposable implements AdapterView.OnItemClickListener {

        /* renamed from: f */
        public final AdapterView<?> f65507f;

        /* renamed from: g */
        public final Observer<? super AdapterViewItemClickEvent> f65508g;

        public a(@NotNull AdapterView<?> view, @NotNull Observer<? super AdapterViewItemClickEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f65507f = view;
            this.f65508g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f65507f.setOnItemClickListener(null);
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(@NotNull AdapterView<?> parent, @Nullable View view, int i, long j) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            if (isDisposed()) {
                return;
            }
            this.f65508g.onNext(new AdapterViewItemClickEvent(parent, view, i, j));
        }
    }

    public C13516b8(@NotNull AdapterView<?> view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f65506e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super AdapterViewItemClickEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            a aVar = new a(this.f65506e, observer);
            observer.onSubscribe(aVar);
            this.f65506e.setOnItemClickListener(aVar);
        }
    }
}
