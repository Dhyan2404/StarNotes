package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STTblStyleOverrideType extends XmlString {
    public static final Enum BAND_1_HORZ;
    public static final Enum BAND_1_VERT;
    public static final Enum BAND_2_HORZ;
    public static final Enum BAND_2_VERT;
    public static final Enum FIRST_COL;
    public static final Enum FIRST_ROW;
    public static final SimpleTypeFactory<STTblStyleOverrideType> Factory;
    public static final int INT_BAND_1_HORZ = 8;
    public static final int INT_BAND_1_VERT = 6;
    public static final int INT_BAND_2_HORZ = 9;
    public static final int INT_BAND_2_VERT = 7;
    public static final int INT_FIRST_COL = 4;
    public static final int INT_FIRST_ROW = 2;
    public static final int INT_LAST_COL = 5;
    public static final int INT_LAST_ROW = 3;
    public static final int INT_NE_CELL = 10;
    public static final int INT_NW_CELL = 11;
    public static final int INT_SE_CELL = 12;
    public static final int INT_SW_CELL = 13;
    public static final int INT_WHOLE_TABLE = 1;
    public static final Enum LAST_COL;
    public static final Enum LAST_ROW;
    public static final Enum NE_CELL;
    public static final Enum NW_CELL;
    public static final Enum SE_CELL;
    public static final Enum SW_CELL;
    public static final Enum WHOLE_TABLE;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BAND_1_HORZ = 8;
        static final int INT_BAND_1_VERT = 6;
        static final int INT_BAND_2_HORZ = 9;
        static final int INT_BAND_2_VERT = 7;
        static final int INT_FIRST_COL = 4;
        static final int INT_FIRST_ROW = 2;
        static final int INT_LAST_COL = 5;
        static final int INT_LAST_ROW = 3;
        static final int INT_NE_CELL = 10;
        static final int INT_NW_CELL = 11;
        static final int INT_SE_CELL = 12;
        static final int INT_SW_CELL = 13;
        static final int INT_WHOLE_TABLE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("wholeTable", 1), new Enum("firstRow", 2), new Enum("lastRow", 3), new Enum("firstCol", 4), new Enum("lastCol", 5), new Enum("band1Vert", 6), new Enum("band2Vert", 7), new Enum("band1Horz", 8), new Enum("band2Horz", 9), new Enum("neCell", 10), new Enum("nwCell", 11), new Enum("seCell", 12), new Enum("swCell", 13)});

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
        SimpleTypeFactory<STTblStyleOverrideType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttblstyleoverridetype869ftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        WHOLE_TABLE = Enum.forString("wholeTable");
        FIRST_ROW = Enum.forString("firstRow");
        LAST_ROW = Enum.forString("lastRow");
        FIRST_COL = Enum.forString("firstCol");
        LAST_COL = Enum.forString("lastCol");
        BAND_1_VERT = Enum.forString("band1Vert");
        BAND_2_VERT = Enum.forString("band2Vert");
        BAND_1_HORZ = Enum.forString("band1Horz");
        BAND_2_HORZ = Enum.forString("band2Horz");
        NE_CELL = Enum.forString("neCell");
        NW_CELL = Enum.forString("nwCell");
        SE_CELL = Enum.forString("seCell");
        SW_CELL = Enum.forString("swCell");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
