package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STObjectUpdateMode;

/* loaded from: classes16.dex */
public interface CTObjectLink extends CTObjectEmbed {
    public static final DocumentFactory<CTObjectLink> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTObjectLink> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctobjectlinkabeftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getLockedField();

    STObjectUpdateMode.Enum getUpdateMode();

    boolean isSetLockedField();

    void setLockedField(Object obj);

    void setUpdateMode(STObjectUpdateMode.Enum r1);

    void unsetLockedField();

    STOnOff xgetLockedField();

    STObjectUpdateMode xgetUpdateMode();

    void xsetLockedField(STOnOff sTOnOff);

    void xsetUpdateMode(STObjectUpdateMode sTObjectUpdateMode);
}
