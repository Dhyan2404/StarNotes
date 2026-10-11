package com.onyx.android.sdk.base.scheduler;

import com.onyx.android.sdk.base.scheduler.MultiThreadScheduler;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.concurrent.LinkedBlockingQueue;
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

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m61528d2 = {"Lcom/onyx/android/sdk/base/scheduler/MultiThreadScheduler;", "", "()V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MultiThreadScheduler {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a */
    public static final int f40824a = 5;

    /* renamed from: b */
    public static final int f40825b = 5;

    /* renamed from: c */
    public static final long f40826c = 5;

    /* renamed from: d */
    @NotNull
    public static final Lazy<Scheduler> f40827d;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0006\u0010\u0003\u001a\u00020\u0002J&\u0010\n\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bR\u001b\u0010\u0003\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/base/scheduler/MultiThreadScheduler$Companion;", "", "Lio/reactivex/rxjava3/core/Scheduler;", "scheduler", "", "name", "", "keepAliveTime", "Ljava/util/concurrent/TimeUnit;", "unit", "newScheduler", "scheduler$delegate", "Lkotlin/Lazy;", "a", "()Lio/reactivex/rxjava3/core/Scheduler;", "", "CORE_POOL_SIZE", "I", "DEFAULT_KEEP_ALIVE_TIME_IN_SECOND", "J", "MAXIMUM_POOL_SIZE", Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ Scheduler newScheduler$default(Companion companion, String str, long j, TimeUnit timeUnit, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                j = 5;
            }
            if ((i & 4) != 0) {
                timeUnit = TimeUnit.SECONDS;
            }
            return companion.newScheduler(str, j, timeUnit);
        }

        /* renamed from: a */
        public final Scheduler m32005a() {
            return (Scheduler) MultiThreadScheduler.f40827d.getValue();
        }

        @NotNull
        public final Scheduler newScheduler(@Nullable String name, long keepAliveTime, @NotNull TimeUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, keepAliveTime, unit, new LinkedBlockingQueue(), SingleThreadScheduler.INSTANCE.newThreadFactory(name));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            Scheduler from = Schedulers.from(threadPoolExecutor);
            Intrinsics.checkNotNullExpressionValue(from, "from(...)");
            return from;
        }

        @NotNull
        public final Scheduler scheduler() {
            return m32005a();
        }

        public Companion() {
        }
    }

    static {
        Lazy<Scheduler> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Scheduler>() { // from class: com.onyx.android.sdk.base.scheduler.MultiThreadScheduler$Companion$scheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Scheduler invoke() {
                return MultiThreadScheduler.Companion.newScheduler$default(MultiThreadScheduler.INSTANCE, null, 0L, null, 7, null);
            }
        });
        f40827d = lazy;
    }
}
