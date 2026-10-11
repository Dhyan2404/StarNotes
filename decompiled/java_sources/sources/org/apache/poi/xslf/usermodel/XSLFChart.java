package org.apache.poi.xslf.usermodel;

import java.awt.geom.Rectangle2D;
import java.io.IOException;
import javax.xml.namespace.QName;
import org.apache.poi.ooxml.POIXMLFactory;
import org.apache.poi.ooxml.POIXMLRelation;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.xddf.usermodel.chart.XDDFChart;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTTitle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrameNonVisual;

/* loaded from: classes13.dex */
public final class XSLFChart extends XDDFChart {
    private static String CHART_URI = "http://schemas.openxmlformats.org/drawingml/2006/chart";

    public XSLFChart() {
    }

    public static CTGraphicalObjectFrame prototype(int i, String str, Rectangle2D rectangle2D) {
        CTGraphicalObjectFrame newInstance = CTGraphicalObjectFrame.Factory.newInstance();
        CTGraphicalObjectFrameNonVisual addNewNvGraphicFramePr = newInstance.addNewNvGraphicFramePr();
        CTNonVisualDrawingProps addNewCNvPr = addNewNvGraphicFramePr.addNewCNvPr();
        addNewCNvPr.setName("Chart " + i);
        addNewCNvPr.setId((long) i);
        addNewNvGraphicFramePr.addNewCNvGraphicFramePr().addNewGraphicFrameLocks().setNoGrp(true);
        addNewNvGraphicFramePr.addNewNvPr();
        CTTransform2D addNewXfrm = newInstance.addNewXfrm();
        CTPoint2D addNewOff = addNewXfrm.addNewOff();
        addNewOff.setX(Integer.valueOf((int) rectangle2D.getX()));
        addNewOff.setY(Integer.valueOf((int) rectangle2D.getY()));
        CTPositiveSize2D addNewExt = addNewXfrm.addNewExt();
        addNewExt.setCx((int) rectangle2D.getWidth());
        addNewExt.setCy((int) rectangle2D.getHeight());
        addNewXfrm.setExt(addNewExt);
        addNewXfrm.setOff(addNewOff);
        CTGraphicalObjectData addNewGraphicData = newInstance.addNewGraphic().addNewGraphicData();
        XmlCursor newCursor = addNewGraphicData.newCursor();
        try {
            newCursor.toNextToken();
            newCursor.beginElement(new QName(CHART_URI, "chart"));
            newCursor.insertAttributeWithValue("id", PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, str);
            newCursor.close();
            addNewGraphicData.setUri(CHART_URI);
            return newInstance;
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

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChart
    public POIXMLFactory getChartFactory() {
        return XSLFFactory.getInstance();
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChart
    public POIXMLRelation getChartRelation() {
        return XSLFRelation.CHART;
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChart
    public POIXMLRelation getChartWorkbookRelation() {
        return XSLFRelation.WORKBOOK;
    }

    public XSLFTextShape getTitleShape() {
        if (!getCTChart().isSetTitle()) {
            getCTChart().addNewTitle();
        }
        final CTTitle title = getCTChart().getTitle();
        XSLFSheet xSLFSheet = null;
        return (title.getTx() == null || !title.getTx().isSetRich()) ? new XSLFTextShape(title, xSLFSheet) { // from class: org.apache.poi.xslf.usermodel.XSLFChart.2
            @Override // org.apache.poi.xslf.usermodel.XSLFTextShape
            public CTTextBody getTextBody(boolean z) {
                return title.getTxPr();
            }
        } : new XSLFTextShape(title, xSLFSheet) { // from class: org.apache.poi.xslf.usermodel.XSLFChart.1
            @Override // org.apache.poi.xslf.usermodel.XSLFTextShape
            public CTTextBody getTextBody(boolean z) {
                return title.getTx().getRich();
            }
        };
    }

    public XSLFChart(PackagePart packagePart) throws IOException, XmlException {
        super(packagePart);
    }
}
