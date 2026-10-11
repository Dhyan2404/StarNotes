package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.commons.math3.dfp.Dfp;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STDataValidationOperator extends XmlString {
    public static final Enum BETWEEN;
    public static final Enum EQUAL;
    public static final SimpleTypeFactory<STDataValidationOperator> Factory;
    public static final Enum GREATER_THAN;
    public static final Enum GREATER_THAN_OR_EQUAL;
    public static final int INT_BETWEEN = 1;
    public static final int INT_EQUAL = 3;
    public static final int INT_GREATER_THAN = 7;
    public static final int INT_GREATER_THAN_OR_EQUAL = 8;
    public static final int INT_LESS_THAN = 5;
    public static final int INT_LESS_THAN_OR_EQUAL = 6;
    public static final int INT_NOT_BETWEEN = 2;
    public static final int INT_NOT_EQUAL = 4;
    public static final Enum LESS_THAN;
    public static final Enum LESS_THAN_OR_EQUAL;
    public static final Enum NOT_BETWEEN;
    public static final Enum NOT_EQUAL;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BETWEEN = 1;
        static final int INT_EQUAL = 3;
        static final int INT_GREATER_THAN = 7;
        static final int INT_GREATER_THAN_OR_EQUAL = 8;
        static final int INT_LESS_THAN = 5;
        static final int INT_LESS_THAN_OR_EQUAL = 6;
        static final int INT_NOT_BETWEEN = 2;
        static final int INT_NOT_EQUAL = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("between", 1), new Enum("notBetween", 2), new Enum("equal", 3), new Enum("notEqual", 4), new Enum(Dfp.f108016p, 5), new Enum("lessThanOrEqual", 6), new Enum(Dfp.f108017q, 7), new Enum("greaterThanOrEqual", 8)});

        private Enum(String str, int i) {
            super(str, i);
        }

        public static Enum forInt(int i) {
            return (Enum) table.forInt(i);
        }

        public static Enum forString(String str) {
            return (Enum) table.forString(str);
        }

        private Object readResolve() {
            return forInt(intValue());
        }
    }

    static {
        SimpleTypeFactory<STDataValidationOperator> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdatavalidationoperatore0e0type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        BETWEEN = Enum.forString("between");
        NOT_BETWEEN = Enum.forString("notBetween");
        EQUAL = Enum.forString("equal");
        NOT_EQUAL = Enum.forString("notEqual");
        LESS_THAN = Enum.forString(Dfp.f108016p);
        LESS_THAN_OR_EQUAL = Enum.forString("lessThanOrEqual");
        GREATER_THAN = Enum.forString(Dfp.f108017q);
        GREATER_THAN_OR_EQUAL = Enum.forString("greaterThanOrEqual");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
