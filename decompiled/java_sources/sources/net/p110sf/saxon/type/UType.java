package net.p110sf.saxon.type;

import com.google.firebase.installations.local.IidStore;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class UType {
    public static final UType ANY;
    public static final UType ANY_ATOMIC;
    public static final UType ANY_NODE;
    public static final UType ANY_URI;
    public static final UType ATTRIBUTE;
    public static final UType BASE64_BINARY;
    public static final UType BOOLEAN;
    public static final UType CHILD_NODE_KINDS;
    public static final UType COMMENT;
    public static final UType DATE;
    public static final UType DATE_TIME;
    public static final UType DECIMAL;
    public static final UType DOCUMENT;
    public static final UType DOUBLE;
    public static final UType DURATION;
    public static final UType ELEMENT;
    public static final UType ELEMENT_OR_ATTRIBUTE;
    public static final UType EXTENSION;
    public static final UType FLOAT;
    public static final UType FUNCTION;
    public static final UType G_DAY;
    public static final UType G_MONTH;
    public static final UType G_MONTH_DAY;
    public static final UType G_YEAR;
    public static final UType G_YEAR_MONTH;
    public static final UType HEX_BINARY;
    public static final UType NAMESPACE;
    public static final UType NOTATION;
    public static final UType NUMERIC;
    public static final UType PARENT_NODE_KINDS;

    /* renamed from: PI */
    public static final UType f102819PI;
    public static final UType QNAME;
    public static final UType STRING;
    public static final UType STRING_LIKE;
    public static final UType TEXT;
    public static final UType TIME;
    public static final UType UNTYPED_ATOMIC;
    public static final UType VOID = new UType(0);

    /* renamed from: a */
    public final int f102820a;

    static {
        UType uType = PrimitiveUType.DOCUMENT.toUType();
        DOCUMENT = uType;
        UType uType2 = PrimitiveUType.ELEMENT.toUType();
        ELEMENT = uType2;
        UType uType3 = PrimitiveUType.ATTRIBUTE.toUType();
        ATTRIBUTE = uType3;
        UType uType4 = PrimitiveUType.TEXT.toUType();
        TEXT = uType4;
        UType uType5 = PrimitiveUType.COMMENT.toUType();
        COMMENT = uType5;
        UType uType6 = PrimitiveUType.PI.toUType();
        f102819PI = uType6;
        UType uType7 = PrimitiveUType.NAMESPACE.toUType();
        NAMESPACE = uType7;
        UType uType8 = PrimitiveUType.FUNCTION.toUType();
        FUNCTION = uType8;
        UType uType9 = PrimitiveUType.STRING.toUType();
        STRING = uType9;
        BOOLEAN = PrimitiveUType.BOOLEAN.toUType();
        UType uType10 = PrimitiveUType.DECIMAL.toUType();
        DECIMAL = uType10;
        UType uType11 = PrimitiveUType.FLOAT.toUType();
        FLOAT = uType11;
        UType uType12 = PrimitiveUType.DOUBLE.toUType();
        DOUBLE = uType12;
        DURATION = PrimitiveUType.DURATION.toUType();
        DATE_TIME = PrimitiveUType.DATE_TIME.toUType();
        TIME = PrimitiveUType.TIME.toUType();
        DATE = PrimitiveUType.DATE.toUType();
        G_YEAR_MONTH = PrimitiveUType.G_YEAR_MONTH.toUType();
        G_YEAR = PrimitiveUType.G_YEAR.toUType();
        G_MONTH_DAY = PrimitiveUType.G_MONTH_DAY.toUType();
        G_DAY = PrimitiveUType.G_DAY.toUType();
        G_MONTH = PrimitiveUType.G_MONTH.toUType();
        HEX_BINARY = PrimitiveUType.HEX_BINARY.toUType();
        BASE64_BINARY = PrimitiveUType.BASE64_BINARY.toUType();
        UType uType13 = PrimitiveUType.ANY_URI.toUType();
        ANY_URI = uType13;
        QNAME = PrimitiveUType.QNAME.toUType();
        NOTATION = PrimitiveUType.NOTATION.toUType();
        UType uType14 = PrimitiveUType.UNTYPED_ATOMIC.toUType();
        UNTYPED_ATOMIC = uType14;
        UType uType15 = PrimitiveUType.EXTENSION.toUType();
        EXTENSION = uType15;
        NUMERIC = uType12.union(uType11).union(uType10);
        STRING_LIKE = uType9.union(uType13).union(uType14);
        UType union = uType2.union(uType4).union(uType5).union(uType6);
        CHILD_NODE_KINDS = union;
        PARENT_NODE_KINDS = uType.union(uType2);
        ELEMENT_OR_ATTRIBUTE = uType2.union(uType3);
        UType union2 = union.union(uType).union(uType3).union(uType7);
        ANY_NODE = union2;
        UType uType16 = new UType(268435200);
        ANY_ATOMIC = uType16;
        ANY = union2.union(uType16).union(uType8).union(uType15);
    }

    public UType(int i) {
        this.f102820a = i;
    }

    public static UType fromTypeCode(int i) {
        if (i == 0) {
            return ANY_NODE;
        }
        if (i == 1) {
            return ELEMENT;
        }
        if (i == 2) {
            return ATTRIBUTE;
        }
        if (i == 3 || i == 4) {
            return TEXT;
        }
        if (i == 7) {
            return f102819PI;
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
        if (i == 88) {
            return ANY;
        }
        if (i == 99) {
            return FUNCTION;
        }
        if (i != 563) {
            if (i == 565) {
                return DATE_TIME;
            }
            switch (i) {
                case 513:
                    return STRING;
                case 514:
                    return BOOLEAN;
                case 515:
                    return DECIMAL;
                case 516:
                    return FLOAT;
                case 517:
                    return DOUBLE;
                case 518:
                    return DURATION;
                case 519:
                    return DATE_TIME;
                case 520:
                    return TIME;
                case 521:
                    return DATE;
                case 522:
                    return G_YEAR_MONTH;
                case StandardNames.XS_G_YEAR /* 523 */:
                    return G_YEAR;
                case 524:
                    return G_MONTH_DAY;
                case StandardNames.XS_G_DAY /* 525 */:
                    return G_DAY;
                case StandardNames.XS_G_MONTH /* 526 */:
                    return G_MONTH;
                case 527:
                    return HEX_BINARY;
                case StandardNames.XS_BASE64_BINARY /* 528 */:
                    return BASE64_BINARY;
                case 529:
                    return ANY_URI;
                case 530:
                    return QNAME;
                case 531:
                    return NOTATION;
                default:
                    switch (i) {
                        case StandardNames.XS_INTEGER /* 533 */:
                            return DECIMAL;
                        case 534:
                        case StandardNames.XS_NEGATIVE_INTEGER /* 535 */:
                        case StandardNames.XS_LONG /* 536 */:
                        case 537:
                        case 538:
                        case 539:
                        case StandardNames.XS_NON_NEGATIVE_INTEGER /* 540 */:
                        case StandardNames.XS_POSITIVE_INTEGER /* 541 */:
                        case 542:
                        case StandardNames.XS_UNSIGNED_INT /* 543 */:
                        case StandardNames.XS_UNSIGNED_SHORT /* 544 */:
                        case StandardNames.XS_UNSIGNED_BYTE /* 545 */:
                            return DECIMAL;
                        default:
                            switch (i) {
                                case StandardNames.XS_NORMALIZED_STRING /* 553 */:
                                case 554:
                                case StandardNames.XS_LANGUAGE /* 555 */:
                                case StandardNames.XS_NMTOKEN /* 556 */:
                                    break;
                                default:
                                    switch (i) {
                                        case StandardNames.XS_NAME /* 558 */:
                                        case 559:
                                        case StandardNames.XS_ID /* 560 */:
                                        case StandardNames.XS_IDREF /* 561 */:
                                            break;
                                        default:
                                            switch (i) {
                                                case StandardNames.XS_UNTYPED_ATOMIC /* 631 */:
                                                    return UNTYPED_ATOMIC;
                                                case 632:
                                                    return ANY_ATOMIC;
                                                case StandardNames.XS_YEAR_MONTH_DURATION /* 633 */:
                                                case 634:
                                                    return DURATION;
                                                case 635:
                                                    return NUMERIC;
                                                default:
                                                    throw new IllegalArgumentException("" + i);
                                            }
                                    }
                            }
                    }
            }
        }
        return STRING;
    }

    public static UType getUType(Item item) {
        if (item instanceof NodeInfo) {
            return fromTypeCode(((NodeInfo) item).getNodeKind());
        }
        if (item instanceof AtomicValue) {
            return ((AtomicValue) item).getUType();
        }
        if (item instanceof Function) {
            return FUNCTION;
        }
        if (item.getGenre() == Genre.EXTERNAL) {
            return EXTENSION;
        }
        return VOID;
    }

    public static boolean isGenerallyComparable(UType uType, UType uType2) {
        UType uType3 = UNTYPED_ATOMIC;
        return uType == uType3 || uType2 == uType3 || isGuaranteedComparable(uType, uType2);
    }

    public static boolean isGuaranteedComparable(UType uType, UType uType2) {
        if (uType == uType2) {
            return true;
        }
        UType uType3 = UNTYPED_ATOMIC;
        if (uType == uType3 || uType == ANY_URI) {
            uType = STRING;
        }
        if (uType2 == uType3 || uType2 == ANY_URI) {
            uType2 = STRING;
        }
        UType uType4 = NUMERIC;
        if (uType4.subsumes(uType)) {
            uType = uType4;
        }
        if (uType4.subsumes(uType2)) {
            uType2 = uType4;
        }
        return uType.equals(uType2);
    }

    public static boolean isPossiblyComparable(UType uType, UType uType2, boolean z) {
        UType uType3;
        if (uType == uType2 || uType == (uType3 = ANY_ATOMIC) || uType2 == uType3) {
            return true;
        }
        UType uType4 = UNTYPED_ATOMIC;
        if (uType == uType4 || uType == ANY_URI) {
            uType = STRING;
        }
        if (uType2 == uType4 || uType2 == ANY_URI) {
            uType2 = STRING;
        }
        UType uType5 = NUMERIC;
        if (uType5.subsumes(uType)) {
            uType = uType5;
        }
        if (uType5.subsumes(uType2)) {
            uType2 = uType5;
        }
        return uType == uType2;
    }

    public Set<PrimitiveUType> decompose() {
        HashSet hashSet = new HashSet();
        for (PrimitiveUType primitiveUType : PrimitiveUType.values()) {
            if ((this.f102820a & (1 << primitiveUType.getBit())) != 0) {
                hashSet.add(primitiveUType);
            }
        }
        return hashSet;
    }

    public boolean equals(Object obj) {
        return (obj instanceof UType) && this.f102820a == ((UType) obj).f102820a;
    }

    public UType except(UType uType) {
        return new UType(this.f102820a & (~uType.f102820a));
    }

    public int hashCode() {
        return this.f102820a;
    }

    public UType intersection(UType uType) {
        return new UType(this.f102820a & uType.f102820a);
    }

    public boolean matches(Item item) {
        return subsumes(getUType(item));
    }

    public boolean overlaps(UType uType) {
        return (this.f102820a & uType.f102820a) != 0;
    }

    public boolean subsumes(UType uType) {
        int i = this.f102820a;
        int i2 = uType.f102820a;
        return (i & i2) == i2;
    }

    public ItemType toItemType() {
        Set<PrimitiveUType> decompose = decompose();
        if (decompose.isEmpty()) {
            return ErrorType.getInstance();
        }
        if (decompose.size() != 1) {
            return ANY_NODE.subsumes(this) ? AnyNodeTest.getInstance() : equals(NUMERIC) ? NumericType.getInstance() : ANY_ATOMIC.subsumes(this) ? BuiltInAtomicType.ANY_ATOMIC : AnyItemType.getInstance();
        }
        Iterator<PrimitiveUType> it2 = decompose.iterator();
        if (it2.hasNext()) {
            return it2.next().toItemType();
        }
        return null;
    }

    public String toString() {
        Set<PrimitiveUType> decompose = decompose();
        if (decompose.isEmpty()) {
            return "U{}";
        }
        StringBuilder sb = new StringBuilder(256);
        Iterator<PrimitiveUType> it2 = decompose.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            if (z) {
                sb.append(IidStore.f35940g);
            }
            sb.append(it2.next().toString());
            z = true;
        }
        return sb.toString();
    }

    public String toStringWithIndefiniteArticle() {
        String uType = toString();
        if ("aeiouxy".indexOf(uType.charAt(0)) >= 0) {
            return "an " + uType + " node";
        }
        return "a " + uType + " node";
    }

    public UType union(UType uType) {
        if (uType == null) {
            new NullPointerException().printStackTrace();
        }
        return new UType(this.f102820a | uType.f102820a);
    }

    public static UType getUType(GroundedValue groundedValue) {
        SequenceIterator iterate = groundedValue.iterate();
        UType uType = VOID;
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                return uType;
            }
            uType = uType.union(getUType(next));
        }
    }
}
