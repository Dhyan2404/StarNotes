package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;

/* loaded from: classes14.dex */
public interface CTVstream extends XmlBase64Binary {
    public static final DocumentFactory<CTVstream> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTVstream> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctvstream1579type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getVersion();

    boolean isSetVersion();

    void setVersion(String str);

    void unsetVersion();

    STGuid xgetVersion();

    void xsetVersion(STGuid sTGuid);
}
