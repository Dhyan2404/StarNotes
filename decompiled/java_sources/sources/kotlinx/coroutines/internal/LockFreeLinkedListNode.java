package kotlinx.coroutines.internal;

import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.C14434t4;
import com.sunia.HTREnginev2.zjl;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InternalCoroutinesApi
@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018\u00002\u00020\u0001:\u00012B\u0007¢\u0006\u0004\b0\u00101J%\u0010\b\u001a\u00020\u00072\n\u0010\u0003\u001a\u00060\u0000j\u0002`\u00022\u000e\b\u0004\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0081\bJ\u0012\u0010\t\u001a\u00020\u00052\n\u0010\u0003\u001a\u00060\u0000j\u0002`\u0002J\u0012\u0010\u000b\u001a\u00020\n2\n\u0010\u0003\u001a\u00060\u0000j\u0002`\u0002J%\u0010\f\u001a\u00020\u00052\n\u0010\u0003\u001a\u00060\u0000j\u0002`\u00022\u000e\b\u0004\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0086\bJ \u0010\u000e\u001a\u00020\u00052\n\u0010\u0003\u001a\u00060\u0000j\u0002`\u00022\n\u0010\r\u001a\u00060\u0000j\u0002`\u0002H\u0001J(\u0010\u0011\u001a\u00020\u00102\n\u0010\u0003\u001a\u00060\u0000j\u0002`\u00022\n\u0010\r\u001a\u00060\u0000j\u0002`\u00022\u0006\u0010\u000f\u001a\u00020\u0007H\u0001J\b\u0010\u0012\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0002H\u0001J\u0010\u0010\u0014\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0002H\u0014J'\u0010\u0018\u001a\u00020\n2\n\u0010\u0015\u001a\u00060\u0000j\u0002`\u00022\n\u0010\r\u001a\u00060\u0000j\u0002`\u0002H\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u001a\u001a\u00020\u0019H\u0016J\b\u0010\u001c\u001a\u00020\u001bH\u0002J\u0019\u0010\u001e\u001a\u00060\u0000j\u0002`\u00022\n\u0010\u001d\u001a\u00060\u0000j\u0002`\u0002H\u0082\u0010J\u0014\u0010\u001f\u001a\u00020\n2\n\u0010\r\u001a\u00060\u0000j\u0002`\u0002H\u0002J\u001b\u0010\"\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u00022\b\u0010!\u001a\u0004\u0018\u00010 H\u0082\u0010R\u0014\u0010#\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0011\u0010\r\u001a\u00020\u00018F¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0015\u0010)\u001a\u00060\u0000j\u0002`\u00028F¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0015\u0010+\u001a\u00060\u0000j\u0002`\u00028F¢\u0006\u0006\u001a\u0004\b*\u0010(R\u0011\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00010,8\u0002X\u0082\u0004R\u0011\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00000,8\u0002X\u0082\u0004R\u0013\u0010/\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0,8\u0002X\u0082\u0004¨\u00063"}, m61528d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "", "Lkotlinx/coroutines/internal/Node;", "node", "Lkotlin/Function0;", "", Constants.ATTRNAME_CONDITION, "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "makeCondAddOp", "addOneIfEmpty", "", "addLast", "addLastIf", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.NEXT, "addNext", "condAdd", "", "tryCondAddNext", SyncConstant.SYNC_ACTION_REMOVE, "removeOrNext", "nextIfRemoved", "prev", "validateNode$kotlinx_coroutines_core", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "validateNode", "", "toString", "Lcom/sunia/HTREnginev2/zjl;", "e", Keywords.FUNC_CURRENT_STRING, "b", "c", "Lkotlinx/coroutines/internal/OpDescriptor;", "op", "a", "isRemoved", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "getNext", "()Ljava/lang/Object;", "getNextNode", "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "nextNode", "getPrevNode", "prevNode", "Lkotlinx/atomicfu/AtomicRef;", "_next", "_prev", "_removedRef", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "CondAddOp", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,367:1\n73#1,3:369\n1#2:368\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n*L\n134#1:369,3\n*E\n"})
/* loaded from: classes11.dex */
public class LockFreeLinkedListNode {

    /* renamed from: e */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98593e = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next");

    /* renamed from: f */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98594f = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev");

    /* renamed from: g */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98595g = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef");

    @Volatile
    @Nullable
    private volatile Object _next = this;

    @Volatile
    @Nullable
    private volatile Object _prev = this;

    @Volatile
    @Nullable
    private volatile Object _removedRef;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\b!\u0018\u00002\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001B\u0011\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0002\u0010\u0005J\u001e\u0010\u0007\u001a\u00020\b2\n\u0010\t\u001a\u00060\u0002j\u0002`\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u0014\u0010\u0004\u001a\u00060\u0002j\u0002`\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "Lkotlinx/coroutines/internal/AtomicOp;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "newNode", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "oldNext", "complete", "", "affected", "failure", "", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    @PublishedApi
    /* loaded from: classes11.dex */
    public static abstract class CondAddOp extends AtomicOp<LockFreeLinkedListNode> {

        @JvmField
        @NotNull
        public final LockFreeLinkedListNode newNode;

        @JvmField
        @Nullable
        public LockFreeLinkedListNode oldNext;

        public CondAddOp(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
            this.newNode = lockFreeLinkedListNode;
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        public void complete(@NotNull LockFreeLinkedListNode affected, @Nullable Object failure) {
            boolean z = failure == null;
            LockFreeLinkedListNode lockFreeLinkedListNode = z ? this.newNode : this.oldNext;
            if (lockFreeLinkedListNode != null && C14434t4.m57298a(LockFreeLinkedListNode.f98593e, affected, this, lockFreeLinkedListNode) && z) {
                LockFreeLinkedListNode lockFreeLinkedListNode2 = this.newNode;
                LockFreeLinkedListNode lockFreeLinkedListNode3 = this.oldNext;
                Intrinsics.checkNotNull(lockFreeLinkedListNode3);
                lockFreeLinkedListNode2.m62212c(lockFreeLinkedListNode3);
            }
        }
    }

    /* renamed from: d */
    private final void m62209d(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0042, code lost:
    
        if (com.sunia.HTREnginev2.C14434t4.m57298a(r4, r3, r2, ((com.sunia.HTREnginev2.zjl) r5).f91878a) != false) goto L26;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.internal.LockFreeLinkedListNode m62210a(kotlinx.coroutines.internal.OpDescriptor r9) {
        /*
            r8 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.internal.LockFreeLinkedListNode.f98594f
            java.lang.Object r0 = r0.get(r8)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r0 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r0
            r1 = 0
            r2 = r0
        La:
            r3 = r1
        Lb:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = kotlinx.coroutines.internal.LockFreeLinkedListNode.f98593e
            java.lang.Object r5 = r4.get(r2)
            if (r5 != r8) goto L20
            if (r0 != r2) goto L16
            return r2
        L16:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = kotlinx.coroutines.internal.LockFreeLinkedListNode.f98594f
            boolean r0 = com.sunia.HTREnginev2.C14434t4.m57298a(r1, r8, r0, r2)
            if (r0 != 0) goto L1f
            goto L0
        L1f:
            return r2
        L20:
            boolean r6 = r8.isRemoved()
            if (r6 == 0) goto L27
            return r1
        L27:
            if (r5 != r9) goto L2a
            return r2
        L2a:
            boolean r6 = r5 instanceof kotlinx.coroutines.internal.OpDescriptor
            if (r6 == 0) goto L34
            kotlinx.coroutines.internal.OpDescriptor r5 = (kotlinx.coroutines.internal.OpDescriptor) r5
            r5.perform(r2)
            goto L0
        L34:
            boolean r6 = r5 instanceof com.sunia.HTREnginev2.zjl
            if (r6 == 0) goto L50
            if (r3 == 0) goto L47
            com.sunia.HTREnginev2.zjl r5 = (com.sunia.HTREnginev2.zjl) r5
            kotlinx.coroutines.internal.LockFreeLinkedListNode r5 = r5.f91878a
            boolean r2 = com.sunia.HTREnginev2.C14434t4.m57298a(r4, r3, r2, r5)
            if (r2 != 0) goto L45
            goto L0
        L45:
            r2 = r3
            goto La
        L47:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = kotlinx.coroutines.internal.LockFreeLinkedListNode.f98594f
            java.lang.Object r2 = r4.get(r2)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r2 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r2
            goto Lb
        L50:
            java.lang.String r3 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5, r3)
            r3 = r5
            kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
            r7 = r3
            r3 = r2
            r2 = r7
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeLinkedListNode.m62210a(kotlinx.coroutines.internal.OpDescriptor):kotlinx.coroutines.internal.LockFreeLinkedListNode");
    }

    public final void addLast(@NotNull LockFreeLinkedListNode node) {
        do {
        } while (!getPrevNode().addNext(node, this));
    }

    public final boolean addLastIf(@NotNull LockFreeLinkedListNode node, @NotNull Function0<Boolean> condition) {
        int tryCondAddNext;
        LockFreeLinkedListNode$makeCondAddOp$1 lockFreeLinkedListNode$makeCondAddOp$1 = new LockFreeLinkedListNode$makeCondAddOp$1(node, condition);
        do {
            tryCondAddNext = getPrevNode().tryCondAddNext(node, this, lockFreeLinkedListNode$makeCondAddOp$1);
            if (tryCondAddNext == 1) {
                return true;
            }
        } while (tryCondAddNext != 2);
        return false;
    }

    @PublishedApi
    public final boolean addNext(@NotNull LockFreeLinkedListNode node, @NotNull LockFreeLinkedListNode next) {
        f98594f.lazySet(node, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98593e;
        atomicReferenceFieldUpdater.lazySet(node, next);
        if (!C14434t4.m57298a(atomicReferenceFieldUpdater, this, next, node)) {
            return false;
        }
        node.m62212c(next);
        return true;
    }

    public final boolean addOneIfEmpty(@NotNull LockFreeLinkedListNode node) {
        f98594f.lazySet(node, this);
        f98593e.lazySet(node, this);
        while (getNext() == this) {
            if (C14434t4.m57298a(f98593e, this, this, node)) {
                node.m62212c(this);
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final LockFreeLinkedListNode m62211b(LockFreeLinkedListNode current) {
        while (current.isRemoved()) {
            current = (LockFreeLinkedListNode) f98594f.get(current);
        }
        return current;
    }

    /* renamed from: c */
    public final void m62212c(LockFreeLinkedListNode next) {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98594f;
        do {
            lockFreeLinkedListNode = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(next);
            if (getNext() != next) {
                return;
            }
        } while (!C14434t4.m57298a(f98594f, next, lockFreeLinkedListNode, this));
        if (isRemoved()) {
            next.m62210a(null);
        }
    }

    /* renamed from: e */
    public final zjl m62213e() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98595g;
        zjl zjlVar = (zjl) atomicReferenceFieldUpdater.get(this);
        if (zjlVar != null) {
            return zjlVar;
        }
        zjl zjlVar2 = new zjl(this);
        atomicReferenceFieldUpdater.lazySet(this, zjlVar2);
        return zjlVar2;
    }

    @NotNull
    public final Object getNext() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98593e;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof OpDescriptor)) {
                return obj;
            }
            ((OpDescriptor) obj).perform(this);
        }
    }

    @NotNull
    public final LockFreeLinkedListNode getNextNode() {
        return LockFreeLinkedListKt.unwrap(getNext());
    }

    @NotNull
    public final LockFreeLinkedListNode getPrevNode() {
        LockFreeLinkedListNode m62210a = m62210a(null);
        return m62210a == null ? m62211b((LockFreeLinkedListNode) f98594f.get(this)) : m62210a;
    }

    public boolean isRemoved() {
        return getNext() instanceof zjl;
    }

    @PublishedApi
    @NotNull
    public final CondAddOp makeCondAddOp(@NotNull LockFreeLinkedListNode node, @NotNull Function0<Boolean> condition) {
        return new LockFreeLinkedListNode$makeCondAddOp$1(node, condition);
    }

    @Nullable
    public LockFreeLinkedListNode nextIfRemoved() {
        Object next = getNext();
        zjl zjlVar = next instanceof zjl ? (zjl) next : null;
        if (zjlVar != null) {
            return zjlVar.f91878a;
        }
        return null;
    }

    /* renamed from: remove */
    public boolean mo74190remove() {
        return removeOrNext() == null;
    }

    @PublishedApi
    @Nullable
    public final LockFreeLinkedListNode removeOrNext() {
        Object next;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        do {
            next = getNext();
            if (next instanceof zjl) {
                return ((zjl) next).f91878a;
            }
            if (next == this) {
                return (LockFreeLinkedListNode) next;
            }
            Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
        } while (!C14434t4.m57298a(f98593e, this, next, lockFreeLinkedListNode.m62213e()));
        lockFreeLinkedListNode.m62210a(null);
        return null;
    }

    @NotNull
    public String toString() {
        return new PropertyReference0Impl(this) { // from class: kotlinx.coroutines.internal.LockFreeLinkedListNode$toString$1
            @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
            @Nullable
            public Object get() {
                return DebugStringsKt.getClassSimpleName(this.receiver);
            }
        } + '@' + DebugStringsKt.getHexAddress(this);
    }

    @PublishedApi
    public final int tryCondAddNext(@NotNull LockFreeLinkedListNode node, @NotNull LockFreeLinkedListNode next, @NotNull CondAddOp condAdd) {
        f98594f.lazySet(node, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f98593e;
        atomicReferenceFieldUpdater.lazySet(node, next);
        condAdd.oldNext = next;
        if (C14434t4.m57298a(atomicReferenceFieldUpdater, this, next, condAdd)) {
            return condAdd.perform(this) == null ? 1 : 2;
        }
        return 0;
    }

    public final void validateNode$kotlinx_coroutines_core(@NotNull LockFreeLinkedListNode prev, @NotNull LockFreeLinkedListNode next) {
    }
}
