package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STPresetMaterialType;

/* loaded from: classes14.dex */
public interface CTCell3D extends XmlObject {
    public static final DocumentFactory<CTCell3D> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCell3D> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcell3d10eetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBevel addNewBevel();

    CTOfficeArtExtensionList addNewExtLst();

    CTLightRig addNewLightRig();

    CTBevel getBevel();

    CTOfficeArtExtensionList getExtLst();

    CTLightRig getLightRig();

    STPresetMaterialType.Enum getPrstMaterial();

    boolean isSetExtLst();

    boolean isSetLightRig();

    boolean isSetPrstMaterial();

    void setBevel(CTBevel cTBevel);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setLightRig(CTLightRig cTLightRig);

    void setPrstMaterial(STPresetMaterialType.Enum r1);

    void unsetExtLst();

    void unsetLightRig();

    void unsetPrstMaterial();

    STPresetMaterialType xgetPrstMaterial();

    void xsetPrstMaterial(STPresetMaterialType sTPresetMaterialType);
}
