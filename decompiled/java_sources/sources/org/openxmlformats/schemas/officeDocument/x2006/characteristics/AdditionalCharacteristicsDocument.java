package org.openxmlformats.schemas.officeDocument.x2006.characteristics;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface AdditionalCharacteristicsDocument extends XmlObject {
    public static final DocumentFactory<AdditionalCharacteristicsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AdditionalCharacteristicsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "additionalcharacteristicsea21doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAdditionalCharacteristics addNewAdditionalCharacteristics();

    CTAdditionalCharacteristics getAdditionalCharacteristics();

    void setAdditionalCharacteristics(CTAdditionalCharacteristics cTAdditionalCharacteristics);
}
