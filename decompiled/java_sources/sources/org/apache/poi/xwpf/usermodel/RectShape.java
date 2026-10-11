package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.CTRect;
import java.awt.Graphics2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.util.ColorUtils;

/* loaded from: classes13.dex */
public class RectShape extends XWPFShape<CTRect> {
    public RectShape(ShapeContainer<XWPFShape<?>> shapeContainer, CTRect cTRect) {
        super(shapeContainer, cTRect);
    }

    private void parseRectProperties(ShapeProperties shapeProperties, CTRect cTRect) {
        shapeProperties.shapeId = cTRect.getId();
        if (cTRect.isSetAllowincell()) {
            shapeProperties.allowInCell = XWPFWordToHtmlUtils.parseSTTrueFalse(cTRect.getAllowincell());
        }
        if (cTRect.isSetSpt()) {
            shapeProperties.spt = cTRect.getSpt();
        }
        if (shapeProperties.anchor.isEmpty()) {
            if (cTRect.isSetCoordorigin()) {
                Point2D parsePoint = XWPFWordToHtmlUtils.parsePoint(cTRect.getCoordorigin());
                if (!WordToHtmlUtils.isNull(parsePoint)) {
                    shapeProperties.anchor.setFrame(parsePoint.getX(), parsePoint.getY(), shapeProperties.anchor.getWidth(), shapeProperties.anchor.getHeight());
                }
            }
            if (cTRect.isSetCoordsize()) {
                Point2D parsePoint2 = XWPFWordToHtmlUtils.parsePoint(cTRect.getCoordsize());
                if (!WordToHtmlUtils.isNull(parsePoint2)) {
                    Rectangle2D rectangle2D = shapeProperties.anchor;
                    rectangle2D.setFrame(rectangle2D.getX(), shapeProperties.anchor.getY(), parsePoint2.getX(), parsePoint2.getY());
                }
            }
        }
        if (cTRect.isSetFilled()) {
            shapeProperties.filled = XWPFWordToHtmlUtils.parseSTTrueFalse(cTRect.getFilled());
        } else if (cTRect.sizeOfFillArray() > 0) {
            shapeProperties.filled = XWPFWordToHtmlUtils.parseSTTrueFalse(cTRect.getFillArray(0).getOn());
        } else {
            shapeProperties.filled = true;
        }
        if (shapeProperties.filled && cTRect.isSetFillcolor()) {
            shapeProperties.fillColor = ColorUtils.decode(cTRect.getFillcolor());
        }
        if (cTRect.isSetStroked()) {
            shapeProperties.stroked = XWPFWordToHtmlUtils.parseSTTrueFalse(cTRect.getStroked());
        }
        if (shapeProperties.stroked && cTRect.isSetStrokecolor()) {
            shapeProperties.strokedColor = ColorUtils.decode(cTRect.getStrokecolor());
        }
        if (cTRect.sizeOfPathArray() > 0) {
            shapeProperties.arrowOk = XWPFWordToHtmlUtils.parseSTTrueFalse(cTRect.getPathArray(0).getArrowok());
        }
        if (cTRect.sizeOfStrokeArray() > 0) {
            parseStroke(shapeProperties, cTRect.getStrokeArray(0));
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public void draw(Graphics2D graphics2D) {
        Rectangle2D rectangle2D = this.properties.anchor;
        if (rectangle2D.isEmpty()) {
            return;
        }
        drawJavaShape(graphics2D, rectangle2D);
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFShape
    public void parseShapeProperties(CTRect cTRect) {
        parseStyleProperties(cTRect.getStyle());
        parseRectProperties(this.properties, cTRect);
    }
}
