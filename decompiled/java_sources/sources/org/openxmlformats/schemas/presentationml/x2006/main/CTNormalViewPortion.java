package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STPositiveFixedPercentage;

/* loaded from: classes14.dex */
public interface CTNormalViewPortion extends XmlObject {
    public static final DocumentFactory<CTNormalViewPortion> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNormalViewPortion> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnormalviewportione994type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getAutoAdjust();

    Object getSz();

    boolean isSetAutoAdjust();

    void setAutoAdjust(boolean z);

    void setSz(Object obj);

    void unsetAutoAdjust();

    XmlBoolean xgetAutoAdjust();

    STPositiveFixedPercentage xgetSz();

    void xsetAutoAdjust(XmlBoolean xmlBoolean);

    void xsetSz(STPositiveFixedPercentage sTPositiveFixedPercentage);
}
