package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STFrameLayout extends XmlString {
    public static final Enum COLS;
    public static final SimpleTypeFactory<STFrameLayout> Factory;
    public static final int INT_COLS = 2;
    public static final int INT_NONE = 3;
    public static final int INT_ROWS = 1;
    public static final Enum NONE;
    public static final Enum ROWS;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_COLS = 2;
        static final int INT_NONE = 3;
        static final int INT_ROWS = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("rows", 1), new Enum("cols", 2), new Enum("none", 3)});

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
        SimpleTypeFactory<STFrameLayout> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stframelayoute68btype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ROWS = Enum.forString("rows");
        COLS = Enum.forString("cols");
        NONE = Enum.forString("none");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
