package org.openxmlformats.schemas.officeDocument.x2006.bibliography;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTNameType extends XmlObject {
    public static final DocumentFactory<CTNameType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNameType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnametype5d07type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNameListType addNewNameList();

    CTNameListType getNameList();

    void setNameList(CTNameListType cTNameListType);
}
