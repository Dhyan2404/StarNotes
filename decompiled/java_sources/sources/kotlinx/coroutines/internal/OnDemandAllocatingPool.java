package kotlinx.coroutines.internal;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B#\u0012\u0006\u0010\u0010\u001a\u00020\f\u0012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00028\u00000\u0011¢\u0006\u0004\b\u0019\u0010\u001aJ\u0006\u0010\u0004\u001a\u00020\u0003J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005J\u000f\u0010\n\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u000b\u001a\u00020\u0007H\u0016J\t\u0010\r\u001a\u00020\fH\u0082\bJ\r\u0010\u000e\u001a\u00020\u0003*\u00020\fH\u0082\bR\u0014\u0010\u0010\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR \u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00028\u00000\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u000b\u0010\u0016\u001a\u00020\u00158\u0002X\u0082\u0004R\u0013\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00178\u0002X\u0082\u0004¨\u0006\u001b"}, m61528d2 = {"Lkotlinx/coroutines/internal/OnDemandAllocatingPool;", "T", "", "", "allocate", "", "close", "", "stateRepresentation$kotlinx_coroutines_core", "()Ljava/lang/String;", "stateRepresentation", "toString", "", "c", "a", "I", "maxCapacity", "Lkotlin/Function1;", "b", "Lkotlin/jvm/functions/Function1;", BaiduYunConstant.CREATE, "Lkotlinx/atomicfu/AtomicInt;", "controlState", "Lkotlinx/atomicfu/AtomicArray;", Constants.ATTRNAME_ELEMENTS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nOnDemandAllocatingPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPool\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPoolKt\n*L\n1#1,107:1\n41#1:108\n41#1:109\n35#1,7:110\n41#1:127\n1549#2:117\n1620#2,2:118\n1622#2:122\n1549#2:123\n1620#2,3:124\n101#3,2:120\n*S KotlinDebug\n*F\n+ 1 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPool\n*L\n35#1:108\n54#1:109\n76#1:110,7\n92#1:127\n77#1:117\n77#1:118,2\n77#1:122\n91#1:123\n91#1:124,3\n79#1:120,2\n*E\n"})
/* loaded from: classes11.dex */
public final class OnDemandAllocatingPool<T> {

    /* renamed from: d */
    @NotNull
    public static final AtomicIntegerFieldUpdater f98607d = AtomicIntegerFieldUpdater.newUpdater(OnDemandAllocatingPool.class, "controlState");

    /* renamed from: a, reason: from kotlin metadata */
    public final int maxCapacity;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Function1<Integer, T> create;

    /* renamed from: c */
    @NotNull
    public final AtomicReferenceArray f98610c;

    @Volatile
    private volatile int controlState;

    /* JADX WARN: Multi-variable type inference failed */
    public OnDemandAllocatingPool(int i, @NotNull Function1<? super Integer, ? extends T> function1) {
        this.maxCapacity = i;
        this.create = function1;
        this.f98610c = new AtomicReferenceArray(i);
    }

    /* renamed from: a */
    public final boolean m62229a(int i) {
        return (Integer.MIN_VALUE & i) != 0;
    }

    public final boolean allocate() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f98607d;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            if ((Integer.MIN_VALUE & i) != 0) {
                return false;
            }
            if (i >= this.maxCapacity) {
                return true;
            }
        } while (!f98607d.compareAndSet(this, i, i + 1));
        this.f98610c.set(i, this.create.invoke(Integer.valueOf(i)));
        return true;
    }

    /* renamed from: b */
    public final void m62230b(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    /* renamed from: c */
    public final int m62231c() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f98607d;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            if ((i & Integer.MIN_VALUE) != 0) {
                return 0;
            }
        } while (!f98607d.compareAndSet(this, i, Integer.MIN_VALUE | i));
        return i;
    }

    @NotNull
    public final List<T> close() {
        int i;
        IntRange until;
        int collectionSizeOrDefault;
        Object andSet;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f98607d;
        while (true) {
            i = atomicIntegerFieldUpdater.get(this);
            if ((i & Integer.MIN_VALUE) != 0) {
                i = 0;
                break;
            }
            if (f98607d.compareAndSet(this, i, Integer.MIN_VALUE | i)) {
                break;
            }
        }
        until = RangesKt___RangesKt.until(0, i);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(until, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it2 = until.iterator();
        while (it2.hasNext()) {
            int nextInt = ((IntIterator) it2).nextInt();
            do {
                andSet = this.f98610c.getAndSet(nextInt, null);
            } while (andSet == null);
            arrayList.add(andSet);
        }
        return arrayList;
    }

    @NotNull
    public final String stateRepresentation$kotlinx_coroutines_core() {
        IntRange until;
        int collectionSizeOrDefault;
        int i = f98607d.get(this);
        until = RangesKt___RangesKt.until(0, Integer.MAX_VALUE & i);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(until, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it2 = until.iterator();
        while (it2.hasNext()) {
            arrayList.add(this.f98610c.get(((IntIterator) it2).nextInt()));
        }
        return arrayList.toString() + ((i & Integer.MIN_VALUE) != 0 ? "[closed]" : "");
    }

    @NotNull
    public String toString() {
        return "OnDemandAllocatingPool(" + stateRepresentation$kotlinx_coroutines_core() + ')';
    }
}
