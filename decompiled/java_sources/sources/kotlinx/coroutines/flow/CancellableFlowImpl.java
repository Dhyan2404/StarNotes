package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class CancellableFlowImpl<T> implements CancellableFlow<T> {

    /* renamed from: e */
    @NotNull
    public final Flow<T> f98343e;

    /* JADX WARN: Multi-variable type inference failed */
    public CancellableFlowImpl(@NotNull Flow<? extends T> flow) {
        this.f98343e = flow;
    }

    @Override // kotlinx.coroutines.flow.Flow
    @Nullable
    public Object collect(@NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object collect = this.f98343e.collect(new CancellableFlowImpl$collect$2(flowCollector), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collect == coroutine_suspended ? collect : Unit.INSTANCE;
    }
}
