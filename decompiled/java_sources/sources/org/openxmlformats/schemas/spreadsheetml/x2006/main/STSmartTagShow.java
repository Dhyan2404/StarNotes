package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STSmartTagShow extends XmlString {
    public static final Enum ALL;
    public static final SimpleTypeFactory<STSmartTagShow> Factory;
    public static final int INT_ALL = 1;
    public static final int INT_NONE = 2;
    public static final int INT_NO_INDICATOR = 3;
    public static final Enum NONE;
    public static final Enum NO_INDICATOR;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALL = 1;
        static final int INT_NONE = 2;
        static final int INT_NO_INDICATOR = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("all", 1), new Enum("none", 2), new Enum("noIndicator", 3)});

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
        SimpleTypeFactory<STSmartTagShow> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsmarttagshowce87type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ALL = Enum.forString("all");
        NONE = Enum.forString("none");
        NO_INDICATOR = Enum.forString("noIndicator");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
