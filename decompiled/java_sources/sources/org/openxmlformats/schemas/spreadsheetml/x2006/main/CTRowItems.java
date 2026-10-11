package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTRowItems extends XmlObject {
    public static final DocumentFactory<CTRowItems> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRowItems> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrowitemsc52ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTI addNewI();

    long getCount();

    CTI getIArray(int i);

    CTI[] getIArray();

    List<CTI> getIList();

    CTI insertNewI(int i);

    boolean isSetCount();

    void removeI(int i);

    void setCount(long j);

    void setIArray(int i, CTI cti);

    void setIArray(CTI[] ctiArr);

    int sizeOfIArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
