package kotlinx.coroutines.flow;

import com.sunia.HTREnginev2.C14063lv;
import com.sunia.HTREnginev2.idl;
import com.sunia.HTREnginev2.jdl;
import com.sunia.HTREnginev2.snm;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SourceDebugExtension({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"})
/* loaded from: classes11.dex */
public final /* synthetic */ class FlowKt__ShareKt {
    @NotNull
    /* renamed from: a */
    public static final <T> SharedFlow<T> m62089a(@NotNull MutableSharedFlow<T> mutableSharedFlow) {
        return new idl(mutableSharedFlow, null);
    }

    @NotNull
    /* renamed from: b */
    public static final <T> StateFlow<T> m62090b(@NotNull MutableStateFlow<T> mutableStateFlow) {
        return new jdl(mutableStateFlow, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        if (r3 == 0) goto L41;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> com.sunia.HTREnginev2.snm<T> m62091c(kotlinx.coroutines.flow.Flow<? extends T> r7, int r8) {
        /*
            kotlinx.coroutines.channels.Channel$Factory r0 = kotlinx.coroutines.channels.Channel.INSTANCE
            int r0 = r0.getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core()
            int r0 = kotlin.ranges.RangesKt.coerceAtLeast(r8, r0)
            int r0 = r0 - r8
            boolean r1 = r7 instanceof kotlinx.coroutines.flow.internal.ChannelFlow
            if (r1 == 0) goto L3d
            r1 = r7
            kotlinx.coroutines.flow.internal.ChannelFlow r1 = (kotlinx.coroutines.flow.internal.ChannelFlow) r1
            kotlinx.coroutines.flow.Flow r2 = r1.dropChannelOperators()
            if (r2 == 0) goto L3d
            com.sunia.HTREnginev2.snm r7 = new com.sunia.HTREnginev2.snm
            int r3 = r1.capacity
            r4 = -3
            if (r3 == r4) goto L26
            r4 = -2
            if (r3 == r4) goto L26
            if (r3 == 0) goto L26
            r0 = r3
            goto L35
        L26:
            kotlinx.coroutines.channels.BufferOverflow r4 = r1.onBufferOverflow
            kotlinx.coroutines.channels.BufferOverflow r5 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            r6 = 0
            if (r4 != r5) goto L30
            if (r3 != 0) goto L35
            goto L34
        L30:
            if (r8 != 0) goto L34
            r0 = 1
            goto L35
        L34:
            r0 = r6
        L35:
            kotlinx.coroutines.channels.BufferOverflow r8 = r1.onBufferOverflow
            kotlin.coroutines.CoroutineContext r1 = r1.context
            r7.<init>(r2, r0, r8, r1)
            return r7
        L3d:
            com.sunia.HTREnginev2.snm r8 = new com.sunia.HTREnginev2.snm
            kotlinx.coroutines.channels.BufferOverflow r1 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            kotlin.coroutines.EmptyCoroutineContext r2 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            r8.<init>(r7, r0, r1, r2)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ShareKt.m62091c(kotlinx.coroutines.flow.Flow, int):com.sunia.HTREnginev2.snm");
    }

    /* renamed from: d */
    public static final <T> Job m62092d(CoroutineScope coroutineScope, CoroutineContext coroutineContext, Flow<? extends T> flow, MutableSharedFlow<T> mutableSharedFlow, SharingStarted sharingStarted, T t) {
        return BuildersKt.launch(coroutineScope, coroutineContext, Intrinsics.areEqual(sharingStarted, SharingStarted.INSTANCE.getEagerly()) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new FlowKt__ShareKt$launchSharing$1(sharingStarted, flow, mutableSharedFlow, t, null));
    }

    /* renamed from: e */
    public static final <T> void m62093e(CoroutineScope coroutineScope, CoroutineContext coroutineContext, Flow<? extends T> flow, CompletableDeferred<StateFlow<T>> completableDeferred) {
        C14063lv.m55522f(coroutineScope, coroutineContext, null, new FlowKt__ShareKt$launchSharingDeferred$1(flow, completableDeferred, null), 2, null);
    }

    @NotNull
    /* renamed from: f */
    public static final <T> SharedFlow<T> m62094f(@NotNull SharedFlow<? extends T> sharedFlow, @NotNull Function2<? super FlowCollector<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new SubscribedSharedFlow(sharedFlow, function2);
    }

    @NotNull
    /* renamed from: g */
    public static final <T> SharedFlow<T> m62095g(@NotNull Flow<? extends T> flow, @NotNull CoroutineScope coroutineScope, @NotNull SharingStarted sharingStarted, int i) {
        snm m62091c = m62091c(flow, i);
        MutableSharedFlow MutableSharedFlow = SharedFlowKt.MutableSharedFlow(i, m62091c.f84323b, m62091c.f84324c);
        return new idl(MutableSharedFlow, m62092d(coroutineScope, m62091c.f84325d, m62091c.f84322a, MutableSharedFlow, sharingStarted, SharedFlowKt.NO_VALUE));
    }

    /* renamed from: h */
    public static /* synthetic */ SharedFlow m62096h(Flow flow, CoroutineScope coroutineScope, SharingStarted sharingStarted, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return FlowKt.shareIn(flow, coroutineScope, sharingStarted, i);
    }

    @Nullable
    /* renamed from: i */
    public static final <T> Object m62097i(@NotNull Flow<? extends T> flow, @NotNull CoroutineScope coroutineScope, @NotNull Continuation<? super StateFlow<? extends T>> continuation) {
        snm m62091c = m62091c(flow, 1);
        CompletableDeferred CompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        m62093e(coroutineScope, m62091c.f84325d, m62091c.f84322a, CompletableDeferred$default);
        return CompletableDeferred$default.await(continuation);
    }

    @NotNull
    /* renamed from: j */
    public static final <T> StateFlow<T> m62098j(@NotNull Flow<? extends T> flow, @NotNull CoroutineScope coroutineScope, @NotNull SharingStarted sharingStarted, T t) {
        snm m62091c = m62091c(flow, 1);
        MutableStateFlow MutableStateFlow = StateFlowKt.MutableStateFlow(t);
        return new jdl(MutableStateFlow, m62092d(coroutineScope, m62091c.f84325d, m62091c.f84322a, MutableStateFlow, sharingStarted, t));
    }
}
