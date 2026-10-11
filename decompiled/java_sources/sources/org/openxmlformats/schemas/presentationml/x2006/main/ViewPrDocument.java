package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface ViewPrDocument extends XmlObject {
    public static final DocumentFactory<ViewPrDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ViewPrDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "viewpr43aadoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTViewProperties addNewViewPr();

    CTViewProperties getViewPr();

    void setViewPr(CTViewProperties cTViewProperties);
}
