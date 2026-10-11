package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface OleObjDocument extends XmlObject {
    public static final DocumentFactory<OleObjDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OleObjDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "oleobj8482doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOleObject addNewOleObj();

    CTOleObject getOleObj();

    void setOleObj(CTOleObject cTOleObject);
}
