package kotlinx.coroutines.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.lang.Comparable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InternalCoroutinesApi
@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u0000*\u0012\b\u0000\u0010\u0003*\u00020\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0004j\u0002`\u0005B\u0007¢\u0006\u0004\b4\u00105J\u0006\u0010\u0007\u001a\u00020\u0006J2\u0010\u000e\u001a\u0004\u0018\u00018\u00002!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0012\u0010\u0011J&\u0010\u0013\u001a\u0004\u0018\u00018\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\f0\bH\u0086\b¢\u0006\u0004\b\u0013\u0010\u000fJ\u0015\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0004\b\u0015\u0010\u0016J.\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00028\u00002\u0014\u0010\u0017\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\f0\bH\u0086\b¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u0011\u0010\u001c\u001a\u0004\u0018\u00018\u0000H\u0001¢\u0006\u0004\b\u001c\u0010\u0011J\u0017\u0010\u001f\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00020\u001dH\u0001¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00028\u0000H\u0001¢\u0006\u0004\b!\u0010\u0016J\u0011\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u001dH\u0082\u0010J\u0011\u0010$\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u001dH\u0082\u0010J\u0017\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000%H\u0002¢\u0006\u0004\b&\u0010'J\u0018\u0010)\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\u001dH\u0002R \u0010&\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010*R$\u0010/\u001a\u00020\u001d2\u0006\u0010\u000b\u001a\u00020\u001d8F@BX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0011\u00100\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b0\u00101R\u000b\u00103\u001a\u0002028\u0002X\u0082\u0004¨\u00066"}, m61528d2 = {"Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "", "T", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "", Constants.CLEAR_ATTRIBUTES, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "value", "", "predicate", "find", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "peek", "()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "removeFirstOrNull", "removeFirstIf", "node", "addLast", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V", "cond", "addLastIf", "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function1;)Z", SyncConstant.SYNC_ACTION_REMOVE, "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z", "firstImpl", "", FirebaseAnalytics.Param.INDEX, "removeAtImpl", "(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "addImpl", "i", "d", "c", "", "a", "()[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "j", "e", "[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "getSize", "()I", "b", "(I)V", "size", "isEmpty", Constants.BOOLEAN_VALUE_SIG, "Lkotlinx/atomicfu/AtomicInt;", "_size", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nThreadSafeHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n28#2,4:169\n28#2,4:174\n28#2,4:179\n28#2,4:184\n28#2,4:189\n28#2,4:194\n28#2,4:199\n28#2,4:204\n20#3:173\n20#3:178\n20#3:183\n20#3:188\n20#3:193\n20#3:198\n20#3:203\n20#3:208\n1#4:209\n*S KotlinDebug\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n35#1:169,4\n42#1:174,4\n50#1:179,4\n52#1:184,4\n60#1:189,4\n69#1:194,4\n72#1:199,4\n81#1:204,4\n35#1:173\n42#1:178\n50#1:183\n52#1:188\n60#1:193\n69#1:198\n72#1:203\n81#1:208\n*E\n"})
/* loaded from: classes11.dex */
public class ThreadSafeHeap<T extends ThreadSafeHeapNode & Comparable<? super T>> {

    /* renamed from: b */
    @NotNull
    public static final AtomicIntegerFieldUpdater f98627b = AtomicIntegerFieldUpdater.newUpdater(ThreadSafeHeap.class, "_size");

    @Volatile
    private volatile int _size;

    @Nullable
    public T[] a;

    /* renamed from: a */
    public final T[] m62243a() {
        T[] tArr = this.a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new ThreadSafeHeapNode[4];
            this.a = tArr2;
            return tArr2;
        }
        if (getSize() < tArr.length) {
            return tArr;
        }
        Object[] copyOf = Arrays.copyOf(tArr, getSize() * 2);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        T[] tArr3 = (T[]) ((ThreadSafeHeapNode[]) copyOf);
        this.a = tArr3;
        return tArr3;
    }

    @PublishedApi
    public final void addImpl(@NotNull T node) {
        node.setHeap(this);
        T[] m62243a = m62243a();
        int size = getSize();
        m62244b(size + 1);
        m62243a[size] = node;
        node.setIndex(size);
        m62246d(size);
    }

    public final void addLast(@NotNull T node) {
        synchronized (this) {
            addImpl(node);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean addLastIf(@NotNull T node, @NotNull Function1<? super T, Boolean> cond) {
        boolean z;
        synchronized (this) {
            try {
                if (cond.invoke(firstImpl()).booleanValue()) {
                    addImpl(node);
                    z = true;
                } else {
                    z = false;
                }
                InlineMarker.finallyStart(1);
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        InlineMarker.finallyEnd(1);
        return z;
    }

    /* renamed from: b */
    public final void m62244b(int i) {
        f98627b.set(this, i);
    }

    /* renamed from: c */
    public final void m62245c(int i) {
        while (true) {
            int i2 = (i * 2) + 1;
            if (i2 >= getSize()) {
                return;
            }
            T[] tArr = this.a;
            Intrinsics.checkNotNull(tArr);
            int i3 = i2 + 1;
            if (i3 < getSize()) {
                T t = tArr[i3];
                Intrinsics.checkNotNull(t);
                T t2 = tArr[i2];
                Intrinsics.checkNotNull(t2);
                if (((Comparable) t).compareTo(t2) < 0) {
                    i2 = i3;
                }
            }
            T t3 = tArr[i];
            Intrinsics.checkNotNull(t3);
            T t4 = tArr[i2];
            Intrinsics.checkNotNull(t4);
            if (((Comparable) t3).compareTo(t4) <= 0) {
                return;
            }
            m62247e(i, i2);
            i = i2;
        }
    }

    public final void clear() {
        synchronized (this) {
            T[] tArr = this.a;
            if (tArr != null) {
                ArraysKt___ArraysJvmKt.fill$default(tArr, (Object) null, 0, 0, 6, (Object) null);
            }
            f98627b.set(this, 0);
            Unit unit = Unit.INSTANCE;
        }
    }

    /* renamed from: d */
    public final void m62246d(int i) {
        while (i > 0) {
            T[] tArr = this.a;
            Intrinsics.checkNotNull(tArr);
            int i2 = (i - 1) / 2;
            T t = tArr[i2];
            Intrinsics.checkNotNull(t);
            T t2 = tArr[i];
            Intrinsics.checkNotNull(t2);
            if (((Comparable) t).compareTo(t2) <= 0) {
                return;
            }
            m62247e(i, i2);
            i = i2;
        }
    }

    /* renamed from: e */
    public final void m62247e(int i, int j) {
        T[] tArr = this.a;
        Intrinsics.checkNotNull(tArr);
        T t = tArr[j];
        Intrinsics.checkNotNull(t);
        T t2 = tArr[i];
        Intrinsics.checkNotNull(t2);
        tArr[i] = t;
        tArr[j] = t2;
        t.setIndex(i);
        t2.setIndex(j);
    }

    @Nullable
    public final T find(@NotNull Function1<? super T, Boolean> predicate) {
        T t;
        synchronized (this) {
            int size = getSize();
            int i = 0;
            while (true) {
                t = null;
                if (i >= size) {
                    break;
                }
                T[] tArr = this.a;
                if (tArr != null) {
                    t = (Object) tArr[i];
                }
                Intrinsics.checkNotNull(t);
                if (predicate.invoke(t).booleanValue()) {
                    break;
                }
                i++;
            }
        }
        return t;
    }

    @PublishedApi
    @Nullable
    public final T firstImpl() {
        T[] tArr = this.a;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    public final int getSize() {
        return f98627b.get(this);
    }

    public final boolean isEmpty() {
        return getSize() == 0;
    }

    @Nullable
    public final T peek() {
        T firstImpl;
        synchronized (this) {
            firstImpl = firstImpl();
        }
        return firstImpl;
    }

    public final boolean remove(@NotNull T node) {
        boolean z;
        synchronized (this) {
            if (node.getHeap() == null) {
                z = false;
            } else {
                removeAtImpl(node.getIndex());
                z = true;
            }
        }
        return z;
    }

    @PublishedApi
    @NotNull
    public final T removeAtImpl(int index) {
        T[] tArr = this.a;
        Intrinsics.checkNotNull(tArr);
        m62244b(getSize() - 1);
        if (index < getSize()) {
            m62247e(index, getSize());
            int i = (index - 1) / 2;
            if (index > 0) {
                T t = tArr[index];
                Intrinsics.checkNotNull(t);
                T t2 = tArr[i];
                Intrinsics.checkNotNull(t2);
                if (((Comparable) t).compareTo(t2) < 0) {
                    m62247e(index, i);
                    m62246d(i);
                }
            }
            m62245c(index);
        }
        T t3 = tArr[getSize()];
        Intrinsics.checkNotNull(t3);
        t3.setHeap(null);
        t3.setIndex(-1);
        tArr[getSize()] = null;
        return t3;
    }

    @Nullable
    public final T removeFirstIf(@NotNull Function1<? super T, Boolean> predicate) {
        synchronized (this) {
            try {
                T firstImpl = firstImpl();
                if (firstImpl == null) {
                    InlineMarker.finallyStart(2);
                    InlineMarker.finallyEnd(2);
                    return null;
                }
                T removeAtImpl = predicate.invoke(firstImpl).booleanValue() ? removeAtImpl(0) : null;
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                return removeAtImpl;
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
    }

    @Nullable
    public final T removeFirstOrNull() {
        T removeAtImpl;
        synchronized (this) {
            removeAtImpl = getSize() > 0 ? removeAtImpl(0) : null;
        }
        return removeAtImpl;
    }
}
