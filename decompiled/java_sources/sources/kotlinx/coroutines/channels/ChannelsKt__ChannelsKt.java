package kotlinx.coroutines.channels;

import com.sunia.HTREnginev2.C14015kv;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.ChannelResult;
import org.jetbrains.annotations.NotNull;

@SourceDebugExtension({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,61:1\n514#2,6:62\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n*L\n37#1:62,6\n*E\n"})
/* loaded from: classes11.dex */
public final /* synthetic */ class ChannelsKt__ChannelsKt {
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in the favour of 'trySendBlocking'. Consider handling the result of 'trySendBlocking' explicitly and rethrow exception if necessary", replaceWith = @ReplaceWith(expression = "trySendBlocking(element)", imports = {}))
    /* renamed from: a */
    public static final /* synthetic */ void m61810a(SendChannel sendChannel, Object obj) {
        if (ChannelResult.m74165isSuccessimpl(sendChannel.mo74147trySendJP2dKIU(obj))) {
            return;
        }
        C14015kv.m55327b(null, new ChannelsKt__ChannelsKt$sendBlocking$1(sendChannel, obj, null), 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    /* renamed from: b */
    public static final <E> Object m61811b(@NotNull SendChannel<? super E> sendChannel, E e) {
        Object m55327b;
        Object mo74147trySendJP2dKIU = sendChannel.mo74147trySendJP2dKIU(e);
        if (mo74147trySendJP2dKIU instanceof ChannelResult.Failed) {
            m55327b = C14015kv.m55327b(null, new ChannelsKt__ChannelsKt$trySendBlocking$2(sendChannel, e, null), 1, null);
            return ((ChannelResult) m55327b).getHolder();
        }
        return ChannelResult.INSTANCE.m74170successJP2dKIU(Unit.INSTANCE);
    }
}
