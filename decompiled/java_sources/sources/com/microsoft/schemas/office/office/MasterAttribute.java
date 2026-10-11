package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface MasterAttribute extends XmlObject {
    public static final DocumentFactory<MasterAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<MasterAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "master6d0battrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getMaster();

    boolean isSetMaster();

    void setMaster(String str);

    void unsetMaster();

    XmlString xgetMaster();

    void xsetMaster(XmlString xmlString);
}
