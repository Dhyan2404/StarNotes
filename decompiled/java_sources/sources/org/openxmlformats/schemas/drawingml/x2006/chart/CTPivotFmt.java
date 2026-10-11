package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;

/* loaded from: classes14.dex */
public interface CTPivotFmt extends XmlObject {
    public static final DocumentFactory<CTPivotFmt> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPivotFmt> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpivotfmt6bf1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDLbl addNewDLbl();

    CTExtensionList addNewExtLst();

    CTUnsignedInt addNewIdx();

    CTMarker addNewMarker();

    CTShapeProperties addNewSpPr();

    CTTextBody addNewTxPr();

    CTDLbl getDLbl();

    CTExtensionList getExtLst();

    CTUnsignedInt getIdx();

    CTMarker getMarker();

    CTShapeProperties getSpPr();

    CTTextBody getTxPr();

    boolean isSetDLbl();

    boolean isSetExtLst();

    boolean isSetMarker();

    boolean isSetSpPr();

    boolean isSetTxPr();

    void setDLbl(CTDLbl cTDLbl);

    void setExtLst(CTExtensionList cTExtensionList);

    void setIdx(CTUnsignedInt cTUnsignedInt);

    void setMarker(CTMarker cTMarker);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void setTxPr(CTTextBody cTTextBody);

    void unsetDLbl();

    void unsetExtLst();

    void unsetMarker();

    void unsetSpPr();

    void unsetTxPr();
}
