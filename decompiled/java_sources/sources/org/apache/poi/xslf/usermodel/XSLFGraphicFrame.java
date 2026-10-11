package org.apache.poi.xslf.usermodel;

import java.awt.geom.Rectangle2D;
import java.io.IOException;
import javax.xml.namespace.QName;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.sl.usermodel.GraphicalFrame;
import org.apache.poi.sl.usermodel.PictureShape;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.util.Units;
import org.apache.poi.xslf.usermodel.XSLFPropertiesDelegate;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlip;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape;

/* loaded from: classes13.dex */
public class XSLFGraphicFrame extends XSLFShape implements GraphicalFrame<XSLFShape, XSLFTextParagraph> {
    private static final String DRAWINGML_CHART_URI = "http://schemas.openxmlformats.org/drawingml/2006/chart";
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSLFGraphicFrame.class);

    public XSLFGraphicFrame(CTGraphicalObjectFrame cTGraphicalObjectFrame, XSLFSheet xSLFSheet) {
        super(cTGraphicalObjectFrame, xSLFSheet);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [org.apache.poi.xslf.usermodel.XMLSlideShow] */
    /* JADX WARN: Type inference failed for: r3v5, types: [org.apache.poi.xslf.usermodel.XMLSlideShow] */
    /* JADX WARN: Type inference failed for: r5v1, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    private void copyChart(CTGraphicalObjectData cTGraphicalObjectData, XSLFGraphicFrame xSLFGraphicFrame) {
        XSLFPropertiesDelegate.XSLFFillProperties fillDelegate;
        XSLFSlide xSLFSlide = (XSLFSlide) getSheet();
        ?? sheet = xSLFGraphicFrame.getSheet();
        XmlObject[] selectPath = cTGraphicalObjectData.selectPath("declare namespace c='http://schemas.openxmlformats.org/drawingml/2006/chart' c:chart");
        if (selectPath == null || selectPath.length != 1) {
            return;
        }
        try {
            XmlCursor newCursor = selectPath[0].newCursor();
            try {
                QName qName = new QName(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, "id");
                XSLFChart xSLFChart = (XSLFChart) sheet.getRelationById(newCursor.getAttributeText(qName));
                XSLFChart createChart = xSLFSlide.getSlideShow().createChart(xSLFSlide);
                createChart.importContent(xSLFChart);
                createChart.setWorkbook(xSLFChart.getWorkbook());
                newCursor.setAttributeText(qName, xSLFSlide.getRelationId(createChart));
                CTChartSpace cTChartSpace = createChart.getCTChartSpace();
                if (cTChartSpace != null && (fillDelegate = XSLFPropertiesDelegate.getFillDelegate(cTChartSpace.getSpPr())) != null && fillDelegate.isSetBlipFill()) {
                    CTBlip blip = fillDelegate.getBlipFill().getBlip();
                    blip.setEmbed(xSLFSlide.getSlideShow().importBlip(blip.getEmbed(), xSLFChart, createChart));
                }
                newCursor.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (newCursor != null) {
                        try {
                            newCursor.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } catch (IOException | InvalidFormatException e) {
            throw new POIXMLException(e);
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    /* JADX WARN: Type inference failed for: r3v1, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    /* JADX WARN: Type inference failed for: r3v2, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    /* JADX WARN: Type inference failed for: r4v3, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    /* JADX WARN: Type inference failed for: r6v1, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    private void copyDiagram(CTGraphicalObjectData cTGraphicalObjectData, XSLFGraphicFrame xSLFGraphicFrame) {
        XmlObject[] selectPath = cTGraphicalObjectData.selectPath("declare namespace dgm='http://schemas.openxmlformats.org/drawingml/2006/diagram' $this//dgm:relIds");
        if (selectPath == null || selectPath.length != 1) {
            return;
        }
        ?? sheet = xSLFGraphicFrame.getSheet();
        try {
            XmlCursor newCursor = selectPath[0].newCursor();
            try {
                PackageRelationship relationship = sheet.getPackagePart().getRelationship(newCursor.getAttributeText(new QName(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, "dm")));
                getSheet().importPart(relationship, sheet.getPackagePart().getRelatedPart(relationship));
                PackageRelationship relationship2 = sheet.getPackagePart().getRelationship(newCursor.getAttributeText(new QName(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, "lo")));
                getSheet().importPart(relationship2, sheet.getPackagePart().getRelatedPart(relationship2));
                PackageRelationship relationship3 = sheet.getPackagePart().getRelationship(newCursor.getAttributeText(new QName(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, "qs")));
                getSheet().importPart(relationship3, sheet.getPackagePart().getRelatedPart(relationship3));
                PackageRelationship relationship4 = sheet.getPackagePart().getRelationship(newCursor.getAttributeText(new QName(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, "cs")));
                getSheet().importPart(relationship4, sheet.getPackagePart().getRelatedPart(relationship4));
                newCursor.close();
            } finally {
            }
        } catch (InvalidFormatException e) {
            throw new POIXMLException(e);
        }
    }

    public static XSLFGraphicFrame create(CTGraphicalObjectFrame cTGraphicalObjectFrame, XSLFSheet xSLFSheet) {
        String uri = getUri(cTGraphicalObjectFrame);
        if (uri == null) {
            uri = "";
        }
        char c = 65535;
        switch (uri.hashCode()) {
            case -844661481:
                if (uri.equals("http://schemas.openxmlformats.org/presentationml/2006/ole")) {
                    c = 0;
                    break;
                }
                break;
            case -809269002:
                if (uri.equals(XSLFDiagram.DRAWINGML_DIAGRAM_URI)) {
                    c = 1;
                    break;
                }
                break;
            case -603062095:
                if (uri.equals("http://schemas.openxmlformats.org/drawingml/2006/table")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return new XSLFObjectShape(cTGraphicalObjectFrame, xSLFSheet);
            case 1:
                return new XSLFDiagram(cTGraphicalObjectFrame, xSLFSheet);
            case 2:
                return new XSLFTable(cTGraphicalObjectFrame, xSLFSheet);
            default:
                return new XSLFGraphicFrame(cTGraphicalObjectFrame, xSLFSheet);
        }
    }

    private CTGraphicalObjectData getGraphicalData() {
        return ((CTGraphicalObjectFrame) getXmlObject()).getGraphic().getGraphicData();
    }

    private static String getUri(CTGraphicalObjectFrame cTGraphicalObjectFrame) {
        CTGraphicalObjectData graphicData;
        CTGraphicalObject graphic = cTGraphicalObjectFrame.getGraphic();
        if (graphic == null || (graphicData = graphic.getGraphicData()) == null) {
            return null;
        }
        return graphicData.getUri();
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShape
    public void copy(XSLFShape xSLFShape) {
        super.copy(xSLFShape);
        CTGraphicalObjectData graphicalData = getGraphicalData();
        String uri = graphicalData.getUri();
        if (uri.equals(XSLFDiagram.DRAWINGML_DIAGRAM_URI)) {
            copyDiagram(graphicalData, (XSLFGraphicFrame) xSLFShape);
        }
        if (uri.equals("http://schemas.openxmlformats.org/drawingml/2006/chart")) {
            copyChart(graphicalData, (XSLFGraphicFrame) xSLFShape);
        }
    }

    @Override // org.apache.poi.sl.usermodel.Shape, org.apache.poi.sl.usermodel.PlaceableShape
    public Rectangle2D getAnchor() {
        CTTransform2D xfrm = ((CTGraphicalObjectFrame) getXmlObject()).getXfrm();
        CTPoint2D off = xfrm.getOff();
        double points = Units.toPoints(POIXMLUnits.parseLength(off.xgetX()));
        double points2 = Units.toPoints(POIXMLUnits.parseLength(off.xgetY()));
        CTPositiveSize2D ext = xfrm.getExt();
        return new Rectangle2D.Double(points, points2, Units.toPoints(ext.getCx()), Units.toPoints(ext.getCy()));
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
    public XSLFChart getChart() {
        String str;
        if (!hasChart()) {
            return null;
        }
        XmlObject[] selectPath = getGraphicalData().selectPath("declare namespace c='http://schemas.openxmlformats.org/drawingml/2006/chart' c:chart");
        if (selectPath == null || selectPath.length != 1) {
            str = null;
        } else {
            XmlCursor newCursor = selectPath[0].newCursor();
            try {
                str = newCursor.getAttributeText(new QName(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, "id"));
                newCursor.close();
            } finally {
            }
        }
        if (str == null) {
            return null;
        }
        return (XSLFChart) getSheet().getRelationById(str);
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public boolean getFlipHorizontal() {
        return false;
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public boolean getFlipVertical() {
        return false;
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public double getRotation() {
        return 0.0d;
    }

    public ShapeType getShapeType() {
        throw new UnsupportedOperationException();
    }

    public boolean hasChart() {
        return getGraphicalData().getUri().equals("http://schemas.openxmlformats.org/drawingml/2006/chart");
    }

    public boolean hasDiagram() {
        return getGraphicalData().getUri().equals(XSLFDiagram.DRAWINGML_DIAGRAM_URI);
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public void setAnchor(Rectangle2D rectangle2D) {
        CTTransform2D xfrm = ((CTGraphicalObjectFrame) getXmlObject()).getXfrm();
        CTPoint2D off = xfrm.isSetOff() ? xfrm.getOff() : xfrm.addNewOff();
        long emu = Units.toEMU(rectangle2D.getX());
        long emu2 = Units.toEMU(rectangle2D.getY());
        off.setX(Long.valueOf(emu));
        off.setY(Long.valueOf(emu2));
        CTPositiveSize2D ext = xfrm.isSetExt() ? xfrm.getExt() : xfrm.addNewExt();
        long emu3 = Units.toEMU(rectangle2D.getWidth());
        long emu4 = Units.toEMU(rectangle2D.getHeight());
        ext.setCx(emu3);
        ext.setCy(emu4);
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public void setFlipHorizontal(boolean z) {
        throw new IllegalArgumentException("Operation not supported");
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public void setFlipVertical(boolean z) {
        throw new IllegalArgumentException("Operation not supported");
    }

    @Override // org.apache.poi.sl.usermodel.PlaceableShape
    public void setRotation(double d) {
        throw new IllegalArgumentException("Operation not supported");
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    @Override // org.apache.poi.sl.usermodel.GraphicalFrame
    public PictureShape<XSLFShape, XSLFTextParagraph> getFallbackPicture() {
        XmlObject selectProperty = selectProperty(XmlObject.class, "declare namespace p='http://schemas.openxmlformats.org/presentationml/2006/main'; declare namespace mc='http://schemas.openxmlformats.org/markup-compatibility/2006' .//mc:Fallback/*/p:pic");
        if (selectProperty == null) {
            return null;
        }
        try {
            CTGroupShape parse = CTGroupShape.Factory.parse(selectProperty.newDomNode());
            if (parse.sizeOfPicArray() == 0) {
                return null;
            }
            return new XSLFPictureShape(parse.getPicArray(0), getSheet());
        } catch (XmlException e) {
            LOG.atWarn().withThrowable(e).log("Can't parse fallback picture stream of graphical frame");
            return null;
        }
    }
}
