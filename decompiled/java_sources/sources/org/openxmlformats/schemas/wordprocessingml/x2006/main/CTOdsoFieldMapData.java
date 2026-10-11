package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTOdsoFieldMapData extends XmlObject {
    public static final DocumentFactory<CTOdsoFieldMapData> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOdsoFieldMapData> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctodsofieldmapdata3fabtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDecimalNumber addNewColumn();

    CTOnOff addNewDynamicAddress();

    CTLang addNewLid();

    CTString addNewMappedName();

    CTString addNewName();

    CTMailMergeOdsoFMDFieldType addNewType();

    CTDecimalNumber getColumn();

    CTOnOff getDynamicAddress();

    CTLang getLid();

    CTString getMappedName();

    CTString getName();

    CTMailMergeOdsoFMDFieldType getType();

    boolean isSetColumn();

    boolean isSetDynamicAddress();

    boolean isSetLid();

    boolean isSetMappedName();

    boolean isSetName();

    boolean isSetType();

    void setColumn(CTDecimalNumber cTDecimalNumber);

    void setDynamicAddress(CTOnOff cTOnOff);

    void setLid(CTLang cTLang);

    void setMappedName(CTString cTString);

    void setName(CTString cTString);

    void setType(CTMailMergeOdsoFMDFieldType cTMailMergeOdsoFMDFieldType);

    void unsetColumn();

    void unsetDynamicAddress();

    void unsetLid();

    void unsetMappedName();

    void unsetName();

    void unsetType();
}
