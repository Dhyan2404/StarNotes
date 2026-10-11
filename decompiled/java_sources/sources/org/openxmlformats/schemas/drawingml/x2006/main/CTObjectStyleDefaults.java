package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTObjectStyleDefaults extends XmlObject {
    public static final DocumentFactory<CTObjectStyleDefaults> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTObjectStyleDefaults> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctobjectstyledefaults61d5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTDefaultShapeDefinition addNewLnDef();

    CTDefaultShapeDefinition addNewSpDef();

    CTDefaultShapeDefinition addNewTxDef();

    CTOfficeArtExtensionList getExtLst();

    CTDefaultShapeDefinition getLnDef();

    CTDefaultShapeDefinition getSpDef();

    CTDefaultShapeDefinition getTxDef();

    boolean isSetExtLst();

    boolean isSetLnDef();

    boolean isSetSpDef();

    boolean isSetTxDef();

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setLnDef(CTDefaultShapeDefinition cTDefaultShapeDefinition);

    void setSpDef(CTDefaultShapeDefinition cTDefaultShapeDefinition);

    void setTxDef(CTDefaultShapeDefinition cTDefaultShapeDefinition);

    void unsetExtLst();

    void unsetLnDef();

    void unsetSpDef();

    void unsetTxDef();
}
