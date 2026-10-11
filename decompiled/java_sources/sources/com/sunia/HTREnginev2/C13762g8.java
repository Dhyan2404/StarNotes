package com.sunia.HTREnginev2;

import android.view.View;
import android.widget.AdapterView;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.widget.AdapterViewItemSelectionEvent;
import com.jakewharton.rxbinding4.widget.AdapterViewNothingSelectionEvent;
import com.jakewharton.rxbinding4.widget.AdapterViewSelectionEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: com.sunia.HTREnginev2.g8 */
/* loaded from: classes4.dex */
public final class C13762g8 extends InitialValueObservable<AdapterViewSelectionEvent> {

    /* renamed from: e */
    public final AdapterView<?> f70776e;

    /* renamed from: com.sunia.HTREnginev2.g8$a */
    /* loaded from: classes4.dex */
    public static final class a extends MainThreadDisposable implements AdapterView.OnItemSelectedListener {

        /* renamed from: f */
        public final AdapterView<?> f70777f;

        /* renamed from: g */
        public final Observer<? super AdapterViewSelectionEvent> f70778g;

        public a(@NotNull AdapterView<?> view, @NotNull Observer<? super AdapterViewSelectionEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f70777f = view;
            this.f70778g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f70777f.setOnItemSelectedListener(null);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(@NotNull AdapterView<?> parent, @Nullable View view, int i, long j) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            if (isDisposed()) {
                return;
            }
            this.f70778g.onNext(new AdapterViewItemSelectionEvent(parent, view, i, j));
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(@NotNull AdapterView<?> parent) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            if (isDisposed()) {
                return;
            }
            this.f70778g.onNext(new AdapterViewNothingSelectionEvent(parent));
        }
    }

    public C13762g8(@NotNull AdapterView<?> view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f70776e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public AdapterViewSelectionEvent getInitialValue() {
        int selectedItemPosition = this.f70776e.getSelectedItemPosition();
        if (selectedItemPosition == -1) {
            return new AdapterViewNothingSelectionEvent(this.f70776e);
        }
        return new AdapterViewItemSelectionEvent(this.f70776e, this.f70776e.getSelectedView(), selectedItemPosition, this.f70776e.getSelectedItemId());
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super AdapterViewSelectionEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            a aVar = new a(this.f70776e, observer);
            this.f70776e.setOnItemSelectedListener(aVar);
            observer.onSubscribe(aVar);
        }
    }
}
