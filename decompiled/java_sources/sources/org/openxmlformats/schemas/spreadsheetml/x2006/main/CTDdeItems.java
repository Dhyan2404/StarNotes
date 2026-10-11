package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTDdeItems extends XmlObject {
    public static final DocumentFactory<CTDdeItems> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDdeItems> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctddeitemse1e4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDdeItem addNewDdeItem();

    CTDdeItem getDdeItemArray(int i);

    CTDdeItem[] getDdeItemArray();

    List<CTDdeItem> getDdeItemList();

    CTDdeItem insertNewDdeItem(int i);

    void removeDdeItem(int i);

    void setDdeItemArray(int i, CTDdeItem cTDdeItem);

    void setDdeItemArray(CTDdeItem[] cTDdeItemArr);

    int sizeOfDdeItemArray();
}
