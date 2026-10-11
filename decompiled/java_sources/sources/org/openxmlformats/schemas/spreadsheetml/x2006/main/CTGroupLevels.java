package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTGroupLevels extends XmlObject {
    public static final DocumentFactory<CTGroupLevels> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGroupLevels> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgrouplevels3c2dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGroupLevel addNewGroupLevel();

    long getCount();

    CTGroupLevel getGroupLevelArray(int i);

    CTGroupLevel[] getGroupLevelArray();

    List<CTGroupLevel> getGroupLevelList();

    CTGroupLevel insertNewGroupLevel(int i);

    boolean isSetCount();

    void removeGroupLevel(int i);

    void setCount(long j);

    void setGroupLevelArray(int i, CTGroupLevel cTGroupLevel);

    void setGroupLevelArray(CTGroupLevel[] cTGroupLevelArr);

    int sizeOfGroupLevelArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
