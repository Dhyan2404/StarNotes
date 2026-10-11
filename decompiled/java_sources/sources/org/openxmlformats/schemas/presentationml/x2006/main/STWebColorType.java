package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STWebColorType extends XmlToken {
    public static final Enum BLACK_TEXT_ON_WHITE;
    public static final Enum BROWSER;
    public static final SimpleTypeFactory<STWebColorType> Factory;
    public static final int INT_BLACK_TEXT_ON_WHITE = 6;
    public static final int INT_BROWSER = 2;
    public static final int INT_NONE = 1;
    public static final int INT_PRESENTATION_ACCENT = 4;
    public static final int INT_PRESENTATION_TEXT = 3;
    public static final int INT_WHITE_TEXT_ON_BLACK = 5;
    public static final Enum NONE;
    public static final Enum PRESENTATION_ACCENT;
    public static final Enum PRESENTATION_TEXT;
    public static final Enum WHITE_TEXT_ON_BLACK;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BLACK_TEXT_ON_WHITE = 6;
        static final int INT_BROWSER = 2;
        static final int INT_NONE = 1;
        static final int INT_PRESENTATION_ACCENT = 4;
        static final int INT_PRESENTATION_TEXT = 3;
        static final int INT_WHITE_TEXT_ON_BLACK = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("browser", 2), new Enum("presentationText", 3), new Enum("presentationAccent", 4), new Enum("whiteTextOnBlack", 5), new Enum("blackTextOnWhite", 6)});

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
        SimpleTypeFactory<STWebColorType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stwebcolortype822ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        BROWSER = Enum.forString("browser");
        PRESENTATION_TEXT = Enum.forString("presentationText");
        PRESENTATION_ACCENT = Enum.forString("presentationAccent");
        WHITE_TEXT_ON_BLACK = Enum.forString("whiteTextOnBlack");
        BLACK_TEXT_ON_WHITE = Enum.forString("blackTextOnWhite");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
