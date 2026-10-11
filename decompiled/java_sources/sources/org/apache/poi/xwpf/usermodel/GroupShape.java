package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.CTGroup;
import java.awt.Graphics2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.text.Utils;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.StringUtils;

/* loaded from: classes13.dex */
public class GroupShape extends XWPFShape<CTGroup> implements ShapeContainer<XWPFShape<?>> {
    private List<XWPFShape<?>> shapes;

    public GroupShape(ShapeContainer<XWPFShape<?>> shapeContainer, CTGroup cTGroup) {
        super(shapeContainer, cTGroup);
        this.shapes = new ArrayList();
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFShape, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Iterator<XWPFShape<?>> it2 = this.shapes.iterator();
        while (it2.hasNext()) {
            CloseUtils.close(it2.next());
        }
        super.close();
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public void draw(Graphics2D graphics2D) {
        Iterator<XWPFShape<?>> it2 = this.shapes.iterator();
        while (it2.hasNext()) {
            it2.next().draw(graphics2D);
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.ShapeContainer
    public List<XWPFShape<?>> getShapes() {
        return this.shapes;
    }

    @Override // java.lang.Iterable
    public Iterator<XWPFShape<?>> iterator() {
        return this.shapes.iterator();
    }

    @Override // org.apache.poi.xwpf.usermodel.ShapeContainer
    public void addShape(XWPFShape<?> xWPFShape) {
        this.shapes.add(xWPFShape);
        Utils.union(this.properties.anchor, xWPFShape.getAnchor());
        if (StringUtils.isNullOrEmpty(this.properties.shapeId)) {
            this.properties.shapeId = xWPFShape.getShapeId();
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFShape
    public void parseShapeProperties(CTGroup cTGroup) {
        this.properties.shapeId = cTGroup.getId();
        parseStyleProperties(cTGroup.getStyle());
        if (this.properties.anchor.isEmpty() && cTGroup.isSetCoordorigin()) {
            Point2D parsePoint = XWPFWordToHtmlUtils.parsePoint(cTGroup.getCoordorigin());
            if (!WordToHtmlUtils.isNull(parsePoint)) {
                this.properties.anchor.setFrame(parsePoint.getX(), parsePoint.getY(), this.properties.anchor.getWidth(), this.properties.anchor.getHeight());
            }
            Point2D parsePoint2 = XWPFWordToHtmlUtils.parsePoint(cTGroup.getCoordsize());
            if (WordToHtmlUtils.isNull(parsePoint2)) {
                return;
            }
            Rectangle2D rectangle2D = this.properties.anchor;
            rectangle2D.setFrame(rectangle2D.getX(), this.properties.anchor.getY(), parsePoint2.getX(), parsePoint2.getY());
        }
    }
}
