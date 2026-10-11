package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTextAlignType extends XmlToken {
    public static final Enum CTR;
    public static final Enum DIST;
    public static final SimpleTypeFactory<STTextAlignType> Factory;
    public static final int INT_CTR = 2;
    public static final int INT_DIST = 6;
    public static final int INT_JUST = 4;
    public static final int INT_JUST_LOW = 5;
    public static final int INT_L = 1;
    public static final int INT_R = 3;
    public static final int INT_THAI_DIST = 7;
    public static final Enum JUST;
    public static final Enum JUST_LOW;

    /* renamed from: L */
    public static final Enum f115739L;

    /* renamed from: R */
    public static final Enum f115740R;
    public static final Enum THAI_DIST;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CTR = 2;
        static final int INT_DIST = 6;
        static final int INT_JUST = 4;
        static final int INT_JUST_LOW = 5;
        static final int INT_L = 1;
        static final int INT_R = 3;
        static final int INT_THAI_DIST = 7;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("l", 1), new Enum("ctr", 2), new Enum("r", 3), new Enum("just", 4), new Enum("justLow", 5), new Enum("dist", 6), new Enum("thaiDist", 7)});

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
        SimpleTypeFactory<STTextAlignType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttextaligntypebc93type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115739L = Enum.forString("l");
        CTR = Enum.forString("ctr");
        f115740R = Enum.forString("r");
        JUST = Enum.forString("just");
        JUST_LOW = Enum.forString("justLow");
        DIST = Enum.forString("dist");
        THAI_DIST = Enum.forString("thaiDist");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
