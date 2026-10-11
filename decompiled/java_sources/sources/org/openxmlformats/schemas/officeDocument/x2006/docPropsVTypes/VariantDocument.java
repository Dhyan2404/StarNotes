package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface VariantDocument extends XmlObject {
    public static final DocumentFactory<VariantDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<VariantDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "variantfd1edoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTVariant addNewVariant();

    CTVariant getVariant();

    void setVariant(CTVariant cTVariant);
}
