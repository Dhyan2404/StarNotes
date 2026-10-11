package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGvmlConnector extends XmlObject {
    public static final DocumentFactory<CTGvmlConnector> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGvmlConnector> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgvmlconnector32d0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTGvmlConnectorNonVisual addNewNvCxnSpPr();

    CTShapeProperties addNewSpPr();

    CTShapeStyle addNewStyle();

    CTOfficeArtExtensionList getExtLst();

    CTGvmlConnectorNonVisual getNvCxnSpPr();

    CTShapeProperties getSpPr();

    CTShapeStyle getStyle();

    boolean isSetExtLst();

    boolean isSetStyle();

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setNvCxnSpPr(CTGvmlConnectorNonVisual cTGvmlConnectorNonVisual);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void setStyle(CTShapeStyle cTShapeStyle);

    void unsetExtLst();

    void unsetStyle();
}
