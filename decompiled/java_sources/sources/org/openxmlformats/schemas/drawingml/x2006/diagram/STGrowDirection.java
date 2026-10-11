package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STGrowDirection extends XmlToken {
    public static final Enum B_L;
    public static final Enum B_R;
    public static final SimpleTypeFactory<STGrowDirection> Factory;
    public static final int INT_B_L = 3;
    public static final int INT_B_R = 4;
    public static final int INT_T_L = 1;
    public static final int INT_T_R = 2;
    public static final Enum T_L;
    public static final Enum T_R;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B_L = 3;
        static final int INT_B_R = 4;
        static final int INT_T_L = 1;
        static final int INT_T_R = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("tL", 1), new Enum("tR", 2), new Enum("bL", 3), new Enum("bR", 4)});

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
        SimpleTypeFactory<STGrowDirection> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stgrowdirectione57ftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        T_L = Enum.forString("tL");
        T_R = Enum.forString("tR");
        B_L = Enum.forString("bL");
        B_R = Enum.forString("bR");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
