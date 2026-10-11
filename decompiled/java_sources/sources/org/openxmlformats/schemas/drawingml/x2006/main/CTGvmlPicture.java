package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGvmlPicture extends XmlObject {
    public static final DocumentFactory<CTGvmlPicture> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGvmlPicture> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgvmlpictureac01type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBlipFillProperties addNewBlipFill();

    CTOfficeArtExtensionList addNewExtLst();

    CTGvmlPictureNonVisual addNewNvPicPr();

    CTShapeProperties addNewSpPr();

    CTShapeStyle addNewStyle();

    CTBlipFillProperties getBlipFill();

    CTOfficeArtExtensionList getExtLst();

    CTGvmlPictureNonVisual getNvPicPr();

    CTShapeProperties getSpPr();

    CTShapeStyle getStyle();

    boolean isSetExtLst();

    boolean isSetStyle();

    void setBlipFill(CTBlipFillProperties cTBlipFillProperties);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setNvPicPr(CTGvmlPictureNonVisual cTGvmlPictureNonVisual);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void setStyle(CTShapeStyle cTShapeStyle);

    void unsetExtLst();

    void unsetStyle();
}
