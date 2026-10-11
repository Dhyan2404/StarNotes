package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STLinearDirection extends XmlToken {
    public static final Enum FROM_B;
    public static final Enum FROM_L;
    public static final Enum FROM_R;
    public static final Enum FROM_T;
    public static final SimpleTypeFactory<STLinearDirection> Factory;
    public static final int INT_FROM_B = 4;
    public static final int INT_FROM_L = 1;
    public static final int INT_FROM_R = 2;
    public static final int INT_FROM_T = 3;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_FROM_B = 4;
        static final int INT_FROM_L = 1;
        static final int INT_FROM_R = 2;
        static final int INT_FROM_T = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("fromL", 1), new Enum("fromR", 2), new Enum("fromT", 3), new Enum("fromB", 4)});

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
        SimpleTypeFactory<STLinearDirection> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stlineardirectiond2d1type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        FROM_L = Enum.forString("fromL");
        FROM_R = Enum.forString("fromR");
        FROM_T = Enum.forString("fromT");
        FROM_B = Enum.forString("fromB");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
