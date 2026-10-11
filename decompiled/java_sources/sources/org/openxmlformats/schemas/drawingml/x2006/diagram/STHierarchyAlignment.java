package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STHierarchyAlignment extends XmlToken {
    public static final Enum B_CTR_CH;
    public static final Enum B_CTR_DES;
    public static final Enum B_L;
    public static final Enum B_R;
    public static final SimpleTypeFactory<STHierarchyAlignment> Factory;
    public static final int INT_B_CTR_CH = 7;
    public static final int INT_B_CTR_DES = 8;
    public static final int INT_B_L = 5;
    public static final int INT_B_R = 6;
    public static final int INT_L_B = 10;
    public static final int INT_L_CTR_CH = 11;
    public static final int INT_L_CTR_DES = 12;
    public static final int INT_L_T = 9;
    public static final int INT_R_B = 14;
    public static final int INT_R_CTR_CH = 15;
    public static final int INT_R_CTR_DES = 16;
    public static final int INT_R_T = 13;
    public static final int INT_T_CTR_CH = 3;
    public static final int INT_T_CTR_DES = 4;
    public static final int INT_T_L = 1;
    public static final int INT_T_R = 2;
    public static final Enum L_B;
    public static final Enum L_CTR_CH;
    public static final Enum L_CTR_DES;
    public static final Enum L_T;
    public static final Enum R_B;
    public static final Enum R_CTR_CH;
    public static final Enum R_CTR_DES;
    public static final Enum R_T;
    public static final Enum T_CTR_CH;
    public static final Enum T_CTR_DES;
    public static final Enum T_L;
    public static final Enum T_R;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B_CTR_CH = 7;
        static final int INT_B_CTR_DES = 8;
        static final int INT_B_L = 5;
        static final int INT_B_R = 6;
        static final int INT_L_B = 10;
        static final int INT_L_CTR_CH = 11;
        static final int INT_L_CTR_DES = 12;
        static final int INT_L_T = 9;
        static final int INT_R_B = 14;
        static final int INT_R_CTR_CH = 15;
        static final int INT_R_CTR_DES = 16;
        static final int INT_R_T = 13;
        static final int INT_T_CTR_CH = 3;
        static final int INT_T_CTR_DES = 4;
        static final int INT_T_L = 1;
        static final int INT_T_R = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("tL", 1), new Enum("tR", 2), new Enum("tCtrCh", 3), new Enum("tCtrDes", 4), new Enum("bL", 5), new Enum("bR", 6), new Enum("bCtrCh", 7), new Enum("bCtrDes", 8), new Enum("lT", 9), new Enum("lB", 10), new Enum("lCtrCh", 11), new Enum("lCtrDes", 12), new Enum("rT", 13), new Enum("rB", 14), new Enum("rCtrCh", 15), new Enum("rCtrDes", 16)});

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
        SimpleTypeFactory<STHierarchyAlignment> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sthierarchyalignment4373type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        T_L = Enum.forString("tL");
        T_R = Enum.forString("tR");
        T_CTR_CH = Enum.forString("tCtrCh");
        T_CTR_DES = Enum.forString("tCtrDes");
        B_L = Enum.forString("bL");
        B_R = Enum.forString("bR");
        B_CTR_CH = Enum.forString("bCtrCh");
        B_CTR_DES = Enum.forString("bCtrDes");
        L_T = Enum.forString("lT");
        L_B = Enum.forString("lB");
        L_CTR_CH = Enum.forString("lCtrCh");
        L_CTR_DES = Enum.forString("lCtrDes");
        R_T = Enum.forString("rT");
        R_B = Enum.forString("rB");
        R_CTR_CH = Enum.forString("rCtrCh");
        R_CTR_DES = Enum.forString("rCtrDes");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
