package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STPresetShadowVal extends XmlToken {
    public static final SimpleTypeFactory<STPresetShadowVal> Factory;
    public static final int INT_SHDW_1 = 1;
    public static final int INT_SHDW_10 = 10;
    public static final int INT_SHDW_11 = 11;
    public static final int INT_SHDW_12 = 12;
    public static final int INT_SHDW_13 = 13;
    public static final int INT_SHDW_14 = 14;
    public static final int INT_SHDW_15 = 15;
    public static final int INT_SHDW_16 = 16;
    public static final int INT_SHDW_17 = 17;
    public static final int INT_SHDW_18 = 18;
    public static final int INT_SHDW_19 = 19;
    public static final int INT_SHDW_2 = 2;
    public static final int INT_SHDW_20 = 20;
    public static final int INT_SHDW_3 = 3;
    public static final int INT_SHDW_4 = 4;
    public static final int INT_SHDW_5 = 5;
    public static final int INT_SHDW_6 = 6;
    public static final int INT_SHDW_7 = 7;
    public static final int INT_SHDW_8 = 8;
    public static final int INT_SHDW_9 = 9;
    public static final Enum SHDW_1;
    public static final Enum SHDW_10;
    public static final Enum SHDW_11;
    public static final Enum SHDW_12;
    public static final Enum SHDW_13;
    public static final Enum SHDW_14;
    public static final Enum SHDW_15;
    public static final Enum SHDW_16;
    public static final Enum SHDW_17;
    public static final Enum SHDW_18;
    public static final Enum SHDW_19;
    public static final Enum SHDW_2;
    public static final Enum SHDW_20;
    public static final Enum SHDW_3;
    public static final Enum SHDW_4;
    public static final Enum SHDW_5;
    public static final Enum SHDW_6;
    public static final Enum SHDW_7;
    public static final Enum SHDW_8;
    public static final Enum SHDW_9;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_SHDW_1 = 1;
        static final int INT_SHDW_10 = 10;
        static final int INT_SHDW_11 = 11;
        static final int INT_SHDW_12 = 12;
        static final int INT_SHDW_13 = 13;
        static final int INT_SHDW_14 = 14;
        static final int INT_SHDW_15 = 15;
        static final int INT_SHDW_16 = 16;
        static final int INT_SHDW_17 = 17;
        static final int INT_SHDW_18 = 18;
        static final int INT_SHDW_19 = 19;
        static final int INT_SHDW_2 = 2;
        static final int INT_SHDW_20 = 20;
        static final int INT_SHDW_3 = 3;
        static final int INT_SHDW_4 = 4;
        static final int INT_SHDW_5 = 5;
        static final int INT_SHDW_6 = 6;
        static final int INT_SHDW_7 = 7;
        static final int INT_SHDW_8 = 8;
        static final int INT_SHDW_9 = 9;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("shdw1", 1), new Enum("shdw2", 2), new Enum("shdw3", 3), new Enum("shdw4", 4), new Enum("shdw5", 5), new Enum("shdw6", 6), new Enum("shdw7", 7), new Enum("shdw8", 8), new Enum("shdw9", 9), new Enum("shdw10", 10), new Enum("shdw11", 11), new Enum("shdw12", 12), new Enum("shdw13", 13), new Enum("shdw14", 14), new Enum("shdw15", 15), new Enum("shdw16", 16), new Enum("shdw17", 17), new Enum("shdw18", 18), new Enum("shdw19", 19), new Enum("shdw20", 20)});

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
        SimpleTypeFactory<STPresetShadowVal> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpresetshadowval0e63type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SHDW_1 = Enum.forString("shdw1");
        SHDW_2 = Enum.forString("shdw2");
        SHDW_3 = Enum.forString("shdw3");
        SHDW_4 = Enum.forString("shdw4");
        SHDW_5 = Enum.forString("shdw5");
        SHDW_6 = Enum.forString("shdw6");
        SHDW_7 = Enum.forString("shdw7");
        SHDW_8 = Enum.forString("shdw8");
        SHDW_9 = Enum.forString("shdw9");
        SHDW_10 = Enum.forString("shdw10");
        SHDW_11 = Enum.forString("shdw11");
        SHDW_12 = Enum.forString("shdw12");
        SHDW_13 = Enum.forString("shdw13");
        SHDW_14 = Enum.forString("shdw14");
        SHDW_15 = Enum.forString("shdw15");
        SHDW_16 = Enum.forString("shdw16");
        SHDW_17 = Enum.forString("shdw17");
        SHDW_18 = Enum.forString("shdw18");
        SHDW_19 = Enum.forString("shdw19");
        SHDW_20 = Enum.forString("shdw20");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
