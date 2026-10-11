package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STPrintWhat extends XmlToken {
    public static final SimpleTypeFactory<STPrintWhat> Factory;
    public static final Enum HANDOUTS_1;
    public static final Enum HANDOUTS_2;
    public static final Enum HANDOUTS_3;
    public static final Enum HANDOUTS_4;
    public static final Enum HANDOUTS_6;
    public static final Enum HANDOUTS_9;
    public static final int INT_HANDOUTS_1 = 2;
    public static final int INT_HANDOUTS_2 = 3;
    public static final int INT_HANDOUTS_3 = 4;
    public static final int INT_HANDOUTS_4 = 5;
    public static final int INT_HANDOUTS_6 = 6;
    public static final int INT_HANDOUTS_9 = 7;
    public static final int INT_NOTES = 8;
    public static final int INT_OUTLINE = 9;
    public static final int INT_SLIDES = 1;
    public static final Enum NOTES;
    public static final Enum OUTLINE;
    public static final Enum SLIDES;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_HANDOUTS_1 = 2;
        static final int INT_HANDOUTS_2 = 3;
        static final int INT_HANDOUTS_3 = 4;
        static final int INT_HANDOUTS_4 = 5;
        static final int INT_HANDOUTS_6 = 6;
        static final int INT_HANDOUTS_9 = 7;
        static final int INT_NOTES = 8;
        static final int INT_OUTLINE = 9;
        static final int INT_SLIDES = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("slides", 1), new Enum("handouts1", 2), new Enum("handouts2", 3), new Enum("handouts3", 4), new Enum("handouts4", 5), new Enum("handouts6", 6), new Enum("handouts9", 7), new Enum("notes", 8), new Enum("outline", 9)});

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
        SimpleTypeFactory<STPrintWhat> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stprintwhat9feetype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        SLIDES = Enum.forString("slides");
        HANDOUTS_1 = Enum.forString("handouts1");
        HANDOUTS_2 = Enum.forString("handouts2");
        HANDOUTS_3 = Enum.forString("handouts3");
        HANDOUTS_4 = Enum.forString("handouts4");
        HANDOUTS_6 = Enum.forString("handouts6");
        HANDOUTS_9 = Enum.forString("handouts9");
        NOTES = Enum.forString("notes");
        OUTLINE = Enum.forString("outline");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
