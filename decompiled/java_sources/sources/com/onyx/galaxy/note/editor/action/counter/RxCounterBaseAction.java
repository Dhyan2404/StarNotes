package com.onyx.galaxy.note.editor.action.counter;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;", "T", "", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "()V", "getObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public abstract class RxCounterBaseAction<T> extends RxBaseAction<T> {
    @NotNull
    public final Scheduler getObserveOn() {
        return RxScheduler.INSTANCE.sharedSingleThreadManager().getObserveOn();
    }
}
