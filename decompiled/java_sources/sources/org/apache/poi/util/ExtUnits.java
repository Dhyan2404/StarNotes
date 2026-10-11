package org.apache.poi.util;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTwipsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STSignedTwipsMeasure;

/* loaded from: classes13.dex */
public class ExtUnits extends Units {
    public static final float CM_PER_INCH = 2.54f;
    public static final char COLON = ';';
    public static final int EM_PER_PIXEL = 16;
    protected static final DecimalFormat NUMBER_FORMAT;
    public static final char SPACE = ' ';
    public static final float TWIPS_PER_INCH = 1440.0f;
    public static final String UNIT_EM = "em";
    public static final String UNIT_PT = "pt";
    public static final String UNIT_PX = "px";

    static {
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        NUMBER_FORMAT = decimalFormat;
        decimalFormat.setRoundingMode(RoundingMode.UP);
    }

    public static double dxaToEM(double d) {
        return dxaToPixel(d) / 16.0d;
    }

    public static double dxaToPixel(double d) {
        return (d * 635.0d) / 9525.0d;
    }

    public static double emToPX(double d) {
        return d * 16.0d;
    }

    public static double emuToPixel(long j) {
        if (j == -1) {
            return -1.0d;
        }
        return j / 9525.0d;
    }

    public static String format(float f) {
        return NUMBER_FORMAT.format(f);
    }

    public static float getFormatValue(double d) {
        return ((float) Math.round(d * 100.0d)) / 100.0f;
    }

    public static double inToEM(double d) {
        return (d * 96.0d) / 16.0d;
    }

    public static double inToPx(double d) {
        return d * 96.0d;
    }

    public static float parseLength(STTwipsMeasure sTTwipsMeasure) {
        if (sTTwipsMeasure == null) {
            return 0.0f;
        }
        return getFormatValue(dxaToPixel(Units.toDXA(POIXMLUnits.parseLength(sTTwipsMeasure))));
    }

    public static double pxToEM(double d) {
        return d / 16.0d;
    }

    public static double spacingToIn(double d) {
        return (d / 576.0d) / 2.5399999618530273d;
    }

    public static double toDXA(String str) {
        return Units.toDXA(POIXMLUnits.parseLength(STTwipsMeasure.Factory.newValue(str)));
    }

    public static double twipsToEM(double d) {
        return inToEM(twipsToIn(d));
    }

    public static double twipsToIn(double d) {
        return d / 1440.0d;
    }

    public static double twipsToPx(double d) {
        return (d / 1440.0d) * 96.0d;
    }

    public static String format(double d) {
        return NUMBER_FORMAT.format(d);
    }

    public static float parseLength(STSignedTwipsMeasure sTSignedTwipsMeasure) {
        if (sTSignedTwipsMeasure == null) {
            return 0.0f;
        }
        return getFormatValue(dxaToPixel(Units.toDXA(POIXMLUnits.parseLength(sTSignedTwipsMeasure))));
    }
}
