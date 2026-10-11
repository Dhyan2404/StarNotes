package org.openxmlformats.schemas.officeDocument.x2006.bibliography;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes14.dex */
public interface CTNameOrCorporateType extends XmlObject {
    public static final DocumentFactory<CTNameOrCorporateType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNameOrCorporateType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnameorcorporatetype4185type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNameListType addNewNameList();

    String getCorporate();

    CTNameListType getNameList();

    boolean isSetCorporate();

    boolean isSetNameList();

    void setCorporate(String str);

    void setNameList(CTNameListType cTNameListType);

    void unsetCorporate();

    void unsetNameList();

    STString xgetCorporate();

    void xsetCorporate(STString sTString);
}
