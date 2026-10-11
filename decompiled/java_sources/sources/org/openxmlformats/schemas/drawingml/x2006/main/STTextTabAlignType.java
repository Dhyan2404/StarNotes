package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTextTabAlignType extends XmlToken {
    public static final Enum CTR;
    public static final Enum DEC;
    public static final SimpleTypeFactory<STTextTabAlignType> Factory;
    public static final int INT_CTR = 2;
    public static final int INT_DEC = 4;
    public static final int INT_L = 1;
    public static final int INT_R = 3;

    /* renamed from: L */
    public static final Enum f115745L;

    /* renamed from: R */
    public static final Enum f115746R;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CTR = 2;
        static final int INT_DEC = 4;
        static final int INT_L = 1;
        static final int INT_R = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("l", 1), new Enum("ctr", 2), new Enum("r", 3), new Enum("dec", 4)});

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
        SimpleTypeFactory<STTextTabAlignType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttexttabaligntypec202type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115745L = Enum.forString("l");
        CTR = Enum.forString("ctr");
        f115746R = Enum.forString("r");
        DEC = Enum.forString("dec");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
