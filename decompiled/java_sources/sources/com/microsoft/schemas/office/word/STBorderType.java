package com.microsoft.schemas.office.word;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STBorderType extends XmlString {
    public static final Enum DASH;
    public static final Enum DASHED_SMALL;
    public static final Enum DASH_DOT_DOT;
    public static final Enum DASH_DOT_STROKED;
    public static final Enum DOT;
    public static final Enum DOT_DASH;
    public static final Enum DOUBLE;
    public static final Enum DOUBLE_WAVE;
    public static final SimpleTypeFactory<STBorderType> Factory;
    public static final Enum HAIRLINE;
    public static final Enum HTML_INSET;
    public static final Enum HTML_OUTSET;
    public static final int INT_DASH = 7;
    public static final int INT_DASHED_SMALL = 22;
    public static final int INT_DASH_DOT_DOT = 9;
    public static final int INT_DASH_DOT_STROKED = 23;
    public static final int INT_DOT = 6;
    public static final int INT_DOT_DASH = 8;
    public static final int INT_DOUBLE = 4;
    public static final int INT_DOUBLE_WAVE = 21;
    public static final int INT_HAIRLINE = 5;
    public static final int INT_HTML_INSET = 27;
    public static final int INT_HTML_OUTSET = 26;
    public static final int INT_NONE = 1;
    public static final int INT_SINGLE = 2;
    public static final int INT_THICK = 3;
    public static final int INT_THICK_BETWEEN_THIN = 16;
    public static final int INT_THICK_BETWEEN_THIN_LARGE = 19;
    public static final int INT_THICK_BETWEEN_THIN_SMALL = 13;
    public static final int INT_THICK_THIN = 15;
    public static final int INT_THICK_THIN_LARGE = 18;
    public static final int INT_THICK_THIN_SMALL = 12;
    public static final int INT_THIN_THICK = 14;
    public static final int INT_THIN_THICK_LARGE = 17;
    public static final int INT_THIN_THICK_SMALL = 11;
    public static final int INT_THREE_D_EMBOSS = 24;
    public static final int INT_THREE_D_ENGRAVE = 25;
    public static final int INT_TRIPLE = 10;
    public static final int INT_WAVE = 20;
    public static final Enum NONE;
    public static final Enum SINGLE;
    public static final Enum THICK;
    public static final Enum THICK_BETWEEN_THIN;
    public static final Enum THICK_BETWEEN_THIN_LARGE;
    public static final Enum THICK_BETWEEN_THIN_SMALL;
    public static final Enum THICK_THIN;
    public static final Enum THICK_THIN_LARGE;
    public static final Enum THICK_THIN_SMALL;
    public static final Enum THIN_THICK;
    public static final Enum THIN_THICK_LARGE;
    public static final Enum THIN_THICK_SMALL;
    public static final Enum THREE_D_EMBOSS;
    public static final Enum THREE_D_ENGRAVE;
    public static final Enum TRIPLE;
    public static final Enum WAVE;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DASH = 7;
        static final int INT_DASHED_SMALL = 22;
        static final int INT_DASH_DOT_DOT = 9;
        static final int INT_DASH_DOT_STROKED = 23;
        static final int INT_DOT = 6;
        static final int INT_DOT_DASH = 8;
        static final int INT_DOUBLE = 4;
        static final int INT_DOUBLE_WAVE = 21;
        static final int INT_HAIRLINE = 5;
        static final int INT_HTML_INSET = 27;
        static final int INT_HTML_OUTSET = 26;
        static final int INT_NONE = 1;
        static final int INT_SINGLE = 2;
        static final int INT_THICK = 3;
        static final int INT_THICK_BETWEEN_THIN = 16;
        static final int INT_THICK_BETWEEN_THIN_LARGE = 19;
        static final int INT_THICK_BETWEEN_THIN_SMALL = 13;
        static final int INT_THICK_THIN = 15;
        static final int INT_THICK_THIN_LARGE = 18;
        static final int INT_THICK_THIN_SMALL = 12;
        static final int INT_THIN_THICK = 14;
        static final int INT_THIN_THICK_LARGE = 17;
        static final int INT_THIN_THICK_SMALL = 11;
        static final int INT_THREE_D_EMBOSS = 24;
        static final int INT_THREE_D_ENGRAVE = 25;
        static final int INT_TRIPLE = 10;
        static final int INT_WAVE = 20;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum(Constants.ATTRVAL_SINGLE, 2), new Enum("thick", 3), new Enum("double", 4), new Enum("hairline", 5), new Enum(gon.f71308x0, 6), new Enum("dash", 7), new Enum("dotDash", 8), new Enum("dashDotDot", 9), new Enum("triple", 10), new Enum("thinThickSmall", 11), new Enum("thickThinSmall", 12), new Enum("thickBetweenThinSmall", 13), new Enum("thinThick", 14), new Enum("thickThin", 15), new Enum("thickBetweenThin", 16), new Enum("thinThickLarge", 17), new Enum("thickThinLarge", 18), new Enum("thickBetweenThinLarge", 19), new Enum("wave", 20), new Enum("doubleWave", 21), new Enum("dashedSmall", 22), new Enum("dashDotStroked", 23), new Enum("threeDEmboss", 24), new Enum("threeDEngrave", 25), new Enum("HTMLOutset", 26), new Enum("HTMLInset", 27)});

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
        SimpleTypeFactory<STBorderType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stbordertype7cc7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        SINGLE = Enum.forString(Constants.ATTRVAL_SINGLE);
        THICK = Enum.forString("thick");
        DOUBLE = Enum.forString("double");
        HAIRLINE = Enum.forString("hairline");
        DOT = Enum.forString(gon.f71308x0);
        DASH = Enum.forString("dash");
        DOT_DASH = Enum.forString("dotDash");
        DASH_DOT_DOT = Enum.forString("dashDotDot");
        TRIPLE = Enum.forString("triple");
        THIN_THICK_SMALL = Enum.forString("thinThickSmall");
        THICK_THIN_SMALL = Enum.forString("thickThinSmall");
        THICK_BETWEEN_THIN_SMALL = Enum.forString("thickBetweenThinSmall");
        THIN_THICK = Enum.forString("thinThick");
        THICK_THIN = Enum.forString("thickThin");
        THICK_BETWEEN_THIN = Enum.forString("thickBetweenThin");
        THIN_THICK_LARGE = Enum.forString("thinThickLarge");
        THICK_THIN_LARGE = Enum.forString("thickThinLarge");
        THICK_BETWEEN_THIN_LARGE = Enum.forString("thickBetweenThinLarge");
        WAVE = Enum.forString("wave");
        DOUBLE_WAVE = Enum.forString("doubleWave");
        DASHED_SMALL = Enum.forString("dashedSmall");
        DASH_DOT_STROKED = Enum.forString("dashDotStroked");
        THREE_D_EMBOSS = Enum.forString("threeDEmboss");
        THREE_D_ENGRAVE = Enum.forString("threeDEngrave");
        HTML_OUTSET = Enum.forString("HTMLOutset");
        HTML_INSET = Enum.forString("HTMLInset");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
