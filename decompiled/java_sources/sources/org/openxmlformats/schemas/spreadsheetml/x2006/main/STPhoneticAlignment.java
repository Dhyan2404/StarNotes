package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STPhoneticAlignment extends XmlString {
    public static final Enum CENTER;
    public static final Enum DISTRIBUTED;
    public static final SimpleTypeFactory<STPhoneticAlignment> Factory;
    public static final int INT_CENTER = 3;
    public static final int INT_DISTRIBUTED = 4;
    public static final int INT_LEFT = 2;
    public static final int INT_NO_CONTROL = 1;
    public static final Enum LEFT;
    public static final Enum NO_CONTROL;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CENTER = 3;
        static final int INT_DISTRIBUTED = 4;
        static final int INT_LEFT = 2;
        static final int INT_NO_CONTROL = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("noControl", 1), new Enum("left", 2), new Enum("center", 3), new Enum("distributed", 4)});

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
        SimpleTypeFactory<STPhoneticAlignment> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stphoneticalignment0632type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NO_CONTROL = Enum.forString("noControl");
        LEFT = Enum.forString("left");
        CENTER = Enum.forString("center");
        DISTRIBUTED = Enum.forString("distributed");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
