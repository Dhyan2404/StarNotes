package com.sunia.HTREnginev2;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import com.jakewharton.rxbinding4.InitialValueObservable;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class tgn extends InitialValueObservable<CharSequence> {

    /* renamed from: e */
    public final TextView f85297e;

    /* renamed from: com.sunia.HTREnginev2.tgn$a */
    /* loaded from: classes4.dex */
    public static final class C14454a extends MainThreadDisposable implements TextWatcher {

        /* renamed from: f */
        public final TextView f85298f;

        /* renamed from: g */
        public final Observer<? super CharSequence> f85299g;

        public C14454a(@NotNull TextView view, @NotNull Observer<? super CharSequence> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f85298f = view;
            this.f85299g = observer;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NotNull Editable s) {
            Intrinsics.checkParameterIsNotNull(s, "s");
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@NotNull CharSequence s, int i, int i2, int i3) {
            Intrinsics.checkParameterIsNotNull(s, "s");
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f85298f.removeTextChangedListener(this);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@NotNull CharSequence s, int i, int i2, int i3) {
            Intrinsics.checkParameterIsNotNull(s, "s");
            if (isDisposed()) {
                return;
            }
            this.f85299g.onNext(s);
        }
    }

    public tgn(@NotNull TextView view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f85297e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public CharSequence getInitialValue() {
        return this.f85297e.getText();
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super CharSequence> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        C14454a c14454a = new C14454a(this.f85297e, observer);
        observer.onSubscribe(c14454a);
        this.f85297e.addTextChangedListener(c14454a);
    }
}
