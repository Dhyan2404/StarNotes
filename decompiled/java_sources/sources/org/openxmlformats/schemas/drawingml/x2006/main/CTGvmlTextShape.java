package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGvmlTextShape extends XmlObject {
    public static final DocumentFactory<CTGvmlTextShape> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGvmlTextShape> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgvmltextshape09b7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTTextBody addNewTxBody();

    CTGvmlUseShapeRectangle addNewUseSpRect();

    CTTransform2D addNewXfrm();

    CTOfficeArtExtensionList getExtLst();

    CTTextBody getTxBody();

    CTGvmlUseShapeRectangle getUseSpRect();

    CTTransform2D getXfrm();

    boolean isSetExtLst();

    boolean isSetUseSpRect();

    boolean isSetXfrm();

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setTxBody(CTTextBody cTTextBody);

    void setUseSpRect(CTGvmlUseShapeRectangle cTGvmlUseShapeRectangle);

    void setXfrm(CTTransform2D cTTransform2D);

    void unsetExtLst();

    void unsetUseSpRect();

    void unsetXfrm();
}
