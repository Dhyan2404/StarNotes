package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTSets extends XmlObject {
    public static final DocumentFactory<CTSets> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSets> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsets725atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSet addNewSet();

    long getCount();

    CTSet getSetArray(int i);

    CTSet[] getSetArray();

    List<CTSet> getSetList();

    CTSet insertNewSet(int i);

    boolean isSetCount();

    void removeSet(int i);

    void setCount(long j);

    void setSetArray(int i, CTSet cTSet);

    void setSetArray(CTSet[] cTSetArr);

    int sizeOfSetArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
