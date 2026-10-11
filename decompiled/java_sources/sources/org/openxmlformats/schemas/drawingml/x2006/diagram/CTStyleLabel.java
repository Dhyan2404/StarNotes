package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShape3D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeStyle;

/* loaded from: classes14.dex */
public interface CTStyleLabel extends XmlObject {
    public static final DocumentFactory<CTStyleLabel> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTStyleLabel> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctstylelabel8d8etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTScene3D addNewScene3D();

    CTShape3D addNewSp3D();

    CTShapeStyle addNewStyle();

    CTTextProps addNewTxPr();

    CTOfficeArtExtensionList getExtLst();

    String getName();

    CTScene3D getScene3D();

    CTShape3D getSp3D();

    CTShapeStyle getStyle();

    CTTextProps getTxPr();

    boolean isSetExtLst();

    boolean isSetScene3D();

    boolean isSetSp3D();

    boolean isSetStyle();

    boolean isSetTxPr();

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setName(String str);

    void setScene3D(CTScene3D cTScene3D);

    void setSp3D(CTShape3D cTShape3D);

    void setStyle(CTShapeStyle cTShapeStyle);

    void setTxPr(CTTextProps cTTextProps);

    void unsetExtLst();

    void unsetScene3D();

    void unsetSp3D();

    void unsetStyle();

    void unsetTxPr();

    XmlString xgetName();

    void xsetName(XmlString xmlString);
}
