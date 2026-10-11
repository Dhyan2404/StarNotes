package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTRecipientData extends XmlObject {
    public static final DocumentFactory<CTRecipientData> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRecipientData> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrecipientdata064ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewActive();

    CTDecimalNumber addNewColumn();

    CTBase64Binary addNewUniqueTag();

    CTOnOff getActive();

    CTDecimalNumber getColumn();

    CTBase64Binary getUniqueTag();

    boolean isSetActive();

    void setActive(CTOnOff cTOnOff);

    void setColumn(CTDecimalNumber cTDecimalNumber);

    void setUniqueTag(CTBase64Binary cTBase64Binary);

    void unsetActive();
}
