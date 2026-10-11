package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class UndispatchedContextCollector<T> implements FlowCollector<T> {

    /* renamed from: e */
    @NotNull
    public final CoroutineContext f98564e;

    /* renamed from: f */
    @NotNull
    public final Object f98565f;

    /* renamed from: g */
    @NotNull
    public final Function2<T, Continuation<? super Unit>, Object> f98566g;

    public UndispatchedContextCollector(@NotNull FlowCollector<? super T> flowCollector, @NotNull CoroutineContext coroutineContext) {
        this.f98564e = coroutineContext;
        this.f98565f = ThreadContextKt.threadContextElements(coroutineContext);
        this.f98566g = new UndispatchedContextCollector$emitRef$1(flowCollector, null);
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    @Nullable
    public Object emit(T t, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object withContextUndispatched = ChannelFlowKt.withContextUndispatched(this.f98564e, t, this.f98565f, this.f98566g, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return withContextUndispatched == coroutine_suspended ? withContextUndispatched : Unit.INSTANCE;
    }
}
