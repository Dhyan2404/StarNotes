package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STParameterType extends XmlString {
    public static final Enum CELL;
    public static final SimpleTypeFactory<STParameterType> Factory;
    public static final int INT_CELL = 3;
    public static final int INT_PROMPT = 1;
    public static final int INT_VALUE = 2;
    public static final Enum PROMPT;
    public static final Enum VALUE;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CELL = 3;
        static final int INT_PROMPT = 1;
        static final int INT_VALUE = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("prompt", 1), new Enum("value", 2), new Enum("cell", 3)});

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
        SimpleTypeFactory<STParameterType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stparametertype5cd2type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        PROMPT = Enum.forString("prompt");
        VALUE = Enum.forString("value");
        CELL = Enum.forString("cell");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
