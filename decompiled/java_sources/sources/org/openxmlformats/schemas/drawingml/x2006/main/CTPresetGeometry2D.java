package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STShapeType;

/* loaded from: classes14.dex */
public interface CTPresetGeometry2D extends XmlObject {
    public static final DocumentFactory<CTPresetGeometry2D> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPresetGeometry2D> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpresetgeometry2db1detype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGeomGuideList addNewAvLst();

    CTGeomGuideList getAvLst();

    STShapeType.Enum getPrst();

    boolean isSetAvLst();

    void setAvLst(CTGeomGuideList cTGeomGuideList);

    void setPrst(STShapeType.Enum r1);

    void unsetAvLst();

    STShapeType xgetPrst();

    void xsetPrst(STShapeType sTShapeType);
}
