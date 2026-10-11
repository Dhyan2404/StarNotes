package com.sunia.HTREnginev2;

import android.view.View;
import android.widget.AdapterView;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: com.sunia.HTREnginev2.f8 */
/* loaded from: classes4.dex */
public final class C13711f8 extends InitialValueObservable<Integer> {

    /* renamed from: e */
    public final AdapterView<?> f69737e;

    /* renamed from: com.sunia.HTREnginev2.f8$a */
    /* loaded from: classes4.dex */
    public static final class a extends MainThreadDisposable implements AdapterView.OnItemSelectedListener {

        /* renamed from: f */
        public final AdapterView<?> f69738f;

        /* renamed from: g */
        public final Observer<? super Integer> f69739g;

        public a(@NotNull AdapterView<?> view, @NotNull Observer<? super Integer> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f69738f = view;
            this.f69739g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f69738f.setOnItemSelectedListener(null);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(@NotNull AdapterView<?> adapterView, @Nullable View view, int i, long j) {
            Intrinsics.checkParameterIsNotNull(adapterView, "adapterView");
            if (isDisposed()) {
                return;
            }
            this.f69739g.onNext(Integer.valueOf(i));
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(@NotNull AdapterView<?> adapterView) {
            Intrinsics.checkParameterIsNotNull(adapterView, "adapterView");
            if (isDisposed()) {
                return;
            }
            this.f69739g.onNext(-1);
        }
    }

    public C13711f8(@NotNull AdapterView<?> view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f69737e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Integer getInitialValue() {
        return Integer.valueOf(this.f69737e.getSelectedItemPosition());
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super Integer> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            a aVar = new a(this.f69737e, observer);
            this.f69737e.setOnItemSelectedListener(aVar);
            observer.onSubscribe(aVar);
        }
    }
}
