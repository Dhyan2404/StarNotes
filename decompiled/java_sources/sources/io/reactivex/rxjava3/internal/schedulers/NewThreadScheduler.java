package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes10.dex */
public final class NewThreadScheduler extends Scheduler {

    /* renamed from: g */
    public final ThreadFactory f97364g;

    /* renamed from: h */
    public static final String f97361h = "RxNewThreadScheduler";

    /* renamed from: j */
    public static final String f97363j = "rx3.newthread-priority";

    /* renamed from: i */
    public static final RxThreadFactory f97362i = new RxThreadFactory(f97361h, Math.max(1, Math.min(10, Integer.getInteger(f97363j, 5).intValue())));

    public NewThreadScheduler() {
        this(f97362i);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Scheduler.Worker createWorker() {
        return new NewThreadWorker(this.f97364g);
    }

    public NewThreadScheduler(ThreadFactory threadFactory) {
        this.f97364g = threadFactory;
    }
}
