package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ColorsType extends XmlObject {
    public static final DocumentFactory<ColorsType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ColorsType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "colorstype3e49type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    ColorEntryType addNewColorEntry();

    ColorEntryType getColorEntryArray(int i);

    ColorEntryType[] getColorEntryArray();

    List<ColorEntryType> getColorEntryList();

    ColorEntryType insertNewColorEntry(int i);

    void removeColorEntry(int i);

    void setColorEntryArray(int i, ColorEntryType colorEntryType);

    void setColorEntryArray(ColorEntryType[] colorEntryTypeArr);

    int sizeOfColorEntryArray();
}
