package net.p110sf.saxon.pattern;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Optional;
import java.util.function.IntPredicate;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntPredicateLambda;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.p111z.IntSingletonSet;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.tree.tiny.NodeVectorTree;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class NameTest extends NodeTest implements QNameTest {

    /* renamed from: i */
    public final int f100906i;

    /* renamed from: j */
    public final int f100907j;

    /* renamed from: k */
    public final UType f100908k;

    /* renamed from: l */
    public final NamePool f100909l;

    /* renamed from: m */
    public String f100910m;

    /* renamed from: n */
    public String f100911n;

    public NameTest(int i, String str, String str2, NamePool namePool) {
        this.f100910m = str;
        this.f100911n = str2;
        this.f100906i = i;
        this.f100907j = namePool.allocateFingerprint(str, str2) & 1048575;
        this.f100909l = namePool;
        this.f100908k = UType.fromTypeCode(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ boolean m63441e(int[] iArr, byte[] bArr, int i) {
        return (iArr[i] & 1048575) == this.f100907j && (bArr[i] & 15) == this.f100906i;
    }

    /* renamed from: d */
    public final void m63442d() {
        if (this.f100910m == null || this.f100911n == null) {
            StructuredQName unprefixedQName = this.f100909l.getUnprefixedQName(this.f100907j);
            this.f100910m = unprefixedQName.getURI();
            this.f100911n = unprefixedQName.getLocalPart();
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof NameTest) {
            NameTest nameTest = (NameTest) obj;
            if (nameTest.f100909l == this.f100909l && nameTest.f100906i == this.f100906i && nameTest.f100907j == this.f100907j) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        Optional<String> explainMismatch = super.explainMismatch(item, typeHierarchy);
        return explainMismatch.isPresent() ? explainMismatch : Optional.of("The node has the wrong name");
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public String exportQNameTest() {
        return getMatchingNodeName().getEQName();
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public String generateJavaScriptNameTest(int i) {
        m63442d();
        return "q.uri==='" + ExpressionPresenter.jsEscape(this.f100910m) + "'&&q.local==='" + this.f100911n + CloudStorageConstants.SINGLE_QUOTES;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public final double getDefaultPriority() {
        return 0.0d;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public int getFingerprint() {
        return this.f100907j;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String getFullAlphaCode() {
        return getBasicAlphaCode() + " n" + getMatchingNodeName().getEQName();
    }

    public String getLocalPart() {
        m63442d();
        return this.f100911n;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public IntPredicateProxy getMatcher(NodeVectorTree nodeVectorTree) {
        final byte[] nodeKindArray = nodeVectorTree.getNodeKindArray();
        final int[] nameCodeArray = nodeVectorTree.getNameCodeArray();
        return IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.fsj
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63441e;
                m63441e = NameTest.this.m63441e(nameCodeArray, nodeKindArray, i);
                return m63441e;
            }
        });
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public StructuredQName getMatchingNodeName() {
        m63442d();
        return new StructuredQName("", this.f100910m, this.f100911n);
    }

    public NamePool getNamePool() {
        return this.f100909l;
    }

    public String getNamespaceURI() {
        m63442d();
        return this.f100910m;
    }

    public int getNodeKind() {
        return this.f100906i;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return this.f100906i;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public Optional<IntSet> getRequiredNodeNames() {
        return Optional.of(new IntSingletonSet(this.f100907j));
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return this.f100908k;
    }

    public int hashCode() {
        return this.f100907j ^ (this.f100906i << 20);
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean matches(int i, NodeName nodeName, SchemaType schemaType) {
        if (i != this.f100906i) {
            return false;
        }
        if (nodeName.hasFingerprint()) {
            return nodeName.getFingerprint() == this.f100907j;
        }
        m63442d();
        return nodeName.hasURI(this.f100910m) && nodeName.getLocalPart().equals(this.f100911n);
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.pattern.NodePredicate
    public boolean test(NodeInfo nodeInfo) {
        if (nodeInfo.getNodeKind() != this.f100906i) {
            return false;
        }
        if (nodeInfo.hasFingerprint()) {
            return nodeInfo.getFingerprint() == this.f100907j;
        }
        m63442d();
        return this.f100911n.equals(nodeInfo.getLocalPart()) && this.f100910m.equals(nodeInfo.getURI());
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public String toShortString() {
        int i = this.f100906i;
        if (i == 1) {
            return getNamespaceURI().isEmpty() ? this.f100909l.getLocalName(getFingerprint()) : toString();
        }
        if (i != 2) {
            return toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("@");
        sb.append(getNamespaceURI().isEmpty() ? this.f100909l.getLocalName(getFingerprint()) : toString());
        return sb.toString();
    }

    public String toString() {
        int i = this.f100906i;
        if (i == 1) {
            return "element(" + this.f100909l.getEQName(this.f100907j) + MotionUtils.f31762d;
        }
        if (i == 2) {
            return "attribute(" + this.f100909l.getEQName(this.f100907j) + MotionUtils.f31762d;
        }
        if (i == 7) {
            return "processing-instruction(" + this.f100909l.getLocalName(this.f100907j) + ')';
        }
        if (i != 13) {
            return this.f100909l.getEQName(this.f100907j);
        }
        return "namespace-node(" + this.f100909l.getLocalName(this.f100907j) + ')';
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public boolean matches(StructuredQName structuredQName) {
        m63442d();
        return structuredQName.getLocalPart().equals(this.f100911n) && structuredQName.hasURI(this.f100910m);
    }

    public NameTest(int i, int i2, NamePool namePool) {
        this.f100910m = null;
        this.f100911n = null;
        this.f100906i = i;
        this.f100907j = i2 & 1048575;
        this.f100909l = namePool;
        this.f100908k = UType.fromTypeCode(i);
    }

    public NameTest(int i, NodeName nodeName, NamePool namePool) {
        this.f100910m = null;
        this.f100911n = null;
        this.f100910m = nodeName.getURI();
        this.f100911n = nodeName.getLocalPart();
        this.f100906i = i;
        this.f100907j = nodeName.obtainFingerprint(namePool);
        this.f100909l = namePool;
        this.f100908k = UType.fromTypeCode(i);
    }
}
