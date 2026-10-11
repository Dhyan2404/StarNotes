package com.sunia.HTREnginev2;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.widget.TextViewAfterTextChangeEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class mgn extends InitialValueObservable<TextViewAfterTextChangeEvent> {

    /* renamed from: e */
    public final TextView f77578e;

    /* renamed from: com.sunia.HTREnginev2.mgn$a */
    /* loaded from: classes4.dex */
    public static final class C14095a extends MainThreadDisposable implements TextWatcher {

        /* renamed from: f */
        public final TextView f77579f;

        /* renamed from: g */
        public final Observer<? super TextViewAfterTextChangeEvent> f77580g;

        public C14095a(@NotNull TextView view, @NotNull Observer<? super TextViewAfterTextChangeEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f77579f = view;
            this.f77580g = observer;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NotNull Editable s) {
            Intrinsics.checkParameterIsNotNull(s, "s");
            this.f77580g.onNext(new TextViewAfterTextChangeEvent(this.f77579f, s));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@NotNull CharSequence charSequence, int i, int i2, int i3) {
            Intrinsics.checkParameterIsNotNull(charSequence, "charSequence");
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f77579f.removeTextChangedListener(this);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@NotNull CharSequence charSequence, int i, int i2, int i3) {
            Intrinsics.checkParameterIsNotNull(charSequence, "charSequence");
        }
    }

    public mgn(@NotNull TextView view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f77578e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public TextViewAfterTextChangeEvent getInitialValue() {
        TextView textView = this.f77578e;
        return new TextViewAfterTextChangeEvent(textView, textView.getEditableText());
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super TextViewAfterTextChangeEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        C14095a c14095a = new C14095a(this.f77578e, observer);
        observer.onSubscribe(c14095a);
        this.f77578e.addTextChangedListener(c14095a);
    }
}
