package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTintEffect extends XmlObject {
    public static final DocumentFactory<CTTintEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTintEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttinteffect1ac7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getAmt();

    int getHue();

    boolean isSetAmt();

    boolean isSetHue();

    void setAmt(Object obj);

    void setHue(int i);

    void unsetAmt();

    void unsetHue();

    STFixedPercentage xgetAmt();

    STPositiveFixedAngle xgetHue();

    void xsetAmt(STFixedPercentage sTFixedPercentage);

    void xsetHue(STPositiveFixedAngle sTPositiveFixedAngle);
}
