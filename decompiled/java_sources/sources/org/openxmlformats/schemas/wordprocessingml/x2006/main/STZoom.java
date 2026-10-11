package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STZoom extends XmlString {
    public static final Enum BEST_FIT;
    public static final Enum FULL_PAGE;
    public static final SimpleTypeFactory<STZoom> Factory;
    public static final int INT_BEST_FIT = 3;
    public static final int INT_FULL_PAGE = 2;
    public static final int INT_NONE = 1;
    public static final int INT_TEXT_FIT = 4;
    public static final Enum NONE;
    public static final Enum TEXT_FIT;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BEST_FIT = 3;
        static final int INT_FULL_PAGE = 2;
        static final int INT_NONE = 1;
        static final int INT_TEXT_FIT = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("fullPage", 2), new Enum("bestFit", 3), new Enum("textFit", 4)});

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
        SimpleTypeFactory<STZoom> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stzoom8865type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        FULL_PAGE = Enum.forString("fullPage");
        BEST_FIT = Enum.forString("bestFit");
        TEXT_FIT = Enum.forString("textFit");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
