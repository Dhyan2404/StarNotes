package kotlinx.coroutines.internal;

import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.C14434t4;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\b \u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002B\u0011\u0012\b\u0010\u0016\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\"\u0010#J \u0010\u0006\u001a\u0004\u0018\u00018\u00002\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0086\b¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00028\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000e\u001a\u00020\tJ\u0006\u0010\u000f\u001a\u00020\fR\u0013\u0010\u0012\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0013\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0016\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\t8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0014R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u0004\u0018\u00018\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0011R\u0014\u0010\u001e\u001a\u00028\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0011R\u0013\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u001f8\u0002X\u0082\u0004R\u0013\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001f8\u0002X\u0082\u0004¨\u0006$"}, m61528d2 = {"Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "N", "", "Lkotlin/Function0;", "", "onClosedAction", "nextOrIfClosed", "(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "value", "", "trySetNext", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z", "", "cleanPrev", "markAsClosed", SyncConstant.SYNC_ACTION_REMOVE, "getNext", "()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", Constants.NEXT, "isTail", Constants.BOOLEAN_VALUE_SIG, "getPrev", "prev", "isRemoved", "c", "()Ljava/lang/Object;", "nextOrClosed", "a", "aliveSegmentLeft", "b", "aliveSegmentRight", "Lkotlinx/atomicfu/AtomicRef;", "_next", "_prev", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,269:1\n107#1,7:270\n1#2:277\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n115#1:270,7\n*E\n"})
/* loaded from: classes11.dex */
public abstract class ConcurrentLinkedListNode<N extends ConcurrentLinkedListNode<N>> {

    /* renamed from: e */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98573e = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_next");

    /* renamed from: f */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98574f = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_prev");

    @Volatile
    @Nullable
    private volatile Object _next;

    @Volatile
    @Nullable
    private volatile Object _prev;

    public ConcurrentLinkedListNode(@Nullable N n) {
        this._prev = n;
    }

    /* renamed from: d */
    private final void m62187d(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, ? extends Object> function1, Object obj) {
        Object obj2;
        do {
            obj2 = atomicReferenceFieldUpdater.get(obj);
        } while (!C14434t4.m57298a(atomicReferenceFieldUpdater, obj, obj2, function1.invoke(obj2)));
    }

    /* renamed from: a */
    public final N m62188a() {
        N prev = getPrev();
        while (prev != null && prev.isRemoved()) {
            prev = (N) f98574f.get(prev);
        }
        return prev;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.coroutines.internal.ConcurrentLinkedListNode] */
    /* renamed from: b */
    public final N m62189b() {
        ?? next;
        N next2 = getNext();
        Intrinsics.checkNotNull(next2);
        while (next2.isRemoved() && (next = next2.getNext()) != 0) {
            next2 = next;
        }
        return next2;
    }

    /* renamed from: c */
    public final Object m62190c() {
        return f98573e.get(this);
    }

    public final void cleanPrev() {
        f98574f.lazySet(this, null);
    }

    @Nullable
    public final N getNext() {
        Object m62190c = m62190c();
        if (m62190c == ConcurrentLinkedListKt.access$getCLOSED$p()) {
            return null;
        }
        return (N) m62190c;
    }

    @Nullable
    public final N getPrev() {
        return (N) f98574f.get(this);
    }

    public abstract boolean isRemoved();

    public final boolean isTail() {
        return getNext() == null;
    }

    public final boolean markAsClosed() {
        return C14434t4.m57298a(f98573e, this, null, ConcurrentLinkedListKt.access$getCLOSED$p());
    }

    @Nullable
    public final N nextOrIfClosed(@NotNull Function0 onClosedAction) {
        Object m62190c = m62190c();
        if (m62190c != ConcurrentLinkedListKt.access$getCLOSED$p()) {
            return (N) m62190c;
        }
        onClosedAction.invoke();
        throw new KotlinNothingValueException();
    }

    public final void remove() {
        Object obj;
        if (isTail()) {
            return;
        }
        while (true) {
            N m62188a = m62188a();
            N m62189b = m62189b();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98574f;
            do {
                obj = atomicReferenceFieldUpdater.get(m62189b);
            } while (!C14434t4.m57298a(atomicReferenceFieldUpdater, m62189b, obj, ((ConcurrentLinkedListNode) obj) == null ? null : m62188a));
            if (m62188a != null) {
                f98573e.set(m62188a, m62189b);
            }
            if (!m62189b.isRemoved() || m62189b.isTail()) {
                if (m62188a == null || !m62188a.isRemoved()) {
                    return;
                }
            }
        }
    }

    public final boolean trySetNext(@NotNull N value) {
        return C14434t4.m57298a(f98573e, this, null, value);
    }
}
