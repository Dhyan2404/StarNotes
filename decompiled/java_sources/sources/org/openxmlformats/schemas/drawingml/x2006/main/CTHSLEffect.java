package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTHSLEffect extends XmlObject {
    public static final DocumentFactory<CTHSLEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTHSLEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cthsleffectdca3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getHue();

    Object getLum();

    Object getSat();

    boolean isSetHue();

    boolean isSetLum();

    boolean isSetSat();

    void setHue(int i);

    void setLum(Object obj);

    void setSat(Object obj);

    void unsetHue();

    void unsetLum();

    void unsetSat();

    STPositiveFixedAngle xgetHue();

    STFixedPercentage xgetLum();

    STFixedPercentage xgetSat();

    void xsetHue(STPositiveFixedAngle sTPositiveFixedAngle);

    void xsetLum(STFixedPercentage sTFixedPercentage);

    void xsetSat(STFixedPercentage sTFixedPercentage);
}
