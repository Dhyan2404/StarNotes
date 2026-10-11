package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STStyleSort extends XmlString {
    public static final Enum BASED_ON;
    public static final Enum DEFAULT;
    public static final Enum FONT;
    public static final SimpleTypeFactory<STStyleSort> Factory;
    public static final int INT_BASED_ON = 5;
    public static final int INT_DEFAULT = 3;
    public static final int INT_FONT = 4;
    public static final int INT_NAME = 1;
    public static final int INT_PRIORITY = 2;
    public static final int INT_TYPE = 6;
    public static final int INT_X_0000 = 7;
    public static final int INT_X_0001 = 8;
    public static final int INT_X_0002 = 9;
    public static final int INT_X_0003 = 10;
    public static final int INT_X_0004 = 11;
    public static final int INT_X_0005 = 12;
    public static final Enum NAME;
    public static final Enum PRIORITY;
    public static final Enum TYPE;
    public static final Enum X_0000;
    public static final Enum X_0001;
    public static final Enum X_0002;
    public static final Enum X_0003;
    public static final Enum X_0004;
    public static final Enum X_0005;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BASED_ON = 5;
        static final int INT_DEFAULT = 3;
        static final int INT_FONT = 4;
        static final int INT_NAME = 1;
        static final int INT_PRIORITY = 2;
        static final int INT_TYPE = 6;
        static final int INT_X_0000 = 7;
        static final int INT_X_0001 = 8;
        static final int INT_X_0002 = 9;
        static final int INT_X_0003 = 10;
        static final int INT_X_0004 = 11;
        static final int INT_X_0005 = 12;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("name", 1), new Enum("priority", 2), new Enum("default", 3), new Enum("font", 4), new Enum("basedOn", 5), new Enum("type", 6), new Enum("0000", 7), new Enum("0001", 8), new Enum("0002", 9), new Enum("0003", 10), new Enum("0004", 11), new Enum("0005", 12)});

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
        SimpleTypeFactory<STStyleSort> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "ststylesortb6d3type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NAME = Enum.forString("name");
        PRIORITY = Enum.forString("priority");
        DEFAULT = Enum.forString("default");
        FONT = Enum.forString("font");
        BASED_ON = Enum.forString("basedOn");
        TYPE = Enum.forString("type");
        X_0000 = Enum.forString("0000");
        X_0001 = Enum.forString("0001");
        X_0002 = Enum.forString("0002");
        X_0003 = Enum.forString("0003");
        X_0004 = Enum.forString("0004");
        X_0005 = Enum.forString("0005");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
