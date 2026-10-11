package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextShapeType;

/* loaded from: classes14.dex */
public interface CTPresetTextShape extends XmlObject {
    public static final DocumentFactory<CTPresetTextShape> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPresetTextShape> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpresettextshape40c6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGeomGuideList addNewAvLst();

    CTGeomGuideList getAvLst();

    STTextShapeType.Enum getPrst();

    boolean isSetAvLst();

    void setAvLst(CTGeomGuideList cTGeomGuideList);

    void setPrst(STTextShapeType.Enum r1);

    void unsetAvLst();

    STTextShapeType xgetPrst();

    void xsetPrst(STTextShapeType sTTextShapeType);
}
