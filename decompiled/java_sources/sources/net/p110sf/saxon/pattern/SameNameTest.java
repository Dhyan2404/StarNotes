package net.p110sf.saxon.pattern;

import com.google.android.material.motion.MotionUtils;
import java.util.Optional;
import java.util.function.IntPredicate;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntPredicateLambda;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.p111z.IntSingletonSet;
import net.p110sf.saxon.pattern.SameNameTest;
import net.p110sf.saxon.tree.tiny.NodeVectorTree;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class SameNameTest extends NodeTest implements QNameTest {

    /* renamed from: i */
    public final NodeInfo f100933i;

    public SameNameTest(NodeInfo nodeInfo) {
        this.f100933i = nodeInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ boolean m63470d(byte[] bArr, int[] iArr, NodeVectorTree nodeVectorTree, int i) {
        int i2 = bArr[i] & 15;
        if (i2 == 4) {
            i2 = 3;
        }
        if (i2 != this.f100933i.getNodeKind()) {
            return false;
        }
        return this.f100933i.hasFingerprint() ? (iArr[i] & 1048575) == this.f100933i.getFingerprint() : Navigator.haveSameName(nodeVectorTree.getNode(i), this.f100933i);
    }

    public boolean equals(Object obj) {
        return (obj instanceof SameNameTest) && test(((SameNameTest) obj).f100933i);
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public String exportQNameTest() {
        return "";
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public String generateJavaScriptNameTest(int i) {
        return "false";
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public final double getDefaultPriority() {
        return 0.0d;
    }

    public NameTest getEquivalentNameTest() {
        return new NameTest(this.f100933i.getNodeKind(), this.f100933i.getURI(), this.f100933i.getLocalPart(), this.f100933i.getConfiguration().getNamePool());
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public int getFingerprint() {
        return this.f100933i.hasFingerprint() ? this.f100933i.getFingerprint() : this.f100933i.getConfiguration().getNamePool().allocateFingerprint(this.f100933i.getURI(), this.f100933i.getLocalPart());
    }

    public String getLocalPart() {
        return this.f100933i.getLocalPart();
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public IntPredicateProxy getMatcher(final NodeVectorTree nodeVectorTree) {
        final byte[] nodeKindArray = nodeVectorTree.getNodeKindArray();
        final int[] nameCodeArray = nodeVectorTree.getNameCodeArray();
        return IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.n0m
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63470d;
                m63470d = SameNameTest.this.m63470d(nodeKindArray, nameCodeArray, nodeVectorTree, i);
                return m63470d;
            }
        });
    }

    public String getNamespaceURI() {
        return this.f100933i.getURI();
    }

    public int getNodeKind() {
        return this.f100933i.getNodeKind();
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return this.f100933i.getNodeKind();
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public Optional<IntSet> getRequiredNodeNames() {
        return Optional.of(new IntSingletonSet(getFingerprint()));
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return UType.fromTypeCode(this.f100933i.getNodeKind());
    }

    public int hashCode() {
        return this.f100933i.getLocalPart().hashCode() ^ ((this.f100933i.getNodeKind() << 20) ^ this.f100933i.getURI().hashCode());
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean matches(int i, NodeName nodeName, SchemaType schemaType) {
        if (i != this.f100933i.getNodeKind()) {
            return false;
        }
        return (nodeName.hasFingerprint() && this.f100933i.hasFingerprint()) ? nodeName.getFingerprint() == this.f100933i.getFingerprint() : nodeName.hasURI(this.f100933i.getURI()) && nodeName.getLocalPart().equals(this.f100933i.getLocalPart());
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.pattern.NodePredicate
    public boolean test(NodeInfo nodeInfo) {
        return nodeInfo == this.f100933i || (nodeInfo.getNodeKind() == this.f100933i.getNodeKind() && Navigator.haveSameName(nodeInfo, this.f100933i));
    }

    public String toString() {
        int nodeKind = this.f100933i.getNodeKind();
        if (nodeKind == 1) {
            return "element(" + NameOfNode.makeName(this.f100933i).getStructuredQName().getEQName() + MotionUtils.f31762d;
        }
        if (nodeKind == 2) {
            return "attribute(" + NameOfNode.makeName(this.f100933i).getStructuredQName().getEQName() + MotionUtils.f31762d;
        }
        if (nodeKind == 3) {
            return "text()";
        }
        if (nodeKind == 7) {
            return "processing-instruction(" + this.f100933i.getLocalPart() + ')';
        }
        if (nodeKind == 8) {
            return "comment()";
        }
        if (nodeKind == 9) {
            return "document-node()";
        }
        if (nodeKind != 13) {
            return "***";
        }
        return "namespace-node(" + this.f100933i.getLocalPart() + ')';
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public boolean matches(StructuredQName structuredQName) {
        return NameOfNode.makeName(this.f100933i).getStructuredQName().equals(structuredQName);
    }
}
