package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.CTPolyLine;
import java.awt.Graphics2D;

/* loaded from: classes13.dex */
public class PolyLineShape extends XWPFShape<CTPolyLine> {
    public PolyLineShape(ShapeContainer<XWPFShape<?>> shapeContainer, CTPolyLine cTPolyLine) {
        super(shapeContainer, cTPolyLine);
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public void draw(Graphics2D graphics2D) {
        this.LOG.atError().log("PolyLineShape draw do nothing");
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFShape
    public void parseShapeProperties(CTPolyLine cTPolyLine) {
        this.LOG.atError().log("PolyLineShape parseShapeProperties do nothing");
    }
}
