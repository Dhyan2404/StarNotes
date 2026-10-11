package net.p110sf.saxon.type;

import java.util.Iterator;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.CombinedNodeTest;
import net.p110sf.saxon.pattern.ContentTypeTest;
import net.p110sf.saxon.pattern.DocumentNodeTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.SameNameTest;
import net.p110sf.saxon.value.AnyExternalObject;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.ObjectValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public abstract class Type {
    public static final short ATTRIBUTE = 2;
    public static final short COMMENT = 8;
    public static final short DOCUMENT = 9;
    public static final short ELEMENT = 1;
    public static final short FUNCTION = 99;
    public static final short ITEM = 88;
    public static final short NAMESPACE = 13;
    public static final short NODE = 0;
    public static final short PARENT_POINTER = 12;
    public static final short PROCESSING_INSTRUCTION = 7;
    public static final short STOPPER = 11;
    public static final short TEXT = 3;
    public static final short TEXTUAL_ELEMENT = 17;
    public static final short WHITESPACE_TEXT = 4;
    public static final ItemType NODE_TYPE = AnyNodeTest.getInstance();
    public static final ItemType ITEM_TYPE = AnyItemType.getInstance();

    /* renamed from: a */
    public static Class<?> m64626a(Class<?> cls, Class<?> cls2) {
        if (cls == cls2) {
            return cls;
        }
        if (cls == null || cls2 == null) {
            return null;
        }
        return (cls.isArray() || !cls.isAssignableFrom(cls2)) ? (cls2.isArray() || !cls2.isAssignableFrom(cls)) ? (cls.isInterface() || cls2.isInterface()) ? Object.class : m64626a(cls.getSuperclass(), cls2.getSuperclass()) : cls2 : cls;
    }

    public static String displayTypeName(Item item) {
        if (!(item instanceof NodeInfo)) {
            return item.getGenre() == Genre.EXTERNAL ? ObjectValue.displayTypeName(((AnyExternalObject) item).getWrappedObject()) : item instanceof AtomicValue ? ((AtomicValue) item).getItemType().toString() : item instanceof Function ? "function(*)" : item.getClass().toString();
        }
        NodeInfo nodeInfo = (NodeInfo) item;
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            return "element(" + nodeInfo.getDisplayName() + ", " + nodeInfo.getSchemaType().getDisplayName() + ')';
        }
        if (nodeKind != 2) {
            return nodeKind != 3 ? nodeKind != 7 ? nodeKind != 8 ? nodeKind != 9 ? nodeKind != 13 ? "" : "namespace()" : "document-node()" : "comment()" : "processing-instruction()" : "text()";
        }
        return "attribute(" + nodeInfo.getDisplayName() + ", " + nodeInfo.getSchemaType().getDisplayName() + ')';
    }

    public static ItemType getBuiltInItemType(String str, String str2) {
        SchemaType schemaType = BuiltInType.getSchemaType(StandardNames.getFingerprint(str, str2));
        if (schemaType instanceof ItemType) {
            return (ItemType) schemaType;
        }
        return null;
    }

    public static SimpleType getBuiltInSimpleType(String str, String str2) {
        SchemaType schemaType = BuiltInType.getSchemaType(StandardNames.getFingerprint(str, str2));
        if (!(schemaType instanceof SimpleType)) {
            return null;
        }
        SimpleType simpleType = (SimpleType) schemaType;
        if (simpleType.isBuiltInType()) {
            return simpleType;
        }
        return null;
    }

    public static ItemType getCommonSuperType(ItemType itemType, ItemType itemType2, TypeHierarchy typeHierarchy) {
        AtomicType primitiveItemType;
        if (itemType == itemType2) {
            return itemType;
        }
        if (itemType instanceof ErrorType) {
            return itemType2;
        }
        if (itemType2 instanceof ErrorType) {
            return itemType;
        }
        if ((itemType instanceof JavaExternalObjectType) && (itemType2 instanceof JavaExternalObjectType)) {
            return new JavaExternalObjectType(m64626a(((JavaExternalObjectType) itemType).getJavaClass(), ((JavaExternalObjectType) itemType2).getJavaClass()));
        }
        if ((itemType instanceof MapType) && (itemType2 instanceof MapType)) {
            MapType mapType = MapType.EMPTY_MAP_TYPE;
            if (itemType == mapType) {
                return itemType2;
            }
            if (itemType2 == mapType) {
                return itemType;
            }
            MapType mapType2 = (MapType) itemType;
            MapType mapType3 = (MapType) itemType2;
            ItemType commonSuperType = getCommonSuperType(mapType2.getKeyType(), mapType3.getKeyType());
            if (commonSuperType instanceof AtomicType) {
                primitiveItemType = (AtomicType) commonSuperType;
            } else {
                primitiveItemType = commonSuperType.getAtomizedItemType().getPrimitiveItemType();
            }
            return new MapType(primitiveItemType, SequenceType.makeSequenceType(getCommonSuperType(mapType2.getValueType().getPrimaryType(), mapType3.getValueType().getPrimaryType()), Cardinality.union(mapType2.getValueType().getCardinality(), mapType3.getValueType().getCardinality())));
        }
        Affinity relationship = typeHierarchy.relationship(itemType, itemType2);
        return relationship == Affinity.SAME_TYPE ? itemType : relationship == Affinity.SUBSUMED_BY ? itemType2 : relationship == Affinity.SUBSUMES ? itemType : itemType.getUType().union(itemType2.getUType()).toItemType();
    }

    public static ItemType getItemType(Item item, TypeHierarchy typeHierarchy) {
        if (item == null) {
            return AnyItemType.getInstance();
        }
        if (item instanceof AtomicValue) {
            return ((AtomicValue) item).getItemType();
        }
        if (!(item instanceof NodeInfo)) {
            if (item.getGenre() != Genre.EXTERNAL) {
                return item instanceof MapItem ? typeHierarchy == null ? MapType.ANY_MAP_TYPE : ((MapItem) item).getItemType(typeHierarchy) : item instanceof ArrayItem ? typeHierarchy == null ? ArrayItemType.ANY_ARRAY_TYPE : new ArrayItemType(((ArrayItem) item).getMemberType(typeHierarchy)) : ((Function) item).getFunctionItemType();
            }
            if (typeHierarchy != null) {
                return ((AnyExternalObject) item).getItemType(typeHierarchy);
            }
            throw new IllegalArgumentException("typeHierarchy is required for an external object");
        }
        NodeInfo nodeInfo = (NodeInfo) item;
        if (typeHierarchy == null) {
            typeHierarchy = nodeInfo.getConfiguration().getTypeHierarchy();
        }
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            SchemaType schemaType = nodeInfo.getSchemaType();
            return (schemaType.equals(Untyped.getInstance()) || schemaType.equals(AnyType.getInstance())) ? new SameNameTest(nodeInfo) : new CombinedNodeTest(new SameNameTest(nodeInfo), 23, new ContentTypeTest(1, schemaType, nodeInfo.getConfiguration(), false));
        }
        if (nodeKind == 2) {
            SchemaType schemaType2 = nodeInfo.getSchemaType();
            return schemaType2.equals(BuiltInAtomicType.UNTYPED_ATOMIC) ? new SameNameTest(nodeInfo) : new CombinedNodeTest(new SameNameTest(nodeInfo), 23, new ContentTypeTest(2, schemaType2, nodeInfo.getConfiguration(), false));
        }
        if (nodeKind == 3) {
            return NodeKindTest.TEXT;
        }
        if (nodeKind == 7) {
            return NodeKindTest.PROCESSING_INSTRUCTION;
        }
        if (nodeKind == 8) {
            return NodeKindTest.COMMENT;
        }
        if (nodeKind != 9) {
            if (nodeKind == 13) {
                return NodeKindTest.NAMESPACE;
            }
            throw new IllegalArgumentException("Unknown node kind " + nodeInfo.getNodeKind());
        }
        Iterator<? extends NodeInfo> it2 = nodeInfo.children().iterator();
        ItemType itemType = null;
        ItemType itemType2 = null;
        while (true) {
            if (!it2.hasNext()) {
                itemType = itemType2;
                break;
            }
            NodeInfo next = it2.next();
            int nodeKind2 = next.getNodeKind();
            if (nodeKind2 == 3) {
                break;
            }
            if (nodeKind2 == 1) {
                if (itemType2 != null) {
                    break;
                }
                itemType2 = getItemType(next, typeHierarchy);
            }
        }
        return itemType == null ? NodeKindTest.DOCUMENT : new DocumentNodeTest((NodeTest) itemType);
    }

    public static boolean isGenerallyComparable(BuiltInAtomicType builtInAtomicType, BuiltInAtomicType builtInAtomicType2, boolean z) {
        BuiltInAtomicType builtInAtomicType3 = BuiltInAtomicType.ANY_ATOMIC;
        if (!builtInAtomicType.equals(builtInAtomicType3) && !builtInAtomicType2.equals(builtInAtomicType3)) {
            BuiltInAtomicType builtInAtomicType4 = BuiltInAtomicType.UNTYPED_ATOMIC;
            if (!builtInAtomicType.equals(builtInAtomicType4) && !builtInAtomicType2.equals(builtInAtomicType4) && !isGuaranteedComparable(builtInAtomicType, builtInAtomicType2, z)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isGuaranteedComparable(BuiltInAtomicType builtInAtomicType, BuiltInAtomicType builtInAtomicType2, boolean z) {
        if (builtInAtomicType == builtInAtomicType2) {
            return true;
        }
        if (builtInAtomicType.isPrimitiveNumeric()) {
            return builtInAtomicType2.isPrimitiveNumeric();
        }
        BuiltInAtomicType builtInAtomicType3 = BuiltInAtomicType.UNTYPED_ATOMIC;
        if (builtInAtomicType.equals(builtInAtomicType3) || builtInAtomicType.equals(BuiltInAtomicType.ANY_URI)) {
            builtInAtomicType = BuiltInAtomicType.STRING;
        }
        if (builtInAtomicType2.equals(builtInAtomicType3) || builtInAtomicType2.equals(BuiltInAtomicType.ANY_URI)) {
            builtInAtomicType2 = BuiltInAtomicType.STRING;
        }
        if (!z) {
            BuiltInAtomicType builtInAtomicType4 = BuiltInAtomicType.DAY_TIME_DURATION;
            if (builtInAtomicType.equals(builtInAtomicType4)) {
                builtInAtomicType = BuiltInAtomicType.DURATION;
            }
            if (builtInAtomicType2.equals(builtInAtomicType4)) {
                builtInAtomicType2 = BuiltInAtomicType.DURATION;
            }
            BuiltInAtomicType builtInAtomicType5 = BuiltInAtomicType.YEAR_MONTH_DURATION;
            if (builtInAtomicType.equals(builtInAtomicType5)) {
                builtInAtomicType = BuiltInAtomicType.DURATION;
            }
            if (builtInAtomicType2.equals(builtInAtomicType5)) {
                builtInAtomicType2 = BuiltInAtomicType.DURATION;
            }
        }
        return builtInAtomicType == builtInAtomicType2;
    }

    public static boolean isGuaranteedGenerallyComparable(BuiltInAtomicType builtInAtomicType, BuiltInAtomicType builtInAtomicType2, boolean z) {
        BuiltInAtomicType builtInAtomicType3 = BuiltInAtomicType.ANY_ATOMIC;
        return (builtInAtomicType.equals(builtInAtomicType3) || builtInAtomicType2.equals(builtInAtomicType3) || !isGenerallyComparable(builtInAtomicType, builtInAtomicType2, z)) ? false : true;
    }

    public static boolean isNodeType(ItemType itemType) {
        return itemType instanceof NodeTest;
    }

    public static boolean isPossiblyComparable(BuiltInAtomicType builtInAtomicType, BuiltInAtomicType builtInAtomicType2, boolean z) {
        if (builtInAtomicType == builtInAtomicType2) {
            return true;
        }
        BuiltInAtomicType builtInAtomicType3 = BuiltInAtomicType.ANY_ATOMIC;
        if (builtInAtomicType.equals(builtInAtomicType3) || builtInAtomicType2.equals(builtInAtomicType3)) {
            return true;
        }
        if (builtInAtomicType.isPrimitiveNumeric()) {
            return builtInAtomicType2.isPrimitiveNumeric();
        }
        BuiltInAtomicType builtInAtomicType4 = BuiltInAtomicType.UNTYPED_ATOMIC;
        if (builtInAtomicType.equals(builtInAtomicType4) || builtInAtomicType.equals(BuiltInAtomicType.ANY_URI)) {
            builtInAtomicType = BuiltInAtomicType.STRING;
        }
        if (builtInAtomicType2.equals(builtInAtomicType4) || builtInAtomicType2.equals(BuiltInAtomicType.ANY_URI)) {
            builtInAtomicType2 = BuiltInAtomicType.STRING;
        }
        BuiltInAtomicType builtInAtomicType5 = BuiltInAtomicType.DAY_TIME_DURATION;
        if (builtInAtomicType.equals(builtInAtomicType5)) {
            builtInAtomicType = BuiltInAtomicType.DURATION;
        }
        if (builtInAtomicType2.equals(builtInAtomicType5)) {
            builtInAtomicType2 = BuiltInAtomicType.DURATION;
        }
        BuiltInAtomicType builtInAtomicType6 = BuiltInAtomicType.YEAR_MONTH_DURATION;
        if (builtInAtomicType.equals(builtInAtomicType6)) {
            builtInAtomicType = BuiltInAtomicType.DURATION;
        }
        if (builtInAtomicType2.equals(builtInAtomicType6)) {
            builtInAtomicType2 = BuiltInAtomicType.DURATION;
        }
        return builtInAtomicType == builtInAtomicType2;
    }

    public static boolean isPrimitiveAtomicType(int i) {
        return i >= 0 && (i <= 533 || i == 635 || i == 631 || i == 632 || i == 634 || i == 633 || i == 573);
    }

    public static boolean isPrimitiveAtomicUType(int i) {
        return i >= 0 && i <= 533;
    }

    public static boolean isSubType(AtomicType atomicType, AtomicType atomicType2) {
        while (atomicType.getFingerprint() != atomicType2.getFingerprint()) {
            SchemaType baseType = atomicType.getBaseType();
            if (!(baseType instanceof AtomicType)) {
                return false;
            }
            atomicType = (AtomicType) baseType;
        }
        return true;
    }

    public static ItemType getCommonSuperType(ItemType itemType, ItemType itemType2) {
        if (itemType == itemType2) {
            return itemType;
        }
        if (itemType instanceof ErrorType) {
            return itemType2;
        }
        if (itemType2 instanceof ErrorType) {
            return itemType;
        }
        if (itemType != AnyItemType.getInstance() && itemType2 != AnyItemType.getInstance()) {
            ItemType primitiveItemType = itemType.getPrimitiveItemType();
            ItemType primitiveItemType2 = itemType2.getPrimitiveItemType();
            if (primitiveItemType == primitiveItemType2) {
                return primitiveItemType;
            }
            BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.DECIMAL;
            if ((primitiveItemType == builtInAtomicType && primitiveItemType2 == BuiltInAtomicType.INTEGER) || (primitiveItemType2 == builtInAtomicType && primitiveItemType == BuiltInAtomicType.INTEGER)) {
                return builtInAtomicType;
            }
            if ((primitiveItemType instanceof BuiltInAtomicType) && ((BuiltInAtomicType) primitiveItemType).isNumericType() && (primitiveItemType2 instanceof BuiltInAtomicType) && ((BuiltInAtomicType) primitiveItemType2).isNumericType()) {
                return NumericType.getInstance();
            }
            if (itemType.isAtomicType() && itemType2.isAtomicType()) {
                return BuiltInAtomicType.ANY_ATOMIC;
            }
            if ((itemType instanceof NodeTest) && (itemType2 instanceof NodeTest)) {
                return AnyNodeTest.getInstance();
            }
            if ((itemType instanceof JavaExternalObjectType) && (itemType2 instanceof JavaExternalObjectType)) {
                return new JavaExternalObjectType(m64626a(((JavaExternalObjectType) itemType).getJavaClass(), ((JavaExternalObjectType) itemType2).getJavaClass()));
            }
            return AnyItemType.getInstance();
        }
        return AnyItemType.getInstance();
    }

    public static SequenceType getCommonSuperType(SequenceType sequenceType, SequenceType sequenceType2) {
        return sequenceType.equals(sequenceType2) ? sequenceType : SequenceType.makeSequenceType(getCommonSuperType(sequenceType.getPrimaryType(), sequenceType2.getPrimaryType()), Cardinality.union(sequenceType.getCardinality(), sequenceType2.getCardinality()));
    }
}
