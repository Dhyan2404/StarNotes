package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBlurEffect extends XmlObject {
    public static final DocumentFactory<CTBlurEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBlurEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctblureffect2e33type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getGrow();

    long getRad();

    boolean isSetGrow();

    boolean isSetRad();

    void setGrow(boolean z);

    void setRad(long j);

    void unsetGrow();

    void unsetRad();

    XmlBoolean xgetGrow();

    STPositiveCoordinate xgetRad();

    void xsetGrow(XmlBoolean xmlBoolean);

    void xsetRad(STPositiveCoordinate sTPositiveCoordinate);
}
