package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface MgmtDataDocument extends XmlObject {
    public static final DocumentFactory<MgmtDataDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<MgmtDataDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "mgmtdatabce4doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getMgmtData();

    void setMgmtData(String str);

    XmlString xgetMgmtData();

    void xsetMgmtData(XmlString xmlString);
}
