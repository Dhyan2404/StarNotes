package kotlinx.coroutines.flow;

import com.sunia.HTREnginev2.dym;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SourceDebugExtension({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,428:1\n18#2:429\n18#2:443\n28#3,4:430\n28#3,4:437\n20#4:434\n20#4:441\n13579#5,2:435\n329#6:442\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n315#1:429\n396#1:443\n324#1:430,4\n352#1:437,4\n324#1:434\n352#1:441\n348#1:435,2\n385#1:442\n*E\n"})
/* loaded from: classes11.dex */
public final class StateFlowImpl<T> extends AbstractSharedFlow<dym> implements MutableStateFlow<T>, CancellableFlow<T>, FusibleFlow<T> {

    /* renamed from: j */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98521j = AtomicReferenceFieldUpdater.newUpdater(StateFlowImpl.class, Object.class, "_state");

    @Volatile
    @Nullable
    private volatile Object _state;

    /* renamed from: i */
    public int f98522i;

    public StateFlowImpl(@NotNull Object obj) {
        this._state = obj;
    }

    /* renamed from: c */
    public static /* synthetic */ void m62166c() {
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    @NotNull
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public dym createSlot() {
        return new dym();
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    @NotNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public dym[] createSlotArray(int i) {
        return new dym[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b8, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r12, (java.lang.Object) r7) == false) goto L39;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00af A[Catch: all -> 0x00f2, TryCatch #0 {all -> 0x00f2, blocks: (B:13:0x00a7, B:15:0x00af, B:17:0x00b4, B:19:0x00d9, B:21:0x00df, B:25:0x00ba, B:28:0x00c1, B:11:0x0074, B:12:0x0098, B:49:0x0082, B:51:0x0086), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00b4 A[Catch: all -> 0x00f2, TryCatch #0 {all -> 0x00f2, blocks: (B:13:0x00a7, B:15:0x00af, B:17:0x00b4, B:19:0x00d9, B:21:0x00df, B:25:0x00ba, B:28:0x00c1, B:11:0x0074, B:12:0x0098, B:49:0x0082, B:51:0x0086), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00df A[Catch: all -> 0x00f2, TRY_LEAVE, TryCatch #0 {all -> 0x00f2, blocks: (B:13:0x00a7, B:15:0x00af, B:17:0x00b4, B:19:0x00d9, B:21:0x00df, B:25:0x00ba, B:28:0x00c1, B:11:0x0074, B:12:0x0098, B:49:0x0082, B:51:0x0086), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00dd -> B:13:0x00a7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00ef -> B:13:0x00a7). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.FlowCollector<? super T> r11, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<?> r12) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowImpl.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public boolean compareAndSet(T t, T t2) {
        if (t == null) {
            t = (T) NullSurrogateKt.NULL;
        }
        if (t2 == null) {
            t2 = (T) NullSurrogateKt.NULL;
        }
        return m62169d(t, t2);
    }

    /* renamed from: d */
    public final boolean m62169d(Object obj, Object obj2) {
        int i;
        dym[] slots;
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98521j;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj != null && !Intrinsics.areEqual(obj3, obj)) {
                return false;
            }
            if (Intrinsics.areEqual(obj3, obj2)) {
                return true;
            }
            atomicReferenceFieldUpdater.set(this, obj2);
            int i2 = this.f98522i;
            if ((i2 & 1) != 0) {
                this.f98522i = i2 + 2;
                return true;
            }
            int i3 = i2 + 1;
            this.f98522i = i3;
            dym[] slots2 = getSlots();
            Unit unit = Unit.INSTANCE;
            while (true) {
                dym[] dymVarArr = slots2;
                if (dymVarArr != null) {
                    for (dym dymVar : dymVarArr) {
                        if (dymVar != null) {
                            dymVar.m53871f();
                        }
                    }
                }
                synchronized (this) {
                    i = this.f98522i;
                    if (i == i3) {
                        this.f98522i = i3 + 1;
                        return true;
                    }
                    slots = getSlots();
                    Unit unit2 = Unit.INSTANCE;
                }
                slots2 = slots;
                i3 = i;
            }
        }
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow, kotlinx.coroutines.flow.FlowCollector
    @Nullable
    public Object emit(T t, @NotNull Continuation<? super Unit> continuation) {
        setValue(t);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    @NotNull
    public Flow<T> fuse(@NotNull CoroutineContext coroutineContext, int i, @NotNull BufferOverflow bufferOverflow) {
        return StateFlowKt.fuseStateFlow(this, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.SharedFlow
    @NotNull
    public List<T> getReplayCache() {
        List<T> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(getValue());
        return listOf;
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow, kotlinx.coroutines.flow.StateFlow
    public T getValue() {
        Symbol symbol = NullSurrogateKt.NULL;
        T t = (T) f98521j.get(this);
        if (t == symbol) {
            return null;
        }
        return t;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public void resetReplayCache() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public void setValue(T t) {
        if (t == null) {
            t = (T) NullSurrogateKt.NULL;
        }
        m62169d(null, t);
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public boolean tryEmit(T t) {
        setValue(t);
        return true;
    }
}
