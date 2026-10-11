package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STWmlColorSchemeIndex extends XmlString {
    public static final Enum ACCENT_1;
    public static final Enum ACCENT_2;
    public static final Enum ACCENT_3;
    public static final Enum ACCENT_4;
    public static final Enum ACCENT_5;
    public static final Enum ACCENT_6;
    public static final Enum DARK_1;
    public static final Enum DARK_2;
    public static final Enum FOLLOWED_HYPERLINK;
    public static final SimpleTypeFactory<STWmlColorSchemeIndex> Factory;
    public static final Enum HYPERLINK;
    public static final int INT_ACCENT_1 = 5;
    public static final int INT_ACCENT_2 = 6;
    public static final int INT_ACCENT_3 = 7;
    public static final int INT_ACCENT_4 = 8;
    public static final int INT_ACCENT_5 = 9;
    public static final int INT_ACCENT_6 = 10;
    public static final int INT_DARK_1 = 1;
    public static final int INT_DARK_2 = 3;
    public static final int INT_FOLLOWED_HYPERLINK = 12;
    public static final int INT_HYPERLINK = 11;
    public static final int INT_LIGHT_1 = 2;
    public static final int INT_LIGHT_2 = 4;
    public static final Enum LIGHT_1;
    public static final Enum LIGHT_2;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ACCENT_1 = 5;
        static final int INT_ACCENT_2 = 6;
        static final int INT_ACCENT_3 = 7;
        static final int INT_ACCENT_4 = 8;
        static final int INT_ACCENT_5 = 9;
        static final int INT_ACCENT_6 = 10;
        static final int INT_DARK_1 = 1;
        static final int INT_DARK_2 = 3;
        static final int INT_FOLLOWED_HYPERLINK = 12;
        static final int INT_HYPERLINK = 11;
        static final int INT_LIGHT_1 = 2;
        static final int INT_LIGHT_2 = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("dark1", 1), new Enum("light1", 2), new Enum("dark2", 3), new Enum("light2", 4), new Enum("accent1", 5), new Enum("accent2", 6), new Enum("accent3", 7), new Enum("accent4", 8), new Enum("accent5", 9), new Enum("accent6", 10), new Enum("hyperlink", 11), new Enum("followedHyperlink", 12)});

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
        SimpleTypeFactory<STWmlColorSchemeIndex> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stwmlcolorschemeindex4de2type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        DARK_1 = Enum.forString("dark1");
        LIGHT_1 = Enum.forString("light1");
        DARK_2 = Enum.forString("dark2");
        LIGHT_2 = Enum.forString("light2");
        ACCENT_1 = Enum.forString("accent1");
        ACCENT_2 = Enum.forString("accent2");
        ACCENT_3 = Enum.forString("accent3");
        ACCENT_4 = Enum.forString("accent4");
        ACCENT_5 = Enum.forString("accent5");
        ACCENT_6 = Enum.forString("accent6");
        HYPERLINK = Enum.forString("hyperlink");
        FOLLOWED_HYPERLINK = Enum.forString("followedHyperlink");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
