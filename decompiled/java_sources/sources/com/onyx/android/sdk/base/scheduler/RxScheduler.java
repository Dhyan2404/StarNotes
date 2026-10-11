package com.onyx.android.sdk.base.scheduler;

import com.onyx.android.sdk.base.extension.SchedulerKt;
import com.onyx.android.sdk.base.scheduler.MultiThreadScheduler;
import com.onyx.android.sdk.base.scheduler.SingleThreadScheduler;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0006\u0010\b\u001a\u00020\u0007R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000b\u0010\n¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "", "Lio/reactivex/rxjava3/core/Scheduler;", "subscribeOn", "observeOn", "getSubscribeOn", "getObserveOn", "", "shutdown", "a", "Lio/reactivex/rxjava3/core/Scheduler;", "b", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RxScheduler {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    public Scheduler subscribeOn;

    /* renamed from: b, reason: from kotlin metadata */
    public Scheduler observeOn;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001c\u0010\u0007\u001a\u00020\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u0004J\u001a\u0010\f\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\u0004¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;", "", "()V", "createScheduler", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "newMultiThreadManager", "name", "", "keepAliveTime", "", "newSingleThreadManager", "sharedMultiThreadManager", "sharedSingleThreadManager", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ RxScheduler newMultiThreadManager$default(Companion companion, String str, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                j = 5;
            }
            return companion.newMultiThreadManager(str, j);
        }

        public static /* synthetic */ RxScheduler newSingleThreadManager$default(Companion companion, String str, long j, int i, Object obj) {
            if ((i & 2) != 0) {
                j = 5;
            }
            return companion.newSingleThreadManager(str, j);
        }

        @NotNull
        public final RxScheduler createScheduler(@NotNull Scheduler scheduler) {
            Intrinsics.checkNotNullParameter(scheduler, "scheduler");
            return new RxScheduler().subscribeOn(scheduler).observeOn(scheduler);
        }

        @NotNull
        public final RxScheduler newMultiThreadManager(@Nullable String name, long keepAliveTime) {
            return createScheduler(MultiThreadScheduler.Companion.newScheduler$default(MultiThreadScheduler.INSTANCE, name, keepAliveTime, null, 4, null));
        }

        @NotNull
        public final RxScheduler newSingleThreadManager() {
            return newSingleThreadManager$default(this, "", 0L, 2, null);
        }

        @NotNull
        public final RxScheduler sharedMultiThreadManager() {
            return createScheduler(MultiThreadScheduler.INSTANCE.scheduler());
        }

        @NotNull
        public final RxScheduler sharedSingleThreadManager() {
            return createScheduler(SingleThreadScheduler.INSTANCE.scheduler());
        }

        public Companion() {
        }

        @NotNull
        public final RxScheduler newSingleThreadManager(@Nullable String name, long keepAliveTime) {
            Scheduler from = Schedulers.from(SingleThreadScheduler.Companion.newSingleThreadExecutor$default(SingleThreadScheduler.INSTANCE, name, keepAliveTime, null, 4, null));
            Intrinsics.checkNotNullExpressionValue(from, "from(...)");
            return createScheduler(from);
        }
    }

    @NotNull
    public final Scheduler getObserveOn() {
        Scheduler scheduler = this.observeOn;
        if (scheduler != null) {
            return scheduler;
        }
        Intrinsics.throwUninitializedPropertyAccessException("observeOn");
        return null;
    }

    @NotNull
    public final Scheduler getSubscribeOn() {
        Scheduler scheduler = this.subscribeOn;
        if (scheduler != null) {
            return scheduler;
        }
        Intrinsics.throwUninitializedPropertyAccessException("subscribeOn");
        return null;
    }

    @NotNull
    public final RxScheduler observeOn(@NotNull Scheduler observeOn) {
        Intrinsics.checkNotNullParameter(observeOn, "observeOn");
        this.observeOn = observeOn;
        return this;
    }

    public final void shutdown() {
        Scheduler scheduler = this.observeOn;
        Scheduler scheduler2 = null;
        if (scheduler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("observeOn");
            scheduler = null;
        }
        if (SchedulerKt.isWorkThread(scheduler)) {
            Scheduler scheduler3 = this.observeOn;
            if (scheduler3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("observeOn");
                scheduler3 = null;
            }
            scheduler3.shutdown();
        }
        Scheduler scheduler4 = this.subscribeOn;
        if (scheduler4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subscribeOn");
            scheduler4 = null;
        }
        if (SchedulerKt.isWorkThread(scheduler4)) {
            Scheduler scheduler5 = this.subscribeOn;
            if (scheduler5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("subscribeOn");
            } else {
                scheduler2 = scheduler5;
            }
            scheduler2.shutdown();
        }
    }

    @NotNull
    public final RxScheduler subscribeOn(@NotNull Scheduler subscribeOn) {
        Intrinsics.checkNotNullParameter(subscribeOn, "subscribeOn");
        this.subscribeOn = subscribeOn;
        return this;
    }
}
