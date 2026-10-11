package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.CTArc;
import java.awt.Graphics2D;

/* loaded from: classes13.dex */
public class ArcShape extends XWPFShape<CTArc> {
    public ArcShape(ShapeContainer<XWPFShape<?>> shapeContainer, CTArc cTArc) {
        super(shapeContainer, cTArc);
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public void draw(Graphics2D graphics2D) {
        this.LOG.atError().log("ArcShape draw do nothing");
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFShape
    public void parseShapeProperties(CTArc cTArc) {
        this.LOG.atError().log("ArcShape parseShapeProperties do nothing");
    }
}
