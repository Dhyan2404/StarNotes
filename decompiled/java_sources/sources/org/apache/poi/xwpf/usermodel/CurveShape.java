package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.CTCurve;
import java.awt.Graphics2D;

/* loaded from: classes13.dex */
public class CurveShape extends XWPFShape<CTCurve> {
    public CurveShape(ShapeContainer<XWPFShape<?>> shapeContainer, CTCurve cTCurve) {
        super(shapeContainer, cTCurve);
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public void draw(Graphics2D graphics2D) {
        this.LOG.atError().log("CurveShape draw do nothing");
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFShape
    public void parseShapeProperties(CTCurve cTCurve) {
        this.LOG.atError().log("CurveShape parseShapeProperties do nothing");
    }
}
