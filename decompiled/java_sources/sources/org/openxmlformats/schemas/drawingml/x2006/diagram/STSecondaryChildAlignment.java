package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STSecondaryChildAlignment extends XmlToken {

    /* renamed from: B */
    public static final Enum f115706B;
    public static final SimpleTypeFactory<STSecondaryChildAlignment> Factory;
    public static final int INT_B = 3;
    public static final int INT_L = 4;
    public static final int INT_NONE = 1;
    public static final int INT_R = 5;
    public static final int INT_T = 2;

    /* renamed from: L */
    public static final Enum f115707L;
    public static final Enum NONE;

    /* renamed from: R */
    public static final Enum f115708R;

    /* renamed from: T */
    public static final Enum f115709T;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_B = 3;
        static final int INT_L = 4;
        static final int INT_NONE = 1;
        static final int INT_R = 5;
        static final int INT_T = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("t", 2), new Enum("b", 3), new Enum("l", 4), new Enum("r", 5)});

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
        SimpleTypeFactory<STSecondaryChildAlignment> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsecondarychildalignment0410type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        f115709T = Enum.forString("t");
        f115706B = Enum.forString("b");
        f115707L = Enum.forString("l");
        f115708R = Enum.forString("r");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
