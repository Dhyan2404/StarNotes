package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGvmlConnectorNonVisual extends XmlObject {
    public static final DocumentFactory<CTGvmlConnectorNonVisual> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGvmlConnectorNonVisual> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgvmlconnectornonvisual6f69type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNonVisualConnectorProperties addNewCNvCxnSpPr();

    CTNonVisualDrawingProps addNewCNvPr();

    CTNonVisualConnectorProperties getCNvCxnSpPr();

    CTNonVisualDrawingProps getCNvPr();

    void setCNvCxnSpPr(CTNonVisualConnectorProperties cTNonVisualConnectorProperties);

    void setCNvPr(CTNonVisualDrawingProps cTNonVisualDrawingProps);
}
