package kotlinx.coroutines.channels;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.u6n;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\bC\u001a,\u0010\u0004\u001a \u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0001\"\u0004\b\u0000\u0010\u0000H\u0000\u001a*\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0005\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0002\u001aN\u0010\u0013\u001a\u00020\u0012\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\n\u001a\u00028\u00002%\b\u0002\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u001a\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0015H\u0002\u001a\u0018\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0012H\u0002\"\u001c\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001e\"\u0014\u0010 \u001a\u00020\u00158\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b \u0010!\"\u0014\u0010\"\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010!\"\u0014\u0010$\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010#\"\u0014\u0010&\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010#\"\u0014\u0010(\u001a\u00020'8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b(\u0010)\"\u0014\u0010+\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010)\"\u0014\u0010-\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010)\"\u0014\u0010/\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010)\"\u0014\u00100\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010)\"\u0014\u00101\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010)\"\u0014\u00103\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010)\"\u0014\u00105\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u0010)\"\u001a\u00109\u001a\u00020'8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b6\u0010)\u001a\u0004\b7\u00108\"\u0014\u0010;\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010)\"\u0014\u0010=\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010)\"\u0014\u0010?\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010)\"\u0014\u0010A\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b@\u0010!\"\u0014\u0010C\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\bB\u0010!\"\u0014\u0010E\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\bD\u0010!\"\u0014\u0010G\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\bF\u0010!\"\u0014\u0010I\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\bH\u0010!\"\u0014\u0010K\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\bJ\u0010!\"\u0014\u0010M\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010)\"\u0014\u0010O\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010)\"\u0014\u0010Q\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010)\"\u0014\u0010S\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010)\"\u0014\u0010U\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\bT\u0010!\"\u0014\u0010W\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\bV\u0010!\"\u0014\u0010Y\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\bX\u0010!\"\u0014\u0010[\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\bZ\u0010!\"\u0014\u0010]\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b\\\u0010!\"\u0014\u0010^\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0000\u0010#\"\u0014\u0010`\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b_\u0010#\"\u0014\u0010b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\ba\u0010#\"\u0019\u0010d\u001a\u00020\u0002*\u00020\u00028Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b.\u0010c\"\u0019\u0010f\u001a\u00020\u0015*\u00020\u00028Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b,\u0010e\"\u0019\u0010g\u001a\u00020\u0002*\u00020\u00028Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010c\"\u0019\u0010i\u001a\u00020\u0012*\u00020\u00028Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b*\u0010h¨\u0006j"}, m61528d2 = {"E", "Lkotlin/reflect/KFunction2;", "", "Lkotlinx/coroutines/channels/ChannelSegment;", "createSegmentFunction", "id", "prev", "c", "T", "Lkotlinx/coroutines/CancellableContinuation;", "value", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "onCancellation", "", "i", "(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z", "", "capacity", C6999h.f39688c, Constants.ELEMNAME_COUNTER_STRING, "closeStatus", "b", "pauseEB", "a", "", "Lkotlinx/coroutines/channels/ChannelSegment;", "NULL_SEGMENT", "SEGMENT_SIZE", "I", "EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS", "J", "BUFFER_END_RENDEZVOUS", "d", "BUFFER_END_UNLIMITED", "Lkotlinx/coroutines/internal/Symbol;", "BUFFERED", "Lkotlinx/coroutines/internal/Symbol;", "e", "IN_BUFFER", C6997f.f39671c, "RESUMING_BY_RCV", C6998g.f39679a, "RESUMING_BY_EB", "POISONED", "DONE_RCV", "j", "INTERRUPTED_SEND", C4921e.f26537n, "INTERRUPTED_RCV", "l", "getCHANNEL_CLOSED", "()Lkotlinx/coroutines/internal/Symbol;", "CHANNEL_CLOSED", "m", "SUSPEND", GoogleApiAvailabilityLight.f29016b, "SUSPEND_NO_WAITER", C4921e.f26528e, "FAILED", "p", "RESULT_RENDEZVOUS", "q", "RESULT_BUFFERED", "r", "RESULT_SUSPEND", "s", "RESULT_SUSPEND_NO_WAITER", "t", "RESULT_CLOSED", "u", "RESULT_FAILED", "v", "NO_RECEIVE_RESULT", "w", "CLOSE_HANDLER_CLOSED", "x", "CLOSE_HANDLER_INVOKED", "y", "NO_CLOSE_CAUSE", "z", "CLOSE_STATUS_ACTIVE", "A", "CLOSE_STATUS_CANCELLATION_STARTED", "B", "CLOSE_STATUS_CLOSED", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "CLOSE_STATUS_CANCELLED", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "SENDERS_CLOSE_STATUS_SHIFT", "SENDERS_COUNTER_MASK", "F", "EB_COMPLETED_PAUSE_EXPAND_BUFFERS_BIT", "G", "EB_COMPLETED_COUNTER_MASK", "(J)J", "sendersCounter", "(J)I", "sendersCloseStatus", "ebCompletedCounter", "(J)Z", "ebPauseExpandBuffers", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class BufferedChannelKt {

    /* renamed from: A */
    public static final int f98244A = 1;

    /* renamed from: B */
    public static final int f98245B = 2;

    @JvmField
    @NotNull
    public static final Symbol BUFFERED;

    /* renamed from: C */
    public static final int f98246C = 3;

    /* renamed from: D */
    public static final int f98247D = 60;

    /* renamed from: E */
    public static final long f98248E = 1152921504606846975L;

    /* renamed from: F */
    public static final long f98249F = 4611686018427387904L;

    /* renamed from: G */
    public static final long f98250G = 4611686018427387903L;

    @JvmField
    public static final int SEGMENT_SIZE;

    /* renamed from: a */
    @NotNull
    public static final ChannelSegment<Object> f98251a = new ChannelSegment<>(-1, null, null, 0);

    /* renamed from: b */
    public static final int f98252b;

    /* renamed from: c */
    public static final long f98253c = 0;

    /* renamed from: d */
    public static final long f98254d = Long.MAX_VALUE;

    /* renamed from: e */
    @NotNull
    public static final Symbol f98255e;

    /* renamed from: f */
    @NotNull
    public static final Symbol f98256f;

    /* renamed from: g */
    @NotNull
    public static final Symbol f98257g;

    /* renamed from: h */
    @NotNull
    public static final Symbol f98258h;

    /* renamed from: i */
    @NotNull
    public static final Symbol f98259i;

    /* renamed from: j */
    @NotNull
    public static final Symbol f98260j;

    /* renamed from: k */
    @NotNull
    public static final Symbol f98261k;

    /* renamed from: l */
    @NotNull
    public static final Symbol f98262l;

    /* renamed from: m */
    @NotNull
    public static final Symbol f98263m;

    /* renamed from: n */
    @NotNull
    public static final Symbol f98264n;

    /* renamed from: o */
    @NotNull
    public static final Symbol f98265o;

    /* renamed from: p */
    public static final int f98266p = 0;

    /* renamed from: q */
    public static final int f98267q = 1;

    /* renamed from: r */
    public static final int f98268r = 2;

    /* renamed from: s */
    public static final int f98269s = 3;

    /* renamed from: t */
    public static final int f98270t = 4;

    /* renamed from: u */
    public static final int f98271u = 5;

    /* renamed from: v */
    @NotNull
    public static final Symbol f98272v;

    /* renamed from: w */
    @NotNull
    public static final Symbol f98273w;

    /* renamed from: x */
    @NotNull
    public static final Symbol f98274x;

    /* renamed from: y */
    @NotNull
    public static final Symbol f98275y;

    /* renamed from: z */
    public static final int f98276z = 0;

    static {
        int m57543e;
        int m57543e2;
        m57543e = u6n.m57543e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);
        SEGMENT_SIZE = m57543e;
        m57543e2 = u6n.m57543e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);
        f98252b = m57543e2;
        BUFFERED = new Symbol("BUFFERED");
        f98255e = new Symbol("SHOULD_BUFFER");
        f98256f = new Symbol("S_RESUMING_BY_RCV");
        f98257g = new Symbol("RESUMING_BY_EB");
        f98258h = new Symbol("POISONED");
        f98259i = new Symbol("DONE_RCV");
        f98260j = new Symbol("INTERRUPTED_SEND");
        f98261k = new Symbol("INTERRUPTED_RCV");
        f98262l = new Symbol("CHANNEL_CLOSED");
        f98263m = new Symbol("SUSPEND");
        f98264n = new Symbol("SUSPEND_NO_WAITER");
        f98265o = new Symbol("FAILED");
        f98272v = new Symbol("NO_RECEIVE_RESULT");
        f98273w = new Symbol("CLOSE_HANDLER_CLOSED");
        f98274x = new Symbol("CLOSE_HANDLER_INVOKED");
        f98275y = new Symbol("NO_CLOSE_CAUSE");
    }

    /* renamed from: a */
    public static final long m61799a(long j, boolean z) {
        return (z ? 4611686018427387904L : 0L) + j;
    }

    /* renamed from: b */
    public static final long m61800b(long j, int i) {
        return (i << 60) + j;
    }

    /* renamed from: c */
    public static final <E> ChannelSegment<E> m61801c(long j, ChannelSegment<E> channelSegment) {
        return new ChannelSegment<>(j, channelSegment, channelSegment.getChannel(), 0);
    }

    @NotNull
    public static final <E> KFunction<ChannelSegment<E>> createSegmentFunction() {
        return BufferedChannelKt$createSegmentFunction$1.INSTANCE;
    }

    /* renamed from: d */
    public static final long m61802d(long j) {
        return j & 4611686018427387903L;
    }

    /* renamed from: e */
    public static final boolean m61803e(long j) {
        return (j & 4611686018427387904L) != 0;
    }

    /* renamed from: f */
    public static final int m61804f(long j) {
        return (int) (j >> 60);
    }

    /* renamed from: g */
    public static final long m61805g(long j) {
        return j & f98248E;
    }

    @NotNull
    public static final Symbol getCHANNEL_CLOSED() {
        return f98262l;
    }

    /* renamed from: h */
    public static final long m61806h(int i) {
        if (i == 0) {
            return 0L;
        }
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        return Long.MAX_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public static final <T> boolean m61807i(CancellableContinuation<? super T> cancellableContinuation, T t, Function1<? super Throwable, Unit> function1) {
        Object tryResume = cancellableContinuation.tryResume(t, null, function1);
        if (tryResume == null) {
            return false;
        }
        cancellableContinuation.completeResume(tryResume);
        return true;
    }

    /* renamed from: j */
    public static /* synthetic */ boolean m61808j(CancellableContinuation cancellableContinuation, Object obj, Function1 function1, int i, Object obj2) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return m61807i(cancellableContinuation, obj, function1);
    }
}
