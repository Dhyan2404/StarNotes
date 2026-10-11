package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTimeUnit extends XmlString {
    public static final Enum DAYS;
    public static final SimpleTypeFactory<STTimeUnit> Factory;
    public static final int INT_DAYS = 1;
    public static final int INT_MONTHS = 2;
    public static final int INT_YEARS = 3;
    public static final Enum MONTHS;
    public static final Enum YEARS;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DAYS = 1;
        static final int INT_MONTHS = 2;
        static final int INT_YEARS = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("days", 1), new Enum("months", 2), new Enum("years", 3)});

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
        SimpleTypeFactory<STTimeUnit> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttimeunit161btype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        DAYS = Enum.forString("days");
        MONTHS = Enum.forString("months");
        YEARS = Enum.forString("years");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
