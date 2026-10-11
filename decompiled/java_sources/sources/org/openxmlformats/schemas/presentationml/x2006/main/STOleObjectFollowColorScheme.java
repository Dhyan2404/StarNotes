package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STOleObjectFollowColorScheme extends XmlToken {
    public static final Enum FULL;
    public static final SimpleTypeFactory<STOleObjectFollowColorScheme> Factory;
    public static final int INT_FULL = 2;
    public static final int INT_NONE = 1;
    public static final int INT_TEXT_AND_BACKGROUND = 3;
    public static final Enum NONE;
    public static final Enum TEXT_AND_BACKGROUND;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_FULL = 2;
        static final int INT_NONE = 1;
        static final int INT_TEXT_AND_BACKGROUND = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("full", 2), new Enum("textAndBackground", 3)});

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
        SimpleTypeFactory<STOleObjectFollowColorScheme> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stoleobjectfollowcolorschemead25type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        FULL = Enum.forString("full");
        TEXT_AND_BACKGROUND = Enum.forString("textAndBackground");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
