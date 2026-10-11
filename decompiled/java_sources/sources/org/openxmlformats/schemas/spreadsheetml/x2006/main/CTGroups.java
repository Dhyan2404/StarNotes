package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTGroups extends XmlObject {
    public static final DocumentFactory<CTGroups> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGroups> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgroups7cddtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTLevelGroup addNewGroup();

    long getCount();

    CTLevelGroup getGroupArray(int i);

    CTLevelGroup[] getGroupArray();

    List<CTLevelGroup> getGroupList();

    CTLevelGroup insertNewGroup(int i);

    boolean isSetCount();

    void removeGroup(int i);

    void setCount(long j);

    void setGroupArray(int i, CTLevelGroup cTLevelGroup);

    void setGroupArray(CTLevelGroup[] cTLevelGroupArr);

    int sizeOfGroupArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
