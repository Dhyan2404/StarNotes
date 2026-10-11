package com.sunia.HTREnginev2;

import android.view.View;
import android.widget.AdapterView;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: com.sunia.HTREnginev2.c8 */
/* loaded from: classes4.dex */
public final class C13554c8 extends Observable<Integer> {

    /* renamed from: e */
    public final AdapterView<?> f66579e;

    /* renamed from: com.sunia.HTREnginev2.c8$a */
    /* loaded from: classes4.dex */
    public static final class a extends MainThreadDisposable implements AdapterView.OnItemClickListener {

        /* renamed from: f */
        public final AdapterView<?> f66580f;

        /* renamed from: g */
        public final Observer<? super Integer> f66581g;

        public a(@NotNull AdapterView<?> view, @NotNull Observer<? super Integer> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f66580f = view;
            this.f66581g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f66580f.setOnItemClickListener(null);
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(@NotNull AdapterView<?> adapterView, @Nullable View view, int i, long j) {
            Intrinsics.checkParameterIsNotNull(adapterView, "adapterView");
            if (isDisposed()) {
                return;
            }
            this.f66581g.onNext(Integer.valueOf(i));
        }
    }

    public C13554c8(@NotNull AdapterView<?> view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f66579e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Integer> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            a aVar = new a(this.f66579e, observer);
            observer.onSubscribe(aVar);
            this.f66579e.setOnItemClickListener(aVar);
        }
    }
}
