package com.sunia.HTREnginev2;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.widget.TextViewTextChangeEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class sgn extends InitialValueObservable<TextViewTextChangeEvent> {

    /* renamed from: e */
    public final TextView f84132e;

    /* renamed from: com.sunia.HTREnginev2.sgn$a */
    /* loaded from: classes4.dex */
    public static final class C14400a extends MainThreadDisposable implements TextWatcher {

        /* renamed from: f */
        public final TextView f84133f;

        /* renamed from: g */
        public final Observer<? super TextViewTextChangeEvent> f84134g;

        public C14400a(@NotNull TextView view, @NotNull Observer<? super TextViewTextChangeEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f84133f = view;
            this.f84134g = observer;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NotNull Editable editable) {
            Intrinsics.checkParameterIsNotNull(editable, "editable");
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@NotNull CharSequence s, int i, int i2, int i3) {
            Intrinsics.checkParameterIsNotNull(s, "s");
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f84133f.removeTextChangedListener(this);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@NotNull CharSequence s, int i, int i2, int i3) {
            Intrinsics.checkParameterIsNotNull(s, "s");
            if (isDisposed()) {
                return;
            }
            this.f84134g.onNext(new TextViewTextChangeEvent(this.f84133f, s, i, i2, i3));
        }
    }

    public sgn(@NotNull TextView view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f84132e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public TextViewTextChangeEvent getInitialValue() {
        TextView textView = this.f84132e;
        CharSequence text = textView.getText();
        Intrinsics.checkExpressionValueIsNotNull(text, "view.text");
        return new TextViewTextChangeEvent(textView, text, 0, 0, 0);
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super TextViewTextChangeEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        C14400a c14400a = new C14400a(this.f84132e, observer);
        observer.onSubscribe(c14400a);
        this.f84132e.addTextChangedListener(c14400a);
    }
}
