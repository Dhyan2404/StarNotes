package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface OMathDocument extends XmlObject {
    public static final DocumentFactory<OMathDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OMathDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "omathd479doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMath addNewOMath();

    CTOMath getOMath();

    void setOMath(CTOMath cTOMath);
}
