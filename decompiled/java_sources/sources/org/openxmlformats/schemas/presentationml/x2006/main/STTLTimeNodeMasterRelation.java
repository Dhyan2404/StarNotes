package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STTLTimeNodeMasterRelation extends XmlToken {
    public static final SimpleTypeFactory<STTLTimeNodeMasterRelation> Factory;
    public static final int INT_LAST_CLICK = 2;
    public static final int INT_NEXT_CLICK = 3;
    public static final int INT_SAME_CLICK = 1;
    public static final Enum LAST_CLICK;
    public static final Enum NEXT_CLICK;
    public static final Enum SAME_CLICK;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_LAST_CLICK = 2;
        static final int INT_NEXT_CLICK = 3;
        static final int INT_SAME_CLICK = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("sameClick", 1), new Enum("lastClick", 2), new Enum("nextClick", 3)});

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
        SimpleTypeFactory<STTLTimeNodeMasterRelation> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttltimenodemasterrelation9530type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SAME_CLICK = Enum.forString("sameClick");
        LAST_CLICK = Enum.forString("lastClick");
        NEXT_CLICK = Enum.forString("nextClick");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
