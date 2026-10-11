package org.apache.poi.xslf.usermodel;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.sl.usermodel.ColorStyle;
import org.apache.poi.sl.usermodel.Insets2D;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.util.Internal;
import org.apache.poi.xslf.usermodel.XSLFGradientPaint;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGradientFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGradientStop;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRelativeRect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor;
import org.openxmlformats.schemas.drawingml.x2006.main.STPathShadeType;

@Internal
/* loaded from: classes13.dex */
public class XSLFGradientPaint implements PaintStyle.GradientPaint {

    /* renamed from: cs */
    final ColorStyle[] f111802cs;
    final float[] fractions;
    private final CTGradientFillProperties gradFill;

    public XSLFGradientPaint(CTGradientFillProperties cTGradientFillProperties, CTSchemeColor cTSchemeColor, XSLFTheme xSLFTheme, XSLFSheet xSLFSheet) {
        this.gradFill = cTGradientFillProperties;
        CTGradientStop[] gsArray = cTGradientFillProperties.getGsLst() == null ? new CTGradientStop[0] : cTGradientFillProperties.getGsLst().getGsArray();
        Arrays.sort(gsArray, new Comparator() { // from class: com.sunia.HTREnginev2.ymo
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$new$0;
                lambda$new$0 = XSLFGradientPaint.lambda$new$0((CTGradientStop) obj, (CTGradientStop) obj2);
                return lambda$new$0;
            }
        });
        this.f111802cs = new ColorStyle[gsArray.length];
        this.fractions = new float[gsArray.length];
        int i = 0;
        for (CTGradientStop cTGradientStop : gsArray) {
            this.f111802cs[i] = new XSLFColor(cTGradientStop, xSLFTheme, (cTSchemeColor == null && cTGradientStop.isSetSchemeClr()) ? cTGradientStop.getSchemeClr() : cTSchemeColor, xSLFSheet).getColorStyle();
            this.fractions[i] = POIXMLUnits.parsePercent(cTGradientStop.xgetPos()) / 100000.0f;
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$new$0(CTGradientStop cTGradientStop, CTGradientStop cTGradientStop2) {
        return Integer.compare(POIXMLUnits.parsePercent(cTGradientStop.xgetPos()), POIXMLUnits.parsePercent(cTGradientStop2.xgetPos()));
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.GradientPaint
    public Insets2D getFillToInsets() {
        if (!this.gradFill.isSetPath() || !this.gradFill.getPath().isSetFillToRect()) {
            return null;
        }
        CTRelativeRect fillToRect = this.gradFill.getPath().getFillToRect();
        return new Insets2D(POIXMLUnits.parsePercent(fillToRect.xgetT()) / 100000.0d, POIXMLUnits.parsePercent(fillToRect.xgetL()) / 100000.0d, POIXMLUnits.parsePercent(fillToRect.xgetB()) / 100000.0d, POIXMLUnits.parsePercent(fillToRect.xgetR()) / 100000.0d);
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.GradientPaint
    public double getGradientAngle() {
        if (this.gradFill.isSetLin()) {
            return this.gradFill.getLin().getAng() / 60000.0d;
        }
        return 0.0d;
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.GradientPaint
    public ColorStyle[] getGradientColors() {
        return this.f111802cs;
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.GradientPaint
    public float[] getGradientFractions() {
        return this.fractions;
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.GradientPaint
    public PaintStyle.GradientPaint.GradientType getGradientType() {
        if (this.gradFill.isSetLin()) {
            return PaintStyle.GradientPaint.GradientType.linear;
        }
        if (this.gradFill.isSetPath()) {
            STPathShadeType.Enum path = this.gradFill.getPath().getPath();
            if (path == STPathShadeType.CIRCLE) {
                return PaintStyle.GradientPaint.GradientType.circular;
            }
            if (path == STPathShadeType.SHAPE) {
                return PaintStyle.GradientPaint.GradientType.shape;
            }
            if (path == STPathShadeType.RECT) {
                return PaintStyle.GradientPaint.GradientType.rectangular;
            }
        }
        return PaintStyle.GradientPaint.GradientType.linear;
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.GradientPaint
    public boolean isRotatedWithShape() {
        return this.gradFill.getRotWithShape();
    }
}
