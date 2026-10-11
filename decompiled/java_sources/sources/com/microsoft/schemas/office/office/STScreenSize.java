package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STScreenSize extends XmlString {
    public static final SimpleTypeFactory<STScreenSize> Factory;
    public static final int INT_X_1024_768 = 5;
    public static final int INT_X_1152_862 = 6;
    public static final int INT_X_544_376 = 1;
    public static final int INT_X_640_480 = 2;
    public static final int INT_X_720_512 = 3;
    public static final int INT_X_800_600 = 4;
    public static final Enum X_1024_768;
    public static final Enum X_1152_862;
    public static final Enum X_544_376;
    public static final Enum X_640_480;
    public static final Enum X_720_512;
    public static final Enum X_800_600;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_X_1024_768 = 5;
        static final int INT_X_1152_862 = 6;
        static final int INT_X_544_376 = 1;
        static final int INT_X_640_480 = 2;
        static final int INT_X_720_512 = 3;
        static final int INT_X_800_600 = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("544,376", 1), new Enum("640,480", 2), new Enum("720,512", 3), new Enum("800,600", 4), new Enum("1024,768", 5), new Enum("1152,862", 6)});

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
        SimpleTypeFactory<STScreenSize> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stscreensize2340type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        X_544_376 = Enum.forString("544,376");
        X_640_480 = Enum.forString("640,480");
        X_720_512 = Enum.forString("720,512");
        X_800_600 = Enum.forString("800,600");
        X_1024_768 = Enum.forString("1024,768");
        X_1152_862 = Enum.forString("1152,862");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
