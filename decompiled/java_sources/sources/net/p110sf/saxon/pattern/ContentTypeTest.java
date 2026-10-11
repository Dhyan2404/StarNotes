package net.p110sf.saxon.pattern;

import com.google.android.material.motion.MotionUtils;
import java.util.Optional;
import java.util.function.IntPredicate;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.functions.Nilled_1;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.p111z.IntPredicateLambda;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.pattern.ContentTypeTest;
import net.p110sf.saxon.tree.tiny.NodeVectorTree;
import net.p110sf.saxon.tree.tiny.TinyTree;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.ComplexVariety;
import net.p110sf.saxon.type.ListType;
import net.p110sf.saxon.type.MissingComponentException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.type.Untyped;

/* loaded from: classes11.dex */
public class ContentTypeTest extends NodeTest {

    /* renamed from: m */
    public static final /* synthetic */ boolean f100887m = false;

    /* renamed from: i */
    public final int f100888i;

    /* renamed from: j */
    public final SchemaType f100889j;

    /* renamed from: k */
    public final Configuration f100890k;

    /* renamed from: l */
    public boolean f100891l;

    public ContentTypeTest(int i, SchemaType schemaType, Configuration configuration, boolean z) {
        this.f100888i = i;
        this.f100889j = schemaType;
        this.f100890k = configuration;
        this.f100891l = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ boolean m63423d(byte[] bArr, NodeVectorTree nodeVectorTree, int i) {
        if ((bArr[i] & 15) == this.f100888i) {
            TinyTree tinyTree = (TinyTree) nodeVectorTree;
            if (m63424e(tinyTree.getSchemaType(i)) && (this.f100891l || !tinyTree.isNilled(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public final boolean m63424e(SchemaType schemaType) {
        if (schemaType == null) {
            return false;
        }
        if (this.f100889j == AnyType.getInstance() || schemaType.equals(this.f100889j)) {
            return true;
        }
        Affinity schemaTypeRelationship = this.f100890k.getTypeHierarchy().schemaTypeRelationship(schemaType, this.f100889j);
        return schemaTypeRelationship == Affinity.SAME_TYPE || schemaTypeRelationship == Affinity.SUBSUMED_BY;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ContentTypeTest) {
            ContentTypeTest contentTypeTest = (ContentTypeTest) obj;
            if (contentTypeTest.f100888i == this.f100888i && contentTypeTest.f100889j == this.f100889j && contentTypeTest.f100891l == this.f100891l) {
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
        NodeInfo nodeInfo = (NodeInfo) item;
        if (m63424e(nodeInfo.getSchemaType())) {
            return (!Nilled_1.isNilled(nodeInfo) || this.f100891l) ? Optional.empty() : Optional.of("The supplied node has xsi:nil='true', which the required type does not allow");
        }
        if (nodeInfo.getSchemaType() != Untyped.getInstance() && nodeInfo.getSchemaType() != BuiltInAtomicType.UNTYPED_ATOMIC) {
            return Optional.of("The supplied node has the wrong type annotation (" + nodeInfo.getSchemaType().getDescription() + MotionUtils.f31762d);
        }
        return Optional.of("The supplied node has not been schema-validated");
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public SchemaType getContentType() {
        return this.f100889j;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public final double getDefaultPriority() {
        return 0.0d;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public IntPredicateProxy getMatcher(final NodeVectorTree nodeVectorTree) {
        final byte[] nodeKindArray = nodeVectorTree.getNodeKindArray();
        return IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.pbe
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63423d;
                m63423d = ContentTypeTest.this.m63423d(nodeKindArray, nodeVectorTree, i);
                return m63423d;
            }
        });
    }

    public int getNodeKind() {
        return this.f100888i;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return this.f100888i;
    }

    public SchemaType getSchemaType() {
        return this.f100889j;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return this.f100888i == 1 ? UType.ELEMENT : UType.ATTRIBUTE;
    }

    public int hashCode() {
        return this.f100889j.hashCode() ^ (this.f100888i << 20);
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public boolean isAtomizable(TypeHierarchy typeHierarchy) {
        return (this.f100889j.isComplexType() && ((ComplexType) this.f100889j).getVariety() == ComplexVariety.ELEMENT_ONLY) ? false : true;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean isNillable() {
        return this.f100891l;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean matches(int i, NodeName nodeName, SchemaType schemaType) {
        return this.f100888i == i && m63424e(schemaType);
    }

    public void setNillable(boolean z) {
        this.f100891l = z;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.pattern.NodePredicate
    public boolean test(NodeInfo nodeInfo) {
        return nodeInfo.getNodeKind() == this.f100888i && m63424e(nodeInfo.getSchemaType()) && (this.f100891l || !Nilled_1.isNilled(nodeInfo));
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String toExportString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f100888i == 1 ? "element(*, " : "attribute(*, ");
        sb.append(TypeHierarchy.getNearestNamedType(this.f100889j).getEQName());
        sb.append(')');
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f100888i == 1 ? "element(*, " : "attribute(*, ");
        sb.append(this.f100889j.getEQName());
        sb.append(')');
        return sb.toString();
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public AtomicType getAtomizedItemType() {
        SchemaType schemaType = this.f100889j;
        try {
            if (schemaType.isAtomicType()) {
                return (AtomicType) schemaType;
            }
            if (schemaType instanceof ListType) {
                SimpleType itemType = ((ListType) schemaType).getItemType();
                if (itemType.isAtomicType()) {
                    return (AtomicType) itemType;
                }
            } else if ((schemaType instanceof ComplexType) && ((ComplexType) schemaType).isSimpleContent()) {
                SimpleType simpleContentType = ((ComplexType) schemaType).getSimpleContentType();
                if (simpleContentType.isAtomicType()) {
                    return (AtomicType) simpleContentType;
                }
                if (simpleContentType instanceof ListType) {
                    SimpleType itemType2 = ((ListType) simpleContentType).getItemType();
                    if (itemType2.isAtomicType()) {
                        return (AtomicType) itemType2;
                    }
                }
            }
            return BuiltInAtomicType.ANY_ATOMIC;
        } catch (MissingComponentException unused) {
            return BuiltInAtomicType.ANY_ATOMIC;
        }
    }
}
