package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTNonVisualContentPartProperties extends XmlObject {
    public static final DocumentFactory<CTNonVisualContentPartProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNonVisualContentPartProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnonvisualcontentpartproperties8d4dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTContentPartLocking addNewCpLocks();

    CTOfficeArtExtensionList addNewExtLst();

    CTContentPartLocking getCpLocks();

    CTOfficeArtExtensionList getExtLst();

    boolean getIsComment();

    boolean isSetCpLocks();

    boolean isSetExtLst();

    boolean isSetIsComment();

    void setCpLocks(CTContentPartLocking cTContentPartLocking);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setIsComment(boolean z);

    void unsetCpLocks();

    void unsetExtLst();

    void unsetIsComment();

    XmlBoolean xgetIsComment();

    void xsetIsComment(XmlBoolean xmlBoolean);
}
