package org.apache.poi.xslf.usermodel;

import java.awt.Color;
import java.awt.geom.Rectangle2D;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.Shadow;
import org.apache.poi.sl.usermodel.SimpleShape;
import org.apache.poi.util.Units;
import org.apache.poi.xslf.usermodel.XSLFPropertiesDelegate;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOuterShadowEffect;

/* loaded from: classes13.dex */
public class XSLFShadow extends XSLFShape implements Shadow<XSLFShape, XSLFTextParagraph> {
    private XSLFSimpleShape _parent;

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    public XSLFShadow(CTOuterShadowEffect cTOuterShadowEffect, XSLFSimpleShape xSLFSimpleShape) {
        super(cTOuterShadowEffect, xSLFSimpleShape.getSheet());
        this._parent = xSLFSimpleShape;
    }

    private boolean isParentSetNoFill() {
        XSLFPropertiesDelegate.XSLFFillProperties fillDelegate = XSLFPropertiesDelegate.getFillDelegate(this._parent.getShapeProperties());
        return fillDelegate != null && fillDelegate.isSetNoFill();
    }

    @Override // org.apache.poi.sl.usermodel.Shape, org.apache.poi.sl.usermodel.PlaceableShape
    public Rectangle2D getAnchor() {
        return this._parent.getAnchor();
    }

    @Override // org.apache.poi.sl.usermodel.Shadow
    public double getAngle() {
        if (((CTOuterShadowEffect) getXmlObject()).isSetDir()) {
            return r4.getDir() / 60000.0d;
        }
        return 0.0d;
    }

    @Override // org.apache.poi.sl.usermodel.Shadow
    public double getBlur() {
        CTOuterShadowEffect cTOuterShadowEffect = (CTOuterShadowEffect) getXmlObject();
        if (cTOuterShadowEffect.isSetBlurRad()) {
            return Units.toPoints(cTOuterShadowEffect.getBlurRad());
        }
        return 0.0d;
    }

    @Override // org.apache.poi.sl.usermodel.Shadow
    public double getDistance() {
        CTOuterShadowEffect cTOuterShadowEffect = (CTOuterShadowEffect) getXmlObject();
        if (cTOuterShadowEffect.isSetDist()) {
            return Units.toPoints(cTOuterShadowEffect.getDist());
        }
        return 0.0d;
    }

    public Color getFillColor() {
        PaintStyle.SolidPaint fillStyle = getFillStyle();
        if (fillStyle == null) {
            return null;
        }
        return DrawPaint.applyColorTransform(fillStyle.getSolidColor());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    /* JADX WARN: Type inference failed for: r4v1, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    @Override // org.apache.poi.sl.usermodel.Shadow
    public PaintStyle.SolidPaint getFillStyle() {
        if (isParentSetNoFill()) {
            return null;
        }
        XSLFTheme theme = getSheet().getTheme();
        CTOuterShadowEffect cTOuterShadowEffect = (CTOuterShadowEffect) getXmlObject();
        if (cTOuterShadowEffect == null) {
            return null;
        }
        return DrawPaint.createSolidPaint(new XSLFColor(cTOuterShadowEffect, theme, cTOuterShadowEffect.getSchemeClr(), getSheet()).getColorStyle());
    }

    public void setAnchor(Rectangle2D rectangle2D) {
        throw new IllegalStateException("You can't set anchor of a shadow");
    }

    @Override // org.apache.poi.sl.usermodel.Shadow
    public SimpleShape<XSLFShape, XSLFTextParagraph> getShadowParent() {
        return this._parent;
    }
}
