package org.openxmlformats.schemas.xpackage.x2006.digitalSignature;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTRelationshipsGroupReference extends XmlString {
    public static final DocumentFactory<CTRelationshipsGroupReference> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRelationshipsGroupReference> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrelationshipsgroupreferencea39btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getSourceType();

    void setSourceType(String str);

    XmlAnyURI xgetSourceType();

    void xsetSourceType(XmlAnyURI xmlAnyURI);
}
