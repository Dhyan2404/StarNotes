package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;

/* loaded from: classes14.dex */
public interface CTDTable extends XmlObject {
    public static final DocumentFactory<CTDTable> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDTable> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdtable4ef2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTBoolean addNewShowHorzBorder();

    CTBoolean addNewShowKeys();

    CTBoolean addNewShowOutline();

    CTBoolean addNewShowVertBorder();

    CTShapeProperties addNewSpPr();

    CTTextBody addNewTxPr();

    CTExtensionList getExtLst();

    CTBoolean getShowHorzBorder();

    CTBoolean getShowKeys();

    CTBoolean getShowOutline();

    CTBoolean getShowVertBorder();

    CTShapeProperties getSpPr();

    CTTextBody getTxPr();

    boolean isSetExtLst();

    boolean isSetShowHorzBorder();

    boolean isSetShowKeys();

    boolean isSetShowOutline();

    boolean isSetShowVertBorder();

    boolean isSetSpPr();

    boolean isSetTxPr();

    void setExtLst(CTExtensionList cTExtensionList);

    void setShowHorzBorder(CTBoolean cTBoolean);

    void setShowKeys(CTBoolean cTBoolean);

    void setShowOutline(CTBoolean cTBoolean);

    void setShowVertBorder(CTBoolean cTBoolean);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void setTxPr(CTTextBody cTTextBody);

    void unsetExtLst();

    void unsetShowHorzBorder();

    void unsetShowKeys();

    void unsetShowOutline();

    void unsetShowVertBorder();

    void unsetSpPr();

    void unsetTxPr();
}
