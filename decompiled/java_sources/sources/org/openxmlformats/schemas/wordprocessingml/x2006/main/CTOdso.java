package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTOdso extends XmlObject {
    public static final DocumentFactory<CTOdso> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOdso> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctodso6017type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDecimalNumber addNewColDelim();

    CTOnOff addNewFHdr();

    CTOdsoFieldMapData addNewFieldMapData();

    CTRel addNewRecipientData();

    CTRel addNewSrc();

    CTString addNewTable();

    CTMailMergeSourceType addNewType();

    CTString addNewUdl();

    CTDecimalNumber getColDelim();

    CTOnOff getFHdr();

    CTOdsoFieldMapData getFieldMapDataArray(int i);

    CTOdsoFieldMapData[] getFieldMapDataArray();

    List<CTOdsoFieldMapData> getFieldMapDataList();

    CTRel getRecipientDataArray(int i);

    CTRel[] getRecipientDataArray();

    List<CTRel> getRecipientDataList();

    CTRel getSrc();

    CTString getTable();

    CTMailMergeSourceType getType();

    CTString getUdl();

    CTOdsoFieldMapData insertNewFieldMapData(int i);

    CTRel insertNewRecipientData(int i);

    boolean isSetColDelim();

    boolean isSetFHdr();

    boolean isSetSrc();

    boolean isSetTable();

    boolean isSetType();

    boolean isSetUdl();

    void removeFieldMapData(int i);

    void removeRecipientData(int i);

    void setColDelim(CTDecimalNumber cTDecimalNumber);

    void setFHdr(CTOnOff cTOnOff);

    void setFieldMapDataArray(int i, CTOdsoFieldMapData cTOdsoFieldMapData);

    void setFieldMapDataArray(CTOdsoFieldMapData[] cTOdsoFieldMapDataArr);

    void setRecipientDataArray(int i, CTRel cTRel);

    void setRecipientDataArray(CTRel[] cTRelArr);

    void setSrc(CTRel cTRel);

    void setTable(CTString cTString);

    void setType(CTMailMergeSourceType cTMailMergeSourceType);

    void setUdl(CTString cTString);

    int sizeOfFieldMapDataArray();

    int sizeOfRecipientDataArray();

    void unsetColDelim();

    void unsetFHdr();

    void unsetSrc();

    void unsetTable();

    void unsetType();

    void unsetUdl();
}
