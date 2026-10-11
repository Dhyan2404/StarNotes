package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMeasureGroups extends XmlObject {
    public static final DocumentFactory<CTMeasureGroups> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMeasureGroups> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmeasuregroups2c71type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMeasureGroup addNewMeasureGroup();

    long getCount();

    CTMeasureGroup getMeasureGroupArray(int i);

    CTMeasureGroup[] getMeasureGroupArray();

    List<CTMeasureGroup> getMeasureGroupList();

    CTMeasureGroup insertNewMeasureGroup(int i);

    boolean isSetCount();

    void removeMeasureGroup(int i);

    void setCount(long j);

    void setMeasureGroupArray(int i, CTMeasureGroup cTMeasureGroup);

    void setMeasureGroupArray(CTMeasureGroup[] cTMeasureGroupArr);

    int sizeOfMeasureGroupArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
