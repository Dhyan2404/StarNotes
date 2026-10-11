package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STSortMethod extends XmlString {
    public static final SimpleTypeFactory<STSortMethod> Factory;
    public static final int INT_NONE = 3;
    public static final int INT_PIN_YIN = 2;
    public static final int INT_STROKE = 1;
    public static final Enum NONE;
    public static final Enum PIN_YIN;
    public static final Enum STROKE;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_NONE = 3;
        static final int INT_PIN_YIN = 2;
        static final int INT_STROKE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("stroke", 1), new Enum("pinYin", 2), new Enum("none", 3)});

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
        SimpleTypeFactory<STSortMethod> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsortmethodbcf8type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        STROKE = Enum.forString("stroke");
        PIN_YIN = Enum.forString("pinYin");
        NONE = Enum.forString("none");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
