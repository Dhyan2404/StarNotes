package org.apache.poi.xslf.usermodel;

import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.sl.usermodel.ConnectorShape;
import org.apache.poi.sl.usermodel.Placeholder;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.STShapeType;
import org.openxmlformats.schemas.presentationml.x2006.main.CTConnector;
import org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual;

/* loaded from: classes13.dex */
public class XSLFConnectorShape extends XSLFSimpleShape implements ConnectorShape<XSLFShape, XSLFTextParagraph> {
    public XSLFConnectorShape(CTConnector cTConnector, XSLFSheet xSLFSheet) {
        super(cTConnector, xSLFSheet);
    }

    public static CTConnector prototype(int i) {
        CTConnector newInstance = CTConnector.Factory.newInstance();
        CTConnectorNonVisual addNewNvCxnSpPr = newInstance.addNewNvCxnSpPr();
        CTNonVisualDrawingProps addNewCNvPr = addNewNvCxnSpPr.addNewCNvPr();
        addNewCNvPr.setName("Connector " + i);
        addNewCNvPr.setId((long) i);
        addNewNvCxnSpPr.addNewCNvCxnSpPr();
        addNewNvCxnSpPr.addNewNvPr();
        CTShapeProperties addNewSpPr = newInstance.addNewSpPr();
        CTPresetGeometry2D addNewPrstGeom = addNewSpPr.addNewPrstGeom();
        addNewPrstGeom.setPrst(STShapeType.LINE);
        addNewPrstGeom.addNewAvLst();
        addNewSpPr.addNewLn();
        return newInstance;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSimpleShape, org.apache.poi.sl.usermodel.SimpleShape
    public XSLFShadow getShadow() {
        return null;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFShape, org.apache.poi.sl.usermodel.SimpleShape
    public void setPlaceholder(Placeholder placeholder) {
        throw new POIXMLException("A connector shape can't be a placeholder.");
    }
}
