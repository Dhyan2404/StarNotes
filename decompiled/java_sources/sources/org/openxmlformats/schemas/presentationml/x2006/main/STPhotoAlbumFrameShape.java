package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STPhotoAlbumFrameShape extends XmlToken {
    public static final Enum FRAME_STYLE_1;
    public static final Enum FRAME_STYLE_2;
    public static final Enum FRAME_STYLE_3;
    public static final Enum FRAME_STYLE_4;
    public static final Enum FRAME_STYLE_5;
    public static final Enum FRAME_STYLE_6;
    public static final Enum FRAME_STYLE_7;
    public static final SimpleTypeFactory<STPhotoAlbumFrameShape> Factory;
    public static final int INT_FRAME_STYLE_1 = 1;
    public static final int INT_FRAME_STYLE_2 = 2;
    public static final int INT_FRAME_STYLE_3 = 3;
    public static final int INT_FRAME_STYLE_4 = 4;
    public static final int INT_FRAME_STYLE_5 = 5;
    public static final int INT_FRAME_STYLE_6 = 6;
    public static final int INT_FRAME_STYLE_7 = 7;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_FRAME_STYLE_1 = 1;
        static final int INT_FRAME_STYLE_2 = 2;
        static final int INT_FRAME_STYLE_3 = 3;
        static final int INT_FRAME_STYLE_4 = 4;
        static final int INT_FRAME_STYLE_5 = 5;
        static final int INT_FRAME_STYLE_6 = 6;
        static final int INT_FRAME_STYLE_7 = 7;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("frameStyle1", 1), new Enum("frameStyle2", 2), new Enum("frameStyle3", 3), new Enum("frameStyle4", 4), new Enum("frameStyle5", 5), new Enum("frameStyle6", 6), new Enum("frameStyle7", 7)});

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
        SimpleTypeFactory<STPhotoAlbumFrameShape> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stphotoalbumframeshapeed04type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        FRAME_STYLE_1 = Enum.forString("frameStyle1");
        FRAME_STYLE_2 = Enum.forString("frameStyle2");
        FRAME_STYLE_3 = Enum.forString("frameStyle3");
        FRAME_STYLE_4 = Enum.forString("frameStyle4");
        FRAME_STYLE_5 = Enum.forString("frameStyle5");
        FRAME_STYLE_6 = Enum.forString("frameStyle6");
        FRAME_STYLE_7 = Enum.forString("frameStyle7");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
