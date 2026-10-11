package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTEquationXml extends XmlObject {
    public static final DocumentFactory<CTEquationXml> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEquationXml> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctequationxmlf0a4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getContentType();

    boolean isSetContentType();

    void setContentType(String str);

    void unsetContentType();

    STAlternateMathContentType xgetContentType();

    void xsetContentType(STAlternateMathContentType sTAlternateMathContentType);
}
