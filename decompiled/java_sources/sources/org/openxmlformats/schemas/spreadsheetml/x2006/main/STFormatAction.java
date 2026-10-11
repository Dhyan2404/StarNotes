package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STFormatAction extends XmlString {
    public static final Enum BLANK;
    public static final Enum DRILL;
    public static final Enum FORMATTING;
    public static final Enum FORMULA;
    public static final SimpleTypeFactory<STFormatAction> Factory;
    public static final int INT_BLANK = 1;
    public static final int INT_DRILL = 3;
    public static final int INT_FORMATTING = 2;
    public static final int INT_FORMULA = 4;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BLANK = 1;
        static final int INT_DRILL = 3;
        static final int INT_FORMATTING = 2;
        static final int INT_FORMULA = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("blank", 1), new Enum("formatting", 2), new Enum("drill", 3), new Enum("formula", 4)});

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
        SimpleTypeFactory<STFormatAction> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stformataction8726type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        BLANK = Enum.forString("blank");
        FORMATTING = Enum.forString("formatting");
        DRILL = Enum.forString("drill");
        FORMULA = Enum.forString("formula");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
