package org.apache.poi.xslf.usermodel;

import com.sunia.HTREnginev2.zmo;
import java.awt.Dimension;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.sl.draw.DrawPictureShape;
import org.apache.poi.sl.usermodel.AutoShape;
import org.apache.poi.sl.usermodel.ConnectorShape;
import org.apache.poi.sl.usermodel.FreeformShape;
import org.apache.poi.sl.usermodel.GroupShape;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.sl.usermodel.PictureShape;
import org.apache.poi.sl.usermodel.TableShape;
import org.apache.poi.sl.usermodel.TextBox;
import org.apache.poi.util.Units;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGroupShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGroupTransform2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.presentationml.x2006.main.CTConnector;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual;
import org.openxmlformats.schemas.presentationml.x2006.main.CTOleObject;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPicture;
import org.openxmlformats.schemas.presentationml.x2006.main.CTShape;

/* loaded from: classes13.dex */
public class XSLFGroupShape extends XSLFShape implements XSLFShapeContainer, GroupShape<XSLFShape, XSLFTextParagraph> {
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSLFGroupShape.class);
    private XSLFDrawing _drawing;
    private final CTGroupShapeProperties _grpSpPr;
    private final List<XSLFShape> _shapes;

    public XSLFGroupShape(CTGroupShape cTGroupShape, XSLFSheet xSLFSheet) {
        super(cTGroupShape, xSLFSheet);
        this._shapes = XSLFSheet.buildShapes(cTGroupShape, this);
        this._grpSpPr = cTGroupShape.getGrpSpPr();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    private XSLFDrawing getDrawing() {
        if (this._drawing == null) {
            this._drawing = new XSLFDrawing(getSheet(), (CTGroupShape) getXmlObject());
        }
        return this._drawing;
    }

    private CTGroupTransform2D getSafeXfrm() {
        CTGroupTransform2D xfrm = getXfrm();
        return xfrm == null ? getGrpSpPr().addNewXfrm() : xfrm;
    }

    public static CTGroupShape prototype(int i) {
        CTGroupShape newInstance = CTGroupShape.Factory.newInstance();
        CTGroupShapeNonVisual addNewNvGrpSpPr = newInstance.addNewNvGrpSpPr();
        CTNonVisualDrawingProps addNewCNvPr = addNewNvGrpSpPr.addNewCNvPr();
        addNewCNvPr.setName("Group " + i);
        addNewCNvPr.setId((long) i);
        addNewNvGrpSpPr.addNewCNvGrpSpPr();
        addNewNvGrpSpPr.addNewNvPr();
        newInstance.addNewGrpSpPr();
        return newInstance;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer
    public void clear() {
        Iterator it2 = new ArrayList(getShapes()).iterator();
        while (it2.hasNext()) {
            removeShape((XSLFShape) it2.next());
        }
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShape
    public void copy(XSLFShape xSLFShape) {
        XSLFTable xSLFTable;
        List<XSLFShape> shapes = getShapes();
        List<XSLFShape> shapes2 = ((XSLFGroupShape) xSLFShape).getShapes();
        if (shapes.size() == shapes2.size()) {
            for (int i = 0; i < shapes.size(); i++) {
                shapes.get(i).copy(shapes2.get(i));
            }
            return;
        }
        clear();
        for (XSLFShape xSLFShape2 : shapes2) {
            if (xSLFShape2 instanceof XSLFTextBox) {
                xSLFTable = createTextBox();
            } else if (xSLFShape2 instanceof XSLFFreeformShape) {
                xSLFTable = createFreeform();
            } else if (xSLFShape2 instanceof XSLFAutoShape) {
                xSLFTable = createAutoShape();
            } else if (xSLFShape2 instanceof XSLFConnectorShape) {
                xSLFTable = createConnector();
            } else if (xSLFShape2 instanceof XSLFPictureShape) {
                XSLFPictureData pictureData = ((XSLFPictureShape) xSLFShape2).getPictureData();
                xSLFTable = createPicture((PictureData) getSheet().getSlideShow().addPicture(pictureData.getData(), pictureData.getType()));
            } else if (xSLFShape2 instanceof XSLFGroupShape) {
                xSLFTable = createGroup();
            } else if (xSLFShape2 instanceof XSLFTable) {
                xSLFTable = createTable();
            } else {
                LOG.atWarn().log("copying of class {} not supported.", xSLFShape2.getClass());
            }
            xSLFTable.copy(xSLFShape2);
        }
    }

    @Override // org.apache.poi.sl.usermodel.Shape, org.apache.poi.sl.usermodel.PlaceableShape
    public Rectangle2D getAnchor() {
        CTGroupTransform2D xfrm = getXfrm();
        CTPoint2D off = xfrm.getOff();
        double points = Units.toPoints(POIXMLUnits.parseLength(off.xgetX()));
        double points2 = Units.toPoints(POIXMLUnits.parseLength(off.xgetY()));
        CTPositiveSize2D ext = xfrm.getExt();
        return new Rectangle2D.Double(points, points2, Units.toPoints(ext.getCx()), Units.toPoints(ext.getCy()));
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public boolean getFlipHorizontal() {
        CTGroupTransform2D xfrm = getXfrm();
        return xfrm != null && xfrm.isSetFlipH() && xfrm.getFlipH();
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public boolean getFlipVertical() {
        CTGroupTransform2D xfrm = getXfrm();
        return xfrm != null && xfrm.isSetFlipV() && xfrm.getFlipV();
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShape
    public CTGroupShapeProperties getGrpSpPr() {
        return this._grpSpPr;
    }

    @Override // org.apache.poi.sl.usermodel.GroupShape
    public Rectangle2D getInteriorAnchor() {
        CTGroupTransform2D xfrm = getXfrm();
        CTPoint2D chOff = xfrm.getChOff();
        double points = Units.toPoints(POIXMLUnits.parseLength(chOff.xgetX()));
        double points2 = Units.toPoints(POIXMLUnits.parseLength(chOff.xgetY()));
        CTPositiveSize2D chExt = xfrm.getChExt();
        return new Rectangle2D.Double(points, points2, Units.toPoints(chExt.getCx()), Units.toPoints(chExt.getCy()));
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public double getRotation() {
        CTGroupTransform2D xfrm = getXfrm();
        if (xfrm == null || !xfrm.isSetRot()) {
            return 0.0d;
        }
        return xfrm.getRot() / 60000.0d;
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public List<XSLFShape> getShapes() {
        return this._shapes;
    }

    public CTGroupTransform2D getXfrm() {
        return getGrpSpPr().getXfrm();
    }

    @Override // java.lang.Iterable
    public Iterator<XSLFShape> iterator() {
        return this._shapes.iterator();
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public void setAnchor(Rectangle2D rectangle2D) {
        CTGroupTransform2D safeXfrm = getSafeXfrm();
        CTPoint2D off = safeXfrm.isSetOff() ? safeXfrm.getOff() : safeXfrm.addNewOff();
        long emu = Units.toEMU(rectangle2D.getX());
        long emu2 = Units.toEMU(rectangle2D.getY());
        off.setX(Long.valueOf(emu));
        off.setY(Long.valueOf(emu2));
        CTPositiveSize2D ext = safeXfrm.isSetExt() ? safeXfrm.getExt() : safeXfrm.addNewExt();
        long emu3 = Units.toEMU(rectangle2D.getWidth());
        long emu4 = Units.toEMU(rectangle2D.getHeight());
        ext.setCx(emu3);
        ext.setCy(emu4);
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public void setFlipHorizontal(boolean z) {
        getSafeXfrm().setFlipH(z);
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public void setFlipVertical(boolean z) {
        getSafeXfrm().setFlipV(z);
    }

    @Override // org.apache.poi.sl.usermodel.GroupShape
    public void setInteriorAnchor(Rectangle2D rectangle2D) {
        CTGroupTransform2D safeXfrm = getSafeXfrm();
        CTPoint2D chOff = safeXfrm.isSetChOff() ? safeXfrm.getChOff() : safeXfrm.addNewChOff();
        long emu = Units.toEMU(rectangle2D.getX());
        long emu2 = Units.toEMU(rectangle2D.getY());
        chOff.setX(Long.valueOf(emu));
        chOff.setY(Long.valueOf(emu2));
        CTPositiveSize2D chExt = safeXfrm.isSetChExt() ? safeXfrm.getChExt() : safeXfrm.addNewChExt();
        long emu3 = Units.toEMU(rectangle2D.getWidth());
        long emu4 = Units.toEMU(rectangle2D.getHeight());
        chExt.setCx(emu3);
        chExt.setCy(emu4);
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public void setRotation(double d) {
        getSafeXfrm().setRot((int) (d * 60000.0d));
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public void addShape(XSLFShape xSLFShape) {
        throw new UnsupportedOperationException("Adding a shape from a different container is not supported - create it from scratch with XSLFGroupShape.create* methods");
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public AutoShape<XSLFShape, XSLFTextParagraph> createAutoShape() {
        XSLFAutoShape createAutoShape = getDrawing().createAutoShape();
        this._shapes.add(createAutoShape);
        createAutoShape.setParent(this);
        return createAutoShape;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public ConnectorShape<XSLFShape, XSLFTextParagraph> createConnector() {
        XSLFConnectorShape createConnector = getDrawing().createConnector();
        this._shapes.add(createConnector);
        createConnector.setParent(this);
        return createConnector;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public FreeformShape<XSLFShape, XSLFTextParagraph> createFreeform() {
        XSLFFreeformShape createFreeform = getDrawing().createFreeform();
        this._shapes.add(createFreeform);
        createFreeform.setParent(this);
        return createFreeform;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public GroupShape<XSLFShape, XSLFTextParagraph> createGroup() {
        XSLFGroupShape createGroup = getDrawing().createGroup();
        this._shapes.add(createGroup);
        createGroup.setParent(this);
        return createGroup;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public XSLFObjectShape createOleShape(PictureData pictureData) {
        if (pictureData instanceof XSLFPictureData) {
            XSLFObjectShape createOleShape = getDrawing().createOleShape(getSheet().addRelation(null, XSLFRelation.IMAGES, (XSLFPictureData) pictureData).getRelationship().getId());
            CTOleObject cTOleObject = createOleShape.getCTOleObject();
            Dimension imageDimension = pictureData.getImageDimension();
            cTOleObject.setImgW(Units.toEMU(imageDimension.getWidth()));
            cTOleObject.setImgH(Units.toEMU(imageDimension.getHeight()));
            getShapes().add(createOleShape);
            createOleShape.setParent(this);
            return createOleShape;
        }
        throw new IllegalArgumentException("pictureData needs to be of type XSLFPictureData");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public PictureShape<XSLFShape, XSLFTextParagraph> createPicture(PictureData pictureData) {
        if (pictureData instanceof XSLFPictureData) {
            XSLFPictureShape createPicture = getDrawing().createPicture(getSheet().addRelation(null, XSLFRelation.IMAGES, (XSLFPictureData) pictureData).getRelationship().getId());
            new DrawPictureShape(createPicture).resize();
            this._shapes.add(createPicture);
            createPicture.setParent(this);
            return createPicture;
        }
        throw new IllegalArgumentException("pictureData needs to be of type XSLFPictureData");
    }

    public XSLFTable createTable() {
        XSLFTable createTable = getDrawing().createTable();
        this._shapes.add(createTable);
        createTable.setParent(this);
        return createTable;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShapeContainer, org.apache.poi.sl.usermodel.ShapeContainer
    public TextBox<XSLFShape, XSLFTextParagraph> createTextBox() {
        XSLFTextBox createTextBox = getDrawing().createTextBox();
        this._shapes.add(createTextBox);
        createTextBox.setParent(this);
        return createTextBox;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    /* JADX WARN: Type inference failed for: r3v1, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public boolean removeShape(XSLFShape xSLFShape) {
        XmlObject xmlObject = xSLFShape.getXmlObject();
        CTGroupShape cTGroupShape = (CTGroupShape) getXmlObject();
        getSheet().deregisterShapeId(xSLFShape.getShapeId());
        if (xmlObject instanceof CTShape) {
            cTGroupShape.getSpList().remove(xmlObject);
        } else if (xmlObject instanceof CTGroupShape) {
            XSLFGroupShape xSLFGroupShape = (XSLFGroupShape) xSLFShape;
            new ArrayList(xSLFGroupShape.getShapes()).forEach(new zmo(xSLFGroupShape));
            cTGroupShape.getGrpSpList().remove(xmlObject);
        } else if (xmlObject instanceof CTConnector) {
            cTGroupShape.getCxnSpList().remove(xmlObject);
        } else if (xmlObject instanceof CTGraphicalObjectFrame) {
            cTGroupShape.getGraphicFrameList().remove(xmlObject);
        } else if (xmlObject instanceof CTPicture) {
            XSLFPictureShape xSLFPictureShape = (XSLFPictureShape) xSLFShape;
            ?? sheet = getSheet();
            if (sheet != 0) {
                sheet.removePictureRelation(xSLFPictureShape);
            }
            cTGroupShape.getPicList().remove(xmlObject);
        } else {
            throw new IllegalArgumentException("Unsupported shape: " + xSLFShape);
        }
        return this._shapes.remove(xSLFShape);
    }

    @Override // org.apache.poi.sl.usermodel.ShapeContainer
    public TableShape<XSLFShape, XSLFTextParagraph> createTable(int i, int i2) {
        if (i >= 1 && i2 >= 1) {
            XSLFTable createTable = getDrawing().createTable();
            this._shapes.add(createTable);
            createTable.setParent(this);
            for (int i3 = 0; i3 < i; i3++) {
                XSLFTableRow addRow = createTable.addRow();
                for (int i4 = 0; i4 < i2; i4++) {
                    addRow.addCell();
                }
            }
            return createTable;
        }
        throw new IllegalArgumentException("numRows and numCols must be greater than 0");
    }
}
