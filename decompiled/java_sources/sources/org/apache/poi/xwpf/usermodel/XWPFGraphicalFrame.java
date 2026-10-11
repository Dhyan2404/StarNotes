package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.office.office.CTLock;
import com.microsoft.schemas.office.office.CTOLEObject;
import com.microsoft.schemas.office.word.CTAnchorLock;
import com.microsoft.schemas.vml.CTArc;
import com.microsoft.schemas.vml.CTCurve;
import com.microsoft.schemas.vml.CTGroup;
import com.microsoft.schemas.vml.CTImageData;
import com.microsoft.schemas.vml.CTLine;
import com.microsoft.schemas.vml.CTOval;
import com.microsoft.schemas.vml.CTPolyLine;
import com.microsoft.schemas.vml.CTRect;
import com.microsoft.schemas.vml.CTShape;
import com.microsoft.schemas.vml.CTShapetype;
import com.microsoft.schemas.vml.CTTextPath;
import com.microsoft.schemas.vml.CTTextbox;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.p114wp.draw.ImageCreator;
import org.apache.poi.p114wp.usermodel.IPicture;
import org.apache.poi.p114wp.usermodel.Position;
import org.apache.poi.style.ParagraphStyles;
import org.apache.poi.style.page.PageStyles;
import org.apache.poi.text.Utils;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.RectUtils;
import org.apache.poi.util.StringUtils;
import org.apache.poi.util.Units;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTwipsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTObject;

/* loaded from: classes13.dex */
public class XWPFGraphicalFrame implements ShapeContainer<XWPFShape<?>>, GraphicalFrame, IRunPart, IPicture, AbsolutePicture {
    private static final Logger LOG = LogManager.getLogger((Class<?>) XWPFGraphicalFrame.class);
    private double offsetX;
    private double offsetY;
    private float rotation;
    private XWPFRun run;
    private String shapeId;
    private XmlObject xmlObject;
    private List<XWPFShape<?>> shapes = new ArrayList();
    private Rectangle2D anchor = new Rectangle2D.Double();
    private Position position = Position.NONE;

    public XWPFGraphicalFrame(XmlObject xmlObject, XWPFRun xWPFRun) {
        this.xmlObject = xmlObject;
        this.run = xWPFRun;
        buildFromXml(xmlObject, this, xWPFRun);
        initGraphicalProperties(xmlObject);
    }

    private void appendLengthStyle(StringBuilder sb, String str, float f) {
        if (f != 0.0f) {
            sb.append(str);
            sb.append(f);
            sb.append("px;");
        }
    }

    private void buildFromXml(XmlObject xmlObject, ShapeContainer<XWPFShape<?>> shapeContainer, XWPFRun xWPFRun) {
        XmlCursor newCursor = xmlObject.newCursor();
        newCursor.selectPath("./*");
        while (newCursor.toNextSelection()) {
            XmlObject object = newCursor.getObject();
            if (object instanceof CTGroup) {
                GroupShape groupShape = new GroupShape(shapeContainer, (CTGroup) object);
                shapeContainer.addShape(groupShape);
                buildFromXml(object, groupShape, xWPFRun);
            } else if (object instanceof CTShape) {
                CTShape cTShape = (CTShape) object;
                AutoShape autoShape = new AutoShape(shapeContainer, cTShape);
                shapeContainer.addShape(autoShape);
                buildFromXml(cTShape, (ShapeContainer<XWPFShape<?>>) autoShape, xWPFRun);
            } else if (object instanceof CTLine) {
                shapeContainer.addShape(new LineShape(shapeContainer, (CTLine) object));
            } else if (object instanceof CTOval) {
                shapeContainer.addShape(new OvalShape(shapeContainer, (CTOval) object));
            } else if (object instanceof CTRect) {
                shapeContainer.addShape(new RectShape(shapeContainer, (CTRect) object));
            } else if (object instanceof CTArc) {
                shapeContainer.addShape(new ArcShape(shapeContainer, (CTArc) object));
            } else if (object instanceof CTPolyLine) {
                shapeContainer.addShape(new PolyLineShape(shapeContainer, (CTPolyLine) object));
            } else if (object instanceof CTCurve) {
                shapeContainer.addShape(new CurveShape(shapeContainer, (CTCurve) object));
            } else if (object instanceof CTImageData) {
                shapeContainer.addShape(new ImageShape(shapeContainer, (CTImageData) object, xWPFRun));
            } else if (object instanceof CTTextbox) {
                shapeContainer.addShape(new TextboxShape(shapeContainer, (CTTextbox) object));
            } else if (object instanceof CTTextPath) {
                shapeContainer.addShape(new TextPathShape(shapeContainer, (CTTextPath) object));
            } else if (!(object instanceof CTShapetype) && !(object instanceof CTAnchorLock) && !(object instanceof CTOLEObject) && !(object instanceof CTLock)) {
                LOG.atError().log("Unknown shape:{}", object.getClass().getName());
            }
        }
        newCursor.close();
    }

