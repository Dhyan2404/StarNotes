package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGvmlShape extends XmlObject {
    public static final DocumentFactory<CTGvmlShape> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGvmlShape> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgvmlshape55a4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTGvmlShapeNonVisual addNewNvSpPr();

    CTShapeProperties addNewSpPr();

    CTShapeStyle addNewStyle();

    CTGvmlTextShape addNewTxSp();

    CTOfficeArtExtensionList getExtLst();

    CTGvmlShapeNonVisual getNvSpPr();

    CTShapeProperties getSpPr();

    CTShapeStyle getStyle();

    CTGvmlTextShape getTxSp();

    boolean isSetExtLst();

    boolean isSetStyle();

    boolean isSetTxSp();

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setNvSpPr(CTGvmlShapeNonVisual cTGvmlShapeNonVisual);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void setStyle(CTShapeStyle cTShapeStyle);

    void setTxSp(CTGvmlTextShape cTGvmlTextShape);

    void unsetExtLst();

    void unsetStyle();

    void unsetTxSp();
}
