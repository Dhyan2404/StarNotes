package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STTargetScreenSz extends XmlString {
    public static final SimpleTypeFactory<STTargetScreenSz> Factory;
    public static final int INT_X_1024_X_768 = 5;
    public static final int INT_X_1152_X_882 = 6;
    public static final int INT_X_1152_X_900 = 7;
    public static final int INT_X_1280_X_1024 = 8;
    public static final int INT_X_1600_X_1200 = 9;
    public static final int INT_X_1800_X_1440 = 10;
    public static final int INT_X_1920_X_1200 = 11;
    public static final int INT_X_544_X_376 = 1;
    public static final int INT_X_640_X_480 = 2;
    public static final int INT_X_720_X_512 = 3;
    public static final int INT_X_800_X_600 = 4;
    public static final Enum X_1024_X_768;
    public static final Enum X_1152_X_882;
    public static final Enum X_1152_X_900;
    public static final Enum X_1280_X_1024;
    public static final Enum X_1600_X_1200;
    public static final Enum X_1800_X_1440;
    public static final Enum X_1920_X_1200;
    public static final Enum X_544_X_376;
    public static final Enum X_640_X_480;
    public static final Enum X_720_X_512;
    public static final Enum X_800_X_600;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_X_1024_X_768 = 5;
        static final int INT_X_1152_X_882 = 6;
        static final int INT_X_1152_X_900 = 7;
        static final int INT_X_1280_X_1024 = 8;
        static final int INT_X_1600_X_1200 = 9;
        static final int INT_X_1800_X_1440 = 10;
        static final int INT_X_1920_X_1200 = 11;
        static final int INT_X_544_X_376 = 1;
        static final int INT_X_640_X_480 = 2;
        static final int INT_X_720_X_512 = 3;
        static final int INT_X_800_X_600 = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("544x376", 1), new Enum("640x480", 2), new Enum("720x512", 3), new Enum("800x600", 4), new Enum("1024x768", 5), new Enum("1152x882", 6), new Enum("1152x900", 7), new Enum("1280x1024", 8), new Enum("1600x1200", 9), new Enum("1800x1440", 10), new Enum("1920x1200", 11)});

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
        SimpleTypeFactory<STTargetScreenSz> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttargetscreenszaf74type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        X_544_X_376 = Enum.forString("544x376");
        X_640_X_480 = Enum.forString("640x480");
        X_720_X_512 = Enum.forString("720x512");
        X_800_X_600 = Enum.forString("800x600");
        X_1024_X_768 = Enum.forString("1024x768");
        X_1152_X_882 = Enum.forString("1152x882");
        X_1152_X_900 = Enum.forString("1152x900");
        X_1280_X_1024 = Enum.forString("1280x1024");
        X_1600_X_1200 = Enum.forString("1600x1200");
        X_1800_X_1440 = Enum.forString("1800x1440");
        X_1920_X_1200 = Enum.forString("1920x1200");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
