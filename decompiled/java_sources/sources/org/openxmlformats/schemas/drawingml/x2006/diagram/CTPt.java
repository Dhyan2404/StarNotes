package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STPtType;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;

/* loaded from: classes14.dex */
public interface CTPt extends XmlObject {
    public static final DocumentFactory<CTPt> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPt> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpt616dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTElemPropSet addNewPrSet();

    CTShapeProperties addNewSpPr();

    CTTextBody addNewT();

    Object getCxnId();

    CTOfficeArtExtensionList getExtLst();

    Object getModelId();

    CTElemPropSet getPrSet();

    CTShapeProperties getSpPr();

    CTTextBody getT();

    STPtType.Enum getType();

    boolean isSetCxnId();

    boolean isSetExtLst();

    boolean isSetPrSet();

    boolean isSetSpPr();

    boolean isSetT();

    boolean isSetType();

    void setCxnId(Object obj);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setModelId(Object obj);

    void setPrSet(CTElemPropSet cTElemPropSet);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void setT(CTTextBody cTTextBody);

    void setType(STPtType.Enum r1);

    void unsetCxnId();

    void unsetExtLst();

    void unsetPrSet();

    void unsetSpPr();

    void unsetT();

    void unsetType();

    STModelId xgetCxnId();

    STModelId xgetModelId();

    STPtType xgetType();

    void xsetCxnId(STModelId sTModelId);

    void xsetModelId(STModelId sTModelId);

    void xsetType(STPtType sTPtType);
}
