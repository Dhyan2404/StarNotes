package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface PresentationPrDocument extends XmlObject {
    public static final DocumentFactory<PresentationPrDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PresentationPrDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "presentationpr6c55doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPresentationProperties addNewPresentationPr();

    CTPresentationProperties getPresentationPr();

    void setPresentationPr(CTPresentationProperties cTPresentationProperties);
}
