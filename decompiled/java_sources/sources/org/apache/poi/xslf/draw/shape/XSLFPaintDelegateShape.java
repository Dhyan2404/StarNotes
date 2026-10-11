package org.apache.poi.xslf.draw.shape;

import java.awt.Color;
import java.awt.Paint;
import java.awt.geom.Rectangle2D;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.PlaceableShape;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.xslf.model.PropertyFetcher;
import org.apache.poi.xslf.usermodel.XSLFShape;
import org.apache.poi.xslf.usermodel.XSLFSheet;
import org.apache.poi.xslf.usermodel.XSLFTextParagraph;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeStyle;

/* loaded from: classes13.dex */
public class XSLFPaintDelegateShape extends XSLFShape implements PlaceableShape {
    public static final Color TRANSPARENT = new Color(1.0f, 1.0f, 1.0f, 0.0f);
    private Rectangle2D anchor;
    private XmlObject props;

    public XSLFPaintDelegateShape(XSLFSheet xSLFSheet, XmlObject xmlObject, Rectangle2D rectangle2D) {
        super(null, xSLFSheet);
        this.props = xmlObject;
        this.anchor = rectangle2D;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShape
    public boolean fetchShapeProperty(PropertyFetcher<?> propertyFetcher) {
        return propertyFetcher.fetch(this);
    }

    @Override // org.apache.poi.sl.usermodel.Shape, org.apache.poi.sl.usermodel.PlaceableShape
    public Rectangle2D getAnchor() {
        return this.anchor;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShape
    public PaintStyle getFillPaint() {
        return super.getFillPaint();
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public boolean getFlipHorizontal() {
        return false;
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public boolean getFlipVertical() {
        return false;
    }

    public Paint getPaint() {
        PaintStyle fillPaint = getFillPaint();
        if (fillPaint == null) {
            return null;
        }
        Paint paint = new DrawPaint(this).getPaint(null, fillPaint);
        if (TRANSPARENT.equals(paint)) {
            return null;
        }
        return paint;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShape, org.apache.poi.sl.usermodel.Shape
    public ShapeContainer<XSLFShape, XSLFTextParagraph> getParent() {
        return null;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShape
    public Placeholder getPlaceholder() {
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public double getRotation() {
        return 0.0d;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShape
    public XmlObject getShapeProperties() {
        return this.props;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShape
    public CTShapeStyle getSpStyle() {
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public void setAnchor(Rectangle2D rectangle2D) {
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public void setFlipHorizontal(boolean z) {
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public void setFlipVertical(boolean z) {
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public void setRotation(double d) {
    }
}
