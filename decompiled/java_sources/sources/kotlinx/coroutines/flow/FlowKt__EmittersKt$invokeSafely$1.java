package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
@DebugMetadata(m61542c = "kotlinx.coroutines.flow.FlowKt__EmittersKt", m61543f = "Emitters.kt", m61544i = {0}, m61545l = {216}, m61546m = "invokeSafely$FlowKt__EmittersKt", m61547n = {"cause"}, m61548s = {"L$0"})
/* loaded from: classes11.dex */
public final class FlowKt__EmittersKt$invokeSafely$1<T> extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    public FlowKt__EmittersKt$invokeSafely$1(Continuation<? super FlowKt__EmittersKt$invokeSafely$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m62004c;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m62004c = FlowKt__EmittersKt.m62004c(null, null, null, this);
        return m62004c;
    }
}
