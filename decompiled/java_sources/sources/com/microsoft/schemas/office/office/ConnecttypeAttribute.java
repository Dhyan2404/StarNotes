package com.microsoft.schemas.office.office;

import com.microsoft.schemas.office.office.STConnectType;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ConnecttypeAttribute extends XmlObject {
    public static final DocumentFactory<ConnecttypeAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ConnecttypeAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "connecttype08d7attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STConnectType.Enum getConnecttype();

    boolean isSetConnecttype();

    void setConnecttype(STConnectType.Enum r1);

    void unsetConnecttype();

    STConnectType xgetConnecttype();

    void xsetConnecttype(STConnectType sTConnectType);
}
