package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface HrefAttribute extends XmlObject {
    public static final DocumentFactory<HrefAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HrefAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "href3b82attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getHref();

    boolean isSetHref();

    void setHref(String str);

    void unsetHref();

    STRelationshipId xgetHref();

    void xsetHref(STRelationshipId sTRelationshipId);
}
