package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STPrintColorMode extends XmlToken {

    /* renamed from: BW */
    public static final Enum f115772BW;
    public static final Enum CLR;
    public static final SimpleTypeFactory<STPrintColorMode> Factory;
    public static final Enum GRAY;
    public static final int INT_BW = 1;
    public static final int INT_CLR = 3;
    public static final int INT_GRAY = 2;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BW = 1;
        static final int INT_CLR = 3;
        static final int INT_GRAY = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("bw", 1), new Enum("gray", 2), new Enum("clr", 3)});

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
        SimpleTypeFactory<STPrintColorMode> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stprintcolormode2e3ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        f115772BW = Enum.forString("bw");
        GRAY = Enum.forString("gray");
        CLR = Enum.forString("clr");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
