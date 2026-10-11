package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STSortBy extends XmlString {
    public static final Enum CELL_COLOR;
    public static final Enum FONT_COLOR;
    public static final SimpleTypeFactory<STSortBy> Factory;
    public static final Enum ICON;
    public static final int INT_CELL_COLOR = 2;
    public static final int INT_FONT_COLOR = 3;
    public static final int INT_ICON = 4;
    public static final int INT_VALUE = 1;
    public static final Enum VALUE;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CELL_COLOR = 2;
        static final int INT_FONT_COLOR = 3;
        static final int INT_ICON = 4;
        static final int INT_VALUE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("value", 1), new Enum("cellColor", 2), new Enum("fontColor", 3), new Enum("icon", 4)});

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
        SimpleTypeFactory<STSortBy> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsortbyca6etype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        VALUE = Enum.forString("value");
        CELL_COLOR = Enum.forString("cellColor");
        FONT_COLOR = Enum.forString("fontColor");
        ICON = Enum.forString("icon");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
