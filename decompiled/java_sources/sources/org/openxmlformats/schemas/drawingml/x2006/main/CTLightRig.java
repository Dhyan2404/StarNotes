package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STLightRigDirection;
import org.openxmlformats.schemas.drawingml.x2006.main.STLightRigType;

/* loaded from: classes14.dex */
public interface CTLightRig extends XmlObject {
    public static final DocumentFactory<CTLightRig> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLightRig> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlightrigad35type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSphereCoords addNewRot();

    STLightRigDirection.Enum getDir();

    STLightRigType.Enum getRig();

    CTSphereCoords getRot();

    boolean isSetRot();

    void setDir(STLightRigDirection.Enum r1);

    void setRig(STLightRigType.Enum r1);

    void setRot(CTSphereCoords cTSphereCoords);

    void unsetRot();

    STLightRigDirection xgetDir();

    STLightRigType xgetRig();

    void xsetDir(STLightRigDirection sTLightRigDirection);

    void xsetRig(STLightRigType sTLightRigType);
}