    private Rectangle2D getCtObjectAnchor(CTObject cTObject) {
        if (!cTObject.isSetDxaOrig() || !cTObject.isSetDyaOrig()) {
            return null;
        }
        STTwipsMeasure xgetDxaOrig = cTObject.xgetDxaOrig();
        STTwipsMeasure xgetDyaOrig = cTObject.xgetDyaOrig();
        return new Rectangle2D.Double(0.0d, 0.0d, ExtUnits.dxaToPixel(Units.toDXA(POIXMLUnits.parseLength(xgetDxaOrig))), ExtUnits.dxaToPixel(Units.toDXA(POIXMLUnits.parseLength(xgetDyaOrig))));
    }

    private float getPageLeft(PageStyles pageStyles, ParagraphStyles paragraphStyles, double d) {
        return WordToHtmlUtils.isNull(paragraphStyles) ? ExtUnits.getFormatValue(this.offsetX) : ExtUnits.getFormatValue((d - pageStyles.getPageMargin().getLeft()) + getParagraphLeft(paragraphStyles, this.offsetX));
    }

    private float getParagraphLeft(ParagraphStyles paragraphStyles, double d) {
        if (WordToHtmlUtils.isNull(paragraphStyles)) {
            return ExtUnits.getFormatValue(d);
        }
        return ExtUnits.getFormatValue(d - ((WordToHtmlUtils.isNull(paragraphStyles.getTextIndent()) ? 0.0f : r1.getNumberValue()) + paragraphStyles.getMarginStyles().getLeftNumberValue()));
    }

    private float getParagraphTop(ParagraphStyles paragraphStyles, double d) {
        return WordToHtmlUtils.isNull(paragraphStyles) ? ExtUnits.getFormatValue(d) : ExtUnits.getFormatValue(d - paragraphStyles.getMarginStyles().getTopNumberValue());
    }

    private void initGraphicalProperties(XmlObject xmlObject) {
        for (XWPFShape<?> xWPFShape : this.shapes) {
            Utils.union(this.anchor, xWPFShape.getAnchor());
            if (StringUtils.isNullOrEmpty(this.shapeId)) {
                this.shapeId = xWPFShape.getShapeId();
            }
        }
        if ((xmlObject instanceof CTObject) && this.anchor.isEmpty()) {
            Utils.union(this.anchor, getCtObjectAnchor((CTObject) xmlObject));
        }
        if (!this.shapes.isEmpty()) {
            this.position = this.shapes.get(0).getPosition();
            this.rotation = this.shapes.get(0).properties.rotation;
        }
        if (StringUtils.isNullOrEmpty(this.shapeId)) {
            LOG.atError().log("No shape id");
        }
        if (this.rotation != 0.0f) {
            Rectangle2D rectangle2D = this.anchor;
            rectangle2D.setFrame(0.0d, 0.0d, rectangle2D.getWidth(), this.anchor.getHeight());
            Rectangle2D rotateAnchor = RectUtils.getRotateAnchor(this.anchor, this.rotation + 90.0f);
            this.offsetX = (this.anchor.getWidth() - rotateAnchor.getWidth()) / 2.0d;
            this.offsetY = (this.anchor.getHeight() - rotateAnchor.getHeight()) / 2.0d;
            this.anchor.setFrame(0.0d, 0.0d, rotateAnchor.getWidth(), rotateAnchor.getHeight());
        }
    }

