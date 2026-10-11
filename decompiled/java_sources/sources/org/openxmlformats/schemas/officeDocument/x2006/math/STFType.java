package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STFType extends XmlString {
    public static final Enum BAR;
    public static final SimpleTypeFactory<STFType> Factory;
    public static final int INT_BAR = 1;
    public static final int INT_LIN = 3;
    public static final int INT_NO_BAR = 4;
    public static final int INT_SKW = 2;
    public static final Enum LIN;
    public static final Enum NO_BAR;
    public static final Enum SKW;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BAR = 1;
        static final int INT_LIN = 3;
        static final int INT_NO_BAR = 4;
        static final int INT_SKW = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("bar", 1), new Enum("skw", 2), new Enum("lin", 3), new Enum("noBar", 4)});

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
        SimpleTypeFactory<STFType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stftype30ectype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        BAR = Enum.forString("bar");
        SKW = Enum.forString("skw");
        LIN = Enum.forString("lin");
        NO_BAR = Enum.forString("noBar");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
