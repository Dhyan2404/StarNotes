package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.annotations.NonNull;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public final class RxThreadFactory extends AtomicLong implements ThreadFactory {
    private static final long serialVersionUID = -7789753024099756196L;
    final boolean nonBlocking;
    final String prefix;
    final int priority;

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.RxThreadFactory$a */
    /* loaded from: classes10.dex */
    public static final class C17623a extends Thread implements NonBlockingThread {
        public C17623a(Runnable run, String name) {
            super(run, name);
        }
    }

    public RxThreadFactory(String prefix) {
        this(prefix, 5, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(@NonNull Runnable r) {
        String str = this.prefix + '-' + incrementAndGet();
        Thread c17623a = this.nonBlocking ? new C17623a(r, str) : new Thread(r, str);
        c17623a.setPriority(this.priority);
        c17623a.setDaemon(true);
        return c17623a;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public String toString() {
        return "RxThreadFactory[" + this.prefix + IteratorUtils.f104924b;
    }

    public RxThreadFactory(String prefix, int priority) {
        this(prefix, priority, false);
    }

    public RxThreadFactory(String prefix, int priority, boolean nonBlocking) {
        this.prefix = prefix;
        this.priority = priority;
        this.nonBlocking = nonBlocking;
    }
}
