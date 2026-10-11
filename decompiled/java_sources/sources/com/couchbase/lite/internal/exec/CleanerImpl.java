package com.couchbase.lite.internal.exec;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.exec.Cleaner;
import com.couchbase.lite.internal.exec.CleanerImpl;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.lang.Thread;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class CleanerImpl {
    private static final LogDomain LOG = LogDomain.DATABASE;

    @NonNull
    private final String cleanerName;

    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private CleanerThread cleanerThread;

    @GuardedBy("alive")
    private int maxSize;

    @GuardedBy("alive")
    private int minSize;

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private int threadId;
    private final int timeoutMs;
    private final Object lock = new Object();

    @NonNull
    private final AtomicBoolean shouldStop = new AtomicBoolean();

    @NonNull
    @GuardedBy("alive")
    private final Set<CleanableRef> alive = new HashSet();

    @NonNull
    private final ReferenceQueue<Object> zombies = new ReferenceQueue<>();

    /* loaded from: classes4.dex */
    public final class CleanableRef extends PhantomReference<Object> implements Cleaner.Cleanable {

        @NonNull
        private final Cleaner.Cleanable cleanable;

        @NonNull
        private final String name;

        /* renamed from: ts */
        private final long f16328ts;

        public CleanableRef(@NonNull Object obj, @NonNull Cleaner.Cleanable cleanable) {
            super(obj, CleanerImpl.this.zombies);
            this.cleanable = cleanable;
            this.name = obj.getClass().getSimpleName() + ClassUtils.objId(obj);
            this.f16328ts = System.currentTimeMillis();
        }

        @Override // com.couchbase.lite.internal.exec.Cleaner.Cleanable
        public void clean(boolean z) {
            boolean remove;
            clear();
            synchronized (CleanerImpl.this.alive) {
                remove = CleanerImpl.this.alive.remove(this);
                int size = CleanerImpl.this.alive.size();
                if (size < CleanerImpl.this.minSize) {
                    CleanerImpl.this.minSize = size;
                }
            }
            if (!remove) {
                Log.m9911w(CleanerImpl.LOG, "%s was not alive at attempt to clean", this);
            }
            try {
                this.cleanable.clean(z);
            } catch (Exception e) {
                LogDomain logDomain = CleanerImpl.LOG;
                Object[] objArr = new Object[2];
                objArr[0] = this.name;
                objArr[1] = z ? "!" : "";
                Log.m9910w(logDomain, "Failed cleaning: %s%s", e, objArr);
            }
        }

        public boolean equals(@Nullable Object obj) {
            return this == obj || ((obj instanceof CleanableRef) && ((CleanableRef) obj).cleanable.equals(this.cleanable));
        }

        public int hashCode() {
            return this.cleanable.hashCode();
        }

        @NonNull
        public String toString() {
            return "CleanableRef{" + this.name + ", " + this.cleanable + "}";
        }
    }

    /* loaded from: classes4.dex */
    public final class CleanerThread extends Thread {
        private final AtomicLong runtime;

        public CleanerThread(@NonNull String str) {
            super(str);
            this.runtime = new AtomicLong();
            setPriority(8);
            setDaemon(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getUncaughtExceptionHandler$0(Thread thread, Throwable th) {
            Log.m9910w(CleanerImpl.LOG, "Cleaner thread %s-%s crashed", th, CleanerImpl.this.cleanerName, thread.getName());
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            if (defaultUncaughtExceptionHandler != null) {
                defaultUncaughtExceptionHandler.uncaughtException(thread, th);
            }
        }

        public long getRuntimeNanos() {
            return this.runtime.getAndSet(0L);
        }

        @Override // java.lang.Thread
        @NonNull
        public Thread.UncaughtExceptionHandler getUncaughtExceptionHandler() {
            return new Thread.UncaughtExceptionHandler() { // from class: com.couchbase.lite.internal.exec.d
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread, Throwable th) {
                    CleanerImpl.CleanerThread.this.lambda$getUncaughtExceptionHandler$0(thread, th);
                }
            };
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Log.m9907i(CleanerImpl.LOG, "Cleaner thread %s started", getName());
            boolean z = CleanerImpl.this.shouldStop.get();
            while (!z) {
                try {
                    Cleaner.Cleanable nextZombie = CleanerImpl.this.getNextZombie();
                    z = CleanerImpl.this.shouldStop.get();
                    if (nextZombie != null) {
                        long nanoTime = System.nanoTime();
                        nextZombie.clean(true);
                        this.runtime.getAndAdd(System.nanoTime() - nanoTime);
                    }
                } catch (Exception e) {
                    synchronized (CleanerImpl.this.lock) {
                        if (equals(CleanerImpl.this.cleanerThread)) {
                            if (z) {
                                CleanerImpl.this.cleanerThread = null;
                            } else {
                                CleanerImpl.this.startCleaner();
                            }
                        }
                        Log.m9910w(CleanerImpl.LOG, "Cleaner thread exiting: %s", e, getName());
                        return;
                    }
                } catch (Throwable th) {
                    synchronized (CleanerImpl.this.lock) {
                        if (equals(CleanerImpl.this.cleanerThread)) {
                            if (z) {
                                CleanerImpl.this.cleanerThread = null;
                            } else {
                                CleanerImpl.this.startCleaner();
                            }
                        }
                        Log.m9910w(CleanerImpl.LOG, "Cleaner thread exiting: %s", null, getName());
                        throw th;
                    }
                }
            }
            synchronized (CleanerImpl.this.lock) {
                if (equals(CleanerImpl.this.cleanerThread)) {
                    if (z) {
                        CleanerImpl.this.cleanerThread = null;
                    } else {
                        CleanerImpl.this.startCleaner();
                    }
                }
            }
            Log.m9910w(CleanerImpl.LOG, "Cleaner thread exiting: %s", null, getName());
        }
    }

    public CleanerImpl(@NonNull String str, int i) {
        this.cleanerName = str;
        this.timeoutMs = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$getStats$0(CleanableRef cleanableRef) throws RuntimeException {
        return Long.valueOf(cleanableRef.f16328ts);
    }

    @Nullable
    @VisibleForTesting
    public Cleaner.Cleanable getNextZombie() {
        try {
            return (Cleaner.Cleanable) this.zombies.remove(this.timeoutMs);
        } catch (InterruptedException unused) {
            return null;
        }
    }

    @NonNull
    @VisibleForTesting
    public final Cleaner.Stats getStats() {
        Cleaner.Stats stats;
        synchronized (this.alive) {
            CleanerThread cleanerThread = this.cleanerThread;
            stats = new Cleaner.Stats(cleanerThread == null ? 0L : cleanerThread.getRuntimeNanos(), this.minSize, this.maxSize, InterfaceC2217Fn.mapToList(this.alive, new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.couchbase.lite.internal.exec.c
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
                public final Object apply(Object obj) {
                    Long lambda$getStats$0;
                    lambda$getStats$0 = CleanerImpl.lambda$getStats$0((CleanerImpl.CleanableRef) obj);
                    return lambda$getStats$0;
                }
            }));
            int size = this.alive.size();
            this.minSize = size;
            this.maxSize = size;
        }
        return stats;
    }

    public final boolean isStopped() {
        boolean z;
        synchronized (this.lock) {
            z = this.shouldStop.get() && this.cleanerThread == null;
        }
        return z;
    }

    @NonNull
    public final Cleaner.Cleanable register(@NonNull Object obj, @NonNull Cleaner.Cleanable cleanable) {
        if (this.shouldStop.get()) {
            throw new CouchbaseLiteError("Attempt to register with a closed cleaner");
        }
        CleanableRef cleanableRef = new CleanableRef(obj, cleanable);
        synchronized (this.alive) {
            if (!this.alive.add(cleanableRef)) {
                throw new CouchbaseLiteError("Attempt to register a duplicate CleanableRef");
            }
            int size = this.alive.size();
            if (size > this.maxSize) {
                this.maxSize = size;
            }
        }
        synchronized (this.lock) {
            if (this.cleanerThread == null) {
                startCleaner();
            }
        }
        return cleanableRef;
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    @VisibleForTesting
    public final void startCleaner() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.cleanerName);
        sb.append("-thread-");
        int i = this.threadId + 1;
        this.threadId = i;
        sb.append(i);
        CleanerThread cleanerThread = new CleanerThread(sb.toString());
        this.cleanerThread = cleanerThread;
        cleanerThread.start();
    }

    @VisibleForTesting
    public final void stopCleaner() {
        this.shouldStop.set(true);
    }
}
