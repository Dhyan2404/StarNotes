package org.apache.poi.xssf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFontReference;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeStyle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTStyleMatrixReference;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;
import org.openxmlformats.schemas.drawingml.x2006.main.STFontCollectionIndex;
import org.openxmlformats.schemas.drawingml.x2006.main.STSchemeColorVal;
import org.openxmlformats.schemas.drawingml.x2006.main.STShapeType;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTConnector;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTConnectorNonVisual;

/* loaded from: classes13.dex */
public final class XSSFConnector extends XSSFShape {
    private static CTConnector prototype;
    private final CTConnector ctShape;

    public XSSFConnector(XSSFDrawing xSSFDrawing, CTConnector cTConnector) {
        this.drawing = xSSFDrawing;
        this.ctShape = cTConnector;
    }

    public static CTConnector prototype() {
        if (prototype == null) {
            CTConnector newInstance = CTConnector.Factory.newInstance();
            CTConnectorNonVisual addNewNvCxnSpPr = newInstance.addNewNvCxnSpPr();
            CTNonVisualDrawingProps addNewCNvPr = addNewNvCxnSpPr.addNewCNvPr();
            addNewCNvPr.setId(1L);
            addNewCNvPr.setName("Shape 1");
            addNewNvCxnSpPr.addNewCNvCxnSpPr();
            CTShapeProperties addNewSpPr = newInstance.addNewSpPr();
            CTTransform2D addNewXfrm = addNewSpPr.addNewXfrm();
            CTPositiveSize2D addNewExt = addNewXfrm.addNewExt();
            addNewExt.setCx(0L);
            addNewExt.setCy(0L);
            CTPoint2D addNewOff = addNewXfrm.addNewOff();
            addNewOff.setX(0);
            addNewOff.setY(0);
            CTPresetGeometry2D addNewPrstGeom = addNewSpPr.addNewPrstGeom();
            addNewPrstGeom.setPrst(STShapeType.LINE);
            addNewPrstGeom.addNewAvLst();
            CTShapeStyle addNewStyle = newInstance.addNewStyle();
            CTSchemeColor addNewSchemeClr = addNewStyle.addNewLnRef().addNewSchemeClr();
            STSchemeColorVal.Enum r5 = STSchemeColorVal.ACCENT_1;
            addNewSchemeClr.setVal(r5);
            addNewStyle.getLnRef().setIdx(1L);
            CTStyleMatrixReference addNewFillRef = addNewStyle.addNewFillRef();
            addNewFillRef.setIdx(0L);
            addNewFillRef.addNewSchemeClr().setVal(r5);
            CTStyleMatrixReference addNewEffectRef = addNewStyle.addNewEffectRef();
            addNewEffectRef.setIdx(0L);
            addNewEffectRef.addNewSchemeClr().setVal(r5);
            CTFontReference addNewFontRef = addNewStyle.addNewFontRef();
            addNewFontRef.setIdx(STFontCollectionIndex.MINOR);
            addNewFontRef.addNewSchemeClr().setVal(STSchemeColorVal.TX_1);
            prototype = newInstance;
        }
        return prototype;
    }

    @Internal
    public CTConnector getCTConnector() {
        return this.ctShape;
    }

    @Override // org.apache.poi.ss.usermodel.Shape
    public String getShapeName() {
        return this.ctShape.getNvCxnSpPr().getCNvPr().getName();
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFShape
    public CTShapeProperties getShapeProperties() {
        return this.ctShape.getSpPr();
    }

    public int getShapeType() {
        return this.ctShape.getSpPr().getPrstGeom().getPrst().intValue();
    }

    public void setShapeType(int i) {
        this.ctShape.getSpPr().getPrstGeom().setPrst(STShapeType.Enum.forInt(i));
    }
}
