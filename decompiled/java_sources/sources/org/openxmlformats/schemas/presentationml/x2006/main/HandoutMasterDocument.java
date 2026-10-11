package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface HandoutMasterDocument extends XmlObject {
    public static final DocumentFactory<HandoutMasterDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HandoutMasterDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "handoutmaster9002doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTHandoutMaster addNewHandoutMaster();

    CTHandoutMaster getHandoutMaster();

    void setHandoutMaster(CTHandoutMaster cTHandoutMaster);
}