    private void rotate(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        if (this.rotation != 0.0d) {
            graphics2D.rotate(Math.toRadians(r0 + 90.0f), rectangle2D.getCenterX(), rectangle2D.getCenterY());
            graphics2D.translate(-this.offsetX, -this.offsetY);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Iterator<XWPFShape<?>> it2 = this.shapes.iterator();
        while (it2.hasNext()) {
            CloseUtils.close(it2.next());
        }
        XmlBeanUtils.freeMemory(this.xmlObject);
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public void draw(Graphics2D graphics2D) {
        Iterator<XWPFShape<?>> it2 = this.shapes.iterator();
        while (it2.hasNext()) {
            it2.next().draw(graphics2D);
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.AbsolutePicture
    public String getAbsolutePositionStyle(PageStyles pageStyles, ParagraphStyles paragraphStyles) {
        if (this.position != Position.ABSOLUTE || this.shapes.isEmpty()) {
            return "";
        }
        ShapeProperties shapeProperties = this.shapes.get(0).properties;
        StringBuilder sb = new StringBuilder();
        if (shapeProperties.relativeH == RelativeH.PAGE) {
            appendLengthStyle(sb, "margin-left:", getPageLeft(pageStyles, paragraphStyles, shapeProperties.marginLeft));
        } else {
            appendLengthStyle(sb, "margin-left:", getParagraphLeft(paragraphStyles, shapeProperties.marginLeft + this.offsetX));
        }
        appendLengthStyle(sb, "margin-top:", getParagraphTop(paragraphStyles, shapeProperties.marginTop + this.offsetY));
        return sb.toString();
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape, org.apache.poi.p114wp.usermodel.IPicture
    public Rectangle2D getAnchor() {
        return this.anchor;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public String getContentType() {
        return GraphicalFrame.GRAPHICAL_TYPE;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public <IMAGE extends Image> IMAGE getImage(ImageCreator<IMAGE> imageCreator) {
        if (RectUtils.isEmptyImage(this.anchor)) {
            LOG.atError().log("Empty image[{}] anchor:{}", this.shapeId, this.anchor);
            return null;
        }
        IMAGE createImage = imageCreator.createImage((int) this.anchor.getWidth(), (int) this.anchor.getHeight());
        Graphics2D graphics = imageCreator.getGraphics(createImage);
        rotate(graphics, this.anchor);
        draw(graphics);
        return createImage;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public String getName() {
        return getShapeId();
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public ShapeContainer<XWPFShape<?>> getParent() {
        return null;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public Position getPosition() {
        return this.position;
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public String getShapeId() {
        return this.shapeId;
    }

    @Override // org.apache.poi.xwpf.usermodel.ShapeContainer
    public List<XWPFShape<?>> getShapes() {
        return this.shapes;
    }

    @Override // org.apache.poi.xwpf.usermodel.IRunPart
    public String getText() {
        return "XWPFGraphicalFrame";
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public int identifier() {
        long hashCode = 652664654 + (Objects.hashCode(this.anchor) * 37) + (Objects.hashCode(this.shapeId) * 43) + (this.position.ordinal() * 47);
        return ((int) hashCode) ^ ((int) (hashCode >> 32));
    }

    @Override // java.lang.Iterable
    public Iterator<XWPFShape<?>> iterator() {
        return this.shapes.iterator();
    }

    @Override // org.apache.poi.xwpf.usermodel.ShapeContainer
    public void addShape(XWPFShape<?> xWPFShape) {
        this.shapes.add(xWPFShape);
    }

    private void buildFromXml(CTShape cTShape, ShapeContainer<XWPFShape<?>> shapeContainer, XWPFRun xWPFRun) {
        XmlCursor newCursor = cTShape.newCursor();
        newCursor.selectPath("./*");
        while (newCursor.toNextSelection()) {
            XmlObject object = newCursor.getObject();
            if (object instanceof CTImageData) {
                shapeContainer.addShape(new ImageShape(shapeContainer, (CTImageData) object, xWPFRun));
            } else if (object instanceof CTTextbox) {
                shapeContainer.addShape(new TextboxShape(shapeContainer, (CTTextbox) object));
            } else if (object instanceof CTTextPath) {
                shapeContainer.addShape(new TextPathShape(shapeContainer, (CTTextPath) object));
            }
        }
        newCursor.close();
    }
}
