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
import net.p110sf.saxon.pattern.LocalNameTest;
import net.p110sf.saxon.tree.tiny.NodeVectorTree;
import net.p110sf.saxon.tree.tiny.TinyTree;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public final class LocalNameTest extends NodeTest implements QNameTest {

    /* renamed from: i */
    public final NamePool f100900i;

    /* renamed from: j */
    public final int f100901j;

    /* renamed from: k */
    public final String f100902k;

    /* renamed from: l */
    public final UType f100903l;

    public LocalNameTest(NamePool namePool, int i, String str) {
        this.f100900i = namePool;
        this.f100901j = i;
        this.f100902k = str;
        this.f100903l = UType.fromTypeCode(i);
    }

    /* renamed from: f */
    public static /* synthetic */ boolean m63431f(int i) {
        return false;
    }

    /* renamed from: g */
    public static /* synthetic */ boolean m63432g(IntSet intSet, int[] iArr, byte[] bArr, int i) {
        return intSet.contains(iArr[i] & 1048575) && (bArr[i] & 15) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ boolean m63433h(byte[] bArr, int[] iArr, int i) {
        return (bArr[i] & 15) == this.f100901j && this.f100902k.equals(this.f100900i.getLocalName(iArr[i] & 1048575));
    }

    public boolean equals(Object obj) {
        if (obj instanceof LocalNameTest) {
            LocalNameTest localNameTest = (LocalNameTest) obj;
            if (localNameTest.f100901j == this.f100901j && localNameTest.f100902k.equals(this.f100902k)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        Optional<String> explainMismatch = super.explainMismatch(item, typeHierarchy);
        return explainMismatch.isPresent() ? explainMismatch : Optional.of("The node has the wrong local name");
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public String exportQNameTest() {
        return "*:" + this.f100902k;
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public String generateJavaScriptNameTest(int i) {
        return "q.local==='" + this.f100902k + CloudStorageConstants.SINGLE_QUOTES;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public final double getDefaultPriority() {
        return -0.25d;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String getFullAlphaCode() {
        return getBasicAlphaCode() + " n*:" + this.f100902k;
    }

    public String getLocalName() {
        return this.f100902k;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public IntPredicateProxy getMatcher(NodeVectorTree nodeVectorTree) {
        final byte[] nodeKindArray = nodeVectorTree.getNodeKindArray();
        final int[] nameCodeArray = nodeVectorTree.getNameCodeArray();
        if (this.f100901j != 1 || !(nodeVectorTree instanceof TinyTree)) {
            return IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.q0j
                @Override // java.util.function.IntPredicate
                public final boolean test(int i) {
                    boolean m63433h;
                    m63433h = LocalNameTest.this.m63433h(nodeKindArray, nameCodeArray, i);
                    return m63433h;
                }
            });
        }
        final IntSet intSet = ((TinyTree) nodeVectorTree).getLocalNameIndex().get(this.f100902k);
        return intSet == null ? IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.o0j
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63431f;
                m63431f = LocalNameTest.m63431f(i);
                return m63431f;
            }
        }) : IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.p0j
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63432g;
                m63432g = LocalNameTest.m63432g(IntSet.this, nameCodeArray, nodeKindArray, i);
                return m63432g;
            }
        });
    }

    public NamePool getNamePool() {
        return this.f100900i;
    }

    public int getNodeKind() {
        return this.f100901j;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return this.f100901j;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public Optional<IntSet> getRequiredNodeNames() {
        return Optional.empty();
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return this.f100903l;
    }

    public int hashCode() {
        return this.f100902k.hashCode() ^ (this.f100901j << 20);
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean matches(int i, NodeName nodeName, SchemaType schemaType) {
        return nodeName != null && i == this.f100901j && this.f100902k.equals(nodeName.getLocalPart());
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.pattern.NodePredicate
    public boolean test(NodeInfo nodeInfo) {
        return this.f100902k.equals(nodeInfo.getLocalPart()) && this.f100901j == nodeInfo.getNodeKind();
    }

    public String toString() {
        int i = this.f100901j;
        if (i == 1) {
            return "*:" + this.f100902k;
        }
        if (i == 2) {
            return "@*:" + this.f100902k;
        }
        return "(*" + this.f100901j + "*):" + this.f100902k;
    }

    @Override // net.p110sf.saxon.pattern.QNameTest
    public boolean matches(StructuredQName structuredQName) {
        return this.f100902k.equals(structuredQName.getLocalPart());
    }
}
