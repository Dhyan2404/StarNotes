package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualConnectorProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeStyle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBodyProperties;

/* loaded from: classes14.dex */
public interface CTWordprocessingShape extends XmlObject {
    public static final DocumentFactory<CTWordprocessingShape> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWordprocessingShape> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwordprocessingshape9945type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTextBodyProperties addNewBodyPr();

    CTNonVisualConnectorProperties addNewCNvCnPr();

    CTNonVisualDrawingProps addNewCNvPr();

    CTNonVisualDrawingShapeProps addNewCNvSpPr();

    CTOfficeArtExtensionList addNewExtLst();

    CTLinkedTextboxInformation addNewLinkedTxbx();

    CTShapeProperties addNewSpPr();

    CTShapeStyle addNewStyle();

    CTTextboxInfo addNewTxbx();

    CTTextBodyProperties getBodyPr();

    CTNonVisualConnectorProperties getCNvCnPr();

    CTNonVisualDrawingProps getCNvPr();

    CTNonVisualDrawingShapeProps getCNvSpPr();

    CTOfficeArtExtensionList getExtLst();

    CTLinkedTextboxInformation getLinkedTxbx();

    boolean getNormalEastAsianFlow();

    CTShapeProperties getSpPr();

    CTShapeStyle getStyle();

    CTTextboxInfo getTxbx();

    boolean isSetCNvCnPr();

    boolean isSetCNvPr();

    boolean isSetCNvSpPr();

    boolean isSetExtLst();

    boolean isSetLinkedTxbx();

    boolean isSetNormalEastAsianFlow();

    boolean isSetStyle();

    boolean isSetTxbx();

    void setBodyPr(CTTextBodyProperties cTTextBodyProperties);

    void setCNvCnPr(CTNonVisualConnectorProperties cTNonVisualConnectorProperties);

    void setCNvPr(CTNonVisualDrawingProps cTNonVisualDrawingProps);

    void setCNvSpPr(CTNonVisualDrawingShapeProps cTNonVisualDrawingShapeProps);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setLinkedTxbx(CTLinkedTextboxInformation cTLinkedTextboxInformation);

    void setNormalEastAsianFlow(boolean z);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void setStyle(CTShapeStyle cTShapeStyle);

    void setTxbx(CTTextboxInfo cTTextboxInfo);

    void unsetCNvCnPr();

    void unsetCNvPr();

    void unsetCNvSpPr();

    void unsetExtLst();

    void unsetLinkedTxbx();

    void unsetNormalEastAsianFlow();

    void unsetStyle();

    void unsetTxbx();

    XmlBoolean xgetNormalEastAsianFlow();

    void xsetNormalEastAsianFlow(XmlBoolean xmlBoolean);
}
