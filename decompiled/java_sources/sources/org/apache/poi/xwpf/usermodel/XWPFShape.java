package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.CTStroke;
import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Stroke;
import java.awt.geom.Rectangle2D;
import java.io.Closeable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.p114wp.usermodel.Position;
import org.apache.poi.util.ColorUtils;
import org.apache.xmlbeans.XmlObject;

/* loaded from: classes13.dex */
public abstract class XWPFShape<XML extends XmlObject> implements Shape<XWPFShape<?>>, Closeable {
    protected ShapeContainer<XWPFShape<?>> parent;
    protected XML xmlObject;
    protected final Logger LOG = LogManager.getLogger(getClass());
    protected ShapeProperties properties = new ShapeProperties();

    public XWPFShape(ShapeContainer<XWPFShape<?>> shapeContainer, XML xml) {
        this.parent = shapeContainer;
        this.xmlObject = xml;
        parseShapeProperties(xml);
    }

    public void close() {
        XmlBeanUtils.freeMemory(this.xmlObject);
    }

    public void drawJavaShape(Graphics2D graphics2D, java.awt.Shape shape) {
        Color color = graphics2D.getColor();
        Stroke stroke = graphics2D.getStroke();
        BasicStroke basicStroke = this.properties.stroke;
        boolean z = basicStroke != null;
        if (z) {
            graphics2D.setStroke(basicStroke);
        }
        ShapeProperties shapeProperties = this.properties;
        if (shapeProperties.filled) {
            graphics2D.setColor(shapeProperties.fillColor);
            graphics2D.fill(shape);
        }
        ShapeProperties shapeProperties2 = this.properties;
        if (shapeProperties2.stroked) {
            graphics2D.setColor(shapeProperties2.strokedColor);
            graphics2D.draw(shape);
        }
        graphics2D.setColor(color);
        if (z) {
            graphics2D.setStroke(stroke);
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape, org.apache.poi.p114wp.usermodel.IPicture
    public Rectangle2D getAnchor() {
        return this.properties.anchor;
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public ShapeContainer<XWPFShape<?>> getParent() {
        return this.parent;
    }

    public Position getPosition() {
        return this.properties.position;
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public String getShapeId() {
        return this.properties.shapeId;
    }

    public XML getXmlObject() {
        return this.xmlObject;
    }

    public abstract void parseShapeProperties(XML xml);

    public void parseStroke(ShapeProperties shapeProperties, CTStroke cTStroke) {
        float f;
        boolean z;
        float f2;
        int i;
        int i2;
        if (cTStroke.isSetColor()) {
            shapeProperties.strokedColor = ColorUtils.decode(cTStroke.getColor());
        }
        if (cTStroke.isSetEndarrow()) {
            shapeProperties.arrow = cTStroke.getEndarrow();
        }
        boolean z2 = true;
        if (cTStroke.isSetWeight()) {
            f = (float) XWPFWordToHtmlUtils.parseNumberValue(cTStroke.getWeight());
            z = true;
        } else {
            f = 1.0f;
            z = false;
        }
        if (cTStroke.isSetMiterlimit()) {
            f2 = Math.max(1.0f, cTStroke.getMiterlimit().floatValue());
            z = true;
        } else {
            f2 = 10.0f;
        }
        if (cTStroke.isSetJoinstyle()) {
            int intValue = cTStroke.getJoinstyle().intValue();
            i = intValue != 1 ? intValue != 2 ? 0 : 2 : 1;
            z = true;
        } else {
            i = 0;
        }
        if (cTStroke.isSetEndcap()) {
            int intValue2 = cTStroke.getEndcap().intValue();
            i2 = intValue2 != 1 ? intValue2 != 3 ? 2 : 1 : 0;
        } else {
            z2 = z;
            i2 = 2;
        }
        if (cTStroke.isSetDashstyle()) {
            cTStroke.getDashstyle();
        }
        if (z2) {
            shapeProperties.stroke = new BasicStroke(f, i2, i, f2, null, 0.0f);
        }
    }

    public void parseStyleProperties(String str) {
        this.properties.parse(str);
    }
}
