package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface StyleDefHdrLstDocument extends XmlObject {
    public static final DocumentFactory<StyleDefHdrLstDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<StyleDefHdrLstDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "styledefhdrlstd252doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTStyleDefinitionHeaderLst addNewStyleDefHdrLst();

    CTStyleDefinitionHeaderLst getStyleDefHdrLst();

    void setStyleDefHdrLst(CTStyleDefinitionHeaderLst cTStyleDefinitionHeaderLst);
}
