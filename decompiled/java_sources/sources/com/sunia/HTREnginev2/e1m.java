package com.sunia.HTREnginev2;

import Abdullah.hook;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeToObservable;
import io.reactivex.rxjava3.internal.operators.single.SingleToObservable;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class e1m {
    public e1m() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: a */
    public static <T> boolean m53900a(Object obj, Function<? super T, ? extends CompletableSource> function, CompletableObserver completableObserver) {
        CompletableSource completableSource;
        if (!(obj instanceof Supplier)) {
            return false;
        }
        try {
            hook.C0007h c0007h = (Object) ((Supplier) obj).get();
            if (c0007h != null) {
                CompletableSource apply = function.apply(c0007h);
                Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                completableSource = apply;
            } else {
                completableSource = null;
            }
            if (completableSource == null) {
                EmptyDisposable.complete(completableObserver);
            } else {
                completableSource.subscribe(completableObserver);
            }
            return true;
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, completableObserver);
            return true;
        }
    }

    /* renamed from: b */
    public static <T, R> boolean m53901b(Object obj, Function<? super T, ? extends MaybeSource<? extends R>> function, Observer<? super R> observer) {
        MaybeSource<? extends R> maybeSource;
        if (!(obj instanceof Supplier)) {
            return false;
        }
        try {
            hook.C0007h c0007h = (Object) ((Supplier) obj).get();
            if (c0007h != null) {
                MaybeSource<? extends R> apply = function.apply(c0007h);
                Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                maybeSource = apply;
            } else {
                maybeSource = null;
            }
            if (maybeSource == null) {
                EmptyDisposable.complete(observer);
            } else {
                maybeSource.subscribe(MaybeToObservable.create(observer));
            }
            return true;
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
            return true;
        }
    }

    /* renamed from: c */
    public static <T, R> boolean m53902c(Object obj, Function<? super T, ? extends SingleSource<? extends R>> function, Observer<? super R> observer) {
        SingleSource<? extends R> singleSource;
        if (!(obj instanceof Supplier)) {
            return false;
        }
        try {
            hook.C0007h c0007h = (Object) ((Supplier) obj).get();
            if (c0007h != null) {
                SingleSource<? extends R> apply = function.apply(c0007h);
                Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
                singleSource = apply;
            } else {
                singleSource = null;
            }
            if (singleSource == null) {
                EmptyDisposable.complete(observer);
            } else {
                singleSource.subscribe(SingleToObservable.create(observer));
            }
            return true;
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
            return true;
        }
    }
}
