package org.apache.poi.xslf.usermodel;

import com.microsoft.schemas.office.drawing.x2008.diagram.CTShape;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import javax.xml.namespace.QName;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTRelIds;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRegularTextRun;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph;
import org.openxmlformats.schemas.presentationml.x2006.main.CTApplicationNonVisualDrawingProps;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual;
import org.openxmlformats.schemas.presentationml.x2006.main.CTShapeNonVisual;

/* loaded from: classes13.dex */
public class XSLFDiagram extends XSLFGraphicFrame {
    public static final String DRAWINGML_DIAGRAM_URI = "http://schemas.openxmlformats.org/drawingml/2006/diagram";
    private final XSLFDiagramDrawing _drawing;
    private final XSLFDiagramGroupShape _groupShape;

    /* loaded from: classes13.dex */
    public static class XSLFDiagramGroupShape extends XSLFGroupShape {
        private XSLFDiagramDrawing diagramDrawing;

        public POIXMLDocumentPart getRelationById(String str) {
            return this.diagramDrawing.getRelationById(str);
        }

        public XSLFDiagramGroupShape(CTGroupShape cTGroupShape, XSLFSheet xSLFSheet) {
            super(cTGroupShape, xSLFSheet);
        }

        private XSLFDiagramGroupShape(CTGroupShape cTGroupShape, XSLFSheet xSLFSheet, XSLFDiagramDrawing xSLFDiagramDrawing) {
            super(cTGroupShape, xSLFSheet);
            this.diagramDrawing = xSLFDiagramDrawing;
        }
    }

    public XSLFDiagram(CTGraphicalObjectFrame cTGraphicalObjectFrame, XSLFSheet xSLFSheet) {
        super(cTGraphicalObjectFrame, xSLFSheet);
        this._drawing = readDiagramDrawing(cTGraphicalObjectFrame, xSLFSheet);
        this._groupShape = initGroupShape();
    }

