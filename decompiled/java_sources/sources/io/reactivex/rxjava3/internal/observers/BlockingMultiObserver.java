package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.util.BlockingHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes10.dex */
public final class BlockingMultiObserver<T> extends CountDownLatch implements SingleObserver<T>, CompletableObserver, MaybeObserver<T> {

    /* renamed from: e */
    public T f95175e;

    /* renamed from: f */
    public Throwable f95176f;

    /* renamed from: g */
    public Disposable f95177g;

    /* renamed from: h */
    public volatile boolean f95178h;

    public BlockingMultiObserver() {
        super(1);
    }

    /* renamed from: a */
    public void m61144a() {
        this.f95178h = true;
        Disposable disposable = this.f95177g;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    public boolean blockingAwait(long timeout, TimeUnit unit) {
        if (getCount() != 0) {
            try {
                BlockingHelper.verifyNonBlocking();
                if (!await(timeout, unit)) {
                    m61144a();
                    return false;
                }
            } catch (InterruptedException e) {
                m61144a();
                throw ExceptionHelper.wrapOrThrow(e);
            }
        }
        Throwable th = this.f95176f;
        if (th == null) {
            return true;
        }
        throw ExceptionHelper.wrapOrThrow(th);
    }

    public void blockingConsume(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        try {
            if (getCount() != 0) {
                try {
                    BlockingHelper.verifyNonBlocking();
                    await();
                } catch (InterruptedException e) {
                    m61144a();
                    consumer2.accept(e);
                    return;
                }
            }
            Throwable th = this.f95176f;
            if (th != null) {
                consumer2.accept(th);
                return;
            }
            T t = this.f95175e;
            if (t != null) {
                consumer.accept(t);
            } else {
                action.run();
            }
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            RxJavaPlugins.onError(th2);
        }
    }

    public T blockingGet() {
        if (getCount() != 0) {
            try {
                BlockingHelper.verifyNonBlocking();
                await();
            } catch (InterruptedException e) {
                m61144a();
                throw ExceptionHelper.wrapOrThrow(e);
            }
        }
        Throwable th = this.f95176f;
        if (th == null) {
            return this.f95175e;
        }
        throw ExceptionHelper.wrapOrThrow(th);
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public void onComplete() {
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onError(Throwable e) {
        this.f95176f = e;
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(Disposable d) {
        this.f95177g = d;
        if (this.f95178h) {
            d.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(T value) {
        this.f95175e = value;
        countDown();
    }

    public T blockingGet(T defaultValue) {
        if (getCount() != 0) {
            try {
                BlockingHelper.verifyNonBlocking();
                await();
            } catch (InterruptedException e) {
                m61144a();
                throw ExceptionHelper.wrapOrThrow(e);
            }
        }
        Throwable th = this.f95176f;
        if (th == null) {
            T t = this.f95175e;
            return t != null ? t : defaultValue;
        }
        throw ExceptionHelper.wrapOrThrow(th);
    }
}
