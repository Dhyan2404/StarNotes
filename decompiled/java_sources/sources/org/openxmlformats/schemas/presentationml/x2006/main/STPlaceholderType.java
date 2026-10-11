package org.openxmlformats.schemas.presentationml.x2006.main;

import androidx.core.graphics.drawable.IconCompat;
import com.caverock.androidsvg.SVGParser;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STPlaceholderType extends XmlToken {
    public static final Enum BODY;
    public static final Enum CHART;
    public static final Enum CLIP_ART;
    public static final Enum CTR_TITLE;
    public static final Enum DGM;

    /* renamed from: DT */
    public static final Enum f115771DT;
    public static final Enum FTR;
    public static final SimpleTypeFactory<STPlaceholderType> Factory;
    public static final Enum HDR;
    public static final int INT_BODY = 2;
    public static final int INT_CHART = 10;
    public static final int INT_CLIP_ART = 12;
    public static final int INT_CTR_TITLE = 3;
    public static final int INT_DGM = 13;
    public static final int INT_DT = 5;
    public static final int INT_FTR = 7;
    public static final int INT_HDR = 8;
    public static final int INT_MEDIA = 14;
    public static final int INT_OBJ = 9;
    public static final int INT_PIC = 16;
    public static final int INT_SLD_IMG = 15;
    public static final int INT_SLD_NUM = 6;
    public static final int INT_SUB_TITLE = 4;
    public static final int INT_TBL = 11;
    public static final int INT_TITLE = 1;
    public static final Enum MEDIA;
    public static final Enum OBJ;
    public static final Enum PIC;
    public static final Enum SLD_IMG;
    public static final Enum SLD_NUM;
    public static final Enum SUB_TITLE;
    public static final Enum TBL;
    public static final Enum TITLE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BODY = 2;
        static final int INT_CHART = 10;
        static final int INT_CLIP_ART = 12;
        static final int INT_CTR_TITLE = 3;
        static final int INT_DGM = 13;
        static final int INT_DT = 5;
        static final int INT_FTR = 7;
        static final int INT_HDR = 8;
        static final int INT_MEDIA = 14;
        static final int INT_OBJ = 9;
        static final int INT_PIC = 16;
        static final int INT_SLD_IMG = 15;
        static final int INT_SLD_NUM = 6;
        static final int INT_SUB_TITLE = 4;
        static final int INT_TBL = 11;
        static final int INT_TITLE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("title", 1), new Enum("body", 2), new Enum("ctrTitle", 3), new Enum("subTitle", 4), new Enum("dt", 5), new Enum("sldNum", 6), new Enum("ftr", 7), new Enum("hdr", 8), new Enum(IconCompat.f5434l, 9), new Enum("chart", 10), new Enum("tbl", 11), new Enum("clipArt", 12), new Enum("dgm", 13), new Enum(SVGParser.f16046r, 14), new Enum("sldImg", 15), new Enum("pic", 16)});

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
        SimpleTypeFactory<STPlaceholderType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stplaceholdertypeca72type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        TITLE = Enum.forString("title");
        BODY = Enum.forString("body");
        CTR_TITLE = Enum.forString("ctrTitle");
        SUB_TITLE = Enum.forString("subTitle");
        f115771DT = Enum.forString("dt");
        SLD_NUM = Enum.forString("sldNum");
        FTR = Enum.forString("ftr");
        HDR = Enum.forString("hdr");
        OBJ = Enum.forString(IconCompat.f5434l);
        CHART = Enum.forString("chart");
        TBL = Enum.forString("tbl");
        CLIP_ART = Enum.forString("clipArt");
        DGM = Enum.forString("dgm");
        MEDIA = Enum.forString(SVGParser.f16046r);
        SLD_IMG = Enum.forString("sldImg");
        PIC = Enum.forString("pic");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
