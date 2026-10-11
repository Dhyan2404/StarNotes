package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTDiscretePr extends XmlObject {
    public static final DocumentFactory<CTDiscretePr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDiscretePr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdiscretepra8a4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTIndex addNewX();

    long getCount();

    CTIndex getXArray(int i);

    CTIndex[] getXArray();

    List<CTIndex> getXList();

    CTIndex insertNewX(int i);

    boolean isSetCount();

    void removeX(int i);

    void setCount(long j);

    void setXArray(int i, CTIndex cTIndex);

    void setXArray(CTIndex[] cTIndexArr);

    int sizeOfXArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
