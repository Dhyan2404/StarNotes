package net.p110sf.saxon.pattern;

import java.util.Iterator;
import java.util.Optional;
import java.util.Set;
import java.util.function.IntPredicate;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntPredicateLambda;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.p111z.IntUniversalSet;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.tree.tiny.NodeVectorTree;
import net.p110sf.saxon.type.AnySimpleType;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache;
import net.p110sf.saxon.type.PrimitiveUType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class NodeTest implements NodePredicate, ItemTypeWithSequenceTypeCache {

    /* renamed from: e */
    public SequenceType f100921e;

    /* renamed from: f */
    public SequenceType f100922f;

    /* renamed from: g */
    public SequenceType f100923g;

    /* renamed from: h */
    public SequenceType f100924h;

    /* renamed from: net.sf.saxon.pattern.NodeTest$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18430a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f100925a;

        static {
            int[] iArr = new int[PrimitiveUType.values().length];
            f100925a = iArr;
            try {
                iArr[PrimitiveUType.DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f100925a[PrimitiveUType.ELEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f100925a[PrimitiveUType.ATTRIBUTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f100925a[PrimitiveUType.COMMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f100925a[PrimitiveUType.TEXT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f100925a[PrimitiveUType.PI.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f100925a[PrimitiveUType.NAMESPACE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ boolean m63451b(NodeVectorTree nodeVectorTree, int i) {
        return nodeVectorTree.getNodeKind(i) != 12 && test(nodeVectorTree.getNode(i));
    }

    public NodeTest copy() {
        return this;
    }

    public Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        if (!(item instanceof NodeInfo)) {
            return Optional.of("The supplied value is " + Err.describeGenre(item.getGenre()));
        }
        UType uType = UType.getUType(item);
        if (getUType().overlaps(uType)) {
            return Optional.empty();
        }
        return Optional.of("The supplied value is " + uType.toStringWithIndefiniteArticle());
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String getBasicAlphaCode() {
        int primitiveType = getPrimitiveType();
        return primitiveType != 0 ? primitiveType != 1 ? primitiveType != 2 ? primitiveType != 3 ? primitiveType != 7 ? primitiveType != 8 ? primitiveType != 9 ? primitiveType != 13 ? "*" : "NN" : "ND" : "NC" : "NP" : "NT" : "NA" : "NE" : "N";
    }

    public SchemaType getContentType() {
        Set<PrimitiveUType> decompose = getUType().decompose();
        Iterator<PrimitiveUType> it2 = decompose.iterator();
        if (decompose.size() == 1 && it2.hasNext()) {
            switch (C18430a.f100925a[it2.next().ordinal()]) {
                case 1:
                    return AnyType.getInstance();
                case 2:
                    return AnyType.getInstance();
                case 3:
                    return AnySimpleType.getInstance();
                case 4:
                    return BuiltInAtomicType.STRING;
                case 5:
                    return BuiltInAtomicType.UNTYPED_ATOMIC;
                case 6:
                    return BuiltInAtomicType.STRING;
                case 7:
                    return BuiltInAtomicType.STRING;
            }
        }
        return AnyType.getInstance();
    }

    public abstract double getDefaultPriority();

    public int getFingerprint() {
        return -1;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public Genre getGenre() {
        return Genre.NODE;
    }

    public IntPredicateProxy getMatcher(final NodeVectorTree nodeVectorTree) {
        return IntPredicateLambda.m64716of(new IntPredicate() { // from class: com.sunia.HTREnginev2.fuj
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                boolean m63451b;
                m63451b = NodeTest.this.m63451b(nodeVectorTree, i);
                return m63451b;
            }
        });
    }

    public StructuredQName getMatchingNodeName() {
        return null;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public ItemType getPrimitiveItemType() {
        int primitiveType = getPrimitiveType();
        return primitiveType == 0 ? AnyNodeTest.getInstance() : NodeKindTest.makeNodeKindTest(primitiveType);
    }

    public int getPrimitiveType() {
        return 0;
    }

    public Optional<IntSet> getRequiredNodeNames() {
        return Optional.of(IntUniversalSet.getInstance());
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isAtomicType() {
        return false;
    }

    public boolean isAtomizable(TypeHierarchy typeHierarchy) {
        return true;
    }

    public boolean isNillable() {
        return true;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isPlainType() {
        return false;
    }

    public abstract boolean matches(int i, NodeName nodeName, SchemaType schemaType);

    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        return (item instanceof NodeInfo) && test((NodeInfo) item);
    }

    @Override // net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache
    public SequenceType one() {
        if (this.f100921e == null) {
            this.f100921e = new SequenceType(this, 16384);
        }
        return this.f100921e;
    }

    @Override // net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache
    public SequenceType oneOrMore() {
        if (this.f100922f == null) {
            this.f100922f = new SequenceType(this, 49152);
        }
        return this.f100922f;
    }

    @Override // net.p110sf.saxon.pattern.NodePredicate
    public boolean test(NodeInfo nodeInfo) {
        return matches(nodeInfo.getNodeKind(), NameOfNode.makeName(nodeInfo), nodeInfo.getSchemaType());
    }

    public String toShortString() {
        return toString();
    }

    @Override // net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache
    public SequenceType zeroOrMore() {
        if (this.f100924h == null) {
            this.f100924h = new SequenceType(this, 57344);
        }
        return this.f100924h;
    }

    @Override // net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache
    public SequenceType zeroOrOne() {
        if (this.f100923g == null) {
            this.f100923g = new SequenceType(this, 24576);
        }
        return this.f100923g;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public AtomicType getAtomizedItemType() {
        return BuiltInAtomicType.ANY_ATOMIC;
    }
}
