package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STPTabRelativeTo extends XmlString {
    public static final SimpleTypeFactory<STPTabRelativeTo> Factory;
    public static final Enum INDENT;
    public static final int INT_INDENT = 2;
    public static final int INT_MARGIN = 1;
    public static final Enum MARGIN;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_INDENT = 2;
        static final int INT_MARGIN = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("margin", 1), new Enum("indent", 2)});

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
        SimpleTypeFactory<STPTabRelativeTo> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stptabrelativeto37cctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        MARGIN = Enum.forString("margin");
        INDENT = Enum.forString("indent");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
