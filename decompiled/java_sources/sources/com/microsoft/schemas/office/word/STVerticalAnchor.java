package com.microsoft.schemas.office.word;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STVerticalAnchor extends XmlString {
    public static final SimpleTypeFactory<STVerticalAnchor> Factory;
    public static final int INT_LINE = 4;
    public static final int INT_MARGIN = 1;
    public static final int INT_PAGE = 2;
    public static final int INT_TEXT = 3;
    public static final Enum LINE;
    public static final Enum MARGIN;
    public static final Enum PAGE;
    public static final Enum TEXT;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_LINE = 4;
        static final int INT_MARGIN = 1;
        static final int INT_PAGE = 2;
        static final int INT_TEXT = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("margin", 1), new Enum("page", 2), new Enum("text", 3), new Enum("line", 4)});

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
        SimpleTypeFactory<STVerticalAnchor> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stverticalanchor22cctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        MARGIN = Enum.forString("margin");
        PAGE = Enum.forString("page");
        TEXT = Enum.forString("text");
        LINE = Enum.forString("line");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
