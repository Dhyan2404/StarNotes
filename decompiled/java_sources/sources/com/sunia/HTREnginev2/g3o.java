package com.sunia.HTREnginev2;

import android.view.View;
import com.jakewharton.rxbinding4.InitialValueObservable;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class g3o extends InitialValueObservable<Boolean> {

    /* renamed from: e */
    public final View f70656e;

    /* renamed from: com.sunia.HTREnginev2.g3o$a */
    /* loaded from: classes4.dex */
    public static final class ViewOnFocusChangeListenerC13755a extends MainThreadDisposable implements View.OnFocusChangeListener {

        /* renamed from: f */
        public final View f70657f;

        /* renamed from: g */
        public final Observer<? super Boolean> f70658g;

        public ViewOnFocusChangeListenerC13755a(@NotNull View view, @NotNull Observer<? super Boolean> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f70657f = view;
            this.f70658g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f70657f.setOnFocusChangeListener(null);
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(@NotNull View v, boolean z) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            if (isDisposed()) {
                return;
            }
            this.f70658g.onNext(Boolean.valueOf(z));
        }
    }

    public g3o(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f70656e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Boolean getInitialValue() {
        return Boolean.valueOf(this.f70656e.hasFocus());
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super Boolean> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        ViewOnFocusChangeListenerC13755a viewOnFocusChangeListenerC13755a = new ViewOnFocusChangeListenerC13755a(this.f70656e, observer);
        observer.onSubscribe(viewOnFocusChangeListenerC13755a);
        this.f70656e.setOnFocusChangeListener(viewOnFocusChangeListenerC13755a);
    }
}
