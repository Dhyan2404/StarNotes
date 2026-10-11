package com.onyx.android.sdk.base.extension;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, m61528d2 = {"isWorkThread", "", "Lio/reactivex/rxjava3/core/Scheduler;", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SchedulerKt {
    public static final boolean isWorkThread(@NotNull Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(scheduler, "<this>");
        return scheduler != AndroidSchedulers.mainThread();
    }
}
