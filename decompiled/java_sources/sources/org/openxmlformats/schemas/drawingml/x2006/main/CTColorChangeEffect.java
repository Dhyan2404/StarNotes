package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTColorChangeEffect extends XmlObject {
    public static final DocumentFactory<CTColorChangeEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTColorChangeEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcolorchangeeffect12d5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColor addNewClrFrom();

    CTColor addNewClrTo();

    CTColor getClrFrom();

    CTColor getClrTo();

    boolean getUseA();

    boolean isSetUseA();

    void setClrFrom(CTColor cTColor);

    void setClrTo(CTColor cTColor);

    void setUseA(boolean z);

    void unsetUseA();

    XmlBoolean xgetUseA();

    void xsetUseA(XmlBoolean xmlBoolean);
}
