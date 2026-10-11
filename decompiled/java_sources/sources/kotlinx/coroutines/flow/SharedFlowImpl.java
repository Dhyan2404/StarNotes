package kotlinx.coroutines.flow;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010 \n\u0002\b\u000b\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0012\u0004\u0012\u00028\u00000\u0006:\u0001+B\u001f\u0012\u0006\u0010L\u001a\u00020\u0016\u0012\u0006\u0010M\u001a\u00020\u0016\u0012\u0006\u0010H\u001a\u00020G¢\u0006\u0004\bj\u0010kJ\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000b\u0010\nJ\b\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0012\u0010\u0013\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002J9\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00142\u0010\u0010\u0015\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001b\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00028\u0000H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001f\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J(\u0010$\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000eH\u0002J\b\u0010%\u001a\u00020\fH\u0002J\u0012\u0010'\u001a\u0004\u0018\u00010\u00112\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0010\u0010(\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010\u00112\u0006\u0010)\u001a\u00020\u000eH\u0002J\u001b\u0010+\u001a\u00020\f2\u0006\u0010&\u001a\u00020\u0003H\u0082@ø\u0001\u0000¢\u0006\u0004\b+\u0010,J3\u0010/\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\f\u0018\u00010-0\u00142\u0014\u0010.\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\f\u0018\u00010-0\u0014H\u0002¢\u0006\u0004\b/\u00100J!\u00104\u001a\u0002032\f\u00102\u001a\b\u0012\u0004\u0012\u00028\u000001H\u0096@ø\u0001\u0000¢\u0006\u0004\b4\u00105J\u0017\u00106\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0004\b6\u0010\nJ\u001b\u00107\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b7\u0010\u001cJ\u000f\u0010:\u001a\u00020\u000eH\u0000¢\u0006\u0004\b8\u00109J%\u0010>\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\f\u0018\u00010-0\u00142\u0006\u0010;\u001a\u00020\u000eH\u0000¢\u0006\u0004\b<\u0010=J\b\u0010?\u001a\u00020\u0003H\u0014J\u001f\u0010A\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00142\u0006\u0010@\u001a\u00020\u0016H\u0014¢\u0006\u0004\bA\u0010BJ\b\u0010C\u001a\u00020\fH\u0016J&\u0010J\u001a\b\u0012\u0004\u0012\u00028\u00000I2\u0006\u0010E\u001a\u00020D2\u0006\u0010F\u001a\u00020\u00162\u0006\u0010H\u001a\u00020GH\u0016R\u0014\u0010L\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010KR\u0014\u0010M\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010KR\u0014\u0010H\u001a\u00020G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR \u0010R\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010T\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010SR\u0016\u0010V\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010SR\u0016\u0010X\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010KR\u0016\u0010Z\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010KR\u0014\u0010[\u001a\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bP\u00109R\u0014\u0010]\u001a\u00020\u00168BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bW\u0010\\R\u0014\u0010^\u001a\u00020\u00168BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bY\u0010\\R\u0014\u0010_\u001a\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bN\u00109R\u0014\u0010`\u001a\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bU\u00109R\u001a\u0010d\u001a\b\u0012\u0004\u0012\u00028\u00000a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bb\u0010cR\u001a\u0010i\u001a\u00028\u00008DX\u0084\u0004¢\u0006\f\u0012\u0004\bg\u0010h\u001a\u0004\be\u0010f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006l"}, m61528d2 = {"Lkotlinx/coroutines/flow/SharedFlowImpl;", "T", "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;", "Lkotlinx/coroutines/flow/SharedFlowSlot;", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lkotlinx/coroutines/flow/CancellableFlow;", "Lkotlinx/coroutines/flow/internal/FusibleFlow;", "value", "", "r", "(Ljava/lang/Object;)Z", "s", "", C6997f.f39671c, "", "newHead", "e", "", "item", "i", "", "curBuffer", "", "curSize", "newSize", "q", "([Ljava/lang/Object;II)[Ljava/lang/Object;", C6999h.f39688c, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/SharedFlowImpl$a;", "emitter", "b", "newReplayIndex", "newMinCollectorIndex", "newBufferEndIndex", "newQueueEndIndex", "v", "c", "slot", "u", "t", FirebaseAnalytics.Param.INDEX, "m", "a", "(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/Continuation;", "resumesIn", "j", "([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tryEmit", "emit", "updateNewCollectorIndexLocked$kotlinx_coroutines_core", "()J", "updateNewCollectorIndexLocked", "oldIndex", "updateCollectorIndexLocked$kotlinx_coroutines_core", "(J)[Lkotlin/coroutines/Continuation;", "updateCollectorIndexLocked", "createSlot", "size", "createSlotArray", "(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;", "resetReplayCache", "Lkotlin/coroutines/CoroutineContext;", "context", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/Flow;", "fuse", "I", "replay", "bufferCapacity", C4921e.f26537n, "Lkotlinx/coroutines/channels/BufferOverflow;", "l", "[Ljava/lang/Object;", "buffer", "J", "replayIndex", GoogleApiAvailabilityLight.f29016b, "minCollectorIndex", C4921e.f26528e, "bufferSize", "p", "queueSize", gon.f71289o, "()I", "replaySize", "totalSize", "bufferEndIndex", "queueEndIndex", "", "getReplayCache", "()Ljava/util/List;", "replayCache", "getLastReplayedLocked", "()Ljava/lang/Object;", "getLastReplayedLocked$annotations", "()V", "lastReplayedLocked", Constants.CONSTRUCTOR_NAME, "(IILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,731:1\n28#2,4:732\n28#2,4:738\n28#2,4:760\n28#2,4:767\n28#2,4:779\n28#2,4:793\n28#2,4:807\n20#3:736\n20#3:742\n20#3:764\n20#3:771\n20#3:783\n20#3:797\n20#3:811\n329#4:737\n1#5:743\n94#6,2:744\n96#6,2:747\n98#6:750\n94#6,2:772\n96#6,2:775\n98#6:778\n94#6,2:800\n96#6,2:803\n98#6:806\n13579#7:746\n13580#7:749\n13579#7:774\n13580#7:777\n13579#7:802\n13580#7:805\n314#8,9:751\n323#8,2:765\n314#8,9:784\n323#8,2:798\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n351#1:732,4\n391#1:738,4\n485#1:760,4\n506#1:767,4\n626#1:779,4\n661#1:793,4\n689#1:807,4\n351#1:736\n391#1:742\n485#1:764\n506#1:771\n626#1:783\n661#1:797\n689#1:811\n373#1:737\n453#1:744,2\n453#1:747,2\n453#1:750\n529#1:772,2\n529#1:775,2\n529#1:778\n676#1:800,2\n676#1:803,2\n676#1:806\n453#1:746\n453#1:749\n529#1:774\n529#1:777\n676#1:802\n676#1:805\n483#1:751,9\n483#1:765,2\n660#1:784,9\n660#1:798,2\n*E\n"})
/* loaded from: classes11.dex */
public class SharedFlowImpl<T> extends AbstractSharedFlow<SharedFlowSlot> implements MutableSharedFlow<T>, CancellableFlow<T>, FusibleFlow<T> {

    /* renamed from: i, reason: from kotlin metadata */
    public final int replay;

    /* renamed from: j, reason: from kotlin metadata */
    public final int bufferCapacity;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final BufferOverflow onBufferOverflow;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public Object[] buffer;

    /* renamed from: m, reason: from kotlin metadata */
    public long replayIndex;

    /* renamed from: n, reason: from kotlin metadata */
    public long minCollectorIndex;

    /* renamed from: o, reason: from kotlin metadata */
    public int bufferSize;

    /* renamed from: p, reason: from kotlin metadata */
    public int queueSize;

    @Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes11.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            try {
                iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: kotlinx.coroutines.flow.SharedFlowImpl$a */
    /* loaded from: classes11.dex */
    public static final class C18240a implements DisposableHandle {

        /* renamed from: e */
        @JvmField
        @NotNull
        public final SharedFlowImpl<?> f98510e;

        /* renamed from: f */
        @JvmField
        public long f98511f;

        /* renamed from: g */
        @JvmField
        @Nullable
        public final Object f98512g;

        /* renamed from: h */
        @JvmField
        @NotNull
        public final Continuation<Unit> f98513h;

        /* JADX WARN: Multi-variable type inference failed */
        public C18240a(@NotNull SharedFlowImpl<?> sharedFlowImpl, long j, @Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
            this.f98510e = sharedFlowImpl;
            this.f98511f = j;
            this.f98512g = obj;
            this.f98513h = continuation;
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public void dispose() {
            this.f98510e.m62143b(this);
        }
    }

    public SharedFlowImpl(int i, int i2, @NotNull BufferOverflow bufferOverflow) {
        this.replay = i;
        this.bufferCapacity = i2;
        this.onBufferOverflow = bufferOverflow;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|(3:(6:(1:(1:11)(2:41|42))(1:43)|12|13|14|15|(3:16|(3:28|29|(2:31|32)(1:33))(4:18|(1:20)|21|(2:23|24)(1:26))|27))(4:44|45|46|47)|37|38)(5:53|54|55|(2:57|(1:59))|61)|48|49|15|(3:16|(0)(0)|27)))|64|6|(0)(0)|48|49|15|(3:16|(0)(0)|27)) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d2, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d3, code lost:
    
        r5 = r8;
        r8 = r10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ab A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ <T> java.lang.Object m62139d(kotlinx.coroutines.flow.SharedFlowImpl<T> r8, kotlinx.coroutines.flow.FlowCollector<? super T> r9, kotlin.coroutines.Continuation<?> r10) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.m62139d(kotlinx.coroutines.flow.SharedFlowImpl, kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* renamed from: g */
    public static /* synthetic */ <T> Object m62140g(SharedFlowImpl<T> sharedFlowImpl, T t, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (sharedFlowImpl.tryEmit(t)) {
            return Unit.INSTANCE;
        }
        Object m62147h = sharedFlowImpl.m62147h(t, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return m62147h == coroutine_suspended ? m62147h : Unit.INSTANCE;
    }

    public static /* synthetic */ void getLastReplayedLocked$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public final int m62141p() {
        return this.bufferSize + this.queueSize;
    }

    /* renamed from: a */
    public final Object m62142a(SharedFlowSlot sharedFlowSlot, Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Unit unit;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        synchronized (this) {
            if (m62158t(sharedFlowSlot) < 0) {
                sharedFlowSlot.cont = cancellableContinuationImpl;
            } else {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m72621constructorimpl(Unit.INSTANCE));
            }
            unit = Unit.INSTANCE;
        }
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return result == coroutine_suspended2 ? result : unit;
    }

    /* renamed from: b */
    public final void m62143b(C18240a emitter) {
        synchronized (this) {
            if (emitter.f98511f < m62151l()) {
                return;
            }
            Object[] objArr = this.buffer;
            Intrinsics.checkNotNull(objArr);
            if (SharedFlowKt.access$getBufferAt(objArr, emitter.f98511f) != emitter) {
                return;
            }
            SharedFlowKt.access$setBufferAt(objArr, emitter.f98511f, SharedFlowKt.NO_VALUE);
            m62144c();
            Unit unit = Unit.INSTANCE;
        }
    }

    /* renamed from: c */
    public final void m62144c() {
        if (this.bufferCapacity != 0 || this.queueSize > 1) {
            Object[] objArr = this.buffer;
            Intrinsics.checkNotNull(objArr);
            while (this.queueSize > 0 && SharedFlowKt.access$getBufferAt(objArr, (m62151l() + m62141p()) - 1) == SharedFlowKt.NO_VALUE) {
                this.queueSize--;
                SharedFlowKt.access$setBufferAt(objArr, m62151l() + m62141p(), null);
            }
        }
    }

    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    @Nullable
    public Object collect(@NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<?> continuation) {
        return m62139d(this, flowCollector, continuation);
    }

    /* renamed from: e */
    public final void m62145e(long newHead) {
        AbstractSharedFlowSlot[] access$getSlots;
        if (AbstractSharedFlow.access$getNCollectors(this) != 0 && (access$getSlots = AbstractSharedFlow.access$getSlots(this)) != null) {
            for (AbstractSharedFlowSlot abstractSharedFlowSlot : access$getSlots) {
                if (abstractSharedFlowSlot != null) {
                    SharedFlowSlot sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot;
                    long j = sharedFlowSlot.index;
                    if (j >= 0 && j < newHead) {
                        sharedFlowSlot.index = newHead;
                    }
                }
            }
        }
        this.minCollectorIndex = newHead;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow, kotlinx.coroutines.flow.FlowCollector
    @Nullable
    public Object emit(T t, @NotNull Continuation<? super Unit> continuation) {
        return m62140g(this, t, continuation);
    }

    /* renamed from: f */
    public final void m62146f() {
        Object[] objArr = this.buffer;
        Intrinsics.checkNotNull(objArr);
        SharedFlowKt.access$setBufferAt(objArr, m62151l(), null);
        this.bufferSize--;
        long m62151l = m62151l() + 1;
        if (this.replayIndex < m62151l) {
            this.replayIndex = m62151l;
        }
        if (this.minCollectorIndex < m62151l) {
            m62145e(m62151l);
        }
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    @NotNull
    public Flow<T> fuse(@NotNull CoroutineContext context, int capacity, @NotNull BufferOverflow onBufferOverflow) {
        return SharedFlowKt.fuseSharedFlow(this, context, capacity, onBufferOverflow);
    }

    public final T getLastReplayedLocked() {
        Object[] objArr = this.buffer;
        Intrinsics.checkNotNull(objArr);
        return (T) SharedFlowKt.access$getBufferAt(objArr, (this.replayIndex + m62154o()) - 1);
    }

    @Override // kotlinx.coroutines.flow.SharedFlow
    @NotNull
    public List<T> getReplayCache() {
        List<T> emptyList;
        synchronized (this) {
            int m62154o = m62154o();
            if (m62154o == 0) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            ArrayList arrayList = new ArrayList(m62154o);
            Object[] objArr = this.buffer;
            Intrinsics.checkNotNull(objArr);
            for (int i = 0; i < m62154o; i++) {
                arrayList.add(SharedFlowKt.access$getBufferAt(objArr, this.replayIndex + i));
            }
            return arrayList;
        }
    }

    /* renamed from: h */
    public final Object m62147h(T t, Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Continuation<Unit>[] continuationArr;
        C18240a c18240a;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        Continuation<Unit>[] continuationArr2 = AbstractSharedFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            if (m62156r(t)) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m72621constructorimpl(Unit.INSTANCE));
                continuationArr = m62149j(continuationArr2);
                c18240a = null;
            } else {
                C18240a c18240a2 = new C18240a(this, m62141p() + m62151l(), t, cancellableContinuationImpl);
                m62148i(c18240a2);
                this.queueSize++;
                if (this.bufferCapacity == 0) {
                    continuationArr2 = m62149j(continuationArr2);
                }
                continuationArr = continuationArr2;
                c18240a = c18240a2;
            }
        }
        if (c18240a != null) {
            CancellableContinuationKt.disposeOnCancellation(cancellableContinuationImpl, c18240a);
        }
        for (Continuation<Unit> continuation2 : continuationArr) {
            if (continuation2 != null) {
                Result.Companion companion2 = Result.INSTANCE;
                continuation2.resumeWith(Result.m72621constructorimpl(Unit.INSTANCE));
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return result == coroutine_suspended2 ? result : Unit.INSTANCE;
    }

    /* renamed from: i */
    public final void m62148i(Object item) {
        int m62141p = m62141p();
        Object[] objArr = this.buffer;
        if (objArr == null) {
            objArr = m62155q(null, 0, 2);
        } else if (m62141p >= objArr.length) {
            objArr = m62155q(objArr, m62141p, objArr.length * 2);
        }
        SharedFlowKt.access$setBufferAt(objArr, m62151l() + m62141p, item);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object[], java.lang.Object] */
    /* renamed from: j */
    public final Continuation<Unit>[] m62149j(Continuation<Unit>[] resumesIn) {
        AbstractSharedFlowSlot[] access$getSlots;
        SharedFlowSlot sharedFlowSlot;
        Continuation<? super Unit> continuation;
        int length = resumesIn.length;
        if (AbstractSharedFlow.access$getNCollectors(this) != 0 && (access$getSlots = AbstractSharedFlow.access$getSlots(this)) != null) {
            int length2 = access$getSlots.length;
            int i = 0;
            resumesIn = resumesIn;
            while (i < length2) {
                AbstractSharedFlowSlot abstractSharedFlowSlot = access$getSlots[i];
                if (abstractSharedFlowSlot != null && (continuation = (sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot).cont) != null && m62158t(sharedFlowSlot) >= 0) {
                    int length3 = resumesIn.length;
                    resumesIn = resumesIn;
                    if (length >= length3) {
                        ?? copyOf = Arrays.copyOf(resumesIn, Math.max(2, resumesIn.length * 2));
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                        resumesIn = copyOf;
                    }
                    resumesIn[length] = continuation;
                    sharedFlowSlot.cont = null;
                    length++;
                }
                i++;
                resumesIn = resumesIn;
            }
        }
        return resumesIn;
    }

    /* renamed from: k */
    public final long m62150k() {
        return m62151l() + this.bufferSize;
    }

    /* renamed from: l */
    public final long m62151l() {
        return Math.min(this.minCollectorIndex, this.replayIndex);
    }

    /* renamed from: m */
    public final Object m62152m(long index) {
        Object[] objArr = this.buffer;
        Intrinsics.checkNotNull(objArr);
        Object access$getBufferAt = SharedFlowKt.access$getBufferAt(objArr, index);
        return access$getBufferAt instanceof C18240a ? ((C18240a) access$getBufferAt).f98512g : access$getBufferAt;
    }

    /* renamed from: n */
    public final long m62153n() {
        return m62151l() + this.bufferSize + this.queueSize;
    }

    /* renamed from: o */
    public final int m62154o() {
        return (int) ((m62151l() + this.bufferSize) - this.replayIndex);
    }

    /* renamed from: q */
    public final Object[] m62155q(Object[] curBuffer, int curSize, int newSize) {
        if (!(newSize > 0)) {
            throw new IllegalStateException("Buffer size overflow".toString());
        }
        Object[] objArr = new Object[newSize];
        this.buffer = objArr;
        if (curBuffer == null) {
            return objArr;
        }
        long m62151l = m62151l();
        for (int i = 0; i < curSize; i++) {
            long j = i + m62151l;
            SharedFlowKt.access$setBufferAt(objArr, j, SharedFlowKt.access$getBufferAt(curBuffer, j));
        }
        return objArr;
    }

    /* renamed from: r */
    public final boolean m62156r(T value) {
        if (getNCollectors() == 0) {
            return m62157s(value);
        }
        if (this.bufferSize >= this.bufferCapacity && this.minCollectorIndex <= this.replayIndex) {
            int i = WhenMappings.$EnumSwitchMapping$0[this.onBufferOverflow.ordinal()];
            if (i == 1) {
                return false;
            }
            if (i == 2) {
                return true;
            }
        }
        m62148i(value);
        int i2 = this.bufferSize + 1;
        this.bufferSize = i2;
        if (i2 > this.bufferCapacity) {
            m62146f();
        }
        if (m62154o() > this.replay) {
            m62160v(this.replayIndex + 1, this.minCollectorIndex, m62150k(), m62153n());
        }
        return true;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public void resetReplayCache() {
        synchronized (this) {
            m62160v(m62150k(), this.minCollectorIndex, m62150k(), m62153n());
            Unit unit = Unit.INSTANCE;
        }
    }

    /* renamed from: s */
    public final boolean m62157s(T value) {
        if (this.replay == 0) {
            return true;
        }
        m62148i(value);
        int i = this.bufferSize + 1;
        this.bufferSize = i;
        if (i > this.replay) {
            m62146f();
        }
        this.minCollectorIndex = m62151l() + this.bufferSize;
        return true;
    }

    /* renamed from: t */
    public final long m62158t(SharedFlowSlot slot) {
        long j = slot.index;
        if (j < m62150k()) {
            return j;
        }
        if (this.bufferCapacity <= 0 && j <= m62151l() && this.queueSize != 0) {
            return j;
        }
        return -1L;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public boolean tryEmit(T value) {
        int i;
        boolean z;
        Continuation<Unit>[] continuationArr = AbstractSharedFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            if (m62156r(value)) {
                continuationArr = m62149j(continuationArr);
                z = true;
            } else {
                z = false;
            }
        }
        for (Continuation<Unit> continuation : continuationArr) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m72621constructorimpl(Unit.INSTANCE));
            }
        }
        return z;
    }

    /* renamed from: u */
    public final Object m62159u(SharedFlowSlot slot) {
        Object obj;
        Continuation<Unit>[] continuationArr = AbstractSharedFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            long m62158t = m62158t(slot);
            if (m62158t < 0) {
                obj = SharedFlowKt.NO_VALUE;
            } else {
                long j = slot.index;
                Object m62152m = m62152m(m62158t);
                slot.index = m62158t + 1;
                continuationArr = updateCollectorIndexLocked$kotlinx_coroutines_core(j);
                obj = m62152m;
            }
        }
        for (Continuation<Unit> continuation : continuationArr) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m72621constructorimpl(Unit.INSTANCE));
            }
        }
        return obj;
    }

    @NotNull
    public final Continuation<Unit>[] updateCollectorIndexLocked$kotlinx_coroutines_core(long oldIndex) {
        long j;
        long j2;
        long j3;
        AbstractSharedFlowSlot[] access$getSlots;
        if (oldIndex > this.minCollectorIndex) {
            return AbstractSharedFlowKt.EMPTY_RESUMES;
        }
        long m62151l = m62151l();
        long j4 = this.bufferSize + m62151l;
        if (this.bufferCapacity == 0 && this.queueSize > 0) {
            j4++;
        }
        if (AbstractSharedFlow.access$getNCollectors(this) != 0 && (access$getSlots = AbstractSharedFlow.access$getSlots(this)) != null) {
            for (AbstractSharedFlowSlot abstractSharedFlowSlot : access$getSlots) {
                if (abstractSharedFlowSlot != null) {
                    long j5 = ((SharedFlowSlot) abstractSharedFlowSlot).index;
                    if (j5 >= 0 && j5 < j4) {
                        j4 = j5;
                    }
                }
            }
        }
        if (j4 <= this.minCollectorIndex) {
            return AbstractSharedFlowKt.EMPTY_RESUMES;
        }
        long m62150k = m62150k();
        int min = getNCollectors() > 0 ? Math.min(this.queueSize, this.bufferCapacity - ((int) (m62150k - j4))) : this.queueSize;
        Continuation<Unit>[] continuationArr = AbstractSharedFlowKt.EMPTY_RESUMES;
        long j6 = this.queueSize + m62150k;
        if (min > 0) {
            continuationArr = new Continuation[min];
            Object[] objArr = this.buffer;
            Intrinsics.checkNotNull(objArr);
            long j7 = m62150k;
            int i = 0;
            while (true) {
                if (m62150k >= j6) {
                    j = j4;
                    j2 = j6;
                    break;
                }
                Object access$getBufferAt = SharedFlowKt.access$getBufferAt(objArr, m62150k);
                j = j4;
                Symbol symbol = SharedFlowKt.NO_VALUE;
                if (access$getBufferAt != symbol) {
                    Intrinsics.checkNotNull(access$getBufferAt, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    C18240a c18240a = (C18240a) access$getBufferAt;
                    int i2 = i + 1;
                    j2 = j6;
                    continuationArr[i] = c18240a.f98513h;
                    SharedFlowKt.access$setBufferAt(objArr, m62150k, symbol);
                    SharedFlowKt.access$setBufferAt(objArr, j7, c18240a.f98512g);
                    j3 = 1;
                    j7++;
                    if (i2 >= min) {
                        break;
                    }
                    i = i2;
                } else {
                    j2 = j6;
                    j3 = 1;
                }
                m62150k += j3;
                j4 = j;
                j6 = j2;
            }
            m62150k = j7;
        } else {
            j = j4;
            j2 = j6;
        }
        int i3 = (int) (m62150k - m62151l);
        long j8 = getNCollectors() == 0 ? m62150k : j;
        long max = Math.max(this.replayIndex, m62150k - Math.min(this.replay, i3));
        if (this.bufferCapacity == 0 && max < j2) {
            Object[] objArr2 = this.buffer;
            Intrinsics.checkNotNull(objArr2);
            if (Intrinsics.areEqual(SharedFlowKt.access$getBufferAt(objArr2, max), SharedFlowKt.NO_VALUE)) {
                m62150k++;
                max++;
            }
        }
        m62160v(max, j8, m62150k, j2);
        m62144c();
        return (continuationArr.length == 0) ^ true ? m62149j(continuationArr) : continuationArr;
    }

    public final long updateNewCollectorIndexLocked$kotlinx_coroutines_core() {
        long j = this.replayIndex;
        if (j < this.minCollectorIndex) {
            this.minCollectorIndex = j;
        }
        return j;
    }

    /* renamed from: v */
    public final void m62160v(long newReplayIndex, long newMinCollectorIndex, long newBufferEndIndex, long newQueueEndIndex) {
        long min = Math.min(newMinCollectorIndex, newReplayIndex);
        for (long m62151l = m62151l(); m62151l < min; m62151l++) {
            Object[] objArr = this.buffer;
            Intrinsics.checkNotNull(objArr);
            SharedFlowKt.access$setBufferAt(objArr, m62151l, null);
        }
        this.replayIndex = newReplayIndex;
        this.minCollectorIndex = newMinCollectorIndex;
        this.bufferSize = (int) (newBufferEndIndex - min);
        this.queueSize = (int) (newQueueEndIndex - newBufferEndIndex);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    @NotNull
    public SharedFlowSlot createSlot() {
        return new SharedFlowSlot();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    @NotNull
    public SharedFlowSlot[] createSlotArray(int size) {
        return new SharedFlowSlot[size];
    }
}
