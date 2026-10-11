package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface SldSyncPrDocument extends XmlObject {
    public static final DocumentFactory<SldSyncPrDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SldSyncPrDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "sldsyncpr54dbdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSlideSyncProperties addNewSldSyncPr();

    CTSlideSyncProperties getSldSyncPr();

    void setSldSyncPr(CTSlideSyncProperties cTSlideSyncProperties);
}
