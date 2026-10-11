package net.p110sf.saxon.pattern;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.Optional;
import net.p110sf.saxon.expr.parser.Token;
import net.p110sf.saxon.ma.map.DictionaryMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntExceptPredicate;
import net.p110sf.saxon.p111z.IntIntersectionPredicate;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.p111z.IntUnionPredicate;
import net.p110sf.saxon.tree.tiny.NodeVectorTree;
import net.p110sf.saxon.type.AnySimpleType;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class CombinedNodeTest extends NodeTest {

    /* renamed from: i */
    public final NodeTest f100884i;

    /* renamed from: j */
    public final NodeTest f100885j;

    /* renamed from: k */
    public final int f100886k;

    public CombinedNodeTest(NodeTest nodeTest, int i, NodeTest nodeTest2) {
        this.f100884i = nodeTest;
        this.f100886k = i;
        this.f100885j = nodeTest2;
    }

    /* renamed from: c */
    public static String m63420c(NameTest nameTest, ContentTypeTest contentTypeTest) {
        if (nameTest.getNodeKind() == 1) {
            if (contentTypeTest.getContentType() == Untyped.getInstance() && contentTypeTest.isNillable()) {
                return null;
            }
            return contentTypeTest.getContentType().getEQName();
        }
        if (nameTest.getNodeKind() != 2) {
            throw new IllegalStateException();
        }
        if (contentTypeTest.getContentType() == BuiltInAtomicType.UNTYPED_ATOMIC) {
            return null;
        }
        return contentTypeTest.getContentType().getEQName();
    }

    public void addTypeDetails(DictionaryMap dictionaryMap) {
        SchemaType schemaType;
        if ((this.f100884i instanceof NameTest) && this.f100886k == 23) {
            dictionaryMap.initialPut(GoogleApiAvailabilityLight.f29016b, new StringValue(this.f100884i.getMatchingNodeName().getEQName()));
            NodeTest nodeTest = this.f100885j;
            if (!(nodeTest instanceof ContentTypeTest) || (schemaType = ((ContentTypeTest) nodeTest).getSchemaType()) == Untyped.getInstance() || schemaType == BuiltInAtomicType.UNTYPED_ATOMIC) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(schemaType.getEQName());
            sb.append(this.f100885j.isNillable() ? "?" : "");
            dictionaryMap.initialPut("c", new StringValue(sb.toString()));
        }
    }

    /* renamed from: d */
    public final String m63421d(boolean z) {
        String str;
        NodeTest nodeTest = this.f100884i;
        if (!(nodeTest instanceof NameTest) || this.f100886k != 23) {
            String obj = nodeTest == null ? "item()" : nodeTest.toString();
            NodeTest nodeTest2 = this.f100885j;
            return '(' + obj + ' ' + Token.tokens[this.f100886k] + ' ' + (nodeTest2 != null ? nodeTest2.toString() : "item()") + ')';
        }
        String str2 = nodeTest.getPrimitiveType() == 1 ? "element(" : "attribute(";
        NodeTest nodeTest3 = this.f100885j;
        if (nodeTest3 instanceof ContentTypeTest) {
            SchemaType schemaType = ((ContentTypeTest) nodeTest3).getSchemaType();
            if (z) {
                schemaType = TypeHierarchy.getNearestNamedType(schemaType);
            }
            str = ", " + schemaType.getEQName();
            if (this.f100885j.isNillable()) {
                str = str + "?";
            }
        } else {
            str = "";
        }
        return str2 + this.f100884i.getMatchingNodeName().getEQName() + str + ')';
    }

    public boolean equals(Object obj) {
        if (obj instanceof CombinedNodeTest) {
            CombinedNodeTest combinedNodeTest = (CombinedNodeTest) obj;
            if (combinedNodeTest.f100884i.equals(this.f100884i) && combinedNodeTest.f100885j.equals(this.f100885j) && combinedNodeTest.f100886k == this.f100886k) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        Optional<String> explainMismatch = super.explainMismatch(item, typeHierarchy);
        if (explainMismatch.isPresent()) {
            return explainMismatch;
        }
        if (this.f100886k == 23) {
            NodeInfo nodeInfo = (NodeInfo) item;
            if (!this.f100884i.test(nodeInfo)) {
                return this.f100884i.explainMismatch(item, typeHierarchy);
            }
            if (!this.f100885j.test(nodeInfo)) {
                return this.f100885j.explainMismatch(item, typeHierarchy);
            }
        }
        return Optional.empty();
    }

    public NodeTest[] getComponentNodeTests() {
        return new NodeTest[]{this.f100884i, this.f100885j};
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public SchemaType getContentType() {
        SchemaType contentType = this.f100884i.getContentType();
        SchemaType contentType2 = this.f100885j.getContentType();
        if (contentType.isSameType(contentType2)) {
            return contentType;
        }
        if (this.f100886k == 23) {
            if ((contentType2 instanceof AnyType) || ((contentType2 instanceof AnySimpleType) && contentType.isSimpleType())) {
                return contentType;
            }
            if ((contentType instanceof AnyType) || ((contentType instanceof AnySimpleType) && contentType2.isSimpleType())) {
                return contentType2;
            }
        }
        return AnyType.getInstance();
    }

    public String getContentTypeForAlphaCode() {
        NodeTest nodeTest = this.f100884i;
        if ((nodeTest instanceof NameTest) && this.f100886k == 23) {
            NodeTest nodeTest2 = this.f100885j;
            if (nodeTest2 instanceof ContentTypeTest) {
                return m63420c((NameTest) nodeTest, (ContentTypeTest) nodeTest2);
            }
        }
        NodeTest nodeTest3 = this.f100885j;
        if ((nodeTest3 instanceof NameTest) && this.f100886k == 23 && (nodeTest instanceof ContentTypeTest)) {
            return m63420c((NameTest) nodeTest3, (ContentTypeTest) nodeTest);
        }
        return null;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        return this.f100886k == 1 ? this.f100884i.getDefaultPriority() : this.f100884i instanceof NameTest ? 0.25d : 0.125d;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public int getFingerprint() {
        int fingerprint = this.f100884i.getFingerprint();
        int fingerprint2 = this.f100885j.getFingerprint();
        if (fingerprint == fingerprint2) {
            return fingerprint;
        }
        if (fingerprint2 == -1 && this.f100886k == 23) {
            return fingerprint;
        }
        if (fingerprint == -1 && this.f100886k == 23) {
            return fingerprint2;
        }
        return -1;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public IntPredicateProxy getMatcher(NodeVectorTree nodeVectorTree) {
        int i = this.f100886k;
        if (i == 1) {
            return IntUnionPredicate.makeUnion(this.f100884i.getMatcher(nodeVectorTree), this.f100885j.getMatcher(nodeVectorTree));
        }
        if (i == 23) {
            return IntIntersectionPredicate.makeIntersection(this.f100884i.getMatcher(nodeVectorTree), this.f100885j.getMatcher(nodeVectorTree));
        }
        if (i == 24) {
            return IntExceptPredicate.makeDifference(this.f100884i.getMatcher(nodeVectorTree), this.f100885j.getMatcher(nodeVectorTree));
        }
        throw new IllegalArgumentException("Unknown operator in Combined Node Test");
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public StructuredQName getMatchingNodeName() {
        StructuredQName matchingNodeName = this.f100884i.getMatchingNodeName();
        StructuredQName matchingNodeName2 = this.f100885j.getMatchingNodeName();
        if (matchingNodeName != null && matchingNodeName.equals(matchingNodeName2)) {
            return matchingNodeName;
        }
        if (matchingNodeName == null && this.f100886k == 23) {
            return matchingNodeName2;
        }
        if (matchingNodeName2 == null && this.f100886k == 23) {
            return matchingNodeName;
        }
        return null;
    }

    public NodeTest getOperand(int i) {
        return i == 0 ? this.f100884i : this.f100885j;
    }

    public int getOperator() {
        return this.f100886k;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        UType uType = getUType();
        if (uType.equals(UType.ELEMENT)) {
            return 1;
        }
        if (uType.equals(UType.ATTRIBUTE)) {
            return 2;
        }
        return uType.equals(UType.DOCUMENT) ? 9 : 0;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public Optional<IntSet> getRequiredNodeNames() {
        Optional<IntSet> requiredNodeNames = this.f100884i.getRequiredNodeNames();
        Optional<IntSet> requiredNodeNames2 = this.f100885j.getRequiredNodeNames();
        if (!requiredNodeNames.isPresent() || !requiredNodeNames2.isPresent()) {
            return Optional.empty();
        }
        IntSet intSet = requiredNodeNames.get();
        IntSet intSet2 = requiredNodeNames2.get();
        int i = this.f100886k;
        if (i == 1) {
            return Optional.of(intSet.union(intSet2));
        }
        if (i == 23) {
            return Optional.of(intSet.intersect(intSet2));
        }
        if (i == 24) {
            return Optional.of(intSet.except(intSet2));
        }
        throw new IllegalStateException();
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        UType uType = this.f100884i.getUType();
        UType uType2 = this.f100885j.getUType();
        int i = this.f100886k;
        if (i == 1) {
            return uType.union(uType2);
        }
        if (i == 23) {
            return uType.intersection(uType2);
        }
        if (i == 24) {
            return uType;
        }
        throw new IllegalArgumentException("Unknown operator in Combined Node Test");
    }

    public int hashCode() {
        return this.f100885j.hashCode() ^ this.f100884i.hashCode();
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public boolean isAtomizable(TypeHierarchy typeHierarchy) {
        int i = this.f100886k;
        if (i == 1) {
            return this.f100884i.isAtomizable(typeHierarchy) || this.f100885j.isAtomizable(typeHierarchy);
        }
        if (i == 23) {
            return this.f100884i.isAtomizable(typeHierarchy) && this.f100885j.isAtomizable(typeHierarchy);
        }
        if (i != 24) {
            return true;
        }
        return this.f100884i.isAtomizable(typeHierarchy);
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean isNillable() {
        return this.f100884i.isNillable() && this.f100885j.isNillable();
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean matches(int i, NodeName nodeName, SchemaType schemaType) {
        NodeTest nodeTest;
        int i2 = this.f100886k;
        if (i2 == 1) {
            NodeTest nodeTest2 = this.f100884i;
            return nodeTest2 == null || this.f100885j == null || nodeTest2.matches(i, nodeName, schemaType) || this.f100885j.matches(i, nodeName, schemaType);
        }
        if (i2 != 23) {
            if (i2 != 24) {
                throw new IllegalArgumentException("Unknown operator in Combined Node Test");
            }
            NodeTest nodeTest3 = this.f100884i;
            return ((nodeTest3 != null && !nodeTest3.matches(i, nodeName, schemaType)) || (nodeTest = this.f100885j) == null || nodeTest.matches(i, nodeName, schemaType)) ? false : true;
        }
        NodeTest nodeTest4 = this.f100884i;
        if (nodeTest4 != null && !nodeTest4.matches(i, nodeName, schemaType)) {
            return false;
        }
        NodeTest nodeTest5 = this.f100885j;
        return nodeTest5 == null || nodeTest5.matches(i, nodeName, schemaType);
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.pattern.NodePredicate
    public boolean test(NodeInfo nodeInfo) {
        NodeTest nodeTest;
        int i = this.f100886k;
        if (i == 1) {
            NodeTest nodeTest2 = this.f100884i;
            return nodeTest2 == null || this.f100885j == null || nodeTest2.test(nodeInfo) || this.f100885j.test(nodeInfo);
        }
        if (i != 23) {
            if (i != 24) {
                throw new IllegalArgumentException("Unknown operator in Combined Node Test");
            }
            NodeTest nodeTest3 = this.f100884i;
            return ((nodeTest3 != null && !nodeTest3.test(nodeInfo)) || (nodeTest = this.f100885j) == null || nodeTest.test(nodeInfo)) ? false : true;
        }
        NodeTest nodeTest4 = this.f100884i;
        if (nodeTest4 != null && !nodeTest4.test(nodeInfo)) {
            return false;
        }
        NodeTest nodeTest5 = this.f100885j;
        return nodeTest5 == null || nodeTest5.test(nodeInfo);
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String toExportString() {
        return m63421d(true);
    }

    public String toString() {
        return m63421d(false);
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public AtomicType getAtomizedItemType() {
        AtomicType atomizedItemType = this.f100884i.getAtomizedItemType();
        AtomicType atomizedItemType2 = this.f100885j.getAtomizedItemType();
        if (atomizedItemType.isSameType(atomizedItemType2)) {
            return atomizedItemType;
        }
        if (this.f100886k == 23) {
            BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.ANY_ATOMIC;
            if (atomizedItemType2.equals(builtInAtomicType)) {
                return atomizedItemType;
            }
            if (atomizedItemType.equals(builtInAtomicType)) {
                return atomizedItemType2;
            }
        }
        return BuiltInAtomicType.ANY_ATOMIC;
    }
}
