package kotlinx.coroutines.internal;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.C14434t4;
import com.sunia.HTREnginev2.r1n;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u001ae\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0000*\u00028\u00002\u0006\u0010\u0003\u001a\u00020\u000226\u0010\b\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00028\u00000\u0004H\u0000ø\u0001\u0000\u001a#\u0010\r\u001a\u00028\u0000\"\u000e\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u000b*\u00028\u0000H\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a8\u0010\u0016\u001a\u00020\u0014*\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00102!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00140\u0012H\u0082\b\"\u0014\u0010\u0019\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018\"\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, m61528d2 = {"Lkotlinx/coroutines/internal/Segment;", "S", "", "id", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "prev", "createNewSegment", "Lkotlinx/coroutines/internal/SegmentOrClosed;", "findSegmentInternal", "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "N", "close", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "Lkotlinx/atomicfu/AtomicInt;", "", "delta", "Lkotlin/Function1;", "cur", "", Constants.ATTRNAME_CONDITION, "addConditionally", "a", "I", "POINTERS_SHIFT", "Lkotlinx/coroutines/internal/Symbol;", "b", "Lkotlinx/coroutines/internal/Symbol;", "CLOSED", "kotlinx-coroutines-core"}, m61529k = 2, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n1#1,269:1\n46#1,8:284\n107#2,7:270\n107#2,7:277\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n74#1:284,8\n27#1:270,7\n85#1:277,7\n*E\n"})
/* loaded from: classes11.dex */
public final class ConcurrentLinkedListKt {

    /* renamed from: a */
    public static final int f98571a = 16;

    /* renamed from: b */
    @NotNull
    public static final Symbol f98572b = new Symbol("CLOSED");

    /* renamed from: a */
    public static final boolean m62183a(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, int i, Function1<? super Integer, Boolean> function1) {
        int i2;
        do {
            i2 = atomicIntegerFieldUpdater.get(obj);
            if (!function1.invoke(Integer.valueOf(i2)).booleanValue()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(obj, i2, i2 + i));
        return true;
    }

    /* renamed from: b */
    public static final boolean m62184b(Object obj, AtomicIntegerArray atomicIntegerArray, int i, int i2, Function1<? super Integer, Boolean> function1) {
        int i3;
        do {
            i3 = atomicIntegerArray.get(i);
            if (!function1.invoke(Integer.valueOf(i3)).booleanValue()) {
                return false;
            }
        } while (!atomicIntegerArray.compareAndSet(i, i3, i3 + i2));
        return true;
    }

    /* renamed from: c */
    public static final void m62185c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.coroutines.internal.ConcurrentLinkedListNode] */
    @NotNull
    public static final <N extends ConcurrentLinkedListNode<N>> N close(@NotNull N n) {
        while (true) {
            Object m62190c = n.m62190c();
            if (m62190c == f98572b) {
                return n;
            }
            ?? r0 = (ConcurrentLinkedListNode) m62190c;
            if (r0 != 0) {
                n = r0;
            } else if (n.markAsClosed()) {
                return n;
            }
        }
    }

    /* renamed from: d */
    public static final void m62186d(AtomicReferenceArray atomicReferenceArray, int i, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceArray.get(i));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final Object findSegmentAndMoveForward$atomicfu(@Nullable Object obj, @NotNull AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, long j, @NotNull Object obj2, @NotNull Function2<? super Long, Object, Object> function2) {
        Object findSegmentInternal;
        boolean z;
        do {
            findSegmentInternal = findSegmentInternal(obj2, j, function2);
            if (!SegmentOrClosed.m74197isClosedimpl(findSegmentInternal)) {
                Segment m74195getSegmentimpl = SegmentOrClosed.m74195getSegmentimpl(findSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(obj);
                    z = true;
                    if (segment.id >= m74195getSegmentimpl.id) {
                        break;
                    }
                    if (!m74195getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        z = false;
                        break;
                    }
                    if (C14434t4.m57298a(atomicReferenceFieldUpdater, obj, segment, m74195getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    } else if (m74195getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m74195getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        } while (!z);
        return findSegmentInternal;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final Object findSegmentAndMoveForward$atomicfu$array(@Nullable Object obj, @NotNull AtomicReferenceArray atomicReferenceArray, int i, long j, @NotNull Object obj2, @NotNull Function2<? super Long, Object, Object> function2) {
        Object findSegmentInternal;
        boolean z;
        do {
            findSegmentInternal = findSegmentInternal(obj2, j, function2);
            if (!SegmentOrClosed.m74197isClosedimpl(findSegmentInternal)) {
                Segment m74195getSegmentimpl = SegmentOrClosed.m74195getSegmentimpl(findSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceArray.get(i);
                    z = true;
                    if (segment.id >= m74195getSegmentimpl.id) {
                        break;
                    }
                    if (!m74195getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        z = false;
                        break;
                    }
                    if (r1n.m56886a(atomicReferenceArray, i, segment, m74195getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    } else if (m74195getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m74195getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        } while (!z);
        return findSegmentInternal;
    }

    @NotNull
    public static final <S extends Segment<S>> Object findSegmentInternal(@NotNull S s, long j, @NotNull Function2<? super Long, ? super S, ? extends S> function2) {
        while (true) {
            if (s.id >= j && !s.isRemoved()) {
                return SegmentOrClosed.m74192constructorimpl(s);
            }
            Object m62190c = s.m62190c();
            if (m62190c == f98572b) {
                return SegmentOrClosed.m74192constructorimpl(f98572b);
            }
            S s2 = (S) ((ConcurrentLinkedListNode) m62190c);
            if (s2 == null) {
                s2 = function2.invoke(Long.valueOf(s.id + 1), s);
                if (s.trySetNext(s2)) {
                    if (s.isRemoved()) {
                        s.remove();
                    }
                }
            }
            s = s2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean moveForward$atomicfu(@Nullable Object obj, @NotNull AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, @NotNull Object obj2) {
        while (true) {
            Segment segment = (Segment) atomicReferenceFieldUpdater.get(obj);
            if (segment.id >= obj2.id) {
                return true;
            }
            if (!obj2.tryIncPointers$kotlinx_coroutines_core()) {
                return false;
            }
            if (C14434t4.m57298a(atomicReferenceFieldUpdater, obj, segment, obj2)) {
                if (segment.decPointers$kotlinx_coroutines_core()) {
                    segment.remove();
                }
                return true;
            }
            if (obj2.decPointers$kotlinx_coroutines_core()) {
                obj2.remove();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean moveForward$atomicfu$array(@Nullable Object obj, @NotNull AtomicReferenceArray atomicReferenceArray, int i, @NotNull Object obj2) {
        while (true) {
            Segment segment = (Segment) atomicReferenceArray.get(i);
            if (segment.id >= obj2.id) {
                return true;
            }
            if (!obj2.tryIncPointers$kotlinx_coroutines_core()) {
                return false;
            }
            if (r1n.m56886a(atomicReferenceArray, i, segment, obj2)) {
                if (segment.decPointers$kotlinx_coroutines_core()) {
                    segment.remove();
                }
                return true;
            }
            if (obj2.decPointers$kotlinx_coroutines_core()) {
                obj2.remove();
            }
        }
    }
}
