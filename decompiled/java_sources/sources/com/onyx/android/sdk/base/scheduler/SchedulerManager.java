package com.onyx.android.sdk.base.scheduler;

import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.scheduler.SchedulerManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\u0006J\u0006\u0010\f\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000e\u001a\u00020\u0006R\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\"\u0010\u0016\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/base/scheduler/SchedulerManager;", "", "", "key", "", "keepAliveTime", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "scheduler", "multiScheduler", "coreScheduler", "readerScheduler", "noteScheduler", "subNoteScheduler", "ioScheduler", "stashScheduler", "", "a", "Ljava/util/Map;", "schedulerMap", "", "b", Constants.HASIDCALL_INDEX_SIG, "isSharedReaderScheduler", Constants.BOOLEAN_VALUE_SIG, "setSharedReaderScheduler", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class SchedulerManager {

    @NotNull
    public static final String CORE = "core";

    /* renamed from: IO */
    @NotNull
    public static final String f40832IO = "IO";

    @NotNull
    public static final String NOTE = "note";

    @NotNull
    public static final String READER = "reader";

    @NotNull
    public static final String STASH = "stash";

    @NotNull
    public static final String SUB_NOTE = "sub_note";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Map<String, RxScheduler> schedulerMap = new LinkedHashMap();

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isSharedReaderScheduler = true;

    @NotNull
    public static final String READER_SHARED = "reader_shared";

    /* renamed from: c */
    @NotNull
    public static final RxScheduler f40833c = RxScheduler.Companion.newSingleThreadManager$default(RxScheduler.INSTANCE, READER_SHARED, 0, 2, null);

    /* renamed from: c */
    public static final RxScheduler m32011c(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (RxScheduler) tmp0.invoke(obj);
    }

    /* renamed from: d */
    public static final RxScheduler m32012d(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (RxScheduler) tmp0.invoke(obj);
    }

    public static /* synthetic */ RxScheduler multiScheduler$default(SchedulerManager schedulerManager, String str, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 5;
        }
        return schedulerManager.multiScheduler(str, j);
    }

    public static /* synthetic */ RxScheduler scheduler$default(SchedulerManager schedulerManager, String str, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 5;
        }
        return schedulerManager.scheduler(str, j);
    }

    @NotNull
    public final RxScheduler coreScheduler() {
        return scheduler(CORE, SingleThreadScheduler.INSTANCE.getLONG_KEEP_ALIVE_TIME_IN_SECOND());
    }

    @NotNull
    public final RxScheduler ioScheduler() {
        return scheduler$default(this, f40832IO, 0L, 2, null);
    }

    /* renamed from: isSharedReaderScheduler, reason: from getter */
    public final boolean getIsSharedReaderScheduler() {
        return this.isSharedReaderScheduler;
    }

    @NotNull
    public final RxScheduler multiScheduler(@NotNull final String key, final long keepAliveTime) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, RxScheduler> map = this.schedulerMap;
        final Function1<String, RxScheduler> function1 = new Function1<String, RxScheduler>() { // from class: com.onyx.android.sdk.base.scheduler.SchedulerManager$multiScheduler$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RxScheduler invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return RxScheduler.INSTANCE.newMultiThreadManager(key, keepAliveTime);
            }
        };
        RxScheduler computeIfAbsent = map.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.q1m
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                RxScheduler m32011c;
                m32011c = SchedulerManager.m32011c(Function1.this, obj);
                return m32011c;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    @NotNull
    public final RxScheduler noteScheduler() {
        return scheduler("note", SingleThreadScheduler.INSTANCE.getLONG_KEEP_ALIVE_TIME_IN_SECOND());
    }

    @NotNull
    public final RxScheduler readerScheduler() {
        return this.isSharedReaderScheduler ? f40833c : scheduler$default(this, "reader", 0L, 2, null);
    }

    @NotNull
    public final RxScheduler scheduler(@NotNull final String key, final long keepAliveTime) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, RxScheduler> map = this.schedulerMap;
        final Function1<String, RxScheduler> function1 = new Function1<String, RxScheduler>() { // from class: com.onyx.android.sdk.base.scheduler.SchedulerManager$scheduler$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RxScheduler invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return RxScheduler.INSTANCE.newSingleThreadManager(key, keepAliveTime);
            }
        };
        RxScheduler computeIfAbsent = map.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.r1m
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                RxScheduler m32012d;
                m32012d = SchedulerManager.m32012d(Function1.this, obj);
                return m32012d;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    public final void setSharedReaderScheduler(boolean z) {
        this.isSharedReaderScheduler = z;
    }

    @NotNull
    public final RxScheduler stashScheduler() {
        return scheduler$default(this, "stash", 0L, 2, null);
    }

    @NotNull
    public final RxScheduler subNoteScheduler() {
        return multiScheduler(SUB_NOTE, 5L);
    }
}
