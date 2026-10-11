package com.onyx.android.sdk.base.scheduler;

import com.onyx.android.sdk.base.scheduler.SingleThreadScheduler;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m61528d2 = {"Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler;", "", "()V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SingleThreadScheduler {
    public static final long DEFAULT_KEEP_ALIVE_TIME_IN_SECOND = 5;

    /* renamed from: a */
    public static final int f40836a = 1;

    /* renamed from: b */
    public static final int f40837b = 1;

    /* renamed from: d */
    @NotNull
    public static final Lazy<Scheduler> f40839d;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    public static final long f40838c = TimeUnit.MINUTES.toSeconds(10);

    @Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J$\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\u000bJ\u0010\u0010\u000e\u001a\u00020\r2\b\u0010\b\u001a\u0004\u0018\u00010\u0007R\u0017\u0010\u000f\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0003\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0010R\u0014\u0010\u001b\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/base/scheduler/SingleThreadScheduler$Companion;", "", "Lio/reactivex/rxjava3/core/Scheduler;", "scheduler", "newScheduler", "Ljava/util/concurrent/ExecutorService;", "newSingleThreadExecutor", "", "name", "", "keepAliveTime", "Ljava/util/concurrent/TimeUnit;", "unit", "Ljava/util/concurrent/ThreadFactory;", "newThreadFactory", "LONG_KEEP_ALIVE_TIME_IN_SECOND", "J", "getLONG_KEEP_ALIVE_TIME_IN_SECOND", "()J", "scheduler$delegate", "Lkotlin/Lazy;", "b", "()Lio/reactivex/rxjava3/core/Scheduler;", "", "CORE_POOL_SIZE", "I", "DEFAULT_KEEP_ALIVE_TIME_IN_SECOND", "MAXIMUM_POOL_SIZE", Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: c */
        public static final Thread m32014c(String str, Runnable runnable) {
            Thread thread = new Thread(runnable);
            if (str != null) {
                thread.setName(str);
            }
            thread.setPriority(10);
            return thread;
        }

        public static /* synthetic */ ExecutorService newSingleThreadExecutor$default(Companion companion, String str, long j, TimeUnit timeUnit, int i, Object obj) {
            if ((i & 2) != 0) {
                j = 5;
            }
            if ((i & 4) != 0) {
                timeUnit = TimeUnit.SECONDS;
            }
            return companion.newSingleThreadExecutor(str, j, timeUnit);
        }

        /* renamed from: b */
        public final Scheduler m32015b() {
            return (Scheduler) SingleThreadScheduler.f40839d.getValue();
        }

        public final long getLONG_KEEP_ALIVE_TIME_IN_SECOND() {
            return SingleThreadScheduler.f40838c;
        }

        @NotNull
        public final Scheduler newScheduler() {
            Scheduler from = Schedulers.from(newSingleThreadExecutor());
            Intrinsics.checkNotNullExpressionValue(from, "from(...)");
            return from;
        }

        @NotNull
        public final ExecutorService newSingleThreadExecutor() {
            return newSingleThreadExecutor$default(this, "", 0L, null, 6, null);
        }

        @NotNull
        public final ThreadFactory newThreadFactory(@Nullable final String name) {
            return new ThreadFactory() { // from class: com.sunia.HTREnginev2.dtm
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    Thread m32014c;
                    m32014c = SingleThreadScheduler.Companion.m32014c(name, runnable);
                    return m32014c;
                }
            };
        }

        @NotNull
        public final Scheduler scheduler() {
            return m32015b();
        }

        public Companion() {
        }

        @NotNull
        public final ExecutorService newSingleThreadExecutor(@Nullable String name, long keepAliveTime, @NotNull TimeUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, keepAliveTime, unit, new LinkedBlockingQueue(), newThreadFactory(name));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            return threadPoolExecutor;
        }
    }

    static {
        Lazy<Scheduler> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Scheduler>() { // from class: com.onyx.android.sdk.base.scheduler.SingleThreadScheduler$Companion$scheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Scheduler invoke() {
                return SingleThreadScheduler.INSTANCE.newScheduler();
            }
        });
        f40839d = lazy;
    }
}
