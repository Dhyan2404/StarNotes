package net.p110sf.saxon.value;

import java.util.Optional;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.ItemTypeWithSequenceTypeCache;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.TypeHierarchy;

/* loaded from: classes11.dex */
public final class SequenceType {
    public static final SequenceType ATOMIC_SEQUENCE;
    public static final SequenceType EMPTY_SEQUENCE;
    public static final SequenceType FUNCTION_ITEM_SEQUENCE;
    public static final SequenceType NODE_SEQUENCE;
    public static final SequenceType NON_EMPTY_SEQUENCE;
    public static final SequenceType OPTIONAL_ANY_URI;
    public static final SequenceType OPTIONAL_ATOMIC;
    public static final SequenceType OPTIONAL_BASE64_BINARY;
    public static final SequenceType OPTIONAL_BOOLEAN;
    public static final SequenceType OPTIONAL_BYTE;
    public static final SequenceType OPTIONAL_DATE;
    public static final SequenceType OPTIONAL_DATE_TIME;
    public static final SequenceType OPTIONAL_DAY_TIME_DURATION;
    public static final SequenceType OPTIONAL_DECIMAL;
    public static final SequenceType OPTIONAL_DOCUMENT_NODE;
    public static final SequenceType OPTIONAL_DOUBLE;
    public static final SequenceType OPTIONAL_DURATION;
    public static final SequenceType OPTIONAL_FLOAT;
    public static final SequenceType OPTIONAL_FUNCTION_ITEM;
    public static final SequenceType OPTIONAL_G_DAY;
    public static final SequenceType OPTIONAL_G_MONTH;
    public static final SequenceType OPTIONAL_G_MONTH_DAY;
    public static final SequenceType OPTIONAL_G_YEAR;
    public static final SequenceType OPTIONAL_G_YEAR_MONTH;
    public static final SequenceType OPTIONAL_HEX_BINARY;
    public static final SequenceType OPTIONAL_INTEGER;
    public static final SequenceType OPTIONAL_NODE;
    public static final SequenceType OPTIONAL_NOTATION;
    public static final SequenceType OPTIONAL_NUMERIC;
    public static final SequenceType OPTIONAL_QNAME;
    public static final SequenceType OPTIONAL_SHORT;
    public static final SequenceType OPTIONAL_STRING;
    public static final SequenceType OPTIONAL_TIME;
    public static final SequenceType OPTIONAL_YEAR_MONTH_DURATION;
    public static final SequenceType SINGLE_ATOMIC;
    public static final SequenceType SINGLE_BOOLEAN;
    public static final SequenceType SINGLE_BYTE;
    public static final SequenceType SINGLE_DECIMAL;
    public static final SequenceType SINGLE_DOUBLE;
    public static final SequenceType SINGLE_FLOAT;
    public static final SequenceType SINGLE_FUNCTION;
    public static final SequenceType SINGLE_INTEGER;
    public static final SequenceType SINGLE_NODE;
    public static final SequenceType SINGLE_NUMERIC;
    public static final SequenceType SINGLE_QNAME;
    public static final SequenceType SINGLE_SHORT;
    public static final SequenceType SINGLE_STRING;
    public static final SequenceType SINGLE_UNTYPED_ATOMIC;
    public static final SequenceType STRING_SEQUENCE;
    public static final SequenceType VOID;

    /* renamed from: a */
    public final ItemType f102917a;

    /* renamed from: b */
    public final int f102918b;
    public static final SequenceType ANY_SEQUENCE = AnyItemType.getInstance().zeroOrMore();
    public static final SequenceType SINGLE_ITEM = AnyItemType.getInstance().one();
    public static final SequenceType OPTIONAL_ITEM = AnyItemType.getInstance().zeroOrOne();

