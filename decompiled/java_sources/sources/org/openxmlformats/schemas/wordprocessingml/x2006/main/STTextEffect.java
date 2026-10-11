package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STTextEffect extends XmlString {
    public static final Enum ANTS_BLACK;
    public static final Enum ANTS_RED;
    public static final Enum BLINK_BACKGROUND;
    public static final SimpleTypeFactory<STTextEffect> Factory;
    public static final int INT_ANTS_BLACK = 3;
    public static final int INT_ANTS_RED = 4;
    public static final int INT_BLINK_BACKGROUND = 1;
    public static final int INT_LIGHTS = 2;
    public static final int INT_NONE = 7;
    public static final int INT_SHIMMER = 5;
    public static final int INT_SPARKLE = 6;
    public static final Enum LIGHTS;
    public static final Enum NONE;
    public static final Enum SHIMMER;
    public static final Enum SPARKLE;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ANTS_BLACK = 3;
        static final int INT_ANTS_RED = 4;
        static final int INT_BLINK_BACKGROUND = 1;
        static final int INT_LIGHTS = 2;
        static final int INT_NONE = 7;
        static final int INT_SHIMMER = 5;
        static final int INT_SPARKLE = 6;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("blinkBackground", 1), new Enum("lights", 2), new Enum("antsBlack", 3), new Enum("antsRed", 4), new Enum("shimmer", 5), new Enum("sparkle", 6), new Enum("none", 7)});

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
        SimpleTypeFactory<STTextEffect> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttexteffecteebatype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        BLINK_BACKGROUND = Enum.forString("blinkBackground");
        LIGHTS = Enum.forString("lights");
        ANTS_BLACK = Enum.forString("antsBlack");
        ANTS_RED = Enum.forString("antsRed");
        SHIMMER = Enum.forString("shimmer");
        SPARKLE = Enum.forString("sparkle");
        NONE = Enum.forString("none");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
