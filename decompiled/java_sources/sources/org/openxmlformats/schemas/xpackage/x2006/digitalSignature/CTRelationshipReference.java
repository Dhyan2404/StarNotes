package org.openxmlformats.schemas.xpackage.x2006.digitalSignature;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTRelationshipReference extends XmlString {
    public static final DocumentFactory<CTRelationshipReference> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRelationshipReference> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrelationshipreferencee68ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getSourceId();

    void setSourceId(String str);

    XmlString xgetSourceId();

    void xsetSourceId(XmlString xmlString);
}
