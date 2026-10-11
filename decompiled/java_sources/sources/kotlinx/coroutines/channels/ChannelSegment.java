package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.r1n;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.Segment;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u0002B7\u0012\u0006\u00107\u001a\u000206\u0012\u000e\u00108\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u0012\u000e\u00100\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010*\u0012\u0006\u00109\u001a\u00020\u0003¢\u0006\u0004\b:\u0010;J\u001f\u0010\t\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\r\u0010\u000bJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0004\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u0013\u0010\u000bJ!\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u0012H\u0000¢\u0006\u0004\b\u0016\u0010\bJ+\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0018\u001a\u0004\u0018\u00010\u00122\b\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ#\u0010!\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u001e\u001a\u0004\u0018\u00010\u0012H\u0000¢\u0006\u0004\b\u001f\u0010 J\"\u0010&\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010%\u001a\u00020$H\u0016J\u0016\u0010(\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010'\u001a\u00020\u001aJ\u001a\u0010)\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u0012H\u0002R\u001c\u0010-\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0017\u00100\u001a\b\u0012\u0004\u0012\u00028\u00000*8F¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0014\u00103\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u00102R\u0013\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u0012048\u0002X\u0082\u0004¨\u0006<"}, m61528d2 = {"Lkotlinx/coroutines/channels/ChannelSegment;", "E", "Lkotlinx/coroutines/internal/Segment;", "", FirebaseAnalytics.Param.INDEX, "element", "", "storeElement$kotlinx_coroutines_core", "(ILjava/lang/Object;)V", "storeElement", "getElement$kotlinx_coroutines_core", "(I)Ljava/lang/Object;", "getElement", "retrieveElement$kotlinx_coroutines_core", "retrieveElement", "cleanElement$kotlinx_coroutines_core", "(I)V", "cleanElement", "", "getState$kotlinx_coroutines_core", "getState", "value", "setState$kotlinx_coroutines_core", "setState", "from", "to", "", "casState$kotlinx_coroutines_core", "(ILjava/lang/Object;Ljava/lang/Object;)Z", "casState", "update", "getAndSetState$kotlinx_coroutines_core", "(ILjava/lang/Object;)Ljava/lang/Object;", "getAndSetState", "", "cause", "Lkotlin/coroutines/CoroutineContext;", "context", "onCancellation", EventHandlerManager.RECEIVER, "onCancelledRequest", "e", "Lkotlinx/coroutines/channels/BufferedChannel;", C6999h.f39688c, "Lkotlinx/coroutines/channels/BufferedChannel;", "_channel", "getChannel", "()Lkotlinx/coroutines/channels/BufferedChannel;", "channel", "getNumberOfSlots", "()I", "numberOfSlots", "Lkotlinx/atomicfu/AtomicArray;", "data", "", "id", "prev", "pointers", Constants.CONSTRUCTOR_NAME, "(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/ChannelSegment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3055:1\n1#2:3056\n*E\n"})
/* loaded from: classes11.dex */
public final class ChannelSegment<E> extends Segment<ChannelSegment<E>> {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final BufferedChannel<E> _channel;

    /* renamed from: i */
    @NotNull
    public final AtomicReferenceArray f98283i;

    public ChannelSegment(long j, @Nullable ChannelSegment<E> channelSegment, @Nullable BufferedChannel<E> bufferedChannel, int i) {
        super(j, channelSegment, i);
        this._channel = bufferedChannel;
        this.f98283i = new AtomicReferenceArray(BufferedChannelKt.SEGMENT_SIZE * 2);
    }

    public final boolean casState$kotlinx_coroutines_core(int index, @Nullable Object from, @Nullable Object to) {
        return r1n.m56886a(this.f98283i, (index * 2) + 1, from, to);
    }

    public final void cleanElement$kotlinx_coroutines_core(int index) {
        m61809e(index, null);
    }

    /* renamed from: e */
    public final void m61809e(int index, Object value) {
        this.f98283i.lazySet(index * 2, value);
    }

    @Nullable
    public final Object getAndSetState$kotlinx_coroutines_core(int index, @Nullable Object update) {
        return this.f98283i.getAndSet((index * 2) + 1, update);
    }

