package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STOfPieType extends XmlString {
    public static final Enum BAR;
    public static final SimpleTypeFactory<STOfPieType> Factory;
    public static final int INT_BAR = 2;
    public static final int INT_PIE = 1;
    public static final Enum PIE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BAR = 2;
        static final int INT_PIE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("pie", 1), new Enum("bar", 2)});

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
        SimpleTypeFactory<STOfPieType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stofpietype0e47type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        PIE = Enum.forString("pie");
        BAR = Enum.forString("bar");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
