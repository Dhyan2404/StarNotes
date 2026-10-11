package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTickMark extends XmlString {
    public static final Enum CROSS;
    public static final SimpleTypeFactory<STTickMark> Factory;

    /* renamed from: IN */
    public static final Enum f115674IN;
    public static final int INT_CROSS = 1;
    public static final int INT_IN = 2;
    public static final int INT_NONE = 3;
    public static final int INT_OUT = 4;
    public static final Enum NONE;
    public static final Enum OUT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CROSS = 1;
        static final int INT_IN = 2;
        static final int INT_NONE = 3;
        static final int INT_OUT = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("cross", 1), new Enum("in", 2), new Enum("none", 3), new Enum("out", 4)});

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
        SimpleTypeFactory<STTickMark> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttickmark69e2type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CROSS = Enum.forString("cross");
        f115674IN = Enum.forString("in");
        NONE = Enum.forString("none");
        OUT = Enum.forString("out");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
