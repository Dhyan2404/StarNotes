package net.p110sf.saxon.pattern;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Optional;
import java.util.function.IntPredicate;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.p111z.IntPredicateLambda;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.tree.tiny.NodeVectorTree;
import net.p110sf.saxon.type.AnySimpleType;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class NodeKindTest extends NodeTest {

    /* renamed from: i */
    public final int f100916i;

    /* renamed from: j */
    public final UType f100917j;
    public static final NodeKindTest DOCUMENT = new NodeKindTest(9);
    public static final NodeKindTest ELEMENT = new NodeKindTest(1);
    public static final NodeKindTest ATTRIBUTE = new NodeKindTest(2);
    public static final NodeKindTest TEXT = new NodeKindTest(3);
    public static final NodeKindTest COMMENT = new NodeKindTest(8);
    public static final NodeKindTest PROCESSING_INSTRUCTION = new NodeKindTest(7);
    public static final NodeKindTest NAMESPACE = new NodeKindTest(13);

    public NodeKindTest(int i) {
        this.f100916i = i;
        this.f100917j = UType.fromTypeCode(i);
    }

    public static String describe(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 7 ? i != 8 ? i != 9 ? i != 13 ? "** error **" : "namespace-node()" : "document-node()" : "comment()" : "processing-instruction()" : "text()" : "attribute()" : "element()";
    }

    /* renamed from: e */
    public static /* synthetic */ boolean m63447e(byte[] bArr, int i) {
        byte b = bArr[i];
        return b == 3 || b == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ boolean m63448f(byte[] bArr, int i) {
        return (bArr[i] & 15) == this.f100916i;
    }

    public static NodeTest makeNodeKindTest(int i) {
        if (i == 0) {
            return AnyNodeTest.getInstance();
        }
        if (i == 1) {
            return ELEMENT;
        }
        if (i == 2) {
            return ATTRIBUTE;
        }
        if (i == 3) {
            return TEXT;
        }
        if (i == 7) {
            return PROCESSING_INSTRUCTION;
        }
        if (i == 8) {
            return COMMENT;
        }
        if (i == 9) {
            return DOCUMENT;
        }
        if (i == 13) {
            return NAMESPACE;
        }
        throw new IllegalArgumentException("Unknown node kind " + i + " in NodeKindTest");
    }

    public static String nodeKindName(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 7 ? i != 8 ? i != 9 ? i != 13 ? "** error **" : Constants.ATTRNAME_NAMESPACE : "document" : "comment" : Constants.ELEMNAME_PI_STRING : "text" : "attribute" : "element";
    }

    public boolean equals(Object obj) {
        return (obj instanceof NodeKindTest) && ((NodeKindTest) obj).f100916i == this.f100916i;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        Optional<String> explainMismatch = super.explainMismatch(item, typeHierarchy);
        if (explainMismatch.isPresent()) {
            return explainMismatch;
        }
        if (!(item instanceof NodeInfo)) {
            return Optional.of("The supplied value is " + Err.describeGenre(item.getGenre()));
        }
        UType uType = UType.getUType(item);
        if (getUType().overlaps(uType)) {
            return Optional.empty();
        }
        return Optional.of("The supplied value is " + uType.toStringWithIndefiniteArticle());
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public SchemaType getContentType() {
        int i = this.f100916i;
        if (i == 1) {
            return AnyType.getInstance();
        }
        if (i == 2) {
            return AnySimpleType.getInstance();
        }
        if (i == 3) {
            return BuiltInAtomicType.UNTYPED_ATOMIC;
        }
        if (i != 7 && i != 8) {
            if (i == 9) {
                return AnyType.getInstance();
            }
            if (i == 13) {
                return BuiltInAtomicType.STRING;
            }
            throw new AssertionError("Unknown node kind");
        }
        return BuiltInAtomicType.STRING;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public final double getDefaultPriority() {
        return -0.5d;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public IntPredicateProxy getMatcher(NodeVectorTree nodeVectorTree) {
        final byte[] nodeKindArray = nodeVectorTree.getNodeKindArray();
        return this.f100916i == 3 ? IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.duj
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63447e;
                m63447e = NodeKindTest.m63447e(nodeKindArray, i);
                return m63447e;
            }
        }) : IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.euj
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63448f;
                m63448f = NodeKindTest.this.m63448f(nodeKindArray, i);
                return m63448f;
            }
        });
    }

    public int getNodeKind() {
        return this.f100916i;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return this.f100916i;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return this.f100917j;
    }

    public int hashCode() {
        return this.f100916i;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        return (item instanceof NodeInfo) && this.f100916i == ((NodeInfo) item).getNodeKind();
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.pattern.NodePredicate
    public boolean test(NodeInfo nodeInfo) {
        return nodeInfo.getNodeKind() == this.f100916i;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public String toShortString() {
        int nodeKind = getNodeKind();
        return nodeKind != 1 ? nodeKind != 2 ? nodeKind != 9 ? toString() : "/" : "@*" : "*";
    }

    public String toString() {
        return describe(this.f100916i);
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public AtomicType getAtomizedItemType() {
        int i = this.f100916i;
        if (i == 1) {
            return BuiltInAtomicType.ANY_ATOMIC;
        }
        if (i == 2) {
            return BuiltInAtomicType.ANY_ATOMIC;
        }
        if (i == 3) {
            return BuiltInAtomicType.UNTYPED_ATOMIC;
        }
        if (i == 7) {
            return BuiltInAtomicType.STRING;
        }
        if (i == 8) {
            return BuiltInAtomicType.STRING;
        }
        if (i == 9) {
            return BuiltInAtomicType.UNTYPED_ATOMIC;
        }
        if (i == 13) {
            return BuiltInAtomicType.STRING;
        }
        throw new AssertionError("Unknown node kind");
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean matches(int i, NodeName nodeName, SchemaType schemaType) {
        return this.f100916i == i;
    }
}
