package kotlinx.coroutines.channels;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
@DebugMetadata(m61542c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", m61543f = "Deprecated.kt", m61544i = {0, 0, 1, 1, 1}, m61545l = {97, 100}, m61546m = Keywords.FUNC_LAST_STRING, m61547n = {"$this$consume$iv", Constants.ITERATOR_PNAME, "$this$consume$iv", Constants.ITERATOR_PNAME, Keywords.FUNC_LAST_STRING}, m61548s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
/* loaded from: classes11.dex */
public final class ChannelsKt__DeprecatedKt$last$1<E> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;

    public ChannelsKt__DeprecatedKt$last$1(Continuation<? super ChannelsKt__DeprecatedKt$last$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m61823B;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m61823B = ChannelsKt__DeprecatedKt.m61823B(null, this);
        return m61823B;
    }
}
