package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTTables extends XmlObject {
    public static final DocumentFactory<CTTables> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTables> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttablesda2etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTableMissing addNewM();

    CTXStringElement addNewS();

    CTIndex addNewX();

    long getCount();

    CTTableMissing getMArray(int i);

    CTTableMissing[] getMArray();

    List<CTTableMissing> getMList();

    CTXStringElement getSArray(int i);

    CTXStringElement[] getSArray();

    List<CTXStringElement> getSList();

    CTIndex getXArray(int i);

    CTIndex[] getXArray();

    List<CTIndex> getXList();

    CTTableMissing insertNewM(int i);

    CTXStringElement insertNewS(int i);

    CTIndex insertNewX(int i);

    boolean isSetCount();

    void removeM(int i);

    void removeS(int i);

    void removeX(int i);

    void setCount(long j);

    void setMArray(int i, CTTableMissing cTTableMissing);

    void setMArray(CTTableMissing[] cTTableMissingArr);

    void setSArray(int i, CTXStringElement cTXStringElement);

    void setSArray(CTXStringElement[] cTXStringElementArr);

    void setXArray(int i, CTIndex cTIndex);

    void setXArray(CTIndex[] cTIndexArr);

    int sizeOfMArray();

    int sizeOfSArray();

    int sizeOfXArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
