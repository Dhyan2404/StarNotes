package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STVolDepType;

/* loaded from: classes15.dex */
public interface CTVolType extends XmlObject {
    public static final DocumentFactory<CTVolType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTVolType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctvoltype1acctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTVolMain addNewMain();

    CTVolMain getMainArray(int i);

    CTVolMain[] getMainArray();

    List<CTVolMain> getMainList();

    STVolDepType.Enum getType();

    CTVolMain insertNewMain(int i);

    void removeMain(int i);

    void setMainArray(int i, CTVolMain cTVolMain);

    void setMainArray(CTVolMain[] cTVolMainArr);

    void setType(STVolDepType.Enum r1);

    int sizeOfMainArray();

    STVolDepType xgetType();

    void xsetType(STVolDepType sTVolDepType);
}
