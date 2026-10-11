package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STConnectorPoint extends XmlToken {
    public static final Enum AUTO;
    public static final Enum B_CTR;
    public static final Enum B_L;
    public static final Enum B_R;
    public static final Enum CTR;
    public static final SimpleTypeFactory<STConnectorPoint> Factory;
    public static final int INT_AUTO = 1;
    public static final int INT_B_CTR = 2;
    public static final int INT_B_L = 7;
    public static final int INT_B_R = 8;
    public static final int INT_CTR = 3;
    public static final int INT_MID_L = 4;
    public static final int INT_MID_R = 5;
    public static final int INT_RADIAL = 11;
    public static final int INT_T_CTR = 6;
    public static final int INT_T_L = 9;
    public static final int INT_T_R = 10;
    public static final Enum MID_L;
    public static final Enum MID_R;
    public static final Enum RADIAL;
    public static final Enum T_CTR;
    public static final Enum T_L;
    public static final Enum T_R;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AUTO = 1;
        static final int INT_B_CTR = 2;
        static final int INT_B_L = 7;
        static final int INT_B_R = 8;
        static final int INT_CTR = 3;
        static final int INT_MID_L = 4;
        static final int INT_MID_R = 5;
        static final int INT_RADIAL = 11;
        static final int INT_T_CTR = 6;
        static final int INT_T_L = 9;
        static final int INT_T_R = 10;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("auto", 1), new Enum("bCtr", 2), new Enum("ctr", 3), new Enum("midL", 4), new Enum("midR", 5), new Enum("tCtr", 6), new Enum("bL", 7), new Enum("bR", 8), new Enum("tL", 9), new Enum("tR", 10), new Enum("radial", 11)});

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
        SimpleTypeFactory<STConnectorPoint> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stconnectorpoint387etype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        AUTO = Enum.forString("auto");
        B_CTR = Enum.forString("bCtr");
        CTR = Enum.forString("ctr");
        MID_L = Enum.forString("midL");
        MID_R = Enum.forString("midR");
        T_CTR = Enum.forString("tCtr");
        B_L = Enum.forString("bL");
        B_R = Enum.forString("bR");
        T_L = Enum.forString("tL");
        T_R = Enum.forString("tR");
        RADIAL = Enum.forString("radial");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
