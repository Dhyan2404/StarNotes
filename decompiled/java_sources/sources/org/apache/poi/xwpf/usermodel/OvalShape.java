package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.CTOval;
import java.awt.Graphics2D;

/* loaded from: classes13.dex */
public class OvalShape extends XWPFShape<CTOval> {
    public OvalShape(ShapeContainer<XWPFShape<?>> shapeContainer, CTOval cTOval) {
        super(shapeContainer, cTOval);
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public void draw(Graphics2D graphics2D) {
        this.LOG.atError().log("OvalShape draw do nothing");
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFShape
    public void parseShapeProperties(CTOval cTOval) {
        this.LOG.atError().log("OvalShape parseShapeProperties do nothing");
    }
}
