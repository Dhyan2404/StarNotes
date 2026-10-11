package net.p110sf.saxon.pattern;

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
import net.p110sf.saxon.pattern.NamespaceTest;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.tree.tiny.NodeVectorTree;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public final class NamespaceTest extends NodeTest implements QNameTest {

    /* renamed from: i */
    public final NamePool f100912i;

    /* renamed from: j */
    public final int f100913j;

    /* renamed from: k */
    public final UType f100914k;

    /* renamed from: l */
    public final String f100915l;

    public NamespaceTest(NamePool namePool, int i, String str) {
        this.f100912i = namePool;
        this.f100913j = i;
        this.f100915l = str;
        this.f100914k = UType.fromTypeCode(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ boolean m63444d(int[] iArr, byte[] bArr, int i) {
        int i2 = iArr[i] & 1048575;
        return i2 != -1 && (bArr[i] & 15) == this.f100913j && this.f100915l.equals(this.f100912i.getURI(i2));
    }

    public boolean equals(Object obj) {
        if (obj instanceof NamespaceTest) {
            NamespaceTest namespaceTest = (NamespaceTest) obj;
            if (namespaceTest.f100912i == this.f100912i && namespaceTest.f100913j == this.f100913j && namespaceTest.f100915l.equals(this.f100915l)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        Optional<String> explainMismatch = super.explainMismatch(item, typeHierarchy);
        return explainMismatch.isPresent() ? explainMismatch : Optional.of("The node is in the wrong namespace");
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public String exportQNameTest() {
        return "Q{" + this.f100915l + "}*";
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public String generateJavaScriptNameTest(int i) {
        return "q.uri==='" + ExpressionPresenter.jsEscape(this.f100915l) + CloudStorageConstants.SINGLE_QUOTES;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public final double getDefaultPriority() {
        return -0.25d;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String getFullAlphaCode() {
        return getBasicAlphaCode() + " nQ{" + this.f100915l + "}*";
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public IntPredicateProxy getMatcher(NodeVectorTree nodeVectorTree) {
        final byte[] nodeKindArray = nodeVectorTree.getNodeKindArray();
        final int[] nameCodeArray = nodeVectorTree.getNameCodeArray();
        return IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.osj
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63444d;
                m63444d = NamespaceTest.this.m63444d(nameCodeArray, nodeKindArray, i);
                return m63444d;
            }
        });
    }

    public String getNamespaceURI() {
        return this.f100915l;
    }

    public int getNodeKind() {
        return this.f100913j;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return this.f100913j;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public Optional<IntSet> getRequiredNodeNames() {
        return Optional.empty();
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return this.f100914k;
    }

    public int hashCode() {
        return this.f100915l.hashCode() << (this.f100913j + 5);
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean matches(int i, NodeName nodeName, SchemaType schemaType) {
        return nodeName != null && nodeName.hasURI(this.f100915l);
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.pattern.NodePredicate
    public boolean test(NodeInfo nodeInfo) {
        return nodeInfo.getNodeKind() == this.f100913j && nodeInfo.getURI().equals(this.f100915l);
    }

    public String toString() {
        int i = this.f100913j;
        if (i == 1) {
            return "Q{" + this.f100915l + "}*";
        }
        if (i == 2) {
            return "@Q{" + this.f100915l + "}*";
        }
        return "(*" + this.f100913j + "*)Q{" + this.f100915l + "}*";
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public boolean matches(StructuredQName structuredQName) {
        return structuredQName.hasURI(this.f100915l);
    }
}
