package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTXStringElement extends XmlObject {
    public static final DocumentFactory<CTXStringElement> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTXStringElement> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctxstringelement955ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getV();

    void setV(String str);

    STXstring xgetV();

    void xsetV(STXstring sTXstring);
}
