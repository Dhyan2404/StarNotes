package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STQualifier extends XmlString {
    public static final Enum DOUBLE_QUOTE;
    public static final SimpleTypeFactory<STQualifier> Factory;
    public static final int INT_DOUBLE_QUOTE = 1;
    public static final int INT_NONE = 3;
    public static final int INT_SINGLE_QUOTE = 2;
    public static final Enum NONE;
    public static final Enum SINGLE_QUOTE;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DOUBLE_QUOTE = 1;
        static final int INT_NONE = 3;
        static final int INT_SINGLE_QUOTE = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("doubleQuote", 1), new Enum("singleQuote", 2), new Enum("none", 3)});

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
        SimpleTypeFactory<STQualifier> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stqualifier91b9type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        DOUBLE_QUOTE = Enum.forString("doubleQuote");
        SINGLE_QUOTE = Enum.forString("singleQuote");
        NONE = Enum.forString("none");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
