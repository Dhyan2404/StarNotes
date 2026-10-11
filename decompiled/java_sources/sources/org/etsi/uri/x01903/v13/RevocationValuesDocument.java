package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface RevocationValuesDocument extends XmlObject {
    public static final DocumentFactory<RevocationValuesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RevocationValuesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "revocationvaluesc424doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    RevocationValuesType addNewRevocationValues();

    RevocationValuesType getRevocationValues();

    void setRevocationValues(RevocationValuesType revocationValuesType);
}
