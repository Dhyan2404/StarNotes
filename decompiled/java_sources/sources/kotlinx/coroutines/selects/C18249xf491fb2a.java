package kotlinx.coroutines.selects;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
@DebugMetadata(m61542c = "kotlinx.coroutines.selects.SelectImplementation", m61543f = "Select.kt", m61544i = {}, m61545l = {TypedValues.TransitionType.TYPE_STAGGERED}, m61546m = "processResultAndInvokeBlockRecoveringException", m61547n = {}, m61548s = {})
/* renamed from: kotlinx.coroutines.selects.SelectImplementation$processResultAndInvokeBlockRecoveringException$1 */
/* loaded from: classes11.dex */
public final class C18249xf491fb2a extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SelectImplementation<R> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18249xf491fb2a(SelectImplementation<R> selectImplementation, Continuation<? super C18249xf491fb2a> continuation) {
        super(continuation);
        this.this$0 = selectImplementation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m62313k;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m62313k = this.this$0.m62313k(null, null, this);
        return m62313k;
    }
}
