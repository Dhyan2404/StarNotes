package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface TablelimitsAttribute extends XmlObject {
    public static final DocumentFactory<TablelimitsAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TablelimitsAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "tablelimits7119attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getTablelimits();

    boolean isSetTablelimits();

    void setTablelimits(String str);

    void unsetTablelimits();

    XmlString xgetTablelimits();

    void xsetTablelimits(XmlString xmlString);
}
