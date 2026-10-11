package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface SPKIDataDocument extends XmlObject {
    public static final DocumentFactory<SPKIDataDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SPKIDataDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "spkidata640adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SPKIDataType addNewSPKIData();

    SPKIDataType getSPKIData();

    void setSPKIData(SPKIDataType sPKIDataType);
}