    static {
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.ANY_ATOMIC;
        SINGLE_ATOMIC = builtInAtomicType.one();
        OPTIONAL_ATOMIC = builtInAtomicType.zeroOrOne();
        ATOMIC_SEQUENCE = builtInAtomicType.zeroOrMore();
        BuiltInAtomicType builtInAtomicType2 = BuiltInAtomicType.STRING;
        SINGLE_STRING = builtInAtomicType2.one();
        SINGLE_UNTYPED_ATOMIC = BuiltInAtomicType.UNTYPED_ATOMIC.one();
        OPTIONAL_STRING = builtInAtomicType2.zeroOrOne();
        BuiltInAtomicType builtInAtomicType3 = BuiltInAtomicType.BOOLEAN;
        SINGLE_BOOLEAN = builtInAtomicType3.one();
        OPTIONAL_BOOLEAN = builtInAtomicType3.zeroOrOne();
        BuiltInAtomicType builtInAtomicType4 = BuiltInAtomicType.INTEGER;
        SINGLE_INTEGER = builtInAtomicType4.one();
        BuiltInAtomicType builtInAtomicType5 = BuiltInAtomicType.DECIMAL;
        SINGLE_DECIMAL = builtInAtomicType5.one();
        OPTIONAL_INTEGER = builtInAtomicType4.zeroOrOne();
        BuiltInAtomicType builtInAtomicType6 = BuiltInAtomicType.SHORT;
        SINGLE_SHORT = builtInAtomicType6.one();
        OPTIONAL_SHORT = builtInAtomicType6.zeroOrOne();
        BuiltInAtomicType builtInAtomicType7 = BuiltInAtomicType.BYTE;
        SINGLE_BYTE = builtInAtomicType7.one();
        OPTIONAL_BYTE = builtInAtomicType7.zeroOrOne();
        BuiltInAtomicType builtInAtomicType8 = BuiltInAtomicType.DOUBLE;
        SINGLE_DOUBLE = builtInAtomicType8.one();
        OPTIONAL_DOUBLE = builtInAtomicType8.zeroOrOne();
        BuiltInAtomicType builtInAtomicType9 = BuiltInAtomicType.FLOAT;
        SINGLE_FLOAT = builtInAtomicType9.one();
        OPTIONAL_FLOAT = builtInAtomicType9.zeroOrOne();
        OPTIONAL_DECIMAL = builtInAtomicType5.zeroOrOne();
        OPTIONAL_ANY_URI = BuiltInAtomicType.ANY_URI.zeroOrOne();
        OPTIONAL_DATE = BuiltInAtomicType.DATE.zeroOrOne();
        OPTIONAL_TIME = BuiltInAtomicType.TIME.zeroOrOne();
        OPTIONAL_G_YEAR = BuiltInAtomicType.G_YEAR.zeroOrOne();
        OPTIONAL_G_YEAR_MONTH = BuiltInAtomicType.G_YEAR_MONTH.zeroOrOne();
        OPTIONAL_G_MONTH = BuiltInAtomicType.G_MONTH.zeroOrOne();
        OPTIONAL_G_MONTH_DAY = BuiltInAtomicType.G_MONTH_DAY.zeroOrOne();
        OPTIONAL_G_DAY = BuiltInAtomicType.G_DAY.zeroOrOne();
        OPTIONAL_DATE_TIME = BuiltInAtomicType.DATE_TIME.zeroOrOne();
        OPTIONAL_DURATION = BuiltInAtomicType.DURATION.zeroOrOne();
        OPTIONAL_YEAR_MONTH_DURATION = BuiltInAtomicType.YEAR_MONTH_DURATION.zeroOrOne();
        OPTIONAL_DAY_TIME_DURATION = BuiltInAtomicType.DAY_TIME_DURATION.zeroOrOne();
        BuiltInAtomicType builtInAtomicType10 = BuiltInAtomicType.QNAME;
        SINGLE_QNAME = builtInAtomicType10.one();
        OPTIONAL_QNAME = builtInAtomicType10.zeroOrOne();
        OPTIONAL_NOTATION = BuiltInAtomicType.NOTATION.zeroOrOne();
        OPTIONAL_BASE64_BINARY = BuiltInAtomicType.BASE64_BINARY.zeroOrOne();
        OPTIONAL_HEX_BINARY = BuiltInAtomicType.HEX_BINARY.zeroOrOne();
        OPTIONAL_NUMERIC = makeSequenceType(NumericType.getInstance(), 24576);
        SINGLE_NUMERIC = makeSequenceType(NumericType.getInstance(), 16384);
        OPTIONAL_NODE = AnyNodeTest.getInstance().zeroOrOne();
        SINGLE_NODE = AnyNodeTest.getInstance().one();
        OPTIONAL_DOCUMENT_NODE = NodeKindTest.DOCUMENT.zeroOrOne();
        NODE_SEQUENCE = AnyNodeTest.getInstance().zeroOrMore();
        STRING_SEQUENCE = builtInAtomicType2.zeroOrMore();
        SINGLE_FUNCTION = makeSequenceType(AnyFunctionType.ANY_FUNCTION, 16384);
        OPTIONAL_FUNCTION_ITEM = makeSequenceType(AnyFunctionType.getInstance(), 24576);
        FUNCTION_ITEM_SEQUENCE = makeSequenceType(AnyFunctionType.getInstance(), 57344);
        EMPTY_SEQUENCE = new SequenceType(ErrorType.getInstance(), 8192);
        NON_EMPTY_SEQUENCE = makeSequenceType(AnyItemType.getInstance(), 49152);
        VOID = makeSequenceType(ErrorType.getInstance(), 32768);
    }