    @NotNull
    public final BufferedChannel<E> getChannel() {
        BufferedChannel<E> bufferedChannel = this._channel;
        Intrinsics.checkNotNull(bufferedChannel);
        return bufferedChannel;
    }

    public final E getElement$kotlinx_coroutines_core(int index) {
        return (E) this.f98283i.get(index * 2);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public int getNumberOfSlots() {
        return BufferedChannelKt.SEGMENT_SIZE;
    }

    @Nullable
    public final Object getState$kotlinx_coroutines_core(int index) {
        return this.f98283i.get((index * 2) + 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0063, code lost:
    
        cleanElement$kotlinx_coroutines_core(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0066, code lost:
    
        if (r0 == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0068, code lost:
    
        r3 = getChannel().onUndeliveredElement;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x006e, code lost:
    
        if (r3 == null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0070, code lost:
    
        kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r3, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0073, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
    
        return;
     */
    @Override // kotlinx.coroutines.internal.Segment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCancellation(int r4, @org.jetbrains.annotations.Nullable java.lang.Throwable r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.CoroutineContext r6) {
        /*
            r3 = this;
            int r5 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            if (r4 < r5) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            if (r0 == 0) goto La
            int r4 = r4 - r5
        La:
            java.lang.Object r5 = r3.getElement$kotlinx_coroutines_core(r4)
        Le:
            java.lang.Object r1 = r3.getState$kotlinx_coroutines_core(r4)
            boolean r2 = r1 instanceof kotlinx.coroutines.Waiter
            if (r2 != 0) goto L74
            boolean r2 = r1 instanceof com.sunia.HTREnginev2.k5o
            if (r2 == 0) goto L1b
            goto L74
        L1b:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            if (r1 == r2) goto L63
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
            if (r1 != r2) goto L28
            goto L63
        L28:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_EB$p()
            if (r1 == r2) goto Le
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_RCV$p()
            if (r1 != r2) goto L35
            goto Le
        L35:
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.channels.BufferedChannelKt.access$getDONE_RCV$p()
            if (r1 == r3) goto L62
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.channels.BufferedChannelKt.BUFFERED
            if (r1 != r3) goto L40
            goto L62
        L40:
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            if (r1 != r3) goto L47
            return
        L47:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "unexpected state: "
            r4.append(r5)
            r4.append(r1)
            java.lang.String r4 = r4.toString()
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L62:
            return
        L63:
            r3.cleanElement$kotlinx_coroutines_core(r4)
            if (r0 == 0) goto L73
            kotlinx.coroutines.channels.BufferedChannel r3 = r3.getChannel()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r3 = r3.onUndeliveredElement
            if (r3 == 0) goto L73
            kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r3, r5, r6)
        L73:
            return
        L74:
            if (r0 == 0) goto L7b
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            goto L7f
        L7b:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
        L7f:
            boolean r1 = r3.casState$kotlinx_coroutines_core(r4, r1, r2)
            if (r1 == 0) goto Le
            r3.cleanElement$kotlinx_coroutines_core(r4)
            r1 = r0 ^ 1
            r3.onCancelledRequest(r4, r1)
            if (r0 == 0) goto L9a
            kotlinx.coroutines.channels.BufferedChannel r3 = r3.getChannel()
            kotlin.jvm.functions.Function1<E, kotlin.Unit> r3 = r3.onUndeliveredElement
            if (r3 == 0) goto L9a
            kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r3, r5, r6)
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelSegment.onCancellation(int, java.lang.Throwable, kotlin.coroutines.CoroutineContext):void");
    }

    public final void onCancelledRequest(int index, boolean receiver) {
        if (receiver) {
            getChannel().waitExpandBufferCompletion$kotlinx_coroutines_core((this.id * BufferedChannelKt.SEGMENT_SIZE) + index);
        }
        onSlotCleaned();
    }

    public final E retrieveElement$kotlinx_coroutines_core(int index) {
        E element$kotlinx_coroutines_core = getElement$kotlinx_coroutines_core(index);
        cleanElement$kotlinx_coroutines_core(index);
        return element$kotlinx_coroutines_core;
    }

    public final void setState$kotlinx_coroutines_core(int index, @Nullable Object value) {
        this.f98283i.set((index * 2) + 1, value);
    }

    public final void storeElement$kotlinx_coroutines_core(int index, E element) {
        m61809e(index, element);
    }
}
