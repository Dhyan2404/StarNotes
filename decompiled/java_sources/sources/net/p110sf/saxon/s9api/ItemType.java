package net.p110sf.saxon.s9api;

import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.StandardURIChecker;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.NumericType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.StringToDouble;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public abstract class ItemType {
    public static final ItemType ANY_ARRAY;
    public static final ItemType ANY_ATOMIC_VALUE;
    public static ItemType ANY_FUNCTION;
    public static ItemType ANY_ITEM;
    public static final ItemType ANY_MAP;
    public static final ItemType ANY_NODE;
    public static final ItemType ANY_URI;
    public static final ItemType ATTRIBUTE_NODE;
    public static final ItemType BASE64_BINARY;
    public static final ItemType BOOLEAN;
    public static final ItemType BYTE;
    public static final ItemType COMMENT_NODE;
    public static final ItemType DATE;
    public static final ItemType DATE_TIME;
    public static final ItemType DATE_TIME_STAMP;
    public static final ItemType DAY_TIME_DURATION;
    public static final ItemType DECIMAL;
    public static final ItemType DOCUMENT_NODE;
    public static final ItemType DOUBLE;
    public static final ItemType DURATION;
    public static final ItemType ELEMENT_NODE;
    public static final ItemType ENTITY;
    public static final ItemType ERROR;
    public static final ItemType FLOAT;
    public static final ItemType G_DAY;
    public static final ItemType G_MONTH;
    public static final ItemType G_MONTH_DAY;
    public static final ItemType G_YEAR;
    public static final ItemType G_YEAR_MONTH;
    public static final ItemType HEX_BINARY;

    /* renamed from: ID */
    public static final ItemType f101342ID;
    public static final ItemType IDREF;
    public static final ItemType INT;
    public static final ItemType INTEGER;
    public static final ItemType LANGUAGE;
    public static final ItemType LONG;
    public static final ItemType NAME;
    public static final ItemType NAMESPACE_NODE;
    public static final ItemType NCNAME;
    public static final ItemType NEGATIVE_INTEGER;
    public static final ItemType NMTOKEN;
    public static final ItemType NON_NEGATIVE_INTEGER;
    public static final ItemType NON_POSITIVE_INTEGER;
    public static final ItemType NORMALIZED_STRING;
    public static final ItemType NOTATION;
    public static final ItemType NUMERIC;
    public static final ItemType POSITIVE_INTEGER;
    public static final ItemType PROCESSING_INSTRUCTION_NODE;
    public static final ItemType QNAME;
    public static final ItemType SHORT;
    public static final ItemType STRING;
    public static final ItemType TEXT_NODE;
    public static final ItemType TIME;
    public static final ItemType TOKEN;
    public static final ItemType UNSIGNED_BYTE;
    public static final ItemType UNSIGNED_INT;
    public static final ItemType UNSIGNED_LONG;
    public static final ItemType UNSIGNED_SHORT;
    public static final ItemType UNTYPED_ATOMIC;
    public static final ItemType YEAR_MONTH_DURATION;

    /* renamed from: a */
    public static final ConversionRules f101343a;
    protected final net.p110sf.saxon.type.ItemType underlyingType;

    /* loaded from: classes11.dex */
    public static class BuiltInAtomicItemType extends ItemType {

        /* renamed from: b */
        public final ConversionRules f101344b;

        public BuiltInAtomicItemType(BuiltInAtomicType builtInAtomicType, ConversionRules conversionRules) {
            super(builtInAtomicType);
            this.f101344b = conversionRules;
        }

        public static BuiltInAtomicItemType makeVariant(BuiltInAtomicItemType builtInAtomicItemType, ConversionRules conversionRules) {
            return new BuiltInAtomicItemType((BuiltInAtomicType) builtInAtomicItemType.underlyingType, conversionRules);
        }

        /* renamed from: c */
        public final boolean m63655c(AtomicType atomicType) {
            boolean z = atomicType instanceof BuiltInAtomicType;
            SchemaType schemaType = atomicType;
            if (!z) {
                schemaType = atomicType.getBuiltInBaseType();
            }
            do {
                BuiltInAtomicType builtInAtomicType = (BuiltInAtomicType) schemaType;
                if (builtInAtomicType.isSameType((AtomicType) this.underlyingType)) {
                    return true;
                }
                schemaType = builtInAtomicType.getBaseType();
            } while (schemaType instanceof BuiltInAtomicType);
            return false;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public ConversionRules getConversionRules() {
            return this.f101344b;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public net.p110sf.saxon.type.ItemType getUnderlyingItemType() {
            return this.underlyingType;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            Item underlyingValue = xdmItem.getUnderlyingValue();
            if (underlyingValue instanceof AtomicValue) {
                return m63655c(((AtomicValue) underlyingValue).getItemType());
            }
            return false;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            net.p110sf.saxon.type.ItemType underlyingItemType = itemType.getUnderlyingItemType();
            if (underlyingItemType.isPlainType()) {
                return m63655c((AtomicType) underlyingItemType);
            }
            return false;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$a */
    /* loaded from: classes11.dex */
    public static class C18458a extends ItemType {
        public C18458a(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            Item underlyingValue = xdmItem.getUnderlyingValue();
            return (underlyingValue instanceof NodeInfo) && ((NodeInfo) underlyingValue).getNodeKind() == 7;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType().getUType() == UType.f102819PI;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$b */
    /* loaded from: classes11.dex */
    public static class C18459b extends ItemType {
        public C18459b(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            return xdmItem.getUnderlyingValue() instanceof MapItem;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType() instanceof MapType;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$c */
    /* loaded from: classes11.dex */
    public static class C18460c extends ItemType {
        public C18460c(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            return xdmItem.getUnderlyingValue() instanceof ArrayItem;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType() instanceof ArrayItemType;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$d */
    /* loaded from: classes11.dex */
    public static class C18461d extends ItemType {
        public C18461d(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            return xdmItem.getUnderlyingValue() instanceof AtomicValue;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType() instanceof AtomicType;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$e */
    /* loaded from: classes11.dex */
    public static class C18462e extends ItemType {
        public C18462e(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            return false;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType() instanceof ErrorType;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$f */
    /* loaded from: classes11.dex */
    public static class C18463f extends ItemType {
        public C18463f(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public ConversionRules getConversionRules() {
            return ItemType.f101343a;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            return xdmItem.getUnderlyingValue() instanceof NumericValue;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return ItemType.DECIMAL.subsumes(itemType) || ItemType.DOUBLE.subsumes(itemType) || ItemType.FLOAT.subsumes(itemType);
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$g */
    /* loaded from: classes11.dex */
    public static class C18464g extends ItemType {
        public C18464g(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public ConversionRules getConversionRules() {
            return ItemType.f101343a;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            return true;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return true;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$h */
    /* loaded from: classes11.dex */
    public static class C18465h extends ItemType {
        public C18465h(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            return xdmItem.getUnderlyingValue() instanceof Function;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType() instanceof FunctionItemType;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$i */
    /* loaded from: classes11.dex */
    public static class C18466i extends ItemType {
        public C18466i(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            return xdmItem.getUnderlyingValue() instanceof NodeInfo;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType() instanceof NodeTest;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$j */
    /* loaded from: classes11.dex */
    public static class C18467j extends ItemType {
        public C18467j(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            Item underlyingValue = xdmItem.getUnderlyingValue();
            return (underlyingValue instanceof NodeInfo) && ((NodeInfo) underlyingValue).getNodeKind() == 2;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType().getUType() == UType.ATTRIBUTE;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$k */
    /* loaded from: classes11.dex */
    public static class C18468k extends ItemType {
        public C18468k(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            Item underlyingValue = xdmItem.getUnderlyingValue();
            return (underlyingValue instanceof NodeInfo) && ((NodeInfo) underlyingValue).getNodeKind() == 8;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType().getUType() == UType.COMMENT;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$l */
    /* loaded from: classes11.dex */
    public static class C18469l extends ItemType {
        public C18469l(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            Item underlyingValue = xdmItem.getUnderlyingValue();
            return (underlyingValue instanceof NodeInfo) && ((NodeInfo) underlyingValue).getNodeKind() == 3;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType().getUType() == UType.TEXT;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$m */
    /* loaded from: classes11.dex */
    public static class C18470m extends ItemType {
        public C18470m(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            Item underlyingValue = xdmItem.getUnderlyingValue();
            return (underlyingValue instanceof NodeInfo) && ((NodeInfo) underlyingValue).getNodeKind() == 1;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType().getUType() == UType.ELEMENT;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$n */
    /* loaded from: classes11.dex */
    public static class C18471n extends ItemType {
        public C18471n(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            Item underlyingValue = xdmItem.getUnderlyingValue();
            return (underlyingValue instanceof NodeInfo) && ((NodeInfo) underlyingValue).getNodeKind() == 9;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType().getUType() == UType.DOCUMENT;
        }
    }

    /* renamed from: net.sf.saxon.s9api.ItemType$o */
    /* loaded from: classes11.dex */
    public static class C18472o extends ItemType {
        public C18472o(net.p110sf.saxon.type.ItemType itemType) {
            super(itemType);
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean matches(XdmItem xdmItem) {
            Item underlyingValue = xdmItem.getUnderlyingValue();
            return (underlyingValue instanceof NodeInfo) && ((NodeInfo) underlyingValue).getNodeKind() == 13;
        }

        @Override // net.p110sf.saxon.s9api.ItemType
        public boolean subsumes(ItemType itemType) {
            return itemType.getUnderlyingItemType().getUType() == UType.NAMESPACE;
        }
    }

    static {
        ConversionRules conversionRules = new ConversionRules();
        f101343a = conversionRules;
        conversionRules.setStringToDoubleConverter(StringToDouble.getInstance());
        conversionRules.setNotationSet(null);
        conversionRules.setURIChecker(StandardURIChecker.getInstance());
        ANY_ITEM = new C18464g(AnyItemType.getInstance());
        ANY_FUNCTION = new C18465h(AnyFunctionType.getInstance());
        ANY_NODE = new C18466i(AnyNodeTest.getInstance());
        ATTRIBUTE_NODE = new C18467j(NodeKindTest.ATTRIBUTE);
        COMMENT_NODE = new C18468k(NodeKindTest.COMMENT);
        TEXT_NODE = new C18469l(NodeKindTest.TEXT);
        ELEMENT_NODE = new C18470m(NodeKindTest.ELEMENT);
        DOCUMENT_NODE = new C18471n(NodeKindTest.DOCUMENT);
        NAMESPACE_NODE = new C18472o(NodeKindTest.NAMESPACE);
        PROCESSING_INSTRUCTION_NODE = new C18458a(NodeKindTest.PROCESSING_INSTRUCTION);
        ANY_MAP = new C18459b(MapType.ANY_MAP_TYPE);
        ANY_ARRAY = new C18460c(ArrayItemType.ANY_ARRAY_TYPE);
        ANY_ATOMIC_VALUE = new C18461d(BuiltInAtomicType.ANY_ATOMIC);
        ERROR = new C18462e(ErrorType.getInstance());
        STRING = m63654b(BuiltInAtomicType.STRING, conversionRules);
        BOOLEAN = m63654b(BuiltInAtomicType.BOOLEAN, conversionRules);
        DURATION = m63654b(BuiltInAtomicType.DURATION, conversionRules);
        DATE_TIME = m63654b(BuiltInAtomicType.DATE_TIME, conversionRules);
        DATE = m63654b(BuiltInAtomicType.DATE, conversionRules);
        TIME = m63654b(BuiltInAtomicType.TIME, conversionRules);
        G_YEAR_MONTH = m63654b(BuiltInAtomicType.G_YEAR_MONTH, conversionRules);
        G_MONTH = m63654b(BuiltInAtomicType.G_MONTH, conversionRules);
        G_MONTH_DAY = m63654b(BuiltInAtomicType.G_MONTH_DAY, conversionRules);
        G_YEAR = m63654b(BuiltInAtomicType.G_YEAR, conversionRules);
        G_DAY = m63654b(BuiltInAtomicType.G_DAY, conversionRules);
        HEX_BINARY = m63654b(BuiltInAtomicType.HEX_BINARY, conversionRules);
        BASE64_BINARY = m63654b(BuiltInAtomicType.BASE64_BINARY, conversionRules);
        ANY_URI = m63654b(BuiltInAtomicType.ANY_URI, conversionRules);
        QNAME = m63654b(BuiltInAtomicType.QNAME, conversionRules);
        NOTATION = m63654b(BuiltInAtomicType.NOTATION, conversionRules);
        UNTYPED_ATOMIC = m63654b(BuiltInAtomicType.UNTYPED_ATOMIC, conversionRules);
        DECIMAL = m63654b(BuiltInAtomicType.DECIMAL, conversionRules);
        FLOAT = m63654b(BuiltInAtomicType.FLOAT, conversionRules);
        DOUBLE = m63654b(BuiltInAtomicType.DOUBLE, conversionRules);
        INTEGER = m63654b(BuiltInAtomicType.INTEGER, conversionRules);
        NON_POSITIVE_INTEGER = m63654b(BuiltInAtomicType.NON_POSITIVE_INTEGER, conversionRules);
        NEGATIVE_INTEGER = m63654b(BuiltInAtomicType.NEGATIVE_INTEGER, conversionRules);
        LONG = m63654b(BuiltInAtomicType.LONG, conversionRules);
        INT = m63654b(BuiltInAtomicType.INT, conversionRules);
        SHORT = m63654b(BuiltInAtomicType.SHORT, conversionRules);
        BYTE = m63654b(BuiltInAtomicType.BYTE, conversionRules);
        NON_NEGATIVE_INTEGER = m63654b(BuiltInAtomicType.NON_NEGATIVE_INTEGER, conversionRules);
        POSITIVE_INTEGER = m63654b(BuiltInAtomicType.POSITIVE_INTEGER, conversionRules);
        UNSIGNED_LONG = m63654b(BuiltInAtomicType.UNSIGNED_LONG, conversionRules);
        UNSIGNED_INT = m63654b(BuiltInAtomicType.UNSIGNED_INT, conversionRules);
        UNSIGNED_SHORT = m63654b(BuiltInAtomicType.UNSIGNED_SHORT, conversionRules);
        UNSIGNED_BYTE = m63654b(BuiltInAtomicType.UNSIGNED_BYTE, conversionRules);
        YEAR_MONTH_DURATION = m63654b(BuiltInAtomicType.YEAR_MONTH_DURATION, conversionRules);
        DAY_TIME_DURATION = m63654b(BuiltInAtomicType.DAY_TIME_DURATION, conversionRules);
        NORMALIZED_STRING = m63654b(BuiltInAtomicType.NORMALIZED_STRING, conversionRules);
        TOKEN = m63654b(BuiltInAtomicType.TOKEN, conversionRules);
        LANGUAGE = m63654b(BuiltInAtomicType.LANGUAGE, conversionRules);
        NAME = m63654b(BuiltInAtomicType.NAME, conversionRules);
        NMTOKEN = m63654b(BuiltInAtomicType.NMTOKEN, conversionRules);
        NCNAME = m63654b(BuiltInAtomicType.NCNAME, conversionRules);
        f101342ID = m63654b(BuiltInAtomicType.f102764ID, conversionRules);
        IDREF = m63654b(BuiltInAtomicType.IDREF, conversionRules);
        ENTITY = m63654b(BuiltInAtomicType.ENTITY, conversionRules);
        DATE_TIME_STAMP = m63654b(BuiltInAtomicType.DATE_TIME_STAMP, conversionRules);
        NUMERIC = new C18463f(NumericType.getInstance());
    }

    public ItemType(net.p110sf.saxon.type.ItemType itemType) {
        this.underlyingType = itemType;
    }

    /* renamed from: b */
    public static ItemType m63654b(BuiltInAtomicType builtInAtomicType, ConversionRules conversionRules) {
        return new BuiltInAtomicItemType(builtInAtomicType, conversionRules);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ItemType) && getUnderlyingItemType().equals(((ItemType) obj).getUnderlyingItemType());
    }

    public ConversionRules getConversionRules() {
        return f101343a;
    }

    public QName getTypeName() {
        StructuredQName structuredQName;
        net.p110sf.saxon.type.ItemType underlyingItemType = getUnderlyingItemType();
        if (!(underlyingItemType instanceof SchemaType) || (structuredQName = ((SchemaType) underlyingItemType).getStructuredQName()) == null) {
            return null;
        }
        return new QName(structuredQName);
    }

    public net.p110sf.saxon.type.ItemType getUnderlyingItemType() {
        return this.underlyingType;
    }

    public final int hashCode() {
        return getUnderlyingItemType().hashCode();
    }

    public abstract boolean matches(XdmItem xdmItem);

    public abstract boolean subsumes(ItemType itemType);

    public String toString() {
        net.p110sf.saxon.type.ItemType underlyingItemType = getUnderlyingItemType();
        if (!(underlyingItemType instanceof SchemaType)) {
            return underlyingItemType.toString();
        }
        SchemaType schemaType = (SchemaType) underlyingItemType;
        String str = "";
        while (true) {
            StructuredQName structuredQName = schemaType.getStructuredQName();
            if (structuredQName != null) {
                return str + structuredQName.getEQName();
            }
            schemaType = schemaType.getBaseType();
            if (schemaType == null) {
                return "Q{http://www.w3.org/2001/XMLSchema}anyType";
            }
            str = "<";
        }
    }
}
