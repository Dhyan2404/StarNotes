package org.openxmlformats.schemas.drawingml.x2006.main;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTextFontAlignType extends XmlToken {
    public static final Enum AUTO;

    /* renamed from: B */
    public static final Enum f115743B;
    public static final Enum BASE;
    public static final Enum CTR;
    public static final SimpleTypeFactory<STTextFontAlignType> Factory;
    public static final int INT_AUTO = 1;
    public static final int INT_B = 5;
    public static final int INT_BASE = 4;
    public static final int INT_CTR = 3;
    public static final int INT_T = 2;

    /* renamed from: T */
    public static final Enum f115744T;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AUTO = 1;
        static final int INT_B = 5;
        static final int INT_BASE = 4;
        static final int INT_CTR = 3;
        static final int INT_T = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("auto", 1), new Enum("t", 2), new Enum("ctr", 3), new Enum(gon.f71271X, 4), new Enum("b", 5)});

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
        SimpleTypeFactory<STTextFontAlignType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttextfontaligntypecb44type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        AUTO = Enum.forString("auto");
        f115744T = Enum.forString("t");
        CTR = Enum.forString("ctr");
        BASE = Enum.forString(gon.f71271X);
        f115743B = Enum.forString("b");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
