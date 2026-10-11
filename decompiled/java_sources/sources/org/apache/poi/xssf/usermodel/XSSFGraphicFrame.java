package org.apache.poi.xssf.usermodel;

import javax.xml.namespace.QName;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.util.Internal;
import org.apache.xmlbeans.XmlCursor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrame;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTGraphicalObjectFrameNonVisual;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes13.dex */
public final class XSSFGraphicFrame extends XSSFShape {
    private static CTGraphicalObjectFrame prototype;
    private final CTGraphicalObjectFrame graphicFrame;

    public XSSFGraphicFrame(XSSFDrawing xSSFDrawing, CTGraphicalObjectFrame cTGraphicalObjectFrame) {
        this.drawing = xSSFDrawing;
        this.graphicFrame = cTGraphicalObjectFrame;
        CTGraphicalObjectData graphicData = cTGraphicalObjectFrame.getGraphic().getGraphicData();
        if (graphicData != null) {
            NodeList childNodes = graphicData.getDomNode().getChildNodes();
            for (int i = 0; i < childNodes.getLength(); i++) {
                Node item = childNodes.item(i);
                if (item.getNodeName().equals("c:chart")) {
                    POIXMLDocumentPart relationById = xSSFDrawing.getRelationById(item.getAttributes().getNamedItem("r:id").getNodeValue());
                    if (relationById instanceof XSSFChart) {
                        ((XSSFChart) relationById).setGraphicFrame(this);
                    }
                }
            }
        }
    }

    private void appendChartElement(CTGraphicalObjectData cTGraphicalObjectData, String str) {
        String namespaceURI = STRelationshipId.type.getName().getNamespaceURI();
        XmlCursor newCursor = cTGraphicalObjectData.newCursor();
        try {
            newCursor.toNextToken();
            newCursor.beginElement(new QName(XSSFRelation.NS_CHART, "chart", "c"));
            newCursor.insertAttributeWithValue(new QName(namespaceURI, "id", "r"), str);
            newCursor.close();
            cTGraphicalObjectData.setUri(XSSFRelation.NS_CHART);
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
    }

    private CTNonVisualDrawingProps getNonVisualProperties() {
        return this.graphicFrame.getNvGraphicFramePr().getCNvPr();
    }

    public static CTGraphicalObjectFrame prototype() {
        if (prototype == null) {
            CTGraphicalObjectFrame newInstance = CTGraphicalObjectFrame.Factory.newInstance();
            CTGraphicalObjectFrameNonVisual addNewNvGraphicFramePr = newInstance.addNewNvGraphicFramePr();
            CTNonVisualDrawingProps addNewCNvPr = addNewNvGraphicFramePr.addNewCNvPr();
            addNewCNvPr.setId(0L);
            addNewCNvPr.setName("Diagramm 1");
            addNewNvGraphicFramePr.addNewCNvGraphicFramePr();
            CTTransform2D addNewXfrm = newInstance.addNewXfrm();
            CTPositiveSize2D addNewExt = addNewXfrm.addNewExt();
            CTPoint2D addNewOff = addNewXfrm.addNewOff();
            addNewExt.setCx(0L);
            addNewExt.setCy(0L);
            addNewOff.setX(0);
            addNewOff.setY(0);
            newInstance.addNewGraphic();
            prototype = newInstance;
        }
        return prototype;
    }

    @Internal
    public CTGraphicalObjectFrame getCTGraphicalObjectFrame() {
        return this.graphicFrame;
    }

    public long getId() {
        return this.graphicFrame.getNvGraphicFramePr().getCNvPr().getId();
    }

    public String getName() {
        return getNonVisualProperties().getName();
    }

    @Override // org.apache.poi.ss.usermodel.Shape
    public String getShapeName() {
        return this.graphicFrame.getNvGraphicFramePr().getCNvPr().getName();
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFShape
    public CTShapeProperties getShapeProperties() {
        return null;
    }

    public void setAnchor(XSSFClientAnchor xSSFClientAnchor) {
        this.anchor = xSSFClientAnchor;
    }

    public void setChart(XSSFChart xSSFChart, String str) {
        appendChartElement(this.graphicFrame.getGraphic().addNewGraphicData(), str);
        xSSFChart.setGraphicFrame(this);
    }

    public void setId(long j) {
        this.graphicFrame.getNvGraphicFramePr().getCNvPr().setId(j);
    }

    public void setMacro(String str) {
        this.graphicFrame.setMacro(str);
    }

    public void setName(String str) {
        getNonVisualProperties().setName(str);
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFShape, org.apache.poi.ss.usermodel.Shape
    public XSSFClientAnchor getAnchor() {
        return (XSSFClientAnchor) this.anchor;
    }
}
