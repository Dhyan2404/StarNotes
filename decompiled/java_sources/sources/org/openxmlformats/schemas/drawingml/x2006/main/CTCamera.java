package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STPresetCameraType;

/* loaded from: classes14.dex */
public interface CTCamera extends XmlObject {
    public static final DocumentFactory<CTCamera> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCamera> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcamerac340type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSphereCoords addNewRot();

    int getFov();

    STPresetCameraType.Enum getPrst();

    CTSphereCoords getRot();

    Object getZoom();

    boolean isSetFov();

    boolean isSetRot();

    boolean isSetZoom();

    void setFov(int i);

    void setPrst(STPresetCameraType.Enum r1);

    void setRot(CTSphereCoords cTSphereCoords);

    void setZoom(Object obj);

    void unsetFov();

    void unsetRot();

    void unsetZoom();

    STFOVAngle xgetFov();

    STPresetCameraType xgetPrst();

    STPositivePercentage xgetZoom();

    void xsetFov(STFOVAngle sTFOVAngle);

    void xsetPrst(STPresetCameraType sTPresetCameraType);

    void xsetZoom(STPositivePercentage sTPositivePercentage);
}
