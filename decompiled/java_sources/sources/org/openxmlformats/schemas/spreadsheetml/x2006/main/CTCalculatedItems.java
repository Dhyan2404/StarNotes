package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTCalculatedItems extends XmlObject {
    public static final DocumentFactory<CTCalculatedItems> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCalculatedItems> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcalculateditemsed81type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCalculatedItem addNewCalculatedItem();

    CTCalculatedItem getCalculatedItemArray(int i);

    CTCalculatedItem[] getCalculatedItemArray();

    List<CTCalculatedItem> getCalculatedItemList();

    long getCount();

    CTCalculatedItem insertNewCalculatedItem(int i);

    boolean isSetCount();

    void removeCalculatedItem(int i);

    void setCalculatedItemArray(int i, CTCalculatedItem cTCalculatedItem);

    void setCalculatedItemArray(CTCalculatedItem[] cTCalculatedItemArr);

    void setCount(long j);

    int sizeOfCalculatedItemArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