    /* JADX WARN: Type inference failed for: r2v8, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    private XSLFDiagramGroupShape convertMsGroupToGroupShape(com.microsoft.schemas.office.drawing.x2008.diagram.CTGroupShape cTGroupShape, XSLFDiagramDrawing xSLFDiagramDrawing) {
        CTGroupShape newInstance = CTGroupShape.Factory.newInstance();
        newInstance.addNewGrpSpPr();
        CTGroupShapeNonVisual addNewNvGrpSpPr = newInstance.addNewNvGrpSpPr();
        addNewNvGrpSpPr.setCNvPr(cTGroupShape.getNvGrpSpPr().getCNvPr());
        addNewNvGrpSpPr.setCNvGrpSpPr(cTGroupShape.getNvGrpSpPr().getCNvGrpSpPr());
        addNewNvGrpSpPr.setNvPr(CTApplicationNonVisualDrawingProps.Factory.newInstance());
        Iterator<CTShape> it2 = cTGroupShape.getSpList().iterator();
        while (it2.hasNext()) {
            newInstance.getSpList().addAll(convertShape(it2.next()));
        }
        Rectangle2D anchor = super.getAnchor();
        Rectangle2D.Double r10 = new Rectangle2D.Double(0.0d, 0.0d, anchor.getWidth(), anchor.getHeight());
        XSLFDiagramGroupShape xSLFDiagramGroupShape = new XSLFDiagramGroupShape(newInstance, getSheet(), xSLFDiagramDrawing);
        xSLFDiagramGroupShape.setAnchor(anchor);
        xSLFDiagramGroupShape.setInteriorAnchor(r10);
        xSLFDiagramGroupShape.setRotation(super.getRotation());
        return xSLFDiagramGroupShape;
    }

    private List<org.openxmlformats.schemas.presentationml.x2006.main.CTShape> convertShape(CTShape cTShape) {
        org.openxmlformats.schemas.presentationml.x2006.main.CTShape newInstance = org.openxmlformats.schemas.presentationml.x2006.main.CTShape.Factory.newInstance();
        newInstance.setStyle(cTShape.getStyle());
        newInstance.setSpPr(cTShape.getSpPr());
        CTShapeNonVisual addNewNvSpPr = newInstance.addNewNvSpPr();
        addNewNvSpPr.setCNvPr(cTShape.getNvSpPr().getCNvPr());
        addNewNvSpPr.setCNvSpPr(cTShape.getNvSpPr().getCNvSpPr());
        addNewNvSpPr.setNvPr(CTApplicationNonVisualDrawingProps.Factory.newInstance());
        newInstance.setNvSpPr(addNewNvSpPr);
        ArrayList arrayList = new ArrayList();
        arrayList.add(newInstance);
        if (hasTextContent(cTShape)) {
            arrayList.add(convertText(cTShape, addNewNvSpPr));
        }
        return arrayList;
    }

    private org.openxmlformats.schemas.presentationml.x2006.main.CTShape convertText(CTShape cTShape, CTShapeNonVisual cTShapeNonVisual) {
        org.openxmlformats.schemas.presentationml.x2006.main.CTShape newInstance = org.openxmlformats.schemas.presentationml.x2006.main.CTShape.Factory.newInstance();
        CTShapeProperties addNewSpPr = newInstance.addNewSpPr();
        newInstance.setTxBody(cTShape.getTxBody());
        newInstance.setStyle(cTShape.getStyle());
        newInstance.setNvSpPr((CTShapeNonVisual) cTShapeNonVisual.copy());
        newInstance.getNvSpPr().getCNvSpPr().setTxBox(true);
        addNewSpPr.setXfrm(cTShape.getTxXfrm());
        int rot = cTShape.getSpPr().getXfrm().getRot();
        int rot2 = cTShape.getTxXfrm().getRot();
        if (rot2 != 0) {
            addNewSpPr.getXfrm().setRot(rot + rot2);
        }
        return newInstance;
    }

    private static boolean hasTextContent(CTShape cTShape) {
        if (cTShape.getTxBody() == null || cTShape.getTxXfrm() == null) {
            return false;
        }
        return cTShape.getTxBody().getPList().stream().flatMap(new Function() { // from class: com.sunia.HTREnginev2.vmo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream lambda$hasTextContent$0;
                lambda$hasTextContent$0 = XSLFDiagram.lambda$hasTextContent$0((CTTextParagraph) obj);
                return lambda$hasTextContent$0;
            }
        }).anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.wmo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$hasTextContent$1;
                lambda$hasTextContent$1 = XSLFDiagram.lambda$hasTextContent$1((CTRegularTextRun) obj);
                return lambda$hasTextContent$1;
            }
        });
    }

    private XSLFDiagramGroupShape initGroupShape() {
        com.microsoft.schemas.office.drawing.x2008.diagram.CTGroupShape spTree;
        XSLFDiagramDrawing diagramDrawing = getDiagramDrawing();
        if (diagramDrawing == null || diagramDrawing.getDrawingDocument() == null || (spTree = diagramDrawing.getDrawingDocument().getDrawing().getSpTree()) == null || spTree.getSpList().isEmpty()) {
            return null;
        }
        return convertMsGroupToGroupShape(spTree, diagramDrawing);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream lambda$hasTextContent$0(CTTextParagraph cTTextParagraph) {
        return cTTextParagraph.getRList().stream();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$hasTextContent$1(CTRegularTextRun cTRegularTextRun) {
        return (cTRegularTextRun.getT() == null || cTRegularTextRun.getT().trim().isEmpty()) ? false : true;
    }

    private static XSLFDiagramDrawing readDiagramDrawing(CTGraphicalObjectFrame cTGraphicalObjectFrame, XSLFSheet xSLFSheet) {
        POIXMLDocumentPart relationById;
        XmlObject[] selectChildren = cTGraphicalObjectFrame.getGraphic().getGraphicData().selectChildren(new QName(DRAWINGML_DIAGRAM_URI, "relIds"));
        if (selectChildren.length == 0 || (relationById = xSLFSheet.getRelationById(((CTRelIds) selectChildren[0]).getDm())) == null) {
            return null;
        }
        String replace = relationById.getPackagePart().getPartName().getName().replace("data", "drawing");
        for (POIXMLDocumentPart.RelationPart relationPart : xSLFSheet.getRelationParts()) {
            if (replace.equals(relationPart.getDocumentPart().getPackagePart().getPartName().getName()) && (relationPart.getDocumentPart() instanceof XSLFDiagramDrawing)) {
                return (XSLFDiagramDrawing) relationPart.getDocumentPart();
            }
        }
        return null;
    }

    public XSLFDiagramDrawing getDiagramDrawing() {
        return this._drawing;
    }

    public XSLFDiagramGroupShape getGroupShape() {
        return this._groupShape;
    }
}
