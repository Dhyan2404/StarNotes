package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
@DebugMetadata(m61542c = "kotlinx.coroutines.channels.TickerChannelsKt", m61543f = "TickerChannels.kt", m61544i = {0, 0, 1, 1, 2, 2}, m61545l = {106, 108, 109}, m61546m = "fixedDelayTicker", m61547n = {"channel", "delayMillis", "channel", "delayMillis", "channel", "delayMillis"}, m61548s = {"L$0", "J$0", "L$0", "J$0", "L$0", "J$0"})
/* loaded from: classes11.dex */
public final class TickerChannelsKt$fixedDelayTicker$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;

    public TickerChannelsKt$fixedDelayTicker$1(Continuation<? super TickerChannelsKt$fixedDelayTicker$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m61890a;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m61890a = TickerChannelsKt.m61890a(0L, 0L, null, this);
        return m61890a;
    }
}
