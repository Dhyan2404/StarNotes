package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;

/* loaded from: classes14.dex */
public interface ClsidDocument extends XmlObject {
    public static final DocumentFactory<ClsidDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ClsidDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "clsid941edoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getClsid();

    void setClsid(String str);

    STGuid xgetClsid();

    void xsetClsid(STGuid sTGuid);
}
