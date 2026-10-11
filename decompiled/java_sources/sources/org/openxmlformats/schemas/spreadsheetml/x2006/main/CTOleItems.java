package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTOleItems extends XmlObject {
    public static final DocumentFactory<CTOleItems> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOleItems> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctoleitems7b41type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOleItem addNewOleItem();

    CTOleItem getOleItemArray(int i);

    CTOleItem[] getOleItemArray();

    List<CTOleItem> getOleItemList();

    CTOleItem insertNewOleItem(int i);

    void removeOleItem(int i);

    void setOleItemArray(int i, CTOleItem cTOleItem);

    void setOleItemArray(CTOleItem[] cTOleItemArr);

    int sizeOfOleItemArray();
}
