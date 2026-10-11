package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STPhotoAlbumLayout extends XmlToken {
    public static final Enum FIT_TO_SLIDE;
    public static final SimpleTypeFactory<STPhotoAlbumLayout> Factory;
    public static final int INT_FIT_TO_SLIDE = 1;
    public static final int INT_X_1_PIC = 2;
    public static final int INT_X_1_PIC_TITLE = 5;
    public static final int INT_X_2_PIC = 3;
    public static final int INT_X_2_PIC_TITLE = 6;
    public static final int INT_X_4_PIC = 4;
    public static final int INT_X_4_PIC_TITLE = 7;
    public static final Enum X_1_PIC;
    public static final Enum X_1_PIC_TITLE;
    public static final Enum X_2_PIC;
    public static final Enum X_2_PIC_TITLE;
    public static final Enum X_4_PIC;
    public static final Enum X_4_PIC_TITLE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_FIT_TO_SLIDE = 1;
        static final int INT_X_1_PIC = 2;
        static final int INT_X_1_PIC_TITLE = 5;
        static final int INT_X_2_PIC = 3;
        static final int INT_X_2_PIC_TITLE = 6;
        static final int INT_X_4_PIC = 4;
        static final int INT_X_4_PIC_TITLE = 7;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("fitToSlide", 1), new Enum("1pic", 2), new Enum("2pic", 3), new Enum("4pic", 4), new Enum("1picTitle", 5), new Enum("2picTitle", 6), new Enum("4picTitle", 7)});

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
        SimpleTypeFactory<STPhotoAlbumLayout> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stphotoalbumlayout894etype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        FIT_TO_SLIDE = Enum.forString("fitToSlide");
        X_1_PIC = Enum.forString("1pic");
        X_2_PIC = Enum.forString("2pic");
        X_4_PIC = Enum.forString("4pic");
        X_1_PIC_TITLE = Enum.forString("1picTitle");
        X_2_PIC_TITLE = Enum.forString("2picTitle");
        X_4_PIC_TITLE = Enum.forString("4picTitle");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
