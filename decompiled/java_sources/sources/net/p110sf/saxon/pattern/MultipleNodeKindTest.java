package net.p110sf.saxon.pattern;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.function.Function;
import java.util.function.IntPredicate;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.p111z.IntPredicateLambda;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.pattern.MultipleNodeKindTest;
import net.p110sf.saxon.tree.tiny.NodeVectorTree;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.PrimitiveUType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public final class MultipleNodeKindTest extends NodeTest {
    public static final MultipleNodeKindTest CHILD_NODE;
    public static final MultipleNodeKindTest DOC_ELEM_ATTR;
    public static final MultipleNodeKindTest LEAF;
    public static final MultipleNodeKindTest PARENT_NODE;

    /* renamed from: i */
    public UType f100904i;

    /* renamed from: j */
    public int f100905j;

    static {
        UType uType = UType.DOCUMENT;
        UType uType2 = UType.ELEMENT;
        PARENT_NODE = new MultipleNodeKindTest(uType.union(uType2));
        UType union = uType.union(uType2);
        UType uType3 = UType.ATTRIBUTE;
        DOC_ELEM_ATTR = new MultipleNodeKindTest(union.union(uType3));
        UType uType4 = UType.TEXT;
        UType uType5 = UType.COMMENT;
        UType union2 = uType4.union(uType5);
        UType uType6 = UType.f102819PI;
        LEAF = new MultipleNodeKindTest(union2.union(uType6).union(UType.NAMESPACE).union(uType3));
        CHILD_NODE = new MultipleNodeKindTest(uType2.union(uType4).union(uType5).union(uType6));
    }

    public MultipleNodeKindTest(UType uType) {
        this.f100904i = uType;
        if (UType.DOCUMENT.overlaps(uType)) {
            this.f100905j |= 512;
        }
        if (UType.ELEMENT.overlaps(uType)) {
            this.f100905j |= 2;
        }
        if (UType.ATTRIBUTE.overlaps(uType)) {
            this.f100905j |= 4;
        }
        if (UType.TEXT.overlaps(uType)) {
            this.f100905j |= 8;
        }
        if (UType.COMMENT.overlaps(uType)) {
            this.f100905j |= 256;
        }
        if (UType.f102819PI.overlaps(uType)) {
            this.f100905j |= 128;
        }
        if (UType.NAMESPACE.overlaps(uType)) {
            this.f100905j |= 8192;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ boolean m63437g(byte[] bArr, int i) {
        int i2 = bArr[i] & 15;
        if (i2 == 4) {
            i2 = 3;
        }
        return (this.f100905j & (1 << i2)) != 0;
    }

    /* renamed from: h */
    public static /* synthetic */ String m63438h(ItemType itemType) {
        return ((NodeKindTest) itemType).toShortString();
    }

    public boolean equals(Object obj) {
        return (obj instanceof MultipleNodeKindTest) && this.f100904i.equals(((MultipleNodeKindTest) obj).f100904i);
    }

    /* renamed from: f */
    public final void m63439f(LinkedList<PrimitiveUType> linkedList, StringBuilder sb, Function<ItemType, String> function) {
        boolean z = true;
        if (linkedList.size() == 1) {
            sb.append(function.apply(linkedList.getFirst().toItemType()));
            return;
        }
        Iterator<PrimitiveUType> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            PrimitiveUType next = it2.next();
            sb.append(z ? '(' : '|');
            sb.append(function.apply(next.toItemType()));
            z = false;
        }
        sb.append(')');
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        return -0.5d;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public IntPredicateProxy getMatcher(NodeVectorTree nodeVectorTree) {
        final byte[] nodeKindArray = nodeVectorTree.getNodeKindArray();
        return IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.mqj
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63437g;
                m63437g = MultipleNodeKindTest.this.m63437g(nodeKindArray, i);
                return m63437g;
            }
        });
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return this.f100904i;
    }

    public int hashCode() {
        return this.f100904i.hashCode();
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean matches(int i, NodeName nodeName, SchemaType schemaType) {
        return (this.f100905j & (1 << i)) != 0;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.pattern.NodePredicate
    public boolean test(NodeInfo nodeInfo) {
        return (this.f100905j & (1 << nodeInfo.getNodeKind())) != 0;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String toExportString() {
        StringBuilder sb = new StringBuilder(64);
        m63439f(new LinkedList<>(this.f100904i.decompose()), sb, new Function() { // from class: com.sunia.HTREnginev2.jqj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ItemType) obj).toExportString();
            }
        });
        return sb.toString();
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public String toShortString() {
        if (this.f100905j == CHILD_NODE.f100905j) {
            return "node()";
        }
        StringBuilder sb = new StringBuilder(64);
        m63439f(new LinkedList<>(this.f100904i.decompose()), sb, new Function() { // from class: com.sunia.HTREnginev2.kqj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String m63438h;
                m63438h = MultipleNodeKindTest.m63438h((ItemType) obj);
                return m63438h;
            }
        });
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        m63439f(new LinkedList<>(this.f100904i.decompose()), sb, new Function() { // from class: com.sunia.HTREnginev2.lqj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String obj2;
                obj2 = ((ItemType) obj).toString();
                return obj2;
            }
        });
        return sb.toString();
    }
}
