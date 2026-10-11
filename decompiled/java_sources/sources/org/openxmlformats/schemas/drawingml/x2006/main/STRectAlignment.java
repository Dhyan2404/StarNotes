package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STRectAlignment extends XmlToken {

    /* renamed from: B */
    public static final Enum f115731B;

    /* renamed from: BL */
    public static final Enum f115732BL;

    /* renamed from: BR */
    public static final Enum f115733BR;
    public static final Enum CTR;
    public static final SimpleTypeFactory<STRectAlignment> Factory;
    public static final int INT_B = 8;
    public static final int INT_BL = 7;
    public static final int INT_BR = 9;
    public static final int INT_CTR = 5;
    public static final int INT_L = 4;
    public static final int INT_R = 6;
    public static final int INT_T = 2;
    public static final int INT_TL = 1;
    public static final int INT_TR = 3;

    /* renamed from: L */
    public static final Enum f115734L;

    /* renamed from: R */
    public static final Enum f115735R;

    /* renamed from: T */
    public static final Enum f115736T;

    /* renamed from: TL */
    public static final Enum f115737TL;

    /* renamed from: TR */
    public static final Enum f115738TR;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B = 8;
        static final int INT_BL = 7;
        static final int INT_BR = 9;
        static final int INT_CTR = 5;
        static final int INT_L = 4;
        static final int INT_R = 6;
        static final int INT_T = 2;
        static final int INT_TL = 1;
        static final int INT_TR = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("tl", 1), new Enum("t", 2), new Enum("tr", 3), new Enum("l", 4), new Enum("ctr", 5), new Enum("r", 6), new Enum("bl", 7), new Enum("b", 8), new Enum("br", 9)});

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
        SimpleTypeFactory<STRectAlignment> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "strectalignmentd400type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115737TL = Enum.forString("tl");
        f115736T = Enum.forString("t");
        f115738TR = Enum.forString("tr");
        f115734L = Enum.forString("l");
        CTR = Enum.forString("ctr");
        f115735R = Enum.forString("r");
        f115732BL = Enum.forString("bl");
        f115731B = Enum.forString("b");
        f115733BR = Enum.forString("br");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
