package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTLuminanceEffect extends XmlObject {
    public static final DocumentFactory<CTLuminanceEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLuminanceEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctluminanceeffectb41atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getBright();

    Object getContrast();

    boolean isSetBright();

    boolean isSetContrast();

    void setBright(Object obj);

    void setContrast(Object obj);

    void unsetBright();

    void unsetContrast();

    STFixedPercentage xgetBright();

    STFixedPercentage xgetContrast();

    void xsetBright(STFixedPercentage sTFixedPercentage);

    void xsetContrast(STFixedPercentage sTFixedPercentage);
}
