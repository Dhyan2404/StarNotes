package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STBuiltInUnit extends XmlString {
    public static final Enum BILLIONS;
    public static final SimpleTypeFactory<STBuiltInUnit> Factory;
    public static final Enum HUNDREDS;
    public static final Enum HUNDRED_MILLIONS;
    public static final Enum HUNDRED_THOUSANDS;
    public static final int INT_BILLIONS = 8;
    public static final int INT_HUNDREDS = 1;
    public static final int INT_HUNDRED_MILLIONS = 7;
    public static final int INT_HUNDRED_THOUSANDS = 4;
    public static final int INT_MILLIONS = 5;
    public static final int INT_TEN_MILLIONS = 6;
    public static final int INT_TEN_THOUSANDS = 3;
    public static final int INT_THOUSANDS = 2;
    public static final int INT_TRILLIONS = 9;
    public static final Enum MILLIONS;
    public static final Enum TEN_MILLIONS;
    public static final Enum TEN_THOUSANDS;
    public static final Enum THOUSANDS;
    public static final Enum TRILLIONS;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BILLIONS = 8;
        static final int INT_HUNDREDS = 1;
        static final int INT_HUNDRED_MILLIONS = 7;
        static final int INT_HUNDRED_THOUSANDS = 4;
        static final int INT_MILLIONS = 5;
        static final int INT_TEN_MILLIONS = 6;
        static final int INT_TEN_THOUSANDS = 3;
        static final int INT_THOUSANDS = 2;
        static final int INT_TRILLIONS = 9;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("hundreds", 1), new Enum("thousands", 2), new Enum("tenThousands", 3), new Enum("hundredThousands", 4), new Enum("millions", 5), new Enum("tenMillions", 6), new Enum("hundredMillions", 7), new Enum("billions", 8), new Enum("trillions", 9)});

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
        SimpleTypeFactory<STBuiltInUnit> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stbuiltinunit3eaftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        HUNDREDS = Enum.forString("hundreds");
        THOUSANDS = Enum.forString("thousands");
        TEN_THOUSANDS = Enum.forString("tenThousands");
        HUNDRED_THOUSANDS = Enum.forString("hundredThousands");
        MILLIONS = Enum.forString("millions");
        TEN_MILLIONS = Enum.forString("tenMillions");
        HUNDRED_MILLIONS = Enum.forString("hundredMillions");
        BILLIONS = Enum.forString("billions");
        TRILLIONS = Enum.forString("trillions");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
