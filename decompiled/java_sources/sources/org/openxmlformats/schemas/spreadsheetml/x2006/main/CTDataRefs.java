package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTDataRefs extends XmlObject {
    public static final DocumentFactory<CTDataRefs> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDataRefs> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdatarefsb753type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDataRef addNewDataRef();

    long getCount();

    CTDataRef getDataRefArray(int i);

    CTDataRef[] getDataRefArray();

    List<CTDataRef> getDataRefList();

    CTDataRef insertNewDataRef(int i);

    boolean isSetCount();

    void removeDataRef(int i);

    void setCount(long j);

    void setDataRefArray(int i, CTDataRef cTDataRef);

    void setDataRefArray(CTDataRef[] cTDataRefArr);

    int sizeOfDataRefArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
