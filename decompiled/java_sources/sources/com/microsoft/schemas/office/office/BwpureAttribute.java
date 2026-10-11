package com.microsoft.schemas.office.office;

import com.microsoft.schemas.office.office.STBWMode;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BwpureAttribute extends XmlObject {
    public static final DocumentFactory<BwpureAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BwpureAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "bwpurec476attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STBWMode.Enum getBwpure();

    boolean isSetBwpure();

    void setBwpure(STBWMode.Enum r1);

    void unsetBwpure();

    STBWMode xgetBwpure();

    void xsetBwpure(STBWMode sTBWMode);
}
