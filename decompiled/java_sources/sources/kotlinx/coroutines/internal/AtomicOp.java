package kotlinx.coroutines.internal;

import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.C14434t4;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InternalCoroutinesApi
@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u0002B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028\u0000H&¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00028\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0014\u0010\r\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0002R\u0018\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00118\u0002X\u0082\u0004¨\u0006\u0015"}, m61528d2 = {"Lkotlinx/coroutines/internal/AtomicOp;", "T", "Lkotlinx/coroutines/internal/OpDescriptor;", "affected", "", "prepare", "(Ljava/lang/Object;)Ljava/lang/Object;", "failure", "", "complete", "(Ljava/lang/Object;Ljava/lang/Object;)V", "perform", "decision", "a", "getAtomicOp", "()Lkotlinx/coroutines/internal/AtomicOp;", "atomicOp", "Lkotlinx/atomicfu/AtomicRef;", "_consensus", Constants.CONSTRUCTOR_NAME, "()V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nAtomic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Atomic.kt\nkotlinx/coroutines/internal/AtomicOp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"})
/* loaded from: classes11.dex */
public abstract class AtomicOp<T> extends OpDescriptor {

    /* renamed from: a */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98567a = AtomicReferenceFieldUpdater.newUpdater(AtomicOp.class, Object.class, "_consensus");

    @Volatile
    @Nullable
    private volatile Object _consensus = AtomicKt.NO_DECISION;

    /* renamed from: a */
    public final Object m62182a(Object decision) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98567a;
        Object obj = atomicReferenceFieldUpdater.get(this);
        Object obj2 = AtomicKt.NO_DECISION;
        return obj != obj2 ? obj : C14434t4.m57298a(atomicReferenceFieldUpdater, this, obj2, decision) ? decision : atomicReferenceFieldUpdater.get(this);
    }

    public abstract void complete(T affected, @Nullable Object failure);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.OpDescriptor
    @NotNull
    public AtomicOp<?> getAtomicOp() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.OpDescriptor
    @Nullable
    public final Object perform(@Nullable Object affected) {
        Object obj = f98567a.get(this);
        if (obj == AtomicKt.NO_DECISION) {
            obj = m62182a(prepare(affected));
        }
        complete(affected, obj);
        return obj;
    }

    @Nullable
    public abstract Object prepare(T affected);
}
