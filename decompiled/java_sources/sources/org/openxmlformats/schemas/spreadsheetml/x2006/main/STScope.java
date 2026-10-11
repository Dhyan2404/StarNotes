package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STScope extends XmlString {
    public static final Enum DATA;
    public static final Enum FIELD;
    public static final SimpleTypeFactory<STScope> Factory;
    public static final int INT_DATA = 2;
    public static final int INT_FIELD = 3;
    public static final int INT_SELECTION = 1;
    public static final Enum SELECTION;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DATA = 2;
        static final int INT_FIELD = 3;
        static final int INT_SELECTION = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("selection", 1), new Enum("data", 2), new Enum("field", 3)});

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
        SimpleTypeFactory<STScope> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stscopea463type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SELECTION = Enum.forString("selection");
        DATA = Enum.forString("data");
        FIELD = Enum.forString("field");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
