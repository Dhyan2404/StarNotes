package com.jakewharton.rxbinding4;

import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\u000eB\u0007¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0003H\u0014J\u0018\u0010\u0007\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0003H$J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002R\u0014\u0010\u000b\u001a\u00028\u00008$X¤\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, m61528d2 = {"Lcom/jakewharton/rxbinding4/InitialValueObservable;", "T", "Lio/reactivex/rxjava3/core/Observable;", "Lio/reactivex/rxjava3/core/Observer;", EventHandlerManager.OBSERVER, "", "subscribeActual", "subscribeListener", "skipInitialValue", "getInitialValue", "()Ljava/lang/Object;", "initialValue", Constants.CONSTRUCTOR_NAME, "()V", "a", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public abstract class InitialValueObservable<T> extends Observable<T> {

    /* renamed from: com.jakewharton.rxbinding4.InitialValueObservable$a */
    /* loaded from: classes4.dex */
    public final class C6950a extends Observable<T> {
        public C6950a() {
        }

        @Override // io.reactivex.rxjava3.core.Observable
        public void subscribeActual(@NotNull Observer<? super T> observer) {
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            InitialValueObservable.this.subscribeListener(observer);
        }
    }

    public abstract T getInitialValue();

    @NotNull
    public final Observable<T> skipInitialValue() {
        return new C6950a();
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super T> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        subscribeListener(observer);
        observer.onNext(getInitialValue());
    }

    public abstract void subscribeListener(@NotNull Observer<? super T> observer);
}
