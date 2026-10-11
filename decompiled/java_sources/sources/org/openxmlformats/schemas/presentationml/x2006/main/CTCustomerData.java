package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public interface CTCustomerData extends XmlObject {
    public static final DocumentFactory<CTCustomerData> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCustomerData> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcustomerdata407dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getId();

    void setId(String str);

    STRelationshipId xgetId();

    void xsetId(STRelationshipId sTRelationshipId);
}
