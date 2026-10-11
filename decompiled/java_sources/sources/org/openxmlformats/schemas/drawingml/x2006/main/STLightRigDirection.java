package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STLightRigDirection extends XmlToken {

    /* renamed from: B */
    public static final Enum f115716B;

    /* renamed from: BL */
    public static final Enum f115717BL;

    /* renamed from: BR */
    public static final Enum f115718BR;
    public static final SimpleTypeFactory<STLightRigDirection> Factory;
    public static final int INT_B = 7;
    public static final int INT_BL = 6;
    public static final int INT_BR = 8;
    public static final int INT_L = 4;
    public static final int INT_R = 5;
    public static final int INT_T = 2;
    public static final int INT_TL = 1;
    public static final int INT_TR = 3;

    /* renamed from: L */
    public static final Enum f115719L;

    /* renamed from: R */
    public static final Enum f115720R;

    /* renamed from: T */
    public static final Enum f115721T;

    /* renamed from: TL */
    public static final Enum f115722TL;

    /* renamed from: TR */
    public static final Enum f115723TR;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B = 7;
        static final int INT_BL = 6;
        static final int INT_BR = 8;
        static final int INT_L = 4;
        static final int INT_R = 5;
        static final int INT_T = 2;
        static final int INT_TL = 1;
        static final int INT_TR = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("tl", 1), new Enum("t", 2), new Enum("tr", 3), new Enum("l", 4), new Enum("r", 5), new Enum("bl", 6), new Enum("b", 7), new Enum("br", 8)});

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
        SimpleTypeFactory<STLightRigDirection> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stlightrigdirection1e26type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115722TL = Enum.forString("tl");
        f115721T = Enum.forString("t");
        f115723TR = Enum.forString("tr");
        f115719L = Enum.forString("l");
        f115720R = Enum.forString("r");
        f115717BL = Enum.forString("bl");
        f115716B = Enum.forString("b");
        f115718BR = Enum.forString("br");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