    public SequenceType(ItemType itemType, int i) {
        this.f102917a = itemType;
        if ((itemType instanceof ErrorType) && Cardinality.allowsZero(i)) {
            this.f102918b = 8192;
        } else {
            this.f102918b = i;
        }
    }

    public static SequenceType makeSequenceType(ItemType itemType, int i) {
        if (itemType instanceof ItemTypeWithSequenceTypeCache) {
            ItemTypeWithSequenceTypeCache itemTypeWithSequenceTypeCache = (ItemTypeWithSequenceTypeCache) itemType;
            if (i == 16384) {
                return itemTypeWithSequenceTypeCache.one();
            }
            if (i == 24576) {
                return itemTypeWithSequenceTypeCache.zeroOrOne();
            }
            if (i == 49152) {
                return itemTypeWithSequenceTypeCache.oneOrMore();
            }
            if (i == 57344) {
                return itemTypeWithSequenceTypeCache.zeroOrMore();
            }
        }
        return i == 8192 ? EMPTY_SEQUENCE : new SequenceType(itemType, i);
    }

    public boolean equals(Object obj) {
        if (obj instanceof SequenceType) {
            SequenceType sequenceType = (SequenceType) obj;
            if (this.f102917a.equals(sequenceType.f102917a) && this.f102918b == sequenceType.f102918b) {
                return true;
            }
        }
        return false;
    }

    public Optional<String> explainMismatch(GroundedValue groundedValue, TypeHierarchy typeHierarchy) {
        Item next;
        String str;
        SequenceIterator iterate = groundedValue.iterate();
        int i = 0;
        do {
            next = iterate.next();
            if (next == null) {
                return (i != 0 || Cardinality.allowsZero(this.f102918b)) ? (i <= 1 || Cardinality.allowsMany(this.f102918b)) ? Optional.empty() : Optional.of("The type does not allow a sequence of more than one item") : Optional.of("The type does not allow an empty sequence");
            }
            i++;
        } while (this.f102917a.matches(next, typeHierarchy));
        String str2 = "The " + RoleDiagnostic.ordinal(i) + " item is not an instance of the required type";
        Optional<String> explainMismatch = this.f102917a.explainMismatch(next, typeHierarchy);
        if (explainMismatch.isPresent()) {
            if (i == 1) {
                str = explainMismatch.get();
            } else {
                str = str2 + ". " + explainMismatch.get();
            }
            str2 = str;
        } else if (i == 1) {
            return Optional.empty();
        }
        return Optional.of(str2);
    }

    public int getCardinality() {
        return this.f102918b;
    }

    public ItemType getPrimaryType() {
        return this.f102917a;
    }

    public int hashCode() {
        return this.f102918b ^ this.f102917a.hashCode();
    }

    public boolean isSameType(SequenceType sequenceType, TypeHierarchy typeHierarchy) {
        return this.f102918b == sequenceType.f102918b && typeHierarchy.relationship(this.f102917a, sequenceType.f102917a) == Affinity.SAME_TYPE;
    }

    public boolean matches(GroundedValue groundedValue, TypeHierarchy typeHierarchy) {
        Item next;
        SequenceIterator iterate = groundedValue.iterate();
        int i = 0;
        do {
            next = iterate.next();
            if (next == null) {
                if (i != 0 || Cardinality.allowsZero(this.f102918b)) {
                    return i <= 1 || Cardinality.allowsMany(this.f102918b);
                }
                return false;
            }
            i++;
        } while (this.f102917a.matches(next, typeHierarchy));
        return false;
    }

    public String toAlphaCode() {
        return AlphaCode.fromSequenceType(this);
    }

    public String toExportString() {
        if (this.f102918b == 8192) {
            return "empty-sequence()";
        }
        return this.f102917a.toExportString() + Cardinality.getOccurrenceIndicator(this.f102918b);
    }

    public String toString() {
        if (this.f102918b == 8192) {
            return "empty-sequence()";
        }
        return this.f102917a + Cardinality.getOccurrenceIndicator(this.f102918b);
    }
}
