package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.processors.FlowableProcessor;
import io.reactivex.rxjava3.processors.UnicastProcessor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public class SchedulerWhen extends Scheduler implements Disposable {

    /* renamed from: j */
    public static final Disposable f97368j = new C17628d();

    /* renamed from: k */
    public static final Disposable f97369k = Disposable.disposed();

    /* renamed from: g */
    public final Scheduler f97370g;

    /* renamed from: h */
    public final FlowableProcessor<Flowable<Completable>> f97371h;

    /* renamed from: i */
    public Disposable f97372i;

    /* loaded from: classes10.dex */
    public static class DelayedAction extends ScheduledAction {
        private final Runnable action;
        private final long delayTime;
        private final TimeUnit unit;

        public DelayedAction(Runnable action, long delayTime, TimeUnit unit) {
            this.action = action;
            this.delayTime = delayTime;
            this.unit = unit;
        }

        @Override // io.reactivex.rxjava3.internal.schedulers.SchedulerWhen.ScheduledAction
        public Disposable callActual(Scheduler.Worker actualWorker, CompletableObserver actionCompletable) {
            return actualWorker.schedule(new RunnableC17626b(this.action, actionCompletable), this.delayTime, this.unit);
        }
    }

    /* loaded from: classes10.dex */
    public static class ImmediateAction extends ScheduledAction {
        private final Runnable action;

        public ImmediateAction(Runnable action) {
            this.action = action;
        }

        @Override // io.reactivex.rxjava3.internal.schedulers.SchedulerWhen.ScheduledAction
        public Disposable callActual(Scheduler.Worker actualWorker, CompletableObserver actionCompletable) {
            return actualWorker.schedule(new RunnableC17626b(this.action, actionCompletable));
        }
    }

    /* loaded from: classes10.dex */
    public static abstract class ScheduledAction extends AtomicReference<Disposable> implements Disposable {
        public ScheduledAction() {
            super(SchedulerWhen.f97368j);
        }

        public void call(Scheduler.Worker actualWorker, CompletableObserver actionCompletable) {
            Disposable disposable;
            Disposable disposable2 = get();
            if (disposable2 != SchedulerWhen.f97369k && disposable2 == (disposable = SchedulerWhen.f97368j)) {
                Disposable callActual = callActual(actualWorker, actionCompletable);
                if (compareAndSet(disposable, callActual)) {
                    return;
                }
                callActual.dispose();
            }
        }

        public abstract Disposable callActual(Scheduler.Worker actualWorker, CompletableObserver actionCompletable);

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            getAndSet(SchedulerWhen.f97369k).dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get().isDisposed();
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.SchedulerWhen$a */
    /* loaded from: classes10.dex */
    public static final class C17625a implements Function<ScheduledAction, Completable> {

        /* renamed from: e */
        public final Scheduler.Worker f97373e;

        /* renamed from: io.reactivex.rxjava3.internal.schedulers.SchedulerWhen$a$a */
        /* loaded from: classes10.dex */
        public final class a extends Completable {

            /* renamed from: e */
            public final ScheduledAction f97374e;

            public a(ScheduledAction action) {
                this.f97374e = action;
            }

            @Override // io.reactivex.rxjava3.core.Completable
            public void subscribeActual(CompletableObserver actionCompletable) {
                actionCompletable.onSubscribe(this.f97374e);
                this.f97374e.call(C17625a.this.f97373e, actionCompletable);
            }
        }

        public C17625a(Scheduler.Worker actualWorker) {
            this.f97373e = actualWorker;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Completable apply(final ScheduledAction action) {
            return new a(action);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.SchedulerWhen$b */
    /* loaded from: classes10.dex */
    public static class RunnableC17626b implements Runnable {

        /* renamed from: e */
        public final CompletableObserver f97376e;

        /* renamed from: f */
        public final Runnable f97377f;

        public RunnableC17626b(Runnable action, CompletableObserver actionCompletable) {
            this.f97377f = action;
            this.f97376e = actionCompletable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f97377f.run();
            } finally {
                this.f97376e.onComplete();
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.SchedulerWhen$d */
    /* loaded from: classes10.dex */
    public static final class C17628d implements Disposable {
        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SchedulerWhen(Function<Flowable<Flowable<Completable>>, Completable> combine, Scheduler actualScheduler) {
        this.f97370g = actualScheduler;
        FlowableProcessor serialized = UnicastProcessor.create().toSerialized();
        this.f97371h = serialized;
        try {
            this.f97372i = ((Completable) combine.apply(serialized)).subscribe();
        } catch (Throwable th) {
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Scheduler.Worker createWorker() {
        Scheduler.Worker createWorker = this.f97370g.createWorker();
        FlowableProcessor<T> serialized = UnicastProcessor.create().toSerialized();
        Flowable<Completable> map = serialized.map(new C17625a(createWorker));
        C17627c c17627c = new C17627c(serialized, createWorker);
        this.f97371h.onNext(map);
        return c17627c;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        this.f97372i.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return this.f97372i.isDisposed();
    }

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.SchedulerWhen$c */
    /* loaded from: classes10.dex */
    public static final class C17627c extends Scheduler.Worker {

        /* renamed from: e */
        public final AtomicBoolean f97378e = new AtomicBoolean();

        /* renamed from: f */
        public final FlowableProcessor<ScheduledAction> f97379f;

        /* renamed from: g */
        public final Scheduler.Worker f97380g;

        public C17627c(FlowableProcessor<ScheduledAction> actionProcessor, Scheduler.Worker actualWorker) {
            this.f97379f = actionProcessor;
            this.f97380g = actualWorker;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.f97378e.compareAndSet(false, true)) {
                this.f97379f.onComplete();
                this.f97380g.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97378e.get();
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull final Runnable action, final long delayTime, @NonNull final TimeUnit unit) {
            DelayedAction delayedAction = new DelayedAction(action, delayTime, unit);
            this.f97379f.onNext(delayedAction);
            return delayedAction;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull final Runnable action) {
            ImmediateAction immediateAction = new ImmediateAction(action);
            this.f97379f.onNext(immediateAction);
            return immediateAction;
        }
    }
}
