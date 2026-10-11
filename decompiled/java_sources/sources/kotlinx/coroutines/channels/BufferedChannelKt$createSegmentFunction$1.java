package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Add missing generic type declarations: [E] */
@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes11.dex */
public /* synthetic */ class BufferedChannelKt$createSegmentFunction$1<E> extends FunctionReferenceImpl implements Function2<Long, ChannelSegment<E>, ChannelSegment<E>> {
    public static final BufferedChannelKt$createSegmentFunction$1 INSTANCE = new BufferedChannelKt$createSegmentFunction$1();

    public BufferedChannelKt$createSegmentFunction$1() {
        super(2, BufferedChannelKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Long l, Object obj) {
        return invoke(l.longValue(), (ChannelSegment) obj);
    }

    @NotNull
    public final ChannelSegment<E> invoke(long j, @NotNull ChannelSegment<E> channelSegment) {
        ChannelSegment<E> m61801c;
        m61801c = BufferedChannelKt.m61801c(j, channelSegment);
        return m61801c;
    }
}
