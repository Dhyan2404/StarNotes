package org.openxmlformats.schemas.officeDocument.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CsAttribute extends XmlObject {
    public static final DocumentFactory<CsAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CsAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cs4507attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getCs();

    boolean isSetCs();

    void setCs(String str);

    void unsetCs();

    STRelationshipId xgetCs();

    void xsetCs(STRelationshipId sTRelationshipId);
}
