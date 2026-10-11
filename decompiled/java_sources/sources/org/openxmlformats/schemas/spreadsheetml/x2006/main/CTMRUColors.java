package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMRUColors extends XmlObject {
    public static final DocumentFactory<CTMRUColors> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMRUColors> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmrucolors589ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColor addNewColor();

    CTColor getColorArray(int i);

    CTColor[] getColorArray();

    List<CTColor> getColorList();

    CTColor insertNewColor(int i);

    void removeColor(int i);

    void setColorArray(int i, CTColor cTColor);

    void setColorArray(CTColor[] cTColorArr);

    int sizeOfColorArray();
}
