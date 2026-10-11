package kotlinx.coroutines.channels;

import com.google.android.exoplayer2.extractor.p007ts.C4756a;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
@DebugMetadata(m61542c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", m61543f = "Deprecated.kt", m61544i = {0, 0, 0, 1, 1, 1, 1}, m61545l = {C4756a.f24690c, 436}, m61546m = "minWith", m61547n = {"comparator", "$this$consume$iv", Constants.ITERATOR_PNAME, "comparator", "$this$consume$iv", Constants.ITERATOR_PNAME, "min"}, m61548s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes11.dex */
public final class ChannelsKt__DeprecatedKt$minWith$1<E> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;

    public ChannelsKt__DeprecatedKt$minWith$1(Continuation<? super ChannelsKt__DeprecatedKt$minWith$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m61835N;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m61835N = ChannelsKt__DeprecatedKt.m61835N(null, null, this);
        return m61835N;
    }
}
