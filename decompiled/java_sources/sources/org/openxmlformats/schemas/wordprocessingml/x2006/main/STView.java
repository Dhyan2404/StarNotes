package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STView extends XmlString {
    public static final SimpleTypeFactory<STView> Factory;
    public static final int INT_MASTER_PAGES = 4;
    public static final int INT_NONE = 1;
    public static final int INT_NORMAL = 5;
    public static final int INT_OUTLINE = 3;
    public static final int INT_PRINT = 2;
    public static final int INT_WEB = 6;
    public static final Enum MASTER_PAGES;
    public static final Enum NONE;
    public static final Enum NORMAL;
    public static final Enum OUTLINE;
    public static final Enum PRINT;
    public static final Enum WEB;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_MASTER_PAGES = 4;
        static final int INT_NONE = 1;
        static final int INT_NORMAL = 5;
        static final int INT_OUTLINE = 3;
        static final int INT_PRINT = 2;
        static final int INT_WEB = 6;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("print", 2), new Enum("outline", 3), new Enum("masterPages", 4), new Enum("normal", 5), new Enum("web", 6)});

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
        SimpleTypeFactory<STView> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stviewc2d3type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        PRINT = Enum.forString("print");
        OUTLINE = Enum.forString("outline");
        MASTER_PAGES = Enum.forString("masterPages");
        NORMAL = Enum.forString("normal");
        WEB = Enum.forString("web");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
