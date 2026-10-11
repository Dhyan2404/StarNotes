package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTPCDSDTCEntries extends XmlObject {
    public static final DocumentFactory<CTPCDSDTCEntries> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPCDSDTCEntries> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpcdsdtcentries90c8type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTError addNewE();

    CTMissing addNewM();

    CTNumber addNewN();

    CTString addNewS();

    long getCount();

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

    CTError insertNewE(int i);

    CTMissing insertNewM(int i);

    CTNumber insertNewN(int i);

    CTString insertNewS(int i);

    boolean isSetCount();

    void removeE(int i);

    void removeM(int i);

    void removeN(int i);

    void removeS(int i);

    void setCount(long j);

    void setEArray(int i, CTError cTError);

    void setEArray(CTError[] cTErrorArr);

    void setMArray(int i, CTMissing cTMissing);

    void setMArray(CTMissing[] cTMissingArr);

    void setNArray(int i, CTNumber cTNumber);

    void setNArray(CTNumber[] cTNumberArr);

    void setSArray(int i, CTString cTString);

    void setSArray(CTString[] cTStringArr);

    int sizeOfEArray();

    int sizeOfMArray();

    int sizeOfNArray();

    int sizeOfSArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
