package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STDocPartGallery extends XmlString {
    public static final Enum ANY;
    public static final Enum AUTO_TXT;
    public static final Enum BIB;
    public static final Enum COVER_PG;
    public static final Enum CUSTOM_1;
    public static final Enum CUSTOM_2;
    public static final Enum CUSTOM_3;
    public static final Enum CUSTOM_4;
    public static final Enum CUSTOM_5;
    public static final Enum CUST_AUTO_TXT;
    public static final Enum CUST_BIB;
    public static final Enum CUST_COVER_PG;
    public static final Enum CUST_EQ;
    public static final Enum CUST_FTRS;
    public static final Enum CUST_HDRS;
    public static final Enum CUST_PG_NUM;
    public static final Enum CUST_PG_NUM_B;
    public static final Enum CUST_PG_NUM_MARGINS;
    public static final Enum CUST_PG_NUM_T;
    public static final Enum CUST_QUICK_PARTS;
    public static final Enum CUST_TBLS;
    public static final Enum CUST_TBL_OF_CONTENTS;
    public static final Enum CUST_TXT_BOX;
    public static final Enum CUST_WATERMARKS;
    public static final Enum DEFAULT;
    public static final Enum DOC_PARTS;

    /* renamed from: EQ */
    public static final Enum f115824EQ;
    public static final Enum FTRS;
    public static final SimpleTypeFactory<STDocPartGallery> Factory;
    public static final Enum HDRS;
    public static final int INT_ANY = 2;
    public static final int INT_AUTO_TXT = 12;
    public static final int INT_BIB = 18;
    public static final int INT_COVER_PG = 5;
    public static final int INT_CUSTOM_1 = 34;
    public static final int INT_CUSTOM_2 = 35;
    public static final int INT_CUSTOM_3 = 36;
    public static final int INT_CUSTOM_4 = 37;
    public static final int INT_CUSTOM_5 = 38;
    public static final int INT_CUST_AUTO_TXT = 27;
    public static final int INT_CUST_BIB = 33;
    public static final int INT_CUST_COVER_PG = 20;
    public static final int INT_CUST_EQ = 21;
    public static final int INT_CUST_FTRS = 22;
    public static final int INT_CUST_HDRS = 23;
    public static final int INT_CUST_PG_NUM = 24;
    public static final int INT_CUST_PG_NUM_B = 30;
    public static final int INT_CUST_PG_NUM_MARGINS = 31;
    public static final int INT_CUST_PG_NUM_T = 29;
    public static final int INT_CUST_QUICK_PARTS = 19;
    public static final int INT_CUST_TBLS = 25;
    public static final int INT_CUST_TBL_OF_CONTENTS = 32;
    public static final int INT_CUST_TXT_BOX = 28;
    public static final int INT_CUST_WATERMARKS = 26;
    public static final int INT_DEFAULT = 3;
    public static final int INT_DOC_PARTS = 4;
    public static final int INT_EQ = 6;
    public static final int INT_FTRS = 7;
    public static final int INT_HDRS = 8;
    public static final int INT_PG_NUM = 9;
    public static final int INT_PG_NUM_B = 15;
    public static final int INT_PG_NUM_MARGINS = 16;
    public static final int INT_PG_NUM_T = 14;
    public static final int INT_PLACEHOLDER = 1;
    public static final int INT_TBLS = 10;
    public static final int INT_TBL_OF_CONTENTS = 17;
    public static final int INT_TXT_BOX = 13;
    public static final int INT_WATERMARKS = 11;
    public static final Enum PG_NUM;
    public static final Enum PG_NUM_B;
    public static final Enum PG_NUM_MARGINS;
    public static final Enum PG_NUM_T;
    public static final Enum PLACEHOLDER;
    public static final Enum TBLS;
    public static final Enum TBL_OF_CONTENTS;
    public static final Enum TXT_BOX;
    public static final Enum WATERMARKS;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ANY = 2;
        static final int INT_AUTO_TXT = 12;
        static final int INT_BIB = 18;
        static final int INT_COVER_PG = 5;
        static final int INT_CUSTOM_1 = 34;
        static final int INT_CUSTOM_2 = 35;
        static final int INT_CUSTOM_3 = 36;
        static final int INT_CUSTOM_4 = 37;
        static final int INT_CUSTOM_5 = 38;
        static final int INT_CUST_AUTO_TXT = 27;
        static final int INT_CUST_BIB = 33;
        static final int INT_CUST_COVER_PG = 20;
        static final int INT_CUST_EQ = 21;
        static final int INT_CUST_FTRS = 22;
        static final int INT_CUST_HDRS = 23;
        static final int INT_CUST_PG_NUM = 24;
        static final int INT_CUST_PG_NUM_B = 30;
        static final int INT_CUST_PG_NUM_MARGINS = 31;
        static final int INT_CUST_PG_NUM_T = 29;
        static final int INT_CUST_QUICK_PARTS = 19;
        static final int INT_CUST_TBLS = 25;
        static final int INT_CUST_TBL_OF_CONTENTS = 32;
        static final int INT_CUST_TXT_BOX = 28;
        static final int INT_CUST_WATERMARKS = 26;
        static final int INT_DEFAULT = 3;
        static final int INT_DOC_PARTS = 4;
        static final int INT_EQ = 6;
        static final int INT_FTRS = 7;
        static final int INT_HDRS = 8;
        static final int INT_PG_NUM = 9;
        static final int INT_PG_NUM_B = 15;
        static final int INT_PG_NUM_MARGINS = 16;
        static final int INT_PG_NUM_T = 14;
        static final int INT_PLACEHOLDER = 1;
        static final int INT_TBLS = 10;
        static final int INT_TBL_OF_CONTENTS = 17;
        static final int INT_TXT_BOX = 13;
        static final int INT_WATERMARKS = 11;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(IStyleSheet.CLASS_PLACEHOLDER, 1), new Enum("any", 2), new Enum("default", 3), new Enum("docParts", 4), new Enum("coverPg", 5), new Enum("eq", 6), new Enum("ftrs", 7), new Enum("hdrs", 8), new Enum("pgNum", 9), new Enum("tbls", 10), new Enum("watermarks", 11), new Enum("autoTxt", 12), new Enum("txtBox", 13), new Enum("pgNumT", 14), new Enum("pgNumB", 15), new Enum("pgNumMargins", 16), new Enum("tblOfContents", 17), new Enum("bib", 18), new Enum("custQuickParts", 19), new Enum("custCoverPg", 20), new Enum("custEq", 21), new Enum("custFtrs", 22), new Enum("custHdrs", 23), new Enum("custPgNum", 24), new Enum("custTbls", 25), new Enum("custWatermarks", 26), new Enum("custAutoTxt", 27), new Enum("custTxtBox", 28), new Enum("custPgNumT", 29), new Enum("custPgNumB", 30), new Enum("custPgNumMargins", 31), new Enum("custTblOfContents", 32), new Enum("custBib", 33), new Enum("custom1", 34), new Enum("custom2", 35), new Enum("custom3", 36), new Enum("custom4", 37), new Enum("custom5", 38)});

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
        SimpleTypeFactory<STDocPartGallery> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdocpartgallery6b71type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        PLACEHOLDER = Enum.forString(IStyleSheet.CLASS_PLACEHOLDER);
        ANY = Enum.forString("any");
        DEFAULT = Enum.forString("default");
        DOC_PARTS = Enum.forString("docParts");
        COVER_PG = Enum.forString("coverPg");
        f115824EQ = Enum.forString("eq");
        FTRS = Enum.forString("ftrs");
        HDRS = Enum.forString("hdrs");
        PG_NUM = Enum.forString("pgNum");
        TBLS = Enum.forString("tbls");
        WATERMARKS = Enum.forString("watermarks");
        AUTO_TXT = Enum.forString("autoTxt");
        TXT_BOX = Enum.forString("txtBox");
        PG_NUM_T = Enum.forString("pgNumT");
        PG_NUM_B = Enum.forString("pgNumB");
        PG_NUM_MARGINS = Enum.forString("pgNumMargins");
        TBL_OF_CONTENTS = Enum.forString("tblOfContents");
        BIB = Enum.forString("bib");
        CUST_QUICK_PARTS = Enum.forString("custQuickParts");
        CUST_COVER_PG = Enum.forString("custCoverPg");
        CUST_EQ = Enum.forString("custEq");
        CUST_FTRS = Enum.forString("custFtrs");
        CUST_HDRS = Enum.forString("custHdrs");
        CUST_PG_NUM = Enum.forString("custPgNum");
        CUST_TBLS = Enum.forString("custTbls");
        CUST_WATERMARKS = Enum.forString("custWatermarks");
        CUST_AUTO_TXT = Enum.forString("custAutoTxt");
        CUST_TXT_BOX = Enum.forString("custTxtBox");
        CUST_PG_NUM_T = Enum.forString("custPgNumT");
        CUST_PG_NUM_B = Enum.forString("custPgNumB");
        CUST_PG_NUM_MARGINS = Enum.forString("custPgNumMargins");
        CUST_TBL_OF_CONTENTS = Enum.forString("custTblOfContents");
        CUST_BIB = Enum.forString("custBib");
        CUSTOM_1 = Enum.forString("custom1");
        CUSTOM_2 = Enum.forString("custom2");
        CUSTOM_3 = Enum.forString("custom3");
        CUSTOM_4 = Enum.forString("custom4");
        CUSTOM_5 = Enum.forString("custom5");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
