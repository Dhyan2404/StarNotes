package com.sunia.HTREnginev2;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.widget.TextViewBeforeTextChangeEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class ngn extends InitialValueObservable<TextViewBeforeTextChangeEvent> {

    /* renamed from: e */
    public final TextView f78632e;

    /* renamed from: com.sunia.HTREnginev2.ngn$a */
    /* loaded from: classes4.dex */
    public static final class C14137a extends MainThreadDisposable implements TextWatcher {

        /* renamed from: f */
        public final TextView f78633f;

        /* renamed from: g */
        public final Observer<? super TextViewBeforeTextChangeEvent> f78634g;

        public C14137a(@NotNull TextView view, @NotNull Observer<? super TextViewBeforeTextChangeEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f78633f = view;
            this.f78634g = observer;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NotNull Editable s) {
            Intrinsics.checkParameterIsNotNull(s, "s");
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@NotNull CharSequence s, int i, int i2, int i3) {
            Intrinsics.checkParameterIsNotNull(s, "s");
            if (isDisposed()) {
                return;
            }
            this.f78634g.onNext(new TextViewBeforeTextChangeEvent(this.f78633f, s, i, i2, i3));
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f78633f.removeTextChangedListener(this);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@NotNull CharSequence charSequence, int i, int i2, int i3) {
            Intrinsics.checkParameterIsNotNull(charSequence, "charSequence");
        }
    }

    public ngn(@NotNull TextView view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f78632e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public TextViewBeforeTextChangeEvent getInitialValue() {
        TextView textView = this.f78632e;
        CharSequence text = textView.getText();
        Intrinsics.checkExpressionValueIsNotNull(text, "view.text");
        return new TextViewBeforeTextChangeEvent(textView, text, 0, 0, 0);
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super TextViewBeforeTextChangeEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        C14137a c14137a = new C14137a(this.f78632e, observer);
        observer.onSubscribe(c14137a);
        this.f78632e.addTextChangedListener(c14137a);
    }
}
