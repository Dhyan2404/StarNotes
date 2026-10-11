package net.p110sf.saxon.pattern;

import java.util.function.IntPredicate;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntPredicateLambda;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.tree.tiny.NodeVectorTree;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public final class AnyNodeTest extends NodeTest implements QNameTest {

    /* renamed from: i */
    public static final AnyNodeTest f100880i = new AnyNodeTest();

    /* renamed from: d */
    public static /* synthetic */ boolean m63418d(byte[] bArr, int i) {
        return bArr[i] != 12;
    }

    public static AnyNodeTest getInstance() {
        return f100880i;
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public String exportQNameTest() {
        return "*";
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public String generateJavaScriptNameTest(int i) {
        return "true";
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public final double getDefaultPriority() {
        return -0.5d;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public IntPredicateProxy getMatcher(NodeVectorTree nodeVectorTree) {
        final byte[] nodeKindArray = nodeVectorTree.getNodeKindArray();
        return IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.tb
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63418d;
                m63418d = AnyNodeTest.m63418d(nodeKindArray, i);
                return m63418d;
            }
        });
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return UType.ANY_NODE;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean matches(int i, NodeName nodeName, SchemaType schemaType) {
        return i != 12;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.pattern.NodePredicate
    public boolean test(NodeInfo nodeInfo) {
        return true;
    }

    public String toString() {
        return "node()";
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public boolean matches(StructuredQName structuredQName) {
        return true;
    }
}
