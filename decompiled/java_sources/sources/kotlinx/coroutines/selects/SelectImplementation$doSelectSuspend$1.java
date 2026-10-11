package kotlinx.coroutines.selects;

import com.google.android.exoplayer2.extractor.p007ts.C4756a;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
@DebugMetadata(m61542c = "kotlinx.coroutines.selects.SelectImplementation", m61543f = "Select.kt", m61544i = {0}, m61545l = {431, C4756a.f24690c}, m61546m = "doSelectSuspend", m61547n = {"this"}, m61548s = {"L$0"})
/* loaded from: classes11.dex */
public final class SelectImplementation$doSelectSuspend$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SelectImplementation<R> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectImplementation$doSelectSuspend$1(SelectImplementation<R> selectImplementation, Continuation<? super SelectImplementation$doSelectSuspend$1> continuation) {
        super(continuation);
        this.this$0 = selectImplementation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m62307e;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m62307e = this.this$0.m62307e(this);
        return m62307e;
    }
}
