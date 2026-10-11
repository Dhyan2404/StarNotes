package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STArrowheadStyle extends XmlToken {
    public static final Enum ARR;
    public static final Enum AUTO;
    public static final SimpleTypeFactory<STArrowheadStyle> Factory;
    public static final int INT_ARR = 2;
    public static final int INT_AUTO = 1;
    public static final int INT_NO_ARR = 3;
    public static final Enum NO_ARR;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ARR = 2;
        static final int INT_AUTO = 1;
        static final int INT_NO_ARR = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("auto", 1), new Enum("arr", 2), new Enum("noArr", 3)});

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
        SimpleTypeFactory<STArrowheadStyle> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "starrowheadstyle4399type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        AUTO = Enum.forString("auto");
        ARR = Enum.forString("arr");
        NO_ARR = Enum.forString("noArr");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
