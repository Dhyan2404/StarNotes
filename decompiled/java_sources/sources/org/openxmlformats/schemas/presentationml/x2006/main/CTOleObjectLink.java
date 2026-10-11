package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTOleObjectLink extends XmlObject {
    public static final DocumentFactory<CTOleObjectLink> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOleObjectLink> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctoleobjectlinkd24etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTExtensionList getExtLst();

    boolean getUpdateAutomatic();

    boolean isSetExtLst();

    boolean isSetUpdateAutomatic();

    void setExtLst(CTExtensionList cTExtensionList);

    void setUpdateAutomatic(boolean z);

    void unsetExtLst();

    void unsetUpdateAutomatic();

    XmlBoolean xgetUpdateAutomatic();

    void xsetUpdateAutomatic(XmlBoolean xmlBoolean);
}
