package com.sunia.HTREnginev2;

import android.view.KeyEvent;
import android.widget.TextView;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.widget.TextViewEditorActionEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes4.dex */
public final class ogn extends Observable<TextViewEditorActionEvent> {

    /* renamed from: e */
    public final TextView f79703e;

    /* renamed from: f */
    public final Function1<TextViewEditorActionEvent, Boolean> f79704f;

    /* renamed from: com.sunia.HTREnginev2.ogn$a */
    /* loaded from: classes4.dex */
    public static final class C14190a extends MainThreadDisposable implements TextView.OnEditorActionListener {

        /* renamed from: f */
        public final TextView f79705f;

        /* renamed from: g */
        public final Observer<? super TextViewEditorActionEvent> f79706g;

        /* renamed from: h */
        public final Function1<TextViewEditorActionEvent, Boolean> f79707h;

        /* JADX WARN: Multi-variable type inference failed */
        public C14190a(@NotNull TextView view, @NotNull Observer<? super TextViewEditorActionEvent> observer, @NotNull Function1<? super TextViewEditorActionEvent, Boolean> handled) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            Intrinsics.checkParameterIsNotNull(handled, "handled");
            this.f79705f = view;
            this.f79706g = observer;
            this.f79707h = handled;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f79705f.setOnEditorActionListener(null);
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(@NotNull TextView textView, int i, @Nullable KeyEvent keyEvent) {
            Intrinsics.checkParameterIsNotNull(textView, "textView");
            TextViewEditorActionEvent textViewEditorActionEvent = new TextViewEditorActionEvent(this.f79705f, i, keyEvent);
            try {
                if (isDisposed() || !this.f79707h.invoke(textViewEditorActionEvent).booleanValue()) {
                    return false;
                }
                this.f79706g.onNext(textViewEditorActionEvent);
                return true;
            } catch (Exception e) {
                this.f79706g.onError(e);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ogn(@NotNull TextView view, @NotNull Function1<? super TextViewEditorActionEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        this.f79703e = view;
        this.f79704f = handled;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super TextViewEditorActionEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C14190a c14190a = new C14190a(this.f79703e, observer, this.f79704f);
            observer.onSubscribe(c14190a);
            this.f79703e.setOnEditorActionListener(c14190a);
        }
    }
}
