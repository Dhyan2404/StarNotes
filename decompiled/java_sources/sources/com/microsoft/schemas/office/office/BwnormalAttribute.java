package com.microsoft.schemas.office.office;

import com.microsoft.schemas.office.office.STBWMode;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BwnormalAttribute extends XmlObject {
    public static final DocumentFactory<BwnormalAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BwnormalAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "bwnormal0765attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STBWMode.Enum getBwnormal();

    boolean isSetBwnormal();

    void setBwnormal(STBWMode.Enum r1);

    void unsetBwnormal();

    STBWMode xgetBwnormal();

    void xsetBwnormal(STBWMode sTBWMode);
}
