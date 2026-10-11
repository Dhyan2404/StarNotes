package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTDefaultShapeDefinition extends XmlObject {
    public static final DocumentFactory<CTDefaultShapeDefinition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDefaultShapeDefinition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdefaultshapedefinitioneaeetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTextBodyProperties addNewBodyPr();

    CTOfficeArtExtensionList addNewExtLst();

    CTTextListStyle addNewLstStyle();

    CTShapeProperties addNewSpPr();

    CTShapeStyle addNewStyle();

    CTTextBodyProperties getBodyPr();

    CTOfficeArtExtensionList getExtLst();

    CTTextListStyle getLstStyle();

    CTShapeProperties getSpPr();

    CTShapeStyle getStyle();

    boolean isSetExtLst();

    boolean isSetStyle();

    void setBodyPr(CTTextBodyProperties cTTextBodyProperties);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setLstStyle(CTTextListStyle cTTextListStyle);

    void setSpPr(CTShapeProperties cTShapeProperties);

    void setStyle(CTShapeStyle cTShapeStyle);

    void unsetExtLst();

    void unsetStyle();
}
