package net.p110sf.saxon.type;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.pattern.NodeKindTest;

/* loaded from: classes11.dex */
public enum PrimitiveUType {
    DOCUMENT(0),
    ELEMENT(1),
    ATTRIBUTE(2),
    TEXT(3),
    COMMENT(4),
    PI(5),
    NAMESPACE(6),
    FUNCTION(7),
    STRING(8),
    BOOLEAN(9),
    DECIMAL(10),
    FLOAT(11),
    DOUBLE(12),
    DURATION(13),
    DATE_TIME(14),
    TIME(15),
    DATE(16),
    G_YEAR_MONTH(17),
    G_YEAR(18),
    G_MONTH_DAY(19),
    G_DAY(20),
    G_MONTH(21),
    HEX_BINARY(22),
    BASE64_BINARY(23),
    ANY_URI(24),
    QNAME(25),
    NOTATION(26),
    UNTYPED_ATOMIC(27),
    EXTENSION(30);

    private final int bit;

    /* renamed from: net.sf.saxon.type.PrimitiveUType$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18561a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f102793a;

        static {
            int[] iArr = new int[PrimitiveUType.values().length];
            f102793a = iArr;
            try {
                iArr[PrimitiveUType.DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f102793a[PrimitiveUType.ELEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f102793a[PrimitiveUType.ATTRIBUTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f102793a[PrimitiveUType.TEXT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f102793a[PrimitiveUType.COMMENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f102793a[PrimitiveUType.PI.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f102793a[PrimitiveUType.NAMESPACE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f102793a[PrimitiveUType.FUNCTION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f102793a[PrimitiveUType.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f102793a[PrimitiveUType.BOOLEAN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f102793a[PrimitiveUType.DECIMAL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f102793a[PrimitiveUType.FLOAT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f102793a[PrimitiveUType.DOUBLE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f102793a[PrimitiveUType.DURATION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f102793a[PrimitiveUType.DATE_TIME.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f102793a[PrimitiveUType.TIME.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f102793a[PrimitiveUType.DATE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f102793a[PrimitiveUType.G_YEAR_MONTH.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f102793a[PrimitiveUType.G_YEAR.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f102793a[PrimitiveUType.G_MONTH_DAY.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f102793a[PrimitiveUType.G_DAY.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f102793a[PrimitiveUType.G_MONTH.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f102793a[PrimitiveUType.HEX_BINARY.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f102793a[PrimitiveUType.BASE64_BINARY.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f102793a[PrimitiveUType.ANY_URI.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f102793a[PrimitiveUType.QNAME.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f102793a[PrimitiveUType.NOTATION.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f102793a[PrimitiveUType.UNTYPED_ATOMIC.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f102793a[PrimitiveUType.EXTENSION.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
        }
    }

    PrimitiveUType(int i) {
        this.bit = i;
    }

    public static PrimitiveUType forBit(int i) {
        return values()[i];
    }

    public int getBit() {
        return this.bit;
    }

    public ItemType toItemType() {
        switch (C18561a.f102793a[ordinal()]) {
            case 1:
                return NodeKindTest.DOCUMENT;
            case 2:
                return NodeKindTest.ELEMENT;
            case 3:
                return NodeKindTest.ATTRIBUTE;
            case 4:
                return NodeKindTest.TEXT;
            case 5:
                return NodeKindTest.COMMENT;
            case 6:
                return NodeKindTest.PROCESSING_INSTRUCTION;
            case 7:
                return NodeKindTest.NAMESPACE;
            case 8:
                return AnyFunctionType.getInstance();
            case 9:
                return BuiltInAtomicType.STRING;
            case 10:
                return BuiltInAtomicType.BOOLEAN;
            case 11:
                return BuiltInAtomicType.DECIMAL;
            case 12:
                return BuiltInAtomicType.FLOAT;
            case 13:
                return BuiltInAtomicType.DOUBLE;
            case 14:
                return BuiltInAtomicType.DURATION;
            case 15:
                return BuiltInAtomicType.DATE_TIME;
            case 16:
                return BuiltInAtomicType.TIME;
            case 17:
                return BuiltInAtomicType.DATE;
            case 18:
                return BuiltInAtomicType.G_YEAR_MONTH;
            case 19:
                return BuiltInAtomicType.G_YEAR;
            case 20:
                return BuiltInAtomicType.G_MONTH_DAY;
            case 21:
                return BuiltInAtomicType.G_DAY;
            case 22:
                return BuiltInAtomicType.G_MONTH;
            case 23:
                return BuiltInAtomicType.HEX_BINARY;
            case 24:
                return BuiltInAtomicType.BASE64_BINARY;
            case 25:
                return BuiltInAtomicType.ANY_URI;
            case 26:
                return BuiltInAtomicType.QNAME;
            case 27:
                return BuiltInAtomicType.NOTATION;
            case 28:
                return BuiltInAtomicType.UNTYPED_ATOMIC;
            case 29:
                return AnyItemType.getInstance();
            default:
                throw new IllegalArgumentException();
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        switch (C18561a.f102793a[ordinal()]) {
            case 1:
                return "document";
            case 2:
                return "element";
            case 3:
                return "attribute";
            case 4:
                return "text";
            case 5:
                return "comment";
            case 6:
                return Constants.ELEMNAME_PI_STRING;
            case 7:
                return Constants.ATTRNAME_NAMESPACE;
            case 8:
                return Constants.EXSLT_ELEMNAME_FUNCTION_STRING;
            case 9:
                return "string";
            case 10:
                return "boolean";
            case 11:
                return "decimal";
            case 12:
                return "float";
            case 13:
                return "double";
            case 14:
                return "duration";
            case 15:
                return "dateTime";
            case 16:
                return "time";
            case 17:
                return "date";
            case 18:
                return "gYearMonth";
            case 19:
                return "gYear";
            case 20:
                return "gMonthDay";
            case 21:
                return "gDay";
            case 22:
                return "gMoonth";
            case 23:
                return "hexBinary";
            case 24:
                return "base64Binary";
            case 25:
                return "anyURI";
            case 26:
                return "QName";
            case 27:
                return "NOTATION";
            case 28:
                return "untypedAtomic";
            case 29:
                return "external object";
            default:
                return "???";
        }
    }

    public UType toUType() {
        return new UType(1 << this.bit);
    }
}
