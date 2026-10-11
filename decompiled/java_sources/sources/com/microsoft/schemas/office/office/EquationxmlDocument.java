package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface EquationxmlDocument extends XmlObject {
    public static final DocumentFactory<EquationxmlDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<EquationxmlDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "equationxml42f0doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEquationXml addNewEquationxml();

    CTEquationXml getEquationxml();

    void setEquationxml(CTEquationXml cTEquationXml);
}
