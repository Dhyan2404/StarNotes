package com.microsoft.schemas.office.office;

import com.microsoft.schemas.office.office.STBWMode;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BwmodeAttribute extends XmlObject {
    public static final DocumentFactory<BwmodeAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BwmodeAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "bwmode0821attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STBWMode.Enum getBwmode();

    boolean isSetBwmode();

    void setBwmode(STBWMode.Enum r1);

    void unsetBwmode();

    STBWMode xgetBwmode();

    void xsetBwmode(STBWMode sTBWMode);
}
