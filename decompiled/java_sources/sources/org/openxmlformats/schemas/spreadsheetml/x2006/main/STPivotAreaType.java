package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STPivotAreaType extends XmlString {
    public static final Enum ALL;
    public static final Enum BUTTON;
    public static final Enum DATA;
    public static final SimpleTypeFactory<STPivotAreaType> Factory;
    public static final int INT_ALL = 4;
    public static final int INT_BUTTON = 6;
    public static final int INT_DATA = 3;
    public static final int INT_NONE = 1;
    public static final int INT_NORMAL = 2;
    public static final int INT_ORIGIN = 5;
    public static final int INT_TOP_END = 7;
    public static final int INT_TOP_RIGHT = 8;
    public static final Enum NONE;
    public static final Enum NORMAL;
    public static final Enum ORIGIN;
    public static final Enum TOP_END;
    public static final Enum TOP_RIGHT;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALL = 4;
        static final int INT_BUTTON = 6;
        static final int INT_DATA = 3;
        static final int INT_NONE = 1;
        static final int INT_NORMAL = 2;
        static final int INT_ORIGIN = 5;
        static final int INT_TOP_END = 7;
        static final int INT_TOP_RIGHT = 8;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("normal", 2), new Enum("data", 3), new Enum("all", 4), new Enum("origin", 5), new Enum("button", 6), new Enum("topEnd", 7), new Enum("topRight", 8)});

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
        SimpleTypeFactory<STPivotAreaType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stpivotareatypef298type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        NORMAL = Enum.forString("normal");
        DATA = Enum.forString("data");
        ALL = Enum.forString("all");
        ORIGIN = Enum.forString("origin");
        BUTTON = Enum.forString("button");
        TOP_END = Enum.forString("topEnd");
        TOP_RIGHT = Enum.forString("topRight");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
