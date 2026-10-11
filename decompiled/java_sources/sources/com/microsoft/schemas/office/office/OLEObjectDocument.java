package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface OLEObjectDocument extends XmlObject {
    public static final DocumentFactory<OLEObjectDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OLEObjectDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "oleobjectbaccdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOLEObject addNewOLEObject();

    CTOLEObject getOLEObject();

    void setOLEObject(CTOLEObject cTOLEObject);
}
