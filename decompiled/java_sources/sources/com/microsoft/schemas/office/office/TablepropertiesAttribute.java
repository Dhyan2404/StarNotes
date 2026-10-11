package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface TablepropertiesAttribute extends XmlObject {
    public static final DocumentFactory<TablepropertiesAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TablepropertiesAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "tableproperties01b4attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getTableproperties();

    boolean isSetTableproperties();

    void setTableproperties(String str);

    void unsetTableproperties();

    XmlString xgetTableproperties();

    void xsetTableproperties(XmlString xmlString);
}
