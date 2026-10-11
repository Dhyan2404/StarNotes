package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBackdrop extends XmlObject {
    public static final DocumentFactory<CTBackdrop> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBackdrop> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbackdrop2471type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPoint3D addNewAnchor();

    CTOfficeArtExtensionList addNewExtLst();

    CTVector3D addNewNorm();

    CTVector3D addNewUp();

    CTPoint3D getAnchor();

    CTOfficeArtExtensionList getExtLst();

    CTVector3D getNorm();

    CTVector3D getUp();

    boolean isSetExtLst();

    void setAnchor(CTPoint3D cTPoint3D);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setNorm(CTVector3D cTVector3D);

    void setUp(CTVector3D cTVector3D);

    void unsetExtLst();
}
