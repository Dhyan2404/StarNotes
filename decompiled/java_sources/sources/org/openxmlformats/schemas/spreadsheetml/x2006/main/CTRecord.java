package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTRecord extends XmlObject {
    public static final DocumentFactory<CTRecord> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRecord> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrecord891atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBoolean addNewB();

    CTDateTime addNewD();

    CTError addNewE();

    CTMissing addNewM();

    CTNumber addNewN();

    CTString addNewS();

    CTIndex addNewX();

    CTBoolean getBArray(int i);

    CTBoolean[] getBArray();

    List<CTBoolean> getBList();

    CTDateTime getDArray(int i);

    CTDateTime[] getDArray();

    List<CTDateTime> getDList();

    CTError getEArray(int i);

    CTError[] getEArray();

    List<CTError> getEList();

    CTMissing getMArray(int i);

    CTMissing[] getMArray();

    List<CTMissing> getMList();

    CTNumber getNArray(int i);

    CTNumber[] getNArray();

    List<CTNumber> getNList();

    CTString getSArray(int i);

    CTString[] getSArray();

    List<CTString> getSList();

    CTIndex getXArray(int i);

    CTIndex[] getXArray();

    List<CTIndex> getXList();

    CTBoolean insertNewB(int i);

    CTDateTime insertNewD(int i);

    CTError insertNewE(int i);

    CTMissing insertNewM(int i);

    CTNumber insertNewN(int i);

    CTString insertNewS(int i);

    CTIndex insertNewX(int i);

    void removeB(int i);

    void removeD(int i);

    void removeE(int i);

    void removeM(int i);

    void removeN(int i);

    void removeS(int i);

    void removeX(int i);

    void setBArray(int i, CTBoolean cTBoolean);

    void setBArray(CTBoolean[] cTBooleanArr);

    void setDArray(int i, CTDateTime cTDateTime);

    void setDArray(CTDateTime[] cTDateTimeArr);

    void setEArray(int i, CTError cTError);

    void setEArray(CTError[] cTErrorArr);

    void setMArray(int i, CTMissing cTMissing);

    void setMArray(CTMissing[] cTMissingArr);

    void setNArray(int i, CTNumber cTNumber);

    void setNArray(CTNumber[] cTNumberArr);

    void setSArray(int i, CTString cTString);

    void setSArray(CTString[] cTStringArr);

    void setXArray(int i, CTIndex cTIndex);

    void setXArray(CTIndex[] cTIndexArr);

    int sizeOfBArray();

    int sizeOfDArray();

    int sizeOfEArray();

    int sizeOfMArray();

    int sizeOfNArray();

    int sizeOfSArray();

    int sizeOfXArray();
}
